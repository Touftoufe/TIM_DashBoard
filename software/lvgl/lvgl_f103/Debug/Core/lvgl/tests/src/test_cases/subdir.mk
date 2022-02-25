################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/tests/src/test_cases/_test_template.c \
../Core/lvgl/tests/src/test_cases/test_arc.c \
../Core/lvgl/tests/src/test_cases/test_checkbox.c \
../Core/lvgl/tests/src/test_cases/test_config.c \
../Core/lvgl/tests/src/test_cases/test_dropdown.c \
../Core/lvgl/tests/src/test_cases/test_font_loader.c \
../Core/lvgl/tests/src/test_cases/test_obj_tree.c \
../Core/lvgl/tests/src/test_cases/test_style.c \
../Core/lvgl/tests/src/test_cases/test_switch.c \
../Core/lvgl/tests/src/test_cases/test_txt.c 

OBJS += \
./Core/lvgl/tests/src/test_cases/_test_template.o \
./Core/lvgl/tests/src/test_cases/test_arc.o \
./Core/lvgl/tests/src/test_cases/test_checkbox.o \
./Core/lvgl/tests/src/test_cases/test_config.o \
./Core/lvgl/tests/src/test_cases/test_dropdown.o \
./Core/lvgl/tests/src/test_cases/test_font_loader.o \
./Core/lvgl/tests/src/test_cases/test_obj_tree.o \
./Core/lvgl/tests/src/test_cases/test_style.o \
./Core/lvgl/tests/src/test_cases/test_switch.o \
./Core/lvgl/tests/src/test_cases/test_txt.o 

C_DEPS += \
./Core/lvgl/tests/src/test_cases/_test_template.d \
./Core/lvgl/tests/src/test_cases/test_arc.d \
./Core/lvgl/tests/src/test_cases/test_checkbox.d \
./Core/lvgl/tests/src/test_cases/test_config.d \
./Core/lvgl/tests/src/test_cases/test_dropdown.d \
./Core/lvgl/tests/src/test_cases/test_font_loader.d \
./Core/lvgl/tests/src/test_cases/test_obj_tree.d \
./Core/lvgl/tests/src/test_cases/test_style.d \
./Core/lvgl/tests/src/test_cases/test_switch.d \
./Core/lvgl/tests/src/test_cases/test_txt.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/tests/src/test_cases/%.o: ../Core/lvgl/tests/src/test_cases/%.c Core/lvgl/tests/src/test_cases/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-tests-2f-src-2f-test_cases

clean-Core-2f-lvgl-2f-tests-2f-src-2f-test_cases:
	-$(RM) ./Core/lvgl/tests/src/test_cases/_test_template.d ./Core/lvgl/tests/src/test_cases/_test_template.o ./Core/lvgl/tests/src/test_cases/test_arc.d ./Core/lvgl/tests/src/test_cases/test_arc.o ./Core/lvgl/tests/src/test_cases/test_checkbox.d ./Core/lvgl/tests/src/test_cases/test_checkbox.o ./Core/lvgl/tests/src/test_cases/test_config.d ./Core/lvgl/tests/src/test_cases/test_config.o ./Core/lvgl/tests/src/test_cases/test_dropdown.d ./Core/lvgl/tests/src/test_cases/test_dropdown.o ./Core/lvgl/tests/src/test_cases/test_font_loader.d ./Core/lvgl/tests/src/test_cases/test_font_loader.o ./Core/lvgl/tests/src/test_cases/test_obj_tree.d ./Core/lvgl/tests/src/test_cases/test_obj_tree.o ./Core/lvgl/tests/src/test_cases/test_style.d ./Core/lvgl/tests/src/test_cases/test_style.o ./Core/lvgl/tests/src/test_cases/test_switch.d ./Core/lvgl/tests/src/test_cases/test_switch.o ./Core/lvgl/tests/src/test_cases/test_txt.d ./Core/lvgl/tests/src/test_cases/test_txt.o

.PHONY: clean-Core-2f-lvgl-2f-tests-2f-src-2f-test_cases

