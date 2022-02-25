################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/LVGL_Interface.c \
../Core/Src/TL.c \
../Core/Src/Testboard_ui.c \
../Core/Src/adc.c \
../Core/Src/can.c \
../Core/Src/dma.c \
../Core/Src/f_speed_2.c \
../Core/Src/gpio.c \
../Core/Src/ili9341.c \
../Core/Src/ili9341_gfx.c \
../Core/Src/light.c \
../Core/Src/main.c \
../Core/Src/spi.c \
../Core/Src/sport.c \
../Core/Src/stm32f1xx_hal_msp.c \
../Core/Src/stm32f1xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f1xx.c \
../Core/Src/tim.c 

OBJS += \
./Core/Src/LVGL_Interface.o \
./Core/Src/TL.o \
./Core/Src/Testboard_ui.o \
./Core/Src/adc.o \
./Core/Src/can.o \
./Core/Src/dma.o \
./Core/Src/f_speed_2.o \
./Core/Src/gpio.o \
./Core/Src/ili9341.o \
./Core/Src/ili9341_gfx.o \
./Core/Src/light.o \
./Core/Src/main.o \
./Core/Src/spi.o \
./Core/Src/sport.o \
./Core/Src/stm32f1xx_hal_msp.o \
./Core/Src/stm32f1xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f1xx.o \
./Core/Src/tim.o 

C_DEPS += \
./Core/Src/LVGL_Interface.d \
./Core/Src/TL.d \
./Core/Src/Testboard_ui.d \
./Core/Src/adc.d \
./Core/Src/can.d \
./Core/Src/dma.d \
./Core/Src/f_speed_2.d \
./Core/Src/gpio.d \
./Core/Src/ili9341.d \
./Core/Src/ili9341_gfx.d \
./Core/Src/light.d \
./Core/Src/main.d \
./Core/Src/spi.d \
./Core/Src/sport.d \
./Core/Src/stm32f1xx_hal_msp.d \
./Core/Src/stm32f1xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f1xx.d \
./Core/Src/tim.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/LVGL_Interface.d ./Core/Src/LVGL_Interface.o ./Core/Src/TL.d ./Core/Src/TL.o ./Core/Src/Testboard_ui.d ./Core/Src/Testboard_ui.o ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/can.d ./Core/Src/can.o ./Core/Src/dma.d ./Core/Src/dma.o ./Core/Src/f_speed_2.d ./Core/Src/f_speed_2.o ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/ili9341.d ./Core/Src/ili9341.o ./Core/Src/ili9341_gfx.d ./Core/Src/ili9341_gfx.o ./Core/Src/light.d ./Core/Src/light.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/sport.d ./Core/Src/sport.o ./Core/Src/stm32f1xx_hal_msp.d ./Core/Src/stm32f1xx_hal_msp.o ./Core/Src/stm32f1xx_it.d ./Core/Src/stm32f1xx_it.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32f1xx.d ./Core/Src/system_stm32f1xx.o ./Core/Src/tim.d ./Core/Src/tim.o

.PHONY: clean-Core-2f-Src

