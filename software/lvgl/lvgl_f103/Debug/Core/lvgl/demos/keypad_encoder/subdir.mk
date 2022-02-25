################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.c 

OBJS += \
./Core/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.o 

C_DEPS += \
./Core/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/demos/keypad_encoder/%.o: ../Core/lvgl/demos/keypad_encoder/%.c Core/lvgl/demos/keypad_encoder/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-demos-2f-keypad_encoder

clean-Core-2f-lvgl-2f-demos-2f-keypad_encoder:
	-$(RM) ./Core/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.d ./Core/lvgl/demos/keypad_encoder/lv_demo_keypad_encoder.o

.PHONY: clean-Core-2f-lvgl-2f-demos-2f-keypad_encoder

