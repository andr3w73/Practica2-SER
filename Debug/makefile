################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include utilities/subdir.mk
-include startup/subdir.mk
-include source/subdir.mk
-include lwip/src/netif/ppp/subdir.mk
-include lwip/src/netif/subdir.mk
-include lwip/src/core/ipv6/subdir.mk
-include lwip/src/core/ipv4/subdir.mk
-include lwip/src/core/subdir.mk
-include lwip/src/apps/mqtt/subdir.mk
-include lwip/src/api/subdir.mk
-include lwip/port/sys_arch/dynamic/subdir.mk
-include lwip/port/subdir.mk
-include freertos/freertos-kernel/portable/MemMang/subdir.mk
-include freertos/freertos-kernel/portable/GCC/ARM_CM33_NTZ/non_secure/subdir.mk
-include freertos/freertos-kernel/subdir.mk
-include flash_config/subdir.mk
-include drivers/subdir.mk
-include device/subdir.mk
-include component/uart/subdir.mk
-include component/silicon_id/subdir.mk
-include component/serial_manager/subdir.mk
-include component/phy/subdir.mk
-include component/lists/subdir.mk
-include component/gpio/subdir.mk
-include component/els_pkc/src/comps/mcuxCsslParamIntegrity/src/subdir.mk
-include component/els_pkc/src/comps/mcuxCsslMemory/src/subdir.mk
-include component/els_pkc/src/comps/mcuxClMemory/src/subdir.mk
-include component/els_pkc/src/comps/mcuxClEls/src/subdir.mk
-include component/els_pkc/src/comps/mcuxClBuffer/src/subdir.mk
-include board/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := prac2_612_t3_lwip_mqtt_freertos_seR2
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: prac2_612_t3_lwip_mqtt_freertos_seR2.axf

# Tool invocations
prac2_612_t3_lwip_mqtt_freertos_seR2.axf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -Xlinker -no-warn-rwx-segments -Xlinker -Map="prac2_612_t3_lwip_mqtt_freertos_seR2.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --sort-section=alignment -Xlinker --cref -mcpu=cortex-m33+nodsp -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -T prac2_612_t3_lwip_mqtt_freertos_seR2_Debug.ld -o "prac2_612_t3_lwip_mqtt_freertos_seR2.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) prac2_612_t3_lwip_mqtt_freertos_seR2.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "prac2_612_t3_lwip_mqtt_freertos_seR2.axf"; # arm-none-eabi-objcopy -v -O binary "prac2_612_t3_lwip_mqtt_freertos_seR2.axf" "prac2_612_t3_lwip_mqtt_freertos_seR2.bin" ; # checksum -p RW612 -d "prac2_612_t3_lwip_mqtt_freertos_seR2.bin";
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
