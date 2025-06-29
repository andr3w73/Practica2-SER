

#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"
#include "semphr.h"

#include "fsl_debug_console.h"
#include "fsl_common.h"
#include "fsl_power.h"
#include "fsl_adc.h"
#include "board.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "lwip_mqtt_freertos.h"
#include "mqtt_freertos.h"

/* ADC defines */
#define DEMO_ADC_BASE           GAU_GPADC0
#define DEMO_ADC_CHANNEL_SOURCE kADC_CH4
#define DEMO_ADC_IRQHANDLER     GAU_GPADC0_INT_FUNC11_IRQHandler
#define DEMO_ADC_IRQn           GAU_GPADC0_INT_FUNC11_IRQn

/* Prioridad y stack */
#define ADC_TASK_PRIORITY       (configMAX_PRIORITIES - 1)
#define ADC_TASK_STACK          (configMINIMAL_STACK_SIZE + 100)

/* RTOS objects */
static SemaphoreHandle_t xADCSem;
TimerHandle_t xADCTimer;
volatile bool gConvReady = false;

typedef struct {
	const char *topic;
	const char *message;
} publish_args_t;

/* ISR del ADC */
void DEMO_ADC_IRQHANDLER(void) {
	if (ADC_GetStatusFlags(DEMO_ADC_BASE) & kADC_DataReadyInterruptFlag) {
		gConvReady = true;
		ADC_ClearStatusFlags(DEMO_ADC_BASE, kADC_DataReadyInterruptFlag);
	}
}

/* Callback del software timer: libera semáforo */
static void ADCTimerCallback(TimerHandle_t xTimer) {
	xSemaphoreGiveFromISR(xADCSem, NULL);
}


void start_adc_timer(void) {
	if (xTimerStart(xADCTimer, 0) != pdPASS) {
		PRINTF("Error al iniciar ADCTimer\r\n");
	}
}
int main(void) {
	adc_config_t adcConfig;

	/* Inicializa board, reloj y consola */
	BOARD_InitBootPins();
	BOARD_InitBootClocks();
	BOARD_InitDebugConsole();

	/* Configura y habilita ADC como en el ejemplo de NXP */
	CLOCK_AttachClk(kMAIN_CLK_to_GAU_CLK);
	CLOCK_SetClkDiv(kCLOCK_DivGauClk, 1U);
	CLOCK_EnableClock(kCLOCK_Gau);
	RESET_PeripheralReset(kGAU_RST_SHIFT_RSTn);
	POWER_PowerOnGau();

	ADC_GetDefaultConfig(&adcConfig);
	adcConfig.vrefSource = kADC_Vref1P2V;
	adcConfig.inputMode = kADC_InputSingleEnded;
	adcConfig.conversionMode = kADC_ConversionOneShot;
	adcConfig.inputGain = kADC_InputGain1;
	adcConfig.resolution = kADC_Resolution16Bit;
	adcConfig.fifoThreshold = kADC_FifoThresholdData1;
	adcConfig.averageLength = kADC_Average16;
	adcConfig.enableInputGainBuffer = true;
	adcConfig.enableADC = true;
	adcConfig.enableInputBufferChop = false;
	ADC_Init(DEMO_ADC_BASE, &adcConfig);

	mqtt_initialize();

	if (ADC_DoAutoCalibration(DEMO_ADC_BASE, kADC_CalibrationVrefInternal)
			!= kStatus_Success) {
		PRINTF("ADC Calibration Failed!\r\n");
		while (1) {
		}
	}

	ADC_ClearStatusFlags(DEMO_ADC_BASE, kADC_DataReadyInterruptFlag);
	ADC_SetScanChannel(DEMO_ADC_BASE, kADC_ScanChannel0,
			DEMO_ADC_CHANNEL_SOURCE);
	ADC_EnableInterrupts(DEMO_ADC_BASE, kADC_DataReadyInterruptEnable);
	EnableIRQ(DEMO_ADC_IRQn);

	/* Crea semáforo y SW timer de 50 ms */
	xADCSem = xSemaphoreCreateBinary();
	xADCTimer = xTimerCreate("ADCTmr", pdMS_TO_TICKS(1000), pdTRUE, NULL,
			ADCTimerCallback);
	//xTimerStart(xADCTimer, 0);

	/* Arranca scheduler */
	vTaskStartScheduler();

	/* Nunca llega aquí */
	while (1)
		;
}
