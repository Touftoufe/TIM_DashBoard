################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c 

OBJS += \
./Core/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./Core/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/stm32_dma2d/%.o: ../Core/lvgl/src/draw/stm32_dma2d/%.c Core/lvgl/src/draw/stm32_dma2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d

clean-Core-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d:
	-$(RM) ./Core/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.d ./Core/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-stm32_dma2d

