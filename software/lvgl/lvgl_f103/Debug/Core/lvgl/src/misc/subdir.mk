################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/misc/lv_anim.c \
../Core/lvgl/src/misc/lv_anim_timeline.c \
../Core/lvgl/src/misc/lv_area.c \
../Core/lvgl/src/misc/lv_async.c \
../Core/lvgl/src/misc/lv_bidi.c \
../Core/lvgl/src/misc/lv_color.c \
../Core/lvgl/src/misc/lv_fs.c \
../Core/lvgl/src/misc/lv_gc.c \
../Core/lvgl/src/misc/lv_ll.c \
../Core/lvgl/src/misc/lv_log.c \
../Core/lvgl/src/misc/lv_lru.c \
../Core/lvgl/src/misc/lv_math.c \
../Core/lvgl/src/misc/lv_mem.c \
../Core/lvgl/src/misc/lv_printf.c \
../Core/lvgl/src/misc/lv_style.c \
../Core/lvgl/src/misc/lv_style_gen.c \
../Core/lvgl/src/misc/lv_templ.c \
../Core/lvgl/src/misc/lv_timer.c \
../Core/lvgl/src/misc/lv_tlsf.c \
../Core/lvgl/src/misc/lv_txt.c \
../Core/lvgl/src/misc/lv_txt_ap.c \
../Core/lvgl/src/misc/lv_utils.c 

OBJS += \
./Core/lvgl/src/misc/lv_anim.o \
./Core/lvgl/src/misc/lv_anim_timeline.o \
./Core/lvgl/src/misc/lv_area.o \
./Core/lvgl/src/misc/lv_async.o \
./Core/lvgl/src/misc/lv_bidi.o \
./Core/lvgl/src/misc/lv_color.o \
./Core/lvgl/src/misc/lv_fs.o \
./Core/lvgl/src/misc/lv_gc.o \
./Core/lvgl/src/misc/lv_ll.o \
./Core/lvgl/src/misc/lv_log.o \
./Core/lvgl/src/misc/lv_lru.o \
./Core/lvgl/src/misc/lv_math.o \
./Core/lvgl/src/misc/lv_mem.o \
./Core/lvgl/src/misc/lv_printf.o \
./Core/lvgl/src/misc/lv_style.o \
./Core/lvgl/src/misc/lv_style_gen.o \
./Core/lvgl/src/misc/lv_templ.o \
./Core/lvgl/src/misc/lv_timer.o \
./Core/lvgl/src/misc/lv_tlsf.o \
./Core/lvgl/src/misc/lv_txt.o \
./Core/lvgl/src/misc/lv_txt_ap.o \
./Core/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./Core/lvgl/src/misc/lv_anim.d \
./Core/lvgl/src/misc/lv_anim_timeline.d \
./Core/lvgl/src/misc/lv_area.d \
./Core/lvgl/src/misc/lv_async.d \
./Core/lvgl/src/misc/lv_bidi.d \
./Core/lvgl/src/misc/lv_color.d \
./Core/lvgl/src/misc/lv_fs.d \
./Core/lvgl/src/misc/lv_gc.d \
./Core/lvgl/src/misc/lv_ll.d \
./Core/lvgl/src/misc/lv_log.d \
./Core/lvgl/src/misc/lv_lru.d \
./Core/lvgl/src/misc/lv_math.d \
./Core/lvgl/src/misc/lv_mem.d \
./Core/lvgl/src/misc/lv_printf.d \
./Core/lvgl/src/misc/lv_style.d \
./Core/lvgl/src/misc/lv_style_gen.d \
./Core/lvgl/src/misc/lv_templ.d \
./Core/lvgl/src/misc/lv_timer.d \
./Core/lvgl/src/misc/lv_tlsf.d \
./Core/lvgl/src/misc/lv_txt.d \
./Core/lvgl/src/misc/lv_txt_ap.d \
./Core/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/misc/%.o: ../Core/lvgl/src/misc/%.c Core/lvgl/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-misc

clean-Core-2f-lvgl-2f-src-2f-misc:
	-$(RM) ./Core/lvgl/src/misc/lv_anim.d ./Core/lvgl/src/misc/lv_anim.o ./Core/lvgl/src/misc/lv_anim_timeline.d ./Core/lvgl/src/misc/lv_anim_timeline.o ./Core/lvgl/src/misc/lv_area.d ./Core/lvgl/src/misc/lv_area.o ./Core/lvgl/src/misc/lv_async.d ./Core/lvgl/src/misc/lv_async.o ./Core/lvgl/src/misc/lv_bidi.d ./Core/lvgl/src/misc/lv_bidi.o ./Core/lvgl/src/misc/lv_color.d ./Core/lvgl/src/misc/lv_color.o ./Core/lvgl/src/misc/lv_fs.d ./Core/lvgl/src/misc/lv_fs.o ./Core/lvgl/src/misc/lv_gc.d ./Core/lvgl/src/misc/lv_gc.o ./Core/lvgl/src/misc/lv_ll.d ./Core/lvgl/src/misc/lv_ll.o ./Core/lvgl/src/misc/lv_log.d ./Core/lvgl/src/misc/lv_log.o ./Core/lvgl/src/misc/lv_lru.d ./Core/lvgl/src/misc/lv_lru.o ./Core/lvgl/src/misc/lv_math.d ./Core/lvgl/src/misc/lv_math.o ./Core/lvgl/src/misc/lv_mem.d ./Core/lvgl/src/misc/lv_mem.o ./Core/lvgl/src/misc/lv_printf.d ./Core/lvgl/src/misc/lv_printf.o ./Core/lvgl/src/misc/lv_style.d ./Core/lvgl/src/misc/lv_style.o ./Core/lvgl/src/misc/lv_style_gen.d ./Core/lvgl/src/misc/lv_style_gen.o ./Core/lvgl/src/misc/lv_templ.d ./Core/lvgl/src/misc/lv_templ.o ./Core/lvgl/src/misc/lv_timer.d ./Core/lvgl/src/misc/lv_timer.o ./Core/lvgl/src/misc/lv_tlsf.d ./Core/lvgl/src/misc/lv_tlsf.o ./Core/lvgl/src/misc/lv_txt.d ./Core/lvgl/src/misc/lv_txt.o ./Core/lvgl/src/misc/lv_txt_ap.d ./Core/lvgl/src/misc/lv_txt_ap.o ./Core/lvgl/src/misc/lv_utils.d ./Core/lvgl/src/misc/lv_utils.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-misc

