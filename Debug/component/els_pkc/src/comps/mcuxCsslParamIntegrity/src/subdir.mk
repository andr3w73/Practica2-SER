################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/mcuxCsslParamIntegrity.c 

C_DEPS += \
./component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/mcuxCsslParamIntegrity.d 

OBJS += \
./component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/mcuxCsslParamIntegrity.o 


# Each subdirectory must supply rules for building sources it contributes
component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/%.o: ../component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/%.c component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_RW612ETA2I -DCPU_RW612ETA2I_cm33_nodsp -D_POSIX_SOURCE -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 -DFSL_FEATURE_PHYKSZ8081_USE_RMII50M_MODE -DUSE_RTOS=1 -DPRINTF_ADVANCED_ENABLE=1 -DMCUXPRESSO_SDK -DBOOT_HEADER_ENABLE=1 -DLWIP_DISABLE_PBUF_POOL_SIZE_SANITY_CHECKS=1 -DCHECKSUM_GEN_UDP=1 -DCHECKSUM_GEN_TCP=1 -DCHECKSUM_GEN_ICMP=1 -DCHECKSUM_GEN_ICMP6=1 -DCHECKSUM_CHECK_UDP=1 -DCHECKSUM_CHECK_TCP=1 -DCHECKSUM_CHECK_ICMP=1 -DCHECKSUM_CHECK_ICMP6=1 -DSERIAL_PORT_TYPE_UART=1 -DSDK_OS_FREE_RTOS -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_DEBUGCONSOLE=0 -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\phy" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\drivers" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\port" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\src" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\src\include" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\silicon_id" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\utilities" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\src\include\lwip\apps" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\flash_config" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\device" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\platforms\rw61x" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\port\sys_arch\dynamic" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\gpio" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\serial_manager" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\lists" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\uart" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\freertos\freertos-kernel\include" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\CMSIS" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClEls\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClEls\inc\internal" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClMemory\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClMemory\inc\internal" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslMemory\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslMemory\inc\internal" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\platforms\rw61x\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClBuffer\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClBuffer\inc\internal" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxClCore\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslParamIntegrity\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslFlowProtection\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslSecureCounter\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslCPreProcessor\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\compiler" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\component\els_pkc\src\comps\mcuxCsslDataIntegrity\inc" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\source" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\lwip\template" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2\board" -I"C:\Embebidos_Redes\Prac2\prac2_612_t3_lwip_mqtt_freertos_seR2" -O0 -fno-common -g3 -gdwarf-4 -mcpu=cortex-m33+nodsp -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-els_pkc-2f-src-2f-comps-2f-mcuxCsslParamIntegrity-2f-src

clean-component-2f-els_pkc-2f-src-2f-comps-2f-mcuxCsslParamIntegrity-2f-src:
	-$(RM) ./component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/mcuxCsslParamIntegrity.d ./component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/mcuxCsslParamIntegrity.o

.PHONY: clean-component-2f-els_pkc-2f-src-2f-comps-2f-mcuxCsslParamIntegrity-2f-src

