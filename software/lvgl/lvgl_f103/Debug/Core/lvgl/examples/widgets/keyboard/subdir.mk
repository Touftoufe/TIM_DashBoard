################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/examples/widgets/keyboard/lv_example_keyboard_1.c 

OBJS += \
./Core/lvgl/examples/widgets/keyboard/lv_example_keyboard_1.o 

C_DEPS += \
./Core/lvgl/examples/widgets/keyboard/lv_example_keyboard_1.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/examples/widgets/keyboard/%.o: ../Core/lvgl/examples/widgets/keyboard/%.c Core/lvgl/examples/widgets/keyboard/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-keyboard

clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-keyboard:
	-$(RM) ./Core/lvgl/examples/widgets/keyboard/lv_example_keyboard_1.d ./Core/lvgl/examples/widgets/keyboard/lv_example_keyboard_1.o

.PHONY: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-keyboard
