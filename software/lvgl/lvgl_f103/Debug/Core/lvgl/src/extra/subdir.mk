################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/extra/lv_extra.c 

OBJS += \
./Core/lvgl/src/extra/lv_extra.o 

C_DEPS += \
./Core/lvgl/src/extra/lv_extra.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/extra/%.o: ../Core/lvgl/src/extra/%.c Core/lvgl/src/extra/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-extra

clean-Core-2f-lvgl-2f-src-2f-extra:
	-$(RM) ./Core/lvgl/src/extra/lv_extra.d ./Core/lvgl/src/extra/lv_extra.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-extra

