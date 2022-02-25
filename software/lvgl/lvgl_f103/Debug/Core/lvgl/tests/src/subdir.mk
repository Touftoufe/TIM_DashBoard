################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/tests/src/lv_test_indev.c \
../Core/lvgl/tests/src/lv_test_init.c 

OBJS += \
./Core/lvgl/tests/src/lv_test_indev.o \
./Core/lvgl/tests/src/lv_test_init.o 

C_DEPS += \
./Core/lvgl/tests/src/lv_test_indev.d \
./Core/lvgl/tests/src/lv_test_init.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/tests/src/%.o: ../Core/lvgl/tests/src/%.c Core/lvgl/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-tests-2f-src

clean-Core-2f-lvgl-2f-tests-2f-src:
	-$(RM) ./Core/lvgl/tests/src/lv_test_indev.d ./Core/lvgl/tests/src/lv_test_indev.o ./Core/lvgl/tests/src/lv_test_init.d ./Core/lvgl/tests/src/lv_test_init.o

.PHONY: clean-Core-2f-lvgl-2f-tests-2f-src

