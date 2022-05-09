; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-smdk6410.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-smdk6410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.samsung_keypad_platdata = type { ptr, i32, i32, i8, i8, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.s3c_ide_platdata = type { ptr }
%struct.pwm_lookup = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.samsung_bl_gpio_info = type { i32, i32 }
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.matrix_keymap_data = type { ptr, i32 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm8350_platform_data = type { ptr, i32, i32, i32 }
%struct.wm831x_backlight_pdata = type { i32, i32 }
%struct.wm831x_status_pdata = type { i32, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.anon.90 = type { i32, ptr }
%struct.fixed_voltage_config = type { ptr, ptr, i32, i32, i32, i8, ptr }
%struct.plat_lcd_data = type { ptr, ptr, ptr }
%struct.smsc911x_platform_config = type { i32, i32, i32, i32, i32, [6 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMDK6410\00", [23 x i8] zeroinitializer }, align 32
@__mach_desc_SMDK6410 = internal constant %struct.machine_desc { i32 1626, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smdk6410_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @smdk6410_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@smdk6410_iodesc = internal global { [0 x %struct.map_desc], [32 x i8] } zeroinitializer, align 32
@smdk6410_uartcfgs = internal global [4 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 2, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 3, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }], section ".init.data", align 4
@smdk6410_lcd_pdata = internal global %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @smdk6410_fb_win0, ptr null, ptr null, ptr null, ptr null], ptr @smdk6410_lcd_timing, i32 0, i32 96 }, section ".init.data", align 4
@smdk6410_hsotg_pdata = internal global { %struct.dwc2_hsotg_plat, [44 x i8] } zeroinitializer, align 32
@smdk6410_keypad_data = internal global %struct.samsung_keypad_platdata { ptr @smdk6410_keymap_data, i32 2, i32 8, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LCD power\00", [22 x i8] zeroinitializer }, align 32
@i2c_devs0 = internal global [4 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wm8580\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wm8312\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 52, ptr null, ptr @smdk6410_wm1192_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 113 }, %struct.i2c_board_info { [20 x i8] c"wm8350\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr @smdk6410_wm8350_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 113 }], section ".init.data", align 4
@i2c_devs1 = internal global [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 87, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@smdk6410_ide_pdata = internal global %struct.s3c_ide_platdata { ptr @s3c64xx_ide_setup_gpio }, section ".init.data", align 4
@smdk6410_devices = internal global [16 x ptr] [ptr @s3c_device_hsmmc0, ptr @s3c_device_i2c0, ptr @s3c_device_i2c1, ptr @s3c_device_fb, ptr @s3c_device_ohci, ptr @samsung_device_pwm, ptr @s3c_device_usb_hsotg, ptr @s3c64xx_device_iisv4, ptr @samsung_device_keypad, ptr @smdk6410_b_pwr_5v, ptr @smdk6410_lcd_powerdev, ptr @smdk6410_smsc911x, ptr @s3c_device_adc, ptr @s3c_device_cfcon, ptr @s3c_device_rtc, ptr @s3c_device_wdt], section ".init.data", align 4
@smdk6410_pwm_lookup = internal global { [1 x %struct.pwm_lookup], [60 x i8] } { [1 x %struct.pwm_lookup] [%struct.pwm_lookup { %struct.list_head zeroinitializer, ptr @.str.57, i32 1, ptr @.str.58, ptr null, i32 78770, i32 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@smdk6410_bl_gpio_info = internal global { %struct.samsung_bl_gpio_info, [24 x i8] } { %struct.samsung_bl_gpio_info { i32 53, i32 -14 }, [24 x i8] zeroinitializer }, align 32
@smdk6410_bl_data = internal global { %struct.platform_pwm_backlight_data, [44 x i8] } zeroinitializer, align 32
@smdk6410_fb_win0 = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 800, i16 480, i16 800, i16 960 }, [20 x i8] zeroinitializer }, align 32
@smdk6410_lcd_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 800, i32 480, i32 0, i32 8, i32 13, i32 7, i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@smdk6410_keymap_data = internal global %struct.matrix_keymap_data { ptr @smdk6410_keymap, i32 10 }, section ".init.data", align 4
@smdk6410_keymap = internal global [10 x i32] [i32 196610, i32 262147, i32 327684, i32 393221, i32 458758, i32 16973854, i32 17039408, i32 17104942, i32 17170464, i32 17235986], section ".init.data", align 4
@smdk6410_wm1192_pdata = internal global { %struct.wm831x_pdata, [32 x i8] } { %struct.wm831x_pdata { i32 0, ptr @wm1192_pre_init, ptr null, i8 0, i8 0, i8 0, i32 0, i32 204, [16 x i32] zeroinitializer, ptr @wm1192_backlight_pdata, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @wm1192_led7_pdata, ptr @wm1192_led8_pdata], [4 x ptr] [ptr @smdk6410_vddarm, ptr @smdk6410_vddint, ptr @wm1192_dcdc3, ptr null], [2 x ptr] zeroinitializer, [11 x ptr] [ptr @wm1192_ldo1, ptr @smdk6410_vdduh_mmc, ptr null, ptr @smdk6410_vddotgi, ptr @smdk6410_vddotg, ptr @smdk6410_vddhi, ptr @smdk6410_vddaudio, ptr @smdk6410_vccm2mtv, ptr @smdk6410_vddpll, ptr @smdk6410_vccmc3bt, ptr @smdk6410_vddalive], [2 x ptr] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@smdk6410_wm8350_pdata = internal global %struct.wm8350_platform_data { ptr @smdk6410_wm8350_init, i32 1, i32 229, i32 0 }, section ".init.data", align 4
@wm1192_backlight_pdata = internal global { %struct.wm831x_backlight_pdata, [24 x i8] } { %struct.wm831x_backlight_pdata { i32 1, i32 27554 }, [24 x i8] zeroinitializer }, align 32
@wm1192_led7_pdata = internal global { %struct.wm831x_status_pdata, [20 x i8] } { %struct.wm831x_status_pdata { i32 0, ptr @.str.9, ptr null }, [20 x i8] zeroinitializer }, align 32
@wm1192_led8_pdata = internal global { %struct.wm831x_status_pdata, [20 x i8] } { %struct.wm831x_status_pdata { i32 0, ptr @.str.10, ptr null }, [20 x i8] zeroinitializer }, align 32
@wm1192_pmic_led_dev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.7, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm1192_pmic_led, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@wm1192_pre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 521, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add PMIC LED: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm1192_pre_init\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-s3c/mach-smdk6410.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm1192_pre_init._entry_ptr = internal global ptr @wm1192_pre_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"leds-gpio\00", [22 x i8] zeroinitializer }, align 32
@wm1192_pmic_led = internal global { %struct.gpio_led_platform_data, [20 x i8] } { %struct.gpio_led_platform_data { i32 1, ptr @wm1192_pmic_leds, ptr null }, [20 x i8] zeroinitializer }, align 32
@wm1192_pmic_leds = internal global { [1 x %struct.gpio_led], [44 x i8] } { [1 x %struct.gpio_led] [%struct.gpio_led { ptr @.str.8, ptr null, i32 207, i8 8, ptr null }], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PMIC:red:power\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED7:green:\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED8:green:\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_ARM\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vddarm_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.13 }], [24 x i8] zeroinitializer }, align 32
@smdk6410_vddarm = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.11, i32 1000000, i32 1300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 1, ptr @smdk6410_vddarm_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddarm\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_INT\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vddint = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.14, i32 1000000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PVDD_MEM+PVDD_GPS\00", [46 x i8] zeroinitializer }, align 32
@wm1192_dcdc3 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PVDD_LCD+PVDD_EXT\00", [46 x i8] zeroinitializer }, align 32
@wm1192_ldo1_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.20, ptr @.str.21 }], [24 x i8] zeroinitializer }, align 32
@wm1192_ldo1 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 1, ptr @wm1192_ldo1_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0-001b\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PVDD_UH+PVDD_MMC\00", [47 x i8] zeroinitializer }, align 32
@smdk6410_vdduh_mmc = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PVDD_OTGI\00", [22 x i8] zeroinitializer }, align 32
@smdk6410_vddotgi = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_OTG\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vddotg = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PVDD_HI\00", [24 x i8] zeroinitializer }, align 32
@smdk6410_vddhi = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PVDD_AUDIO\00", [21 x i8] zeroinitializer }, align 32
@smdk6410_vddaudio = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PVCCM2MTV\00", [22 x i8] zeroinitializer }, align 32
@smdk6410_vccm2mtv = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_PLL\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vddpll = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.34, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVCCM3BT\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vccmc3bt = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PVDD_ALIVE\00", [21 x i8] zeroinitializer }, align 32
@smdk6410_vddalive = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wm1190_regulators = internal constant { [8 x %struct.anon.90], [32 x i8] } { [8 x %struct.anon.90] [%struct.anon.90 { i32 0, ptr @wm8350_dcdc1_data }, %struct.anon.90 { i32 2, ptr @wm8350_dcdc3_data }, %struct.anon.90 { i32 3, ptr @wm8350_dcdc4_data }, %struct.anon.90 { i32 5, ptr @smdk6410_vddarm }, %struct.anon.90 { i32 6, ptr @smdk6410_vddalive }, %struct.anon.90 { i32 7, ptr @smdk6410_vddotg }, %struct.anon.90 { i32 8, ptr @smdk6410_vddlcd }, %struct.anon.90 { i32 9, ptr @wm8350_ldo4_data }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PVDD_INT+PVDD_PLL\00", [46 x i8] zeroinitializer }, align 32
@wm8350_dcdc1_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.40, i32 1200000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -96, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_MEM\00", [23 x i8] zeroinitializer }, align 32
@wm8350_dcdc3_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.42, i32 1800000, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state { i32 1800000, i32 0, i32 0, i32 2, i32 1, i8 0 }, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PVDD_HI+PVDD_EXT+PVDD_SYS+PVCCM2MTV\00", [60 x i8] zeroinitializer }, align 32
@wm8350_dcdc4_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.20, ptr @.str.21 }], [24 x i8] zeroinitializer }, align 32
@wm8350_dcdc4_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.44, i32 3000000, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 1, ptr @wm8350_dcdc4_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_LCD\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_vddlcd = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PVDD_OTGI+HPVDD+AVDD\00", [43 x i8] zeroinitializer }, align 32
@wm8350_ldo4_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.48, i32 1200000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -96, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc0 = external dso_local global %struct.platform_device, align 8
@s3c_device_i2c0 = external dso_local global %struct.platform_device, align 8
@s3c_device_i2c1 = external dso_local global %struct.platform_device, align 8
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@s3c_device_ohci = external dso_local global %struct.platform_device, align 8
@samsung_device_pwm = external dso_local global %struct.platform_device, align 8
@s3c_device_usb_hsotg = external dso_local global %struct.platform_device, align 8
@s3c64xx_device_iisv4 = external dso_local global %struct.platform_device, align 8
@samsung_device_keypad = external dso_local global %struct.platform_device, align 8
@smdk6410_b_pwr_5v = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.50, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smdk6410_b_pwr_5v_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smdk6410_lcd_powerdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.55, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_fb, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smdk6410_lcd_power_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smdk6410_smsc911x = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.56, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smdk6410_smsc911x_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @smdk6410_smsc911x_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_device_adc = external dso_local global %struct.platform_device, align 8
@s3c_device_cfcon = external dso_local global %struct.platform_device, align 8
@s3c_device_rtc = external dso_local global %struct.platform_device, align 8
@s3c_device_wdt = external dso_local global %struct.platform_device, align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg-fixed-voltage\00", [46 x i8] zeroinitializer }, align 32
@smdk6410_b_pwr_5v_pdata = internal global { %struct.fixed_voltage_config, [36 x i8] } { %struct.fixed_voltage_config { ptr @.str.51, ptr null, i32 5000000, i32 0, i32 0, i8 0, ptr @smdk6410_b_pwr_5v_data }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"B_PWR_5V\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_b_pwr_5v_consumers = internal global { [2 x %struct.regulator_consumer_supply], [16 x i8] } { [2 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.20, ptr @.str.53 }, %struct.regulator_consumer_supply { ptr @.str.20, ptr @.str.54 }], [16 x i8] zeroinitializer }, align 32
@smdk6410_b_pwr_5v_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 2, ptr @smdk6410_b_pwr_5v_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-lcd\00", [19 x i8] zeroinitializer }, align 32
@smdk6410_lcd_power_data = internal global { %struct.plat_lcd_data, [20 x i8] } { %struct.plat_lcd_data { ptr null, ptr @smdk6410_lcd_power_set, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc911x\00", [23 x i8] zeroinitializer }, align 32
@smdk6410_smsc911x_pdata = internal global { %struct.smsc911x_platform_config, [36 x i8] } { %struct.smsc911x_platform_config { i32 0, i32 0, i32 6, i32 0, i32 2, [6 x i8] zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@smdk6410_smsc911x_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 402653184, i32 402718719, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 111, i32 111, ptr null, i32 1032, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm-backlight.0\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 698, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"smdk6410_iodesc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 257, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"smdk6410_hsotg_pdata\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 627, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 684, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"smdk6410_pwm_lookup\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 618, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"smdk6410_bl_gpio_info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 613, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"smdk6410_bl_data\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 623, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"smdk6410_fb_win0\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 142, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"smdk6410_lcd_timing\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 151, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"smdk6410_wm1192_pdata\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 559, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"wm1192_backlight_pdata\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 526, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"wm1192_led7_pdata\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 551, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"wm1192_led8_pdata\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 555, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"wm1192_pmic_led_dev\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 504, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 521, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 505, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"wm1192_pmic_led\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 499, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"wm1192_pmic_leds\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 491, i32 24 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 493, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 552, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 556, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 296, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"smdk6410_vddarm_consumers\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 289, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"smdk6410_vddarm\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 294, i32 50 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 290, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 309, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"smdk6410_vddint\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 307, i32 50 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 533, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"wm1192_dcdc3\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 531, i32 50 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 544, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"wm1192_ldo1_consumers\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 538, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"wm1192_ldo1\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 542, i32 50 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 539, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 336, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"smdk6410_vdduh_mmc\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 334, i32 50 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 368, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"smdk6410_vddotgi\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 366, i32 50 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 376, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"smdk6410_vddotg\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 374, i32 50 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 320, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"smdk6410_vddhi\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 318, i32 50 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 392, i32 11 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"smdk6410_vddaudio\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 390, i32 50 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 352, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"smdk6410_vccm2mtv\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 350, i32 50 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 328, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [16 x i8] c"smdk6410_vddpll\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 326, i32 50 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 344, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"smdk6410_vccmc3bt\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 342, i32 50 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 384, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"smdk6410_vddalive\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 382, i32 50 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"wm1190_regulators\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 456, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 402, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant [18 x i8] c"wm8350_dcdc1_data\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 400, i32 50 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 413, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"wm8350_dcdc3_data\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 411, i32 50 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 433, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant [23 x i8] c"wm8350_dcdc4_consumers\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 427, i32 41 }
@___asan_gen_.251 = private unnamed_addr constant [18 x i8] c"wm8350_dcdc4_data\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 431, i32 50 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 360, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"smdk6410_vddlcd\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 358, i32 50 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 445, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"wm8350_ldo4_data\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 443, i32 50 }
@___asan_gen_.266 = private unnamed_addr constant [18 x i8] c"smdk6410_b_pwr_5v\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 225, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant [22 x i8] c"smdk6410_lcd_powerdev\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 136, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant [18 x i8] c"smdk6410_smsc911x\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 195, i32 31 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 226, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant [24 x i8] c"smdk6410_b_pwr_5v_pdata\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 219, i32 36 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 220, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant [28 x i8] c"smdk6410_b_pwr_5v_consumers\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 206, i32 41 }
@___asan_gen_.287 = private unnamed_addr constant [23 x i8] c"smdk6410_b_pwr_5v_data\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 211, i32 50 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 208, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 137, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [24 x i8] c"smdk6410_lcd_power_data\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 132, i32 29 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 196, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant [24 x i8] c"smdk6410_smsc911x_pdata\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 187, i32 40 }
@___asan_gen_.308 = private unnamed_addr constant [28 x i8] c"smdk6410_smsc911x_resources\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 181, i32 24 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [37 x i8] c"../arch/arm/mach-s3c/mach-smdk6410.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 619, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__mach_desc_SMDK6410, ptr @wm1192_pre_init._entry, ptr @wm1192_pre_init._entry_ptr, ptr @.str, ptr @smdk6410_iodesc, ptr @smdk6410_hsotg_pdata, ptr @.str.1, ptr @smdk6410_pwm_lookup, ptr @smdk6410_bl_gpio_info, ptr @smdk6410_bl_data, ptr @smdk6410_fb_win0, ptr @smdk6410_lcd_timing, ptr @smdk6410_wm1192_pdata, ptr @wm1192_backlight_pdata, ptr @wm1192_led7_pdata, ptr @wm1192_led8_pdata, ptr @wm1192_pmic_led_dev, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wm1192_pmic_led, ptr @wm1192_pmic_leds, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @smdk6410_vddarm_consumers, ptr @smdk6410_vddarm, ptr @.str.13, ptr @.str.14, ptr @smdk6410_vddint, ptr @.str.16, ptr @wm1192_dcdc3, ptr @.str.18, ptr @wm1192_ldo1_consumers, ptr @wm1192_ldo1, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @smdk6410_vdduh_mmc, ptr @.str.24, ptr @smdk6410_vddotgi, ptr @.str.26, ptr @smdk6410_vddotg, ptr @.str.28, ptr @smdk6410_vddhi, ptr @.str.30, ptr @smdk6410_vddaudio, ptr @.str.32, ptr @smdk6410_vccm2mtv, ptr @.str.34, ptr @smdk6410_vddpll, ptr @.str.36, ptr @smdk6410_vccmc3bt, ptr @.str.38, ptr @smdk6410_vddalive, ptr @wm1190_regulators, ptr @.str.40, ptr @wm8350_dcdc1_data, ptr @.str.42, ptr @wm8350_dcdc3_data, ptr @.str.44, ptr @wm8350_dcdc4_consumers, ptr @wm8350_dcdc4_data, ptr @.str.46, ptr @smdk6410_vddlcd, ptr @.str.48, ptr @wm8350_ldo4_data, ptr @smdk6410_b_pwr_5v, ptr @smdk6410_lcd_powerdev, ptr @smdk6410_smsc911x, ptr @.str.50, ptr @smdk6410_b_pwr_5v_pdata, ptr @.str.51, ptr @smdk6410_b_pwr_5v_consumers, ptr @smdk6410_b_pwr_5v_data, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @smdk6410_lcd_power_data, ptr @.str.56, ptr @smdk6410_smsc911x_pdata, ptr @smdk6410_smsc911x_resources, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_iodesc to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_hsotg_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_pwm_lookup to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_bl_gpio_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_bl_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_fb_win0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_lcd_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_wm1192_pdata to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_backlight_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_led7_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_led8_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_pmic_led_dev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_pre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_pmic_led to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_pmic_leds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddarm_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddarm to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddint to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_dcdc3 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_ldo1_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1192_ldo1 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vdduh_mmc to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddotgi to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddotg to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddhi to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddaudio to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vccm2mtv to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddpll to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vccmc3bt to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddalive to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1190_regulators to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc1_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc3_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc4_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dcdc4_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_vddlcd to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_ldo4_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_b_pwr_5v to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_lcd_powerdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_smsc911x to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_b_pwr_5v_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_b_pwr_5v_consumers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_b_pwr_5v_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_lcd_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_smsc911x_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk6410_smsc911x_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smdk6410_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef nonnull @smdk6410_iodesc, i32 noundef 0) #4
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #4
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @smdk6410_uartcfgs, i32 noundef 4) #4
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr)) #4, !srcloc !196
  %and = and i32 %0, -4
  %or = or i32 %and, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr), i32 %or) #4, !srcloc !197
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr)) #4, !srcloc !196
  %and2 = and i32 %1, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr), i32 %and2) #4, !srcloc !197
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smdk6410_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_i2c0_set_platdata(ptr noundef null) #4
  tail call void @s3c_i2c1_set_platdata(ptr noundef null) #4
  tail call void @s3c_fb_set_platdata(ptr noundef nonnull @smdk6410_lcd_pdata) #4
  tail call void @dwc2_hsotg_set_platdata(ptr noundef nonnull @smdk6410_hsotg_pdata) #4
  tail call void @samsung_keypad_set_platdata(ptr noundef nonnull @smdk6410_keypad_data) #4
  tail call void @s3c64xx_ts_set_platdata(ptr noundef null) #4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -165675008 to ptr)) #4, !srcloc !196
  %and = and i32 %0, -241
  %or = or i32 %and, 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -165675008 to ptr), i32 %or) #4, !srcloc !197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -165675000 to ptr), i32 68031584) #4, !srcloc !197
  %call1 = tail call i32 @gpio_request(i32 noundef 149, ptr noundef nonnull @.str.1) #4
  %call2 = tail call i32 @gpio_request(i32 noundef 51, ptr noundef nonnull @.str.1) #4
  %call3 = tail call i32 @i2c_register_board_info(i32 noundef 0, ptr noundef nonnull @i2c_devs0, i32 noundef 4) #4
  %call4 = tail call i32 @i2c_register_board_info(i32 noundef 1, ptr noundef nonnull @i2c_devs1, i32 noundef 1) #4
  tail call void @s3c_ide_set_platdata(ptr noundef nonnull @smdk6410_ide_pdata) #4
  %call5 = tail call i32 @platform_add_devices(ptr noundef nonnull @smdk6410_devices, i32 noundef 16) #4
  tail call void @pwm_add_table(ptr noundef nonnull @smdk6410_pwm_lookup, i32 noundef 1) #4
  tail call void @samsung_bl_set(ptr noundef nonnull @smdk6410_bl_gpio_info, ptr noundef nonnull @smdk6410_bl_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_init_io(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_set_xtal_freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c24xx_init_uarts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_set_timer_source(i32 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c0_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c1_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_keypad_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_ts_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_board_info(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_ide_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_add_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @samsung_bl_set(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1192_pre_init(ptr nocapture noundef readonly %wm831x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_setpull(i32 noundef 156, i32 noundef 2) #4
  %call1 = tail call i32 @platform_device_register(ptr noundef nonnull @wm1192_pmic_led_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_setpull(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smdk6410_wm8350_init(ptr noundef %wm8350) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_setpull(i32 noundef 156, i32 noundef 2) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.anon.90], ptr @wm1190_regulators, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %initdata = getelementptr [8 x %struct.anon.90], ptr @wm1190_regulators, i32 0, i32 %i.06, i32 1
  %2 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %initdata, align 4
  %call2 = tail call i32 @wm8350_register_regulator(ptr noundef %wm8350, i32 noundef %1, ptr noundef %3) #4
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_register_regulator(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_ide_setup_gpio() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smdk6410_lcd_power_set(ptr nocapture noundef readnone %pd, i32 noundef %power) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool.not = icmp eq i32 %power, 0
  %call.i8 = tail call ptr @gpio_to_desc(i32 noundef 51) #4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i8, i32 noundef 1) #4
  %call.i4 = tail call ptr @gpio_to_desc(i32 noundef 149) #4
  %call1.i5 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i4, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 10) #4
  %call.i6 = tail call ptr @gpio_to_desc(i32 noundef 149) #4
  %call1.i7 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i6, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i9 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i8, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 698, i32 1}
!2 = !{ptr @__mach_desc_SMDK6410, !1, !"__mach_desc_SMDK6410", i1 false, i1 false}
!3 = !{ptr @smdk6410_iodesc, !4, !"smdk6410_iodesc", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 257, i32 24}
!5 = !{ptr @smdk6410_uartcfgs, !6, !"smdk6410_uartcfgs", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 77, i32 31}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 684, i32 31}
!9 = !{ptr @smdk6410_lcd_pdata, !10, !"smdk6410_lcd_pdata", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 163, i32 31}
!11 = !{ptr @smdk6410_fb_win0, !12, !"smdk6410_fb_win0", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 142, i32 29}
!13 = !{ptr @smdk6410_lcd_timing, !14, !"smdk6410_lcd_timing", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 151, i32 28}
!15 = !{ptr @smdk6410_hsotg_pdata, !16, !"smdk6410_hsotg_pdata", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 627, i32 31}
!17 = !{ptr @smdk6410_keypad_data, !18, !"smdk6410_keypad_data", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 251, i32 39}
!19 = !{ptr @smdk6410_keymap_data, !20, !"smdk6410_keymap_data", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 246, i32 34}
!21 = !{ptr @smdk6410_keymap, !22, !"smdk6410_keymap", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 238, i32 17}
!23 = !{ptr @i2c_devs0, !24, !"i2c_devs0", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 589, i32 30}
!25 = !{ptr @smdk6410_wm1192_pdata, !26, !"smdk6410_wm1192_pdata", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 559, i32 28}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 521, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm1192_pre_init._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm1192_pre_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 505, i32 19}
!37 = !{ptr @wm1192_pmic_led_dev, !38, !"wm1192_pmic_led_dev", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 504, i32 31}
!39 = !{ptr @wm1192_pmic_led, !40, !"wm1192_pmic_led", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 499, i32 38}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 493, i32 11}
!43 = !{ptr @wm1192_pmic_leds, !44, !"wm1192_pmic_leds", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 491, i32 24}
!45 = !{ptr @wm1192_backlight_pdata, !46, !"wm1192_backlight_pdata", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 526, i32 38}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 552, i32 10}
!49 = !{ptr @wm1192_led7_pdata, !50, !"wm1192_led7_pdata", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 551, i32 35}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 556, i32 10}
!53 = !{ptr @wm1192_led8_pdata, !54, !"wm1192_led8_pdata", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 555, i32 35}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 296, i32 11}
!57 = !{ptr @smdk6410_vddarm, !58, !"smdk6410_vddarm", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 294, i32 50}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 290, i32 2}
!61 = !{ptr @smdk6410_vddarm_consumers, !62, !"smdk6410_vddarm_consumers", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 289, i32 41}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 309, i32 11}
!65 = !{ptr @smdk6410_vddint, !66, !"smdk6410_vddint", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 307, i32 50}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 533, i32 11}
!69 = !{ptr @wm1192_dcdc3, !70, !"wm1192_dcdc3", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 531, i32 50}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 544, i32 11}
!73 = !{ptr @wm1192_ldo1, !74, !"wm1192_ldo1", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 542, i32 50}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 539, i32 2}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wm1192_ldo1_consumers, !79, !"wm1192_ldo1_consumers", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 538, i32 41}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 336, i32 11}
!82 = !{ptr @smdk6410_vdduh_mmc, !83, !"smdk6410_vdduh_mmc", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 334, i32 50}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 368, i32 11}
!86 = !{ptr @smdk6410_vddotgi, !87, !"smdk6410_vddotgi", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 366, i32 50}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 376, i32 11}
!90 = !{ptr @smdk6410_vddotg, !91, !"smdk6410_vddotg", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 374, i32 50}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 320, i32 11}
!94 = !{ptr @smdk6410_vddhi, !95, !"smdk6410_vddhi", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 318, i32 50}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 392, i32 11}
!98 = !{ptr @smdk6410_vddaudio, !99, !"smdk6410_vddaudio", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 390, i32 50}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 352, i32 11}
!102 = !{ptr @smdk6410_vccm2mtv, !103, !"smdk6410_vccm2mtv", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 350, i32 50}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 328, i32 11}
!106 = !{ptr @smdk6410_vddpll, !107, !"smdk6410_vddpll", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 326, i32 50}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 344, i32 11}
!110 = !{ptr @smdk6410_vccmc3bt, !111, !"smdk6410_vccmc3bt", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 342, i32 50}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 384, i32 11}
!114 = !{ptr @smdk6410_vddalive, !115, !"smdk6410_vddalive", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 382, i32 50}
!116 = !{ptr @smdk6410_wm8350_pdata, !117, !"smdk6410_wm8350_pdata", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 483, i32 47}
!118 = !{ptr @wm1190_regulators, !119, !"wm1190_regulators", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 456, i32 3}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 402, i32 11}
!122 = !{ptr @wm8350_dcdc1_data, !123, !"wm8350_dcdc1_data", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 400, i32 50}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 413, i32 11}
!126 = !{ptr @wm8350_dcdc3_data, !127, !"wm8350_dcdc3_data", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 411, i32 50}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 433, i32 11}
!130 = !{ptr @wm8350_dcdc4_data, !131, !"wm8350_dcdc4_data", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 431, i32 50}
!132 = !{ptr @wm8350_dcdc4_consumers, !133, !"wm8350_dcdc4_consumers", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 427, i32 41}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 360, i32 11}
!136 = !{ptr @smdk6410_vddlcd, !137, !"smdk6410_vddlcd", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 358, i32 50}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 445, i32 11}
!140 = !{ptr @wm8350_ldo4_data, !141, !"wm8350_ldo4_data", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 443, i32 50}
!142 = !{ptr @i2c_devs1, !143, !"i2c_devs1", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 608, i32 30}
!144 = !{ptr @smdk6410_ide_pdata, !145, !"smdk6410_ide_pdata", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 234, i32 32}
!146 = !{ptr @smdk6410_devices, !147, !"smdk6410_devices", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 259, i32 32}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 226, i32 19}
!150 = !{ptr @smdk6410_b_pwr_5v, !151, !"smdk6410_b_pwr_5v", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 225, i32 31}
!152 = !{ptr @.str.51, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 220, i32 17}
!154 = !{ptr @smdk6410_b_pwr_5v_pdata, !155, !"smdk6410_b_pwr_5v_pdata", i1 false, i1 false}
!155 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 219, i32 36}
!156 = !{ptr @smdk6410_b_pwr_5v_data, !157, !"smdk6410_b_pwr_5v_data", i1 false, i1 false}
!157 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 211, i32 50}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 207, i32 2}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 208, i32 2}
!162 = !{ptr @smdk6410_b_pwr_5v_consumers, !163, !"smdk6410_b_pwr_5v_consumers", i1 false, i1 false}
!163 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 206, i32 41}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 137, i32 12}
!166 = !{ptr @smdk6410_lcd_powerdev, !167, !"smdk6410_lcd_powerdev", i1 false, i1 false}
!167 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 136, i32 31}
!168 = !{ptr @smdk6410_lcd_power_data, !169, !"smdk6410_lcd_power_data", i1 false, i1 false}
!169 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 132, i32 29}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 196, i32 19}
!172 = !{ptr @smdk6410_smsc911x, !173, !"smdk6410_smsc911x", i1 false, i1 false}
!173 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 195, i32 31}
!174 = !{ptr @smdk6410_smsc911x_pdata, !175, !"smdk6410_smsc911x_pdata", i1 false, i1 false}
!175 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 187, i32 40}
!176 = !{ptr @smdk6410_smsc911x_resources, !177, !"smdk6410_smsc911x_resources", i1 false, i1 false}
!177 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 181, i32 24}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 619, i32 2}
!180 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @smdk6410_pwm_lookup, !182, !"smdk6410_pwm_lookup", i1 false, i1 false}
!182 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 618, i32 26}
!183 = !{ptr @smdk6410_bl_gpio_info, !184, !"smdk6410_bl_gpio_info", i1 false, i1 false}
!184 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 613, i32 36}
!185 = !{ptr @smdk6410_bl_data, !186, !"smdk6410_bl_data", i1 false, i1 false}
!186 = !{!"../arch/arm/mach-s3c/mach-smdk6410.c", i32 623, i32 43}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 4213894}
!197 = !{i64 4213476}
