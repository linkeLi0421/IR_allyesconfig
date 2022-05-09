; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-smartq7.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-smartq7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SmartQ 7\00", [23 x i8] zeroinitializer }, align 32
@__mach_desc_SMARTQ7 = internal constant %struct.machine_desc { i32 2479, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @smartq7_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@smartq7_lcd_pdata = internal global %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @smartq7_fb_win0, ptr null, ptr null, ptr null, ptr null], ptr @smartq7_lcd_timing, i32 0, i32 224 }, section ".init.data", align 4
@smartq7_devices = internal global [2 x ptr] [ptr @smartq7_leds_device, ptr @smartq7_buttons_device], section ".init.data", align 4
@smartq7_fb_win0 = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 800, i16 480, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@smartq7_lcd_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 80, i32 800, i32 480, i32 0, i32 3, i32 5, i32 1, i32 20, i32 10, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@smartq7_leds_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq7_led_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smartq7_buttons_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.4, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq7_buttons_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"leds-gpio\00", [22 x i8] zeroinitializer }, align 32
@smartq7_led_data = internal global { %struct.gpio_led_platform_data, [20 x i8] } { %struct.gpio_led_platform_data { i32 2, ptr @smartq7_leds, ptr null }, [20 x i8] zeroinitializer }, align 32
@smartq7_leds = internal global { [2 x %struct.gpio_led], [56 x i8] } { [2 x %struct.gpio_led] [%struct.gpio_led { ptr @.str.2, ptr null, i32 152, i8 -128, ptr null }, %struct.gpio_led { ptr @.str.3, ptr null, i32 153, i8 -128, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smartq7:red\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smartq7:green\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-keys\00", [22 x i8] zeroinitializer }, align 32
@smartq7_buttons_data = internal global { %struct.gpio_keys_platform_data, [36 x i8] } { %struct.gpio_keys_platform_data { ptr @smartq7_buttons, i32 6, i32 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smartq7_buttons = internal global { [6 x %struct.gpio_keys_button], [88 x i8] } { [6 x %struct.gpio_keys_button] [%struct.gpio_keys_button { i32 116, i32 135, i32 1, ptr @.str.5, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 464, i32 146, i32 1, ptr @.str.6, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 74, i32 147, i32 1, ptr @.str.7, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 78, i32 148, i32 1, ptr @.str.8, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 28, i32 156, i32 1, ptr @.str.9, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 1, i32 159, i32 1, ptr @.str.10, i32 1, i32 0, i32 0, i32 5, i8 0, i32 0, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Power\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Function\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Minus\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Plus\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Enter\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Cancel\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 162, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"smartq7_fb_win0\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 120, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"smartq7_lcd_timing\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 127, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"smartq7_leds_device\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 48, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"smartq7_buttons_device\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 111, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 49, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"smartq7_led_data\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 43, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"smartq7_leds\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 30, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 32, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 37, i32 13 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 112, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"smartq7_buttons_data\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 106, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"smartq7_buttons\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 55, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 59, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 67, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 75, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 83, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 91, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [36 x i8] c"../arch/arm/mach-s3c/mach-smartq7.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 99, i32 13 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__mach_desc_SMARTQ7, ptr @.str, ptr @smartq7_fb_win0, ptr @smartq7_lcd_timing, ptr @smartq7_leds_device, ptr @smartq7_buttons_device, ptr @.str.1, ptr @smartq7_led_data, ptr @smartq7_leds, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @smartq7_buttons_data, ptr @smartq7_buttons, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_fb_win0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_lcd_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_leds_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_buttons_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_led_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_leds to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_buttons_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq7_buttons to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smartq_map_io() #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #0 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smartq7_machine_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_fb_set_platdata(ptr noundef nonnull @smartq7_lcd_pdata) #3
  tail call void @smartq_machine_init() #6
  %call = tail call i32 @platform_add_devices(ptr noundef nonnull @smartq7_devices, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smartq_machine_init() local_unnamed_addr #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 162, i32 1}
!2 = !{ptr @__mach_desc_SMARTQ7, !1, !"__mach_desc_SMARTQ7", i1 false, i1 false}
!3 = !{ptr @smartq7_lcd_pdata, !4, !"smartq7_lcd_pdata", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 139, i32 31}
!5 = !{ptr @smartq7_fb_win0, !6, !"smartq7_fb_win0", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 120, i32 29}
!7 = !{ptr @smartq7_lcd_timing, !8, !"smartq7_lcd_timing", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 127, i32 28}
!9 = !{ptr @smartq7_devices, !10, !"smartq7_devices", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 148, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 49, i32 12}
!13 = !{ptr @smartq7_leds_device, !14, !"smartq7_leds_device", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 48, i32 31}
!15 = !{ptr @smartq7_led_data, !16, !"smartq7_led_data", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 43, i32 38}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 32, i32 13}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 37, i32 13}
!21 = !{ptr @smartq7_leds, !22, !"smartq7_leds", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 30, i32 24}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 112, i32 11}
!25 = !{ptr @smartq7_buttons_device, !26, !"smartq7_buttons_device", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 111, i32 31}
!27 = !{ptr @smartq7_buttons_data, !28, !"smartq7_buttons_data", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 106, i32 39}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 59, i32 13}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 67, i32 13}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 75, i32 13}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 83, i32 13}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 91, i32 13}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 99, i32 13}
!41 = !{ptr @smartq7_buttons, !42, !"smartq7_buttons", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-s3c/mach-smartq7.c", i32 55, i32 32}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
