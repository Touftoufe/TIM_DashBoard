################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/font/lv_font.c \
../Core/lvgl/src/font/lv_font_fmt_txt.c \
../Core/lvgl/src/font/lv_font_loader.c 

OBJS += \
./Core/lvgl/src/font/lv_font.o \
./Core/lvgl/src/font/lv_font_fmt_txt.o \
./Core/lvgl/src/font/lv_font_loader.o 

C_DEPS += \
./Core/lvgl/src/font/lv_font.d \
./Core/lvgl/src/font/lv_font_fmt_txt.d \
./Core/lvgl/src/font/lv_font_loader.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/font/%.o: ../Core/lvgl/src/font/%.c Core/lvgl/src/font/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-font

clean-Core-2f-lvgl-2f-src-2f-font:
	-$(RM) ./Core/lvgl/src/font/lv_font.d ./Core/lvgl/src/font/lv_font.o ./Core/lvgl/src/font/lv_font_fmt_txt.d ./Core/lvgl/src/font/lv_font_fmt_txt.o ./Core/lvgl/src/font/lv_font_loader.d ./Core/lvgl/src/font/lv_font_loader.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-font

