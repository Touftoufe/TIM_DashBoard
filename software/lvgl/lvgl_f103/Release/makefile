################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/lvgl/src/widgets/subdir.mk
-include Core/lvgl/src/misc/subdir.mk
-include Core/lvgl/src/hal/subdir.mk
-include Core/lvgl/src/font/subdir.mk
-include Core/lvgl/src/extra/layouts/grid/subdir.mk
-include Core/lvgl/src/extra/layouts/flex/subdir.mk
-include Core/lvgl/src/extra/subdir.mk
-include Core/lvgl/src/draw/sw/subdir.mk
-include Core/lvgl/src/draw/stm32_dma2d/subdir.mk
-include Core/lvgl/src/draw/sdl/subdir.mk
-include Core/lvgl/src/draw/nxp_vglite/subdir.mk
-include Core/lvgl/src/draw/nxp_pxp/subdir.mk
-include Core/lvgl/src/draw/subdir.mk
-include Core/lvgl/src/core/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := lvgl_f103
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
lvgl_f103.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
lvgl_f103.list \

OBJCOPY_BIN += \
lvgl_f103.bin \


# All Target
all: main-build

# Main-build Target
main-build: lvgl_f103.elf secondary-outputs

# Tool invocations
lvgl_f103.elf: $(OBJS) $(USER_OBJS) /home/prince/Downloads/lvgl/lvgl_f103/STM32F103RBTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "lvgl_f103.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"/home/prince/Downloads/lvgl/lvgl_f103/STM32F103RBTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="lvgl_f103.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

lvgl_f103.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "lvgl_f103.list"
	@echo 'Finished building: $@'
	@echo ' '

lvgl_f103.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "lvgl_f103.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout lvgl_f103.bin lvgl_f103.elf lvgl_f103.list
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
