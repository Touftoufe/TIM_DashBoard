################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/extra/widgets/span/lv_span.c 

OBJS += \
./Core/lvgl/src/extra/widgets/span/lv_span.o 

C_DEPS += \
./Core/lvgl/src/extra/widgets/span/lv_span.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/extra/widgets/span/%.o: ../Core/lvgl/src/extra/widgets/span/%.c Core/lvgl/src/extra/widgets/span/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-span

clean-Core-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-span:
	-$(RM) ./Core/lvgl/src/extra/widgets/span/lv_span.d ./Core/lvgl/src/extra/widgets/span/lv_span.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-extra-2f-widgets-2f-span
