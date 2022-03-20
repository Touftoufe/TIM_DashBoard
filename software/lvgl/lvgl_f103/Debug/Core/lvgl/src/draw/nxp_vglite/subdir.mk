################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/draw/nxp_vglite/lv_gpu_nxp_vglite.c 

OBJS += \
./Core/lvgl/src/draw/nxp_vglite/lv_gpu_nxp_vglite.o 

C_DEPS += \
./Core/lvgl/src/draw/nxp_vglite/lv_gpu_nxp_vglite.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/draw/nxp_vglite/%.o: ../Core/lvgl/src/draw/nxp_vglite/%.c Core/lvgl/src/draw/nxp_vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp_vglite

clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp_vglite:
	-$(RM) ./Core/lvgl/src/draw/nxp_vglite/lv_gpu_nxp_vglite.d ./Core/lvgl/src/draw/nxp_vglite/lv_gpu_nxp_vglite.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-draw-2f-nxp_vglite
