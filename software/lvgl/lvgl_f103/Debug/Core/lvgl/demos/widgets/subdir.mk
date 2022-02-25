################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/demos/widgets/lv_demo_widgets.c 

OBJS += \
./Core/lvgl/demos/widgets/lv_demo_widgets.o 

C_DEPS += \
./Core/lvgl/demos/widgets/lv_demo_widgets.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/demos/widgets/%.o: ../Core/lvgl/demos/widgets/%.c Core/lvgl/demos/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-demos-2f-widgets

clean-Core-2f-lvgl-2f-demos-2f-widgets:
	-$(RM) ./Core/lvgl/demos/widgets/lv_demo_widgets.d ./Core/lvgl/demos/widgets/lv_demo_widgets.o

.PHONY: clean-Core-2f-lvgl-2f-demos-2f-widgets

