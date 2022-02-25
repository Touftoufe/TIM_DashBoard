################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/tests/unity/unity.c \
../Core/lvgl/tests/unity/unity_support.c 

OBJS += \
./Core/lvgl/tests/unity/unity.o \
./Core/lvgl/tests/unity/unity_support.o 

C_DEPS += \
./Core/lvgl/tests/unity/unity.d \
./Core/lvgl/tests/unity/unity_support.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/tests/unity/%.o: ../Core/lvgl/tests/unity/%.c Core/lvgl/tests/unity/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-tests-2f-unity

clean-Core-2f-lvgl-2f-tests-2f-unity:
	-$(RM) ./Core/lvgl/tests/unity/unity.d ./Core/lvgl/tests/unity/unity.o ./Core/lvgl/tests/unity/unity_support.d ./Core/lvgl/tests/unity/unity_support.o

.PHONY: clean-Core-2f-lvgl-2f-tests-2f-unity

