################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/examples/styles/lv_example_style_1.c \
../Core/lvgl/examples/styles/lv_example_style_10.c \
../Core/lvgl/examples/styles/lv_example_style_11.c \
../Core/lvgl/examples/styles/lv_example_style_12.c \
../Core/lvgl/examples/styles/lv_example_style_13.c \
../Core/lvgl/examples/styles/lv_example_style_14.c \
../Core/lvgl/examples/styles/lv_example_style_2.c \
../Core/lvgl/examples/styles/lv_example_style_3.c \
../Core/lvgl/examples/styles/lv_example_style_4.c \
../Core/lvgl/examples/styles/lv_example_style_5.c \
../Core/lvgl/examples/styles/lv_example_style_6.c \
../Core/lvgl/examples/styles/lv_example_style_7.c \
../Core/lvgl/examples/styles/lv_example_style_8.c \
../Core/lvgl/examples/styles/lv_example_style_9.c 

OBJS += \
./Core/lvgl/examples/styles/lv_example_style_1.o \
./Core/lvgl/examples/styles/lv_example_style_10.o \
./Core/lvgl/examples/styles/lv_example_style_11.o \
./Core/lvgl/examples/styles/lv_example_style_12.o \
./Core/lvgl/examples/styles/lv_example_style_13.o \
./Core/lvgl/examples/styles/lv_example_style_14.o \
./Core/lvgl/examples/styles/lv_example_style_2.o \
./Core/lvgl/examples/styles/lv_example_style_3.o \
./Core/lvgl/examples/styles/lv_example_style_4.o \
./Core/lvgl/examples/styles/lv_example_style_5.o \
./Core/lvgl/examples/styles/lv_example_style_6.o \
./Core/lvgl/examples/styles/lv_example_style_7.o \
./Core/lvgl/examples/styles/lv_example_style_8.o \
./Core/lvgl/examples/styles/lv_example_style_9.o 

C_DEPS += \
./Core/lvgl/examples/styles/lv_example_style_1.d \
./Core/lvgl/examples/styles/lv_example_style_10.d \
./Core/lvgl/examples/styles/lv_example_style_11.d \
./Core/lvgl/examples/styles/lv_example_style_12.d \
./Core/lvgl/examples/styles/lv_example_style_13.d \
./Core/lvgl/examples/styles/lv_example_style_14.d \
./Core/lvgl/examples/styles/lv_example_style_2.d \
./Core/lvgl/examples/styles/lv_example_style_3.d \
./Core/lvgl/examples/styles/lv_example_style_4.d \
./Core/lvgl/examples/styles/lv_example_style_5.d \
./Core/lvgl/examples/styles/lv_example_style_6.d \
./Core/lvgl/examples/styles/lv_example_style_7.d \
./Core/lvgl/examples/styles/lv_example_style_8.d \
./Core/lvgl/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/examples/styles/%.o: ../Core/lvgl/examples/styles/%.c Core/lvgl/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-examples-2f-styles

clean-Core-2f-lvgl-2f-examples-2f-styles:
	-$(RM) ./Core/lvgl/examples/styles/lv_example_style_1.d ./Core/lvgl/examples/styles/lv_example_style_1.o ./Core/lvgl/examples/styles/lv_example_style_10.d ./Core/lvgl/examples/styles/lv_example_style_10.o ./Core/lvgl/examples/styles/lv_example_style_11.d ./Core/lvgl/examples/styles/lv_example_style_11.o ./Core/lvgl/examples/styles/lv_example_style_12.d ./Core/lvgl/examples/styles/lv_example_style_12.o ./Core/lvgl/examples/styles/lv_example_style_13.d ./Core/lvgl/examples/styles/lv_example_style_13.o ./Core/lvgl/examples/styles/lv_example_style_14.d ./Core/lvgl/examples/styles/lv_example_style_14.o ./Core/lvgl/examples/styles/lv_example_style_2.d ./Core/lvgl/examples/styles/lv_example_style_2.o ./Core/lvgl/examples/styles/lv_example_style_3.d ./Core/lvgl/examples/styles/lv_example_style_3.o ./Core/lvgl/examples/styles/lv_example_style_4.d ./Core/lvgl/examples/styles/lv_example_style_4.o ./Core/lvgl/examples/styles/lv_example_style_5.d ./Core/lvgl/examples/styles/lv_example_style_5.o ./Core/lvgl/examples/styles/lv_example_style_6.d ./Core/lvgl/examples/styles/lv_example_style_6.o ./Core/lvgl/examples/styles/lv_example_style_7.d ./Core/lvgl/examples/styles/lv_example_style_7.o ./Core/lvgl/examples/styles/lv_example_style_8.d ./Core/lvgl/examples/styles/lv_example_style_8.o ./Core/lvgl/examples/styles/lv_example_style_9.d ./Core/lvgl/examples/styles/lv_example_style_9.o

.PHONY: clean-Core-2f-lvgl-2f-examples-2f-styles

