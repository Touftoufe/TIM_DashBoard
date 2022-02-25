################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/extra/libs/qrcode/lv_qrcode.c \
../Core/lvgl/src/extra/libs/qrcode/qrcodegen.c 

OBJS += \
./Core/lvgl/src/extra/libs/qrcode/lv_qrcode.o \
./Core/lvgl/src/extra/libs/qrcode/qrcodegen.o 

C_DEPS += \
./Core/lvgl/src/extra/libs/qrcode/lv_qrcode.d \
./Core/lvgl/src/extra/libs/qrcode/qrcodegen.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/extra/libs/qrcode/%.o: ../Core/lvgl/src/extra/libs/qrcode/%.c Core/lvgl/src/extra/libs/qrcode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode

clean-Core-2f-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode:
	-$(RM) ./Core/lvgl/src/extra/libs/qrcode/lv_qrcode.d ./Core/lvgl/src/extra/libs/qrcode/lv_qrcode.o ./Core/lvgl/src/extra/libs/qrcode/qrcodegen.d ./Core/lvgl/src/extra/libs/qrcode/qrcodegen.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode

