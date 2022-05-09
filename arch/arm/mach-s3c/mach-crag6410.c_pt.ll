; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-crag6410.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-crag6410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.s3c2410_platform_i2c = type { i32, i32, i32, i32, i32, ptr }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.samsung_keypad_platdata = type { ptr, i32, i32, i8, i8, ptr }
%struct.pwm_lookup = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.pca953x_platform_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_backup_pdata = type { i32, i32, i32, i32 }
%struct.wm831x_touch_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wm831x_status_pdata = type { i32, ptr, ptr }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.wm831x_buckv_pdata = type { i32, i32, i32 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm1250_ev1_pdata = type { [5 x i32] }
%struct.matrix_keymap_data = type { ptr, i32 }
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
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }
%struct.dm9000_plat_data = type { i32, [6 x i8], ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bgpio_pdata = type { ptr, i32, i32 }
%struct.plat_lcd_data = type { ptr, ptr, ptr }
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.fixed_voltage_config = type { ptr, ptr, i32, i32, i32, i8, ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wolfson Cragganmore 6410\00", [39 x i8] zeroinitializer }, align 32
@__mach_desc_WLF_CRAGG_6410 = internal constant %struct.machine_desc { i32 3207, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crag6410_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @crag6410_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@crag6410_uartcfgs = internal global [4 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 2, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 3, i8 0, i16 0, i32 0, i32 0, i32 0, i32 1925, i32 7, i32 17 }], section ".init.data", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LCD power\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LCD PWM\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SD power\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nRESETSEL\00", [22 x i8] zeroinitializer }, align 32
@crag6410_hsmmc0_pdata = internal global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 16384, i32 0, i32 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr @crag6410_cfg_sdhci0 }, [56 x i8] zeroinitializer }, align 32
@crag6410_hsmmc2_pdata = internal global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 16384, i32 0, i32 0, i32 4, i32 0, i8 0, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@i2c0_pdata = internal global { %struct.s3c2410_platform_i2c, [40 x i8] } { %struct.s3c2410_platform_i2c { i32 0, i32 0, i32 0, i32 400000, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c1_pdata = internal global { %struct.s3c2410_platform_i2c, [40 x i8] } { %struct.s3c2410_platform_i2c { i32 1, i32 0, i32 0, i32 400000, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@crag6410_lcd_pdata = internal global { %struct.s3c_fb_platdata, [60 x i8] } { %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @crag6410_fb_win0, ptr null, ptr null, ptr null, ptr null], ptr @crag6410_lcd_timing, i32 0, i32 96 }, [60 x i8] zeroinitializer }, align 32
@crag6410_hsotg_pdata = internal global { %struct.dwc2_hsotg_plat, [44 x i8] } zeroinitializer, align 32
@i2c_devs0 = internal global { [3 x %struct.i2c_board_info], [56 x i8] } { [3 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"tca6408\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 32, ptr null, ptr @crag6410_pca_data, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wm8312\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 52, ptr null, ptr @crag_pmic_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 124 }], [56 x i8] zeroinitializer }, align 32
@i2c_devs1 = internal global { [7 x %struct.i2c_board_info], [120 x i8] } { [7 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm8311\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 52, ptr null, ptr @glenfarclas_pmic_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 101 }, %struct.i2c_board_info { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i16 0, i16 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i16 0, i16 34, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i16 0, i16 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i16 0, i16 37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i16 0, i16 38, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"wm1250-ev1\00\00\00\00\00\00\00\00\00\00", i16 0, i16 39, ptr null, ptr @wm1250_ev1_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [120 x i8] zeroinitializer }, align 32
@crag6410_keypad_data = internal global { %struct.samsung_keypad_platdata, [44 x i8] } { %struct.samsung_keypad_platdata { ptr @crag6410_keymap_data, i32 2, i32 6, i8 0, i8 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@crag6410_pwm_lookup = internal global { [1 x %struct.pwm_lookup], [60 x i8] } { [1 x %struct.pwm_lookup] [%struct.pwm_lookup { %struct.list_head zeroinitializer, ptr @.str.67, i32 0, ptr @.str.68, ptr null, i32 100000, i32 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@crag6410_devices = internal global [25 x ptr] [ptr @s3c_device_hsmmc0, ptr @s3c_device_hsmmc2, ptr @s3c_device_i2c0, ptr @s3c_device_i2c1, ptr @s3c_device_fb, ptr @s3c_device_ohci, ptr @s3c_device_usb_hsotg, ptr @samsung_device_pwm, ptr @s3c64xx_device_iis0, ptr @s3c64xx_device_iis1, ptr @samsung_device_keypad, ptr @crag6410_gpio_keydev, ptr @crag6410_dm9k_device, ptr @s3c64xx_device_spi0, ptr @crag6410_mmgpio, ptr @crag6410_lcd_powerdev, ptr @crag6410_backlight_device, ptr @speyside_device, ptr @tobermory_device, ptr @littlemill_device, ptr @lowland_device, ptr @bells_wm2200_device, ptr @bells_wm5102_device, ptr @bells_wm5110_device, ptr @wallvdd_device], section ".init.data", align 4
@gpio_leds_pdata = internal constant { %struct.gpio_led_platform_data, [20 x i8] } { %struct.gpio_led_platform_data { i32 8, ptr @gpio_leds, ptr null }, [20 x i8] zeroinitializer }, align 32
@crag6410_fb_win0 = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 640, i16 480, i16 640, i16 960 }, [20 x i8] zeroinitializer }, align 32
@crag6410_lcd_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 640, i32 480, i32 0, i32 150, i32 80, i32 40, i32 5, i32 40, i32 5, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x-buckv.11\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIOK\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvs\00", [28 x i8] zeroinitializer }, align 32
@crag_pmic_gpiod_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.5, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.6, i16 0, ptr @.str.7, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@crag6410_pca_data = internal global { %struct.pca953x_platform_data, [36 x i8] } { %struct.pca953x_platform_data { i32 204, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@crag_pmic_pdata = internal global { %struct.wm831x_pdata, [32 x i8] } { %struct.wm831x_pdata { i32 1, ptr null, ptr null, i8 0, i8 0, i8 1, i32 293, i32 268, [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 33928, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1158, i32 1159, i32 0, i32 0, i32 0, i32 0], ptr null, ptr @banff_backup_pdata, ptr null, ptr @touch_pdata, ptr null, [2 x ptr] [ptr @banff_green_led, ptr @banff_red_led], [4 x ptr] [ptr @vddarm, ptr @vddint, ptr @vddmem, ptr null], [2 x ptr] zeroinitializer, [11 x ptr] [ptr @vddsys, ptr @vddmmc, ptr null, ptr @vddotgi, ptr @vddotg, ptr @vddhi, ptr @vddadc, ptr @vddmem0, ptr @vddpll, ptr @vddlcd, ptr @vddalive], [2 x ptr] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@banff_backup_pdata = internal global { %struct.wm831x_backup_pdata, [16 x i8] } { %struct.wm831x_backup_pdata { i32 1, i32 0, i32 2500, i32 200 }, [16 x i8] zeroinitializer }, align 32
@touch_pdata = internal global { %struct.wm831x_touch_pdata, [32 x i8] } { %struct.wm831x_touch_pdata { i32 0, i32 0, i32 0, i32 0, i32 127, i32 0, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@banff_green_led = internal global { %struct.wm831x_status_pdata, [20 x i8] } { %struct.wm831x_status_pdata { i32 4, ptr @.str.9, ptr null }, [20 x i8] zeroinitializer }, align 32
@banff_red_led = internal global { %struct.wm831x_status_pdata, [20 x i8] } { %struct.wm831x_status_pdata { i32 4, ptr @.str.10, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"banff:green:\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"banff:red:\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WALLVDD\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDARM\00", [25 x i8] zeroinitializer }, align 32
@vddarm_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.14 }], [24 x i8] zeroinitializer }, align 32
@vddarm_pdata = internal global { %struct.wm831x_buckv_pdata, [20 x i8] } { %struct.wm831x_buckv_pdata { i32 1, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vddarm = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.12, i32 1000000, i32 1300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 1, ptr @vddarm_consumers, ptr null, ptr @vddarm_pdata }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddarm\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDINT\00", [25 x i8] zeroinitializer }, align 32
@vddint_consumers = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.17 }], [24 x i8] zeroinitializer }, align 32
@vddint = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.15, i32 1000000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 1, ptr @vddint_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddint\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDMEM\00", [25 x i8] zeroinitializer }, align 32
@vddmem = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VDDSYS,VDDEXT,VDDPCM,VDDSS\00", [37 x i8] zeroinitializer }, align 32
@vddsys = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VDDMMC,UH\00", [22 x i8] zeroinitializer }, align 32
@vddmmc_consumers = internal global { [3 x %struct.regulator_consumer_supply], [40 x i8] } { [3 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.24, ptr @.str.25 }, %struct.regulator_consumer_supply { ptr @.str.26, ptr @.str.25 }, %struct.regulator_consumer_supply { ptr @.str.27, ptr @.str.25 }], [40 x i8] zeroinitializer }, align 32
@vddmmc = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 3, ptr @vddmmc_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c-sdhci.0\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vmmc\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c-sdhci.1\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c-sdhci.2\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VDDOTGi\00", [24 x i8] zeroinitializer }, align 32
@vddotgi = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDOTG\00", [25 x i8] zeroinitializer }, align 32
@vddotg = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDHI\00", [26 x i8] zeroinitializer }, align 32
@vddhi = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VDDADC,VDDDAC\00", [18 x i8] zeroinitializer }, align 32
@vddadc = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.34, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VDDMEM0\00", [24 x i8] zeroinitializer }, align 32
@vddmem0 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDPLL\00", [25 x i8] zeroinitializer }, align 32
@vddpll = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDDLCD\00", [25 x i8] zeroinitializer }, align 32
@vddlcd = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.40, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VDDALIVE\00", [23 x i8] zeroinitializer }, align 32
@vddalive = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr @.str.11, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wm1250_ev1_pdata = internal global { %struct.wm1250_ev1_pdata, [44 x i8] } { %struct.wm1250_ev1_pdata { [5 x i32] [i32 156, i32 133, i32 134, i32 135, i32 129] }, [44 x i8] zeroinitializer }, align 32
@glenfarclas_pmic_pdata = internal global { { i32, ptr, ptr, i8, i8, i8, i32, i32, <{ i32, i32, i32, [13 x i32] }>, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }, [32 x i8] } { { i32, ptr, ptr, i8, i8, i8, i32, i32, <{ i32, i32, i32, [13 x i32] }>, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] } { i32 2, ptr null, ptr null, i8 0, i8 1, i8 1, i32 229, i32 236, <{ i32, i32, i32, [13 x i32] }> <{ i32 33920, i32 33920, i32 33920, [13 x i32] zeroinitializer }>, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, [4 x ptr] [ptr @pvdd_1v2, ptr @pvdd_1v8, ptr @pvdd_3v3, ptr null], [2 x ptr] zeroinitializer, [11 x ptr] zeroinitializer, [2 x ptr] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_1V2\00", [23 x i8] zeroinitializer }, align 32
@pvdd_1v2_consumers = internal global { [3 x %struct.regulator_consumer_supply], [40 x i8] } { [3 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.47, ptr @.str.48 }, %struct.regulator_consumer_supply { ptr @.str.47, ptr @.str.49 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.49 }], [40 x i8] zeroinitializer }, align 32
@pvdd_1v2 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.45, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 3, ptr @pvdd_1v2_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi0.0\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi0.1\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_1V8\00", [23 x i8] zeroinitializer }, align 32
@pvdd_1v8_consumers = internal global { [20 x %struct.regulator_consumer_supply], [32 x i8] } { [20 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.54 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.55 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.56 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.57 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.58 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.59 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.60 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.61 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.48 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.49 }, %struct.regulator_consumer_supply { ptr @.str.47, ptr @.str.56 }, %struct.regulator_consumer_supply { ptr @.str.62, ptr @.str.56 }, %struct.regulator_consumer_supply { ptr @.str.62, ptr @.str.54 }, %struct.regulator_consumer_supply { ptr @.str.62, ptr @.str.60 }, %struct.regulator_consumer_supply { ptr @.str.62, ptr @.str.49 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.57 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.58 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.59 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.54 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.60 }], [32 x i8] zeroinitializer }, align 32
@pvdd_1v8 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.51, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 20, ptr @pvdd_1v8_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1-001a\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDOVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLLVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD2\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD3\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1-003a\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PVDD_3V3\00", [23 x i8] zeroinitializer }, align 32
@pvdd_3v3_consumers = internal global { [2 x %struct.regulator_consumer_supply], [16 x i8] } { [2 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.65 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.66 }], [16 x i8] zeroinitializer }, align 32
@pvdd_3v3 = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 2, ptr @pvdd_3v3_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@crag6410_keymap_data = internal global { %struct.matrix_keymap_data, [24 x i8] } { %struct.matrix_keymap_data { ptr @crag6410_keymap, i32 12 }, [24 x i8] zeroinitializer }, align 32
@crag6410_keymap = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 115, i32 65638, i32 131186, i32 196746, i32 262283, i32 327906, i32 16777448, i32 16842860, i32 16908393, i32 16973927, i32 17039466, i32 17105108], [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm-backlight\00", [18 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc0 = external dso_local global %struct.platform_device, align 8
@s3c_device_hsmmc2 = external dso_local global %struct.platform_device, align 8
@s3c_device_i2c0 = external dso_local global %struct.platform_device, align 8
@s3c_device_i2c1 = external dso_local global %struct.platform_device, align 8
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@s3c_device_ohci = external dso_local global %struct.platform_device, align 8
@s3c_device_usb_hsotg = external dso_local global %struct.platform_device, align 8
@samsung_device_pwm = external dso_local global %struct.platform_device, align 8
@s3c64xx_device_iis0 = external dso_local global %struct.platform_device, align 8
@s3c64xx_device_iis1 = external dso_local global %struct.platform_device, align 8
@samsung_device_keypad = external dso_local global %struct.platform_device, align 8
@crag6410_gpio_keydev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.69, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crag6410_gpio_keydata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@crag6410_dm9k_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.70, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mini6410_dm9k_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @crag6410_dm9k_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c64xx_device_spi0 = external dso_local global %struct.platform_device, align 8
@crag6410_mmgpio = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.71, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @crag6410_mmgpio_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@crag6410_lcd_powerdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.73, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_fb, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral.74, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@crag6410_backlight_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.68, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @samsung_device_pwm, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crag6410_backlight_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@speyside_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.79, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@tobermory_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.80, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@littlemill_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.81, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@lowland_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.82, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@bells_wm2200_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.83, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@bells_wm5102_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.83, i32 1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@bells_wm5110_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.83, i32 2, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@wallvdd_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.84, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wallvdd_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-keys\00", [22 x i8] zeroinitializer }, align 32
@crag6410_gpio_keydata = internal global { %struct.gpio_keys_platform_data, [36 x i8] } { %struct.gpio_keys_platform_data { ptr @crag6410_gpio_keys, i32 2, i32 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@crag6410_gpio_keys = internal global { [2 x %struct.gpio_keys_button], [40 x i8] } { [2 x %struct.gpio_keys_button] [%struct.gpio_keys_button { i32 205, i32 131, i32 1, ptr null, i32 1, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0 }, %struct.gpio_keys_button { i32 11, i32 155, i32 0, ptr null, i32 5, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm9000\00", [25 x i8] zeroinitializer }, align 32
@mini6410_dm9k_pdata = internal global { %struct.dm9000_plat_data, [40 x i8] } { %struct.dm9000_plat_data { i32 2, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@crag6410_dm9k_resource = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 939524096, i32 939524097, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 939524352, i32 939524353, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 118, i32 118, ptr null, i32 1028, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"basic-mmio-gpio\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.bgpio_pdata, [20 x i8] } { %struct.bgpio_pdata { ptr null, i32 300, i32 0 }, [20 x i8] zeroinitializer }, align 32
@crag6410_mmgpio_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 805306368, i32 805306368, ptr @.str.72, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dat\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-lcd\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.plat_lcd_data, [20 x i8] } { %struct.plat_lcd_data { ptr null, ptr @crag6410_lcd_power_set, ptr null }, [20 x i8] zeroinitializer }, align 32
@crag6410_lcd_power_set.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mach_crag6410\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"crag6410_lcd_power_set\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-s3c/mach-crag6410.c\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: setting power %d\0A\00", [42 x i8] zeroinitializer }, align 32
@crag6410_backlight_data = internal global { %struct.platform_pwm_backlight_data, [44 x i8] } { %struct.platform_pwm_backlight_data { i32 0, i32 1000, i32 600, i32 0, i32 0, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speyside\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tobermory\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"littlemill\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lowland\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bells\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg-fixed-voltage\00", [46 x i8] zeroinitializer }, align 32
@wallvdd_pdata = internal global { %struct.fixed_voltage_config, [36 x i8] } { %struct.fixed_voltage_config { ptr @.str.11, ptr null, i32 5000000, i32 0, i32 0, i8 0, ptr @wallvdd_data }, [36 x i8] zeroinitializer }, align 32
@wallvdd_consumers = internal global { [33 x %struct.regulator_consumer_supply], [88 x i8] } { [33 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.86 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.87 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.88 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.89 }, %struct.regulator_consumer_supply { ptr @.str.53, ptr @.str.90 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.89 }, %struct.regulator_consumer_supply { ptr @.str.50, ptr @.str.90 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.92 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.93 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.94 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.95 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.96 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.97 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.98 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.99 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.100 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.101 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.102 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.103 }, %struct.regulator_consumer_supply { ptr @.str.91, ptr @.str.104 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.92 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.93 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.94 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.95 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.96 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.97 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.98 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.99 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.100 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.101 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.102 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.103 }, %struct.regulator_consumer_supply { ptr @.str.105, ptr @.str.104 }], [88 x i8] zeroinitializer }, align 32
@wallvdd_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, i8 0 }, i32 33, ptr @wallvdd_consumers, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD1\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDD2\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDL\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKVDDR\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0-0034\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DC1VDD\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DC2VDD\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DC3VDD\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO1VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO2VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO4VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO5VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO6VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO7VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO8VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO9VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO10VDD\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO11VDD\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1-0034\00", [25 x i8] zeroinitializer }, align 32
@gpio_leds = internal constant { [8 x %struct.gpio_led], [32 x i8] } { [8 x %struct.gpio_led] [%struct.gpio_led { ptr @.str.106, ptr null, i32 300, i8 8, ptr null }, %struct.gpio_led { ptr @.str.107, ptr null, i32 301, i8 8, ptr null }, %struct.gpio_led { ptr @.str.108, ptr null, i32 302, i8 8, ptr null }, %struct.gpio_led { ptr @.str.109, ptr null, i32 303, i8 8, ptr null }, %struct.gpio_led { ptr @.str.110, ptr null, i32 304, i8 8, ptr null }, %struct.gpio_led { ptr @.str.111, ptr null, i32 305, i8 8, ptr null }, %struct.gpio_led { ptr @.str.112, ptr null, i32 306, i8 8, ptr null }, %struct.gpio_led { ptr @.str.113, ptr null, i32 307, i8 8, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d13:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d14:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d15:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d16:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d17:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d18:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d19:green:\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d20:green:\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 871, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 834, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 837, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 840, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 843, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"crag6410_hsmmc0_pdata\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 771, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"crag6410_hsmmc2_pdata\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 756, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"i2c0_pdata\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 625, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"i2c1_pdata\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 741, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"crag6410_lcd_pdata\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 171, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"crag6410_hsotg_pdata\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 826, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"i2c_devs0\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 614, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"i2c_devs1\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 726, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"crag6410_keypad_data\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 202, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"crag6410_pwm_lookup\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 107, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"gpio_leds_pdata\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 821, i32 44 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"crag6410_fb_win0\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 150, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"crag6410_lcd_timing\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 159, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 607, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 609, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"crag_pmic_gpiod_table\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 606, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"crag6410_pca_data\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 391, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"crag_pmic_pdata\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 551, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"banff_backup_pdata\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 530, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"touch_pdata\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 546, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"banff_green_led\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 541, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"banff_red_led\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 536, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 542, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 537, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 415, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 407, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"vddarm_consumers\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 401, i32 41 }
@___asan_gen_.213 = private unnamed_addr constant [13 x i8] c"vddarm_pdata\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 397, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant [7 x i8] c"vddarm\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 405, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 402, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 425, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"vddint_consumers\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 419, i32 41 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"vddint\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 423, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 420, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 438, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"vddmem\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 436, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 445, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"vddsys\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 443, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 458, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"vddmmc_consumers\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 450, i32 41 }
@___asan_gen_.252 = private unnamed_addr constant [7 x i8] c"vddmmc\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 456, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 451, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 452, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 453, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 468, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [8 x i8] c"vddotgi\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 466, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 476, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"vddotg\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 474, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 484, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"vddhi\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 482, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 492, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"vddadc\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 490, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 500, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant [8 x i8] c"vddmem0\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 498, i32 35 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 508, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"vddpll\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 506, i32 35 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 516, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"vddlcd\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 514, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 524, i32 11 }
@___asan_gen_.312 = private unnamed_addr constant [9 x i8] c"vddalive\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 522, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"wm1250_ev1_pdata\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 716, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant [23 x i8] c"glenfarclas_pmic_pdata\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 694, i32 28 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 637, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant [19 x i8] c"pvdd_1v2_consumers\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 629, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant [9 x i8] c"pvdd_1v2\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 635, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 630, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 631, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 632, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 671, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant [19 x i8] c"pvdd_1v8_consumers\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 645, i32 41 }
@___asan_gen_.348 = private unnamed_addr constant [9 x i8] c"pvdd_1v8\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 669, i32 35 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 646, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 647, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 648, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 649, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 650, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 651, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 652, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 653, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 658, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 686, i32 11 }
@___asan_gen_.384 = private unnamed_addr constant [19 x i8] c"pvdd_3v3_consumers\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 679, i32 41 }
@___asan_gen_.387 = private unnamed_addr constant [9 x i8] c"pvdd_3v3\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 684, i32 35 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 680, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 681, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [21 x i8] c"crag6410_keymap_data\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 197, i32 34 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"crag6410_keymap\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 181, i32 17 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 108, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"crag6410_gpio_keydev\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 228, i32 31 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"crag6410_dm9k_device\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 245, i32 31 }
@___asan_gen_.414 = private unnamed_addr constant [16 x i8] c"crag6410_mmgpio\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 257, i32 31 }
@___asan_gen_.417 = private unnamed_addr constant [22 x i8] c"crag6410_lcd_powerdev\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 140, i32 31 }
@___asan_gen_.420 = private unnamed_addr constant [26 x i8] c"crag6410_backlight_device\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 117, i32 31 }
@___asan_gen_.423 = private unnamed_addr constant [16 x i8] c"speyside_device\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 267, i32 31 }
@___asan_gen_.426 = private unnamed_addr constant [17 x i8] c"tobermory_device\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 277, i32 31 }
@___asan_gen_.429 = private unnamed_addr constant [18 x i8] c"littlemill_device\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 282, i32 31 }
@___asan_gen_.432 = private unnamed_addr constant [15 x i8] c"lowland_device\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 272, i32 31 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c"bells_wm2200_device\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 287, i32 31 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c"bells_wm5102_device\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 292, i32 31 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c"bells_wm5110_device\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 297, i32 31 }
@___asan_gen_.444 = private unnamed_addr constant [15 x i8] c"wallvdd_device\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 355, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 229, i32 11 }
@___asan_gen_.450 = private unnamed_addr constant [22 x i8] c"crag6410_gpio_keydata\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 223, i32 39 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"crag6410_gpio_keys\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 208, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 246, i32 11 }
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c"mini6410_dm9k_pdata\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 241, i32 32 }
@___asan_gen_.462 = private unnamed_addr constant [23 x i8] c"crag6410_dm9k_resource\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 234, i32 24 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 258, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [25 x i8] c"crag6410_mmgpio_resource\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 253, i32 24 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 254, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 141, i32 12 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 128, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [24 x i8] c"crag6410_backlight_data\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 112, i32 43 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 268, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 278, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 283, i32 11 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 273, i32 11 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 288, i32 11 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 356, i32 11 }
@___asan_gen_.512 = private unnamed_addr constant [14 x i8] c"wallvdd_pdata\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 349, i32 36 }
@___asan_gen_.515 = private unnamed_addr constant [18 x i8] c"wallvdd_consumers\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 302, i32 41 }
@___asan_gen_.518 = private unnamed_addr constant [13 x i8] c"wallvdd_data\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 341, i32 35 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 303, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 304, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 305, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 306, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 307, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 312, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 313, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 314, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 315, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 316, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 317, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 318, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 319, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 320, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 321, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 322, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 323, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 324, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 326, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [10 x i8] c"gpio_leds\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 778, i32 30 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 780, i32 11 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 785, i32 11 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 790, i32 11 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 795, i32 11 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 800, i32 11 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 805, i32 11 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 810, i32 11 }
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private constant [37 x i8] c"../arch/arm/mach-s3c/mach-crag6410.c\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 815, i32 11 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__mach_desc_WLF_CRAGG_6410, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @crag6410_hsmmc0_pdata, ptr @crag6410_hsmmc2_pdata, ptr @i2c0_pdata, ptr @i2c1_pdata, ptr @crag6410_lcd_pdata, ptr @crag6410_hsotg_pdata, ptr @i2c_devs0, ptr @i2c_devs1, ptr @crag6410_keypad_data, ptr @crag6410_pwm_lookup, ptr @gpio_leds_pdata, ptr @crag6410_fb_win0, ptr @crag6410_lcd_timing, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @crag_pmic_gpiod_table, ptr @crag6410_pca_data, ptr @crag_pmic_pdata, ptr @banff_backup_pdata, ptr @touch_pdata, ptr @banff_green_led, ptr @banff_red_led, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @vddarm_consumers, ptr @vddarm_pdata, ptr @vddarm, ptr @.str.14, ptr @.str.15, ptr @vddint_consumers, ptr @vddint, ptr @.str.17, ptr @.str.18, ptr @vddmem, ptr @.str.20, ptr @vddsys, ptr @.str.22, ptr @vddmmc_consumers, ptr @vddmmc, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @vddotgi, ptr @.str.30, ptr @vddotg, ptr @.str.32, ptr @vddhi, ptr @.str.34, ptr @vddadc, ptr @.str.36, ptr @vddmem0, ptr @.str.38, ptr @vddpll, ptr @.str.40, ptr @vddlcd, ptr @.str.42, ptr @vddalive, ptr @wm1250_ev1_pdata, ptr @glenfarclas_pmic_pdata, ptr @.str.45, ptr @pvdd_1v2_consumers, ptr @pvdd_1v2, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @pvdd_1v8_consumers, ptr @pvdd_1v8, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @pvdd_3v3_consumers, ptr @pvdd_3v3, ptr @.str.65, ptr @.str.66, ptr @crag6410_keymap_data, ptr @crag6410_keymap, ptr @.str.67, ptr @.str.68, ptr @crag6410_gpio_keydev, ptr @crag6410_dm9k_device, ptr @crag6410_mmgpio, ptr @crag6410_lcd_powerdev, ptr @crag6410_backlight_device, ptr @speyside_device, ptr @tobermory_device, ptr @littlemill_device, ptr @lowland_device, ptr @bells_wm2200_device, ptr @bells_wm5102_device, ptr @bells_wm5110_device, ptr @wallvdd_device, ptr @.str.69, ptr @crag6410_gpio_keydata, ptr @crag6410_gpio_keys, ptr @.str.70, ptr @mini6410_dm9k_pdata, ptr @crag6410_dm9k_resource, ptr @.str.71, ptr @.compoundliteral, ptr @crag6410_mmgpio_resource, ptr @.str.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @crag6410_backlight_data, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @wallvdd_pdata, ptr @wallvdd_consumers, ptr @wallvdd_data, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @gpio_leds, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_hsmmc0_pdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_hsmmc2_pdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_lcd_pdata to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_hsotg_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs0 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs1 to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_keypad_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_pwm_lookup to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_leds_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_fb_win0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_lcd_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag_pmic_gpiod_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_pca_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag_pmic_pdata to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @banff_backup_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touch_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @banff_green_led to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @banff_red_led to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddarm_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddarm_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddarm to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddint_consumers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddint to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddmem to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddsys to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddmmc_consumers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddmmc to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddotgi to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddotg to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddhi to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddadc to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddmem0 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddpll to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddlcd to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vddalive to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glenfarclas_pmic_pdata to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_1v2_consumers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_1v2 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_1v8_consumers to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_1v8 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_3v3_consumers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvdd_3v3 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_keymap_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_keymap to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_gpio_keydev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_dm9k_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_mmgpio to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_lcd_powerdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_backlight_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tobermory_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @littlemill_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowland_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_wm2200_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_wm5102_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bells_wm5110_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wallvdd_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_gpio_keydata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_gpio_keys to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_dm9k_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_dm9k_resource to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_mmgpio_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crag6410_backlight_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wallvdd_pdata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wallvdd_consumers to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wallvdd_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_leds to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crag6410_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef null, i32 noundef 0) #4
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #4
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @crag6410_uartcfgs, i32 noundef 4) #4
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crag6410_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_setpull(i32 noundef 137, i32 noundef 2) #4
  %call1 = tail call i32 @s3c_gpio_setpull(i32 noundef 144, i32 noundef 2) #4
  %call2 = tail call i32 @gpio_request(i32 noundef 9, ptr noundef nonnull @.str.1) #4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 9) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  %call4 = tail call i32 @gpio_request(i32 noundef 52, ptr noundef nonnull @.str.2) #4
  %call.i15 = tail call ptr @gpio_to_desc(i32 noundef 52) #4
  %call1.i16 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i15, i32 noundef 0) #4
  %call6 = tail call i32 @gpio_request(i32 noundef 10, ptr noundef nonnull @.str.3) #4
  %call.i17 = tail call ptr @gpio_to_desc(i32 noundef 10) #4
  %call1.i18 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i17, i32 noundef 0) #4
  %call8 = tail call i32 @gpio_request(i32 noundef 48, ptr noundef nonnull @.str.4) #4
  %call.i19 = tail call ptr @gpio_to_desc(i32 noundef 48) #4
  %call1.i20 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i19, i32 noundef 1) #4
  tail call void @s3c_sdhci0_set_platdata(ptr noundef nonnull @crag6410_hsmmc0_pdata) #4
  tail call void @s3c_sdhci2_set_platdata(ptr noundef nonnull @crag6410_hsmmc2_pdata) #4
  tail call void @s3c_i2c0_set_platdata(ptr noundef nonnull @i2c0_pdata) #4
  tail call void @s3c_i2c1_set_platdata(ptr noundef nonnull @i2c1_pdata) #4
  tail call void @s3c_fb_set_platdata(ptr noundef nonnull @crag6410_lcd_pdata) #4
  tail call void @dwc2_hsotg_set_platdata(ptr noundef nonnull @crag6410_hsotg_pdata) #4
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @crag_pmic_gpiod_table) #4
  %call10 = tail call i32 @i2c_register_board_info(i32 noundef 0, ptr noundef nonnull @i2c_devs0, i32 noundef 3) #4
  %call11 = tail call i32 @i2c_register_board_info(i32 noundef 1, ptr noundef nonnull @i2c_devs1, i32 noundef 7) #4
  tail call void @samsung_keypad_set_platdata(ptr noundef nonnull @crag6410_keypad_data) #4
  tail call void @s3c64xx_spi0_set_platdata(ptr noundef null, i32 noundef 0, i32 noundef 2) #4
  tail call void @pwm_add_table(ptr noundef nonnull @crag6410_pwm_lookup, i32 noundef 1) #4
  %call12 = tail call i32 @platform_add_devices(ptr noundef nonnull @crag6410_devices, i32 noundef 25) #4
  %call13 = tail call ptr @gpio_led_register_device(i32 noundef -1, ptr noundef nonnull @gpio_leds_pdata) #4
  tail call void @regulator_has_full_constraints() #4
  %call14 = tail call i32 @s3c64xx_pm_init() #7
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
declare dso_local i32 @s3c_gpio_setpull(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci0_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci2_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c0_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c1_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_board_info(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_keypad_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_spi0_set_platdata(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_add_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_led_register_device(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_has_full_constraints() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @s3c64xx_pm_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crag6410_cfg_sdhci0(ptr nocapture noundef readnone %dev, i32 noundef %width) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %width, 2
  %call.i = tail call i32 @s3c_gpio_cfgall_range(i32 noundef 55, i32 noundef %add, i32 noundef -14, i32 noundef 0) #4
  %call1 = tail call i32 @s3c_gpio_setpull(i32 noundef 61, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgall_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crag6410_lcd_power_set(ptr nocapture noundef readnone %pd, i32 noundef %power) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @crag6410_lcd_power_set.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@crag6410_lcd_power_set, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @crag6410_lcd_power_set.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef %power) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool3.not = icmp eq i32 %power, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 9) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 1) #4
  %call5 = tail call i32 @s3c_gpio_cfgpin(i32 noundef 52, i32 noundef -14) #4
  br label %if.end7

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i9 = tail call ptr @gpio_to_desc(i32 noundef 52) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i9, i32 noundef 0) #4
  %call.i10 = tail call ptr @gpio_to_desc(i32 noundef 9) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i10, i32 noundef 0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgpin(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !140, !142, !144, !146, !148, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 871, i32 1}
!2 = !{ptr @__mach_desc_WLF_CRAGG_6410, !1, !"__mach_desc_WLF_CRAGG_6410", i1 false, i1 false}
!3 = !{ptr @crag6410_uartcfgs, !4, !"crag6410_uartcfgs", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 76, i32 31}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 834, i32 31}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 837, i32 32}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 840, i32 31}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 843, i32 32}
!13 = !{ptr @crag6410_hsmmc0_pdata, !14, !"crag6410_hsmmc0_pdata", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 771, i32 34}
!15 = !{ptr @crag6410_hsmmc2_pdata, !16, !"crag6410_hsmmc2_pdata", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 756, i32 34}
!17 = !{ptr @i2c0_pdata, !18, !"i2c0_pdata", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 625, i32 36}
!19 = !{ptr @i2c1_pdata, !20, !"i2c1_pdata", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 741, i32 36}
!21 = !{ptr @crag6410_lcd_pdata, !22, !"crag6410_lcd_pdata", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 171, i32 31}
!23 = !{ptr @crag6410_fb_win0, !24, !"crag6410_fb_win0", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 150, i32 29}
!25 = !{ptr @crag6410_lcd_timing, !26, !"crag6410_lcd_timing", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 159, i32 28}
!27 = !{ptr @crag6410_hsotg_pdata, !28, !"crag6410_hsotg_pdata", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 826, i32 31}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 607, i32 12}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 609, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @crag_pmic_gpiod_table, !35, !"crag_pmic_gpiod_table", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 606, i32 34}
!36 = !{ptr @i2c_devs0, !37, !"i2c_devs0", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 614, i32 30}
!38 = !{ptr @crag6410_pca_data, !39, !"crag6410_pca_data", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 391, i32 37}
!40 = !{ptr @crag_pmic_pdata, !41, !"crag_pmic_pdata", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 551, i32 28}
!42 = !{ptr @banff_backup_pdata, !43, !"banff_backup_pdata", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 530, i32 35}
!44 = !{ptr @touch_pdata, !45, !"touch_pdata", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 546, i32 34}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 542, i32 10}
!48 = !{ptr @banff_green_led, !49, !"banff_green_led", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 541, i32 35}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 537, i32 10}
!52 = !{ptr @banff_red_led, !53, !"banff_red_led", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 536, i32 35}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 415, i32 22}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 407, i32 11}
!58 = !{ptr @vddarm, !59, !"vddarm", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 405, i32 35}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 402, i32 2}
!62 = !{ptr @vddarm_consumers, !63, !"vddarm_consumers", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 401, i32 41}
!64 = !{ptr @vddarm_pdata, !65, !"vddarm_pdata", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 397, i32 34}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 425, i32 11}
!68 = !{ptr @vddint, !69, !"vddint", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 423, i32 35}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 420, i32 2}
!72 = !{ptr @vddint_consumers, !73, !"vddint_consumers", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 419, i32 41}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 438, i32 11}
!76 = !{ptr @vddmem, !77, !"vddmem", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 436, i32 35}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 445, i32 11}
!80 = !{ptr @vddsys, !81, !"vddsys", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 443, i32 35}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 458, i32 11}
!84 = !{ptr @vddmmc, !85, !"vddmmc", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 456, i32 35}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 451, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 452, i32 2}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 453, i32 2}
!93 = !{ptr @vddmmc_consumers, !94, !"vddmmc_consumers", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 450, i32 41}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 468, i32 11}
!97 = !{ptr @vddotgi, !98, !"vddotgi", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 466, i32 35}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 476, i32 11}
!101 = !{ptr @vddotg, !102, !"vddotg", i1 false, i1 false}
!102 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 474, i32 35}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 484, i32 11}
!105 = !{ptr @vddhi, !106, !"vddhi", i1 false, i1 false}
!106 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 482, i32 35}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 492, i32 11}
!109 = !{ptr @vddadc, !110, !"vddadc", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 490, i32 35}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 500, i32 11}
!113 = !{ptr @vddmem0, !114, !"vddmem0", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 498, i32 35}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 508, i32 11}
!117 = !{ptr @vddpll, !118, !"vddpll", i1 false, i1 false}
!118 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 506, i32 35}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 516, i32 11}
!121 = !{ptr @vddlcd, !122, !"vddlcd", i1 false, i1 false}
!122 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 514, i32 35}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 524, i32 11}
!125 = !{ptr @vddalive, !126, !"vddalive", i1 false, i1 false}
!126 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 522, i32 35}
!127 = !{ptr @i2c_devs1, !128, !"i2c_devs1", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 726, i32 30}
!129 = !{ptr @glenfarclas_pmic_pdata, !130, !"glenfarclas_pmic_pdata", i1 false, i1 false}
!130 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 694, i32 28}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 637, i32 11}
!133 = !{ptr @pvdd_1v2, !134, !"pvdd_1v2", i1 false, i1 false}
!134 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 635, i32 35}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 630, i32 2}
!137 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 631, i32 2}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 632, i32 2}
!142 = !{ptr @pvdd_1v2_consumers, !143, !"pvdd_1v2_consumers", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 629, i32 41}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 671, i32 11}
!146 = !{ptr @pvdd_1v8, !147, !"pvdd_1v8", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 669, i32 35}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 646, i32 2}
!150 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 647, i32 2}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 648, i32 2}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 649, i32 2}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 650, i32 2}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 651, i32 2}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 652, i32 2}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 653, i32 2}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 658, i32 2}
!167 = !{ptr @pvdd_1v8_consumers, !168, !"pvdd_1v8_consumers", i1 false, i1 false}
!168 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 645, i32 41}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 686, i32 11}
!171 = !{ptr @pvdd_3v3, !172, !"pvdd_3v3", i1 false, i1 false}
!172 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 684, i32 35}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 680, i32 2}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 681, i32 2}
!177 = !{ptr @pvdd_3v3_consumers, !178, !"pvdd_3v3_consumers", i1 false, i1 false}
!178 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 679, i32 41}
!179 = !{ptr @wm1250_ev1_pdata, !180, !"wm1250_ev1_pdata", i1 false, i1 false}
!180 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 716, i32 32}
!181 = !{ptr @crag6410_keypad_data, !182, !"crag6410_keypad_data", i1 false, i1 false}
!182 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 202, i32 39}
!183 = !{ptr @crag6410_keymap_data, !184, !"crag6410_keymap_data", i1 false, i1 false}
!184 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 197, i32 34}
!185 = !{ptr @crag6410_keymap, !186, !"crag6410_keymap", i1 false, i1 false}
!186 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 181, i32 17}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 108, i32 2}
!189 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @crag6410_pwm_lookup, !191, !"crag6410_pwm_lookup", i1 false, i1 false}
!191 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 107, i32 26}
!192 = !{ptr @crag6410_devices, !193, !"crag6410_devices", i1 false, i1 false}
!193 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 363, i32 32}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 229, i32 11}
!196 = !{ptr @crag6410_gpio_keydev, !197, !"crag6410_gpio_keydev", i1 false, i1 false}
!197 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 228, i32 31}
!198 = !{ptr @crag6410_gpio_keydata, !199, !"crag6410_gpio_keydata", i1 false, i1 false}
!199 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 223, i32 39}
!200 = !{ptr @crag6410_gpio_keys, !201, !"crag6410_gpio_keys", i1 false, i1 false}
!201 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 208, i32 32}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 246, i32 11}
!204 = !{ptr @crag6410_dm9k_device, !205, !"crag6410_dm9k_device", i1 false, i1 false}
!205 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 245, i32 31}
!206 = !{ptr @mini6410_dm9k_pdata, !207, !"mini6410_dm9k_pdata", i1 false, i1 false}
!207 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 241, i32 32}
!208 = !{ptr @crag6410_dm9k_resource, !209, !"crag6410_dm9k_resource", i1 false, i1 false}
!209 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 234, i32 24}
!210 = !{ptr @.str.71, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 258, i32 11}
!212 = !{ptr @crag6410_mmgpio, !213, !"crag6410_mmgpio", i1 false, i1 false}
!213 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 257, i32 31}
!214 = !{ptr @.str.72, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 254, i32 8}
!216 = !{ptr @crag6410_mmgpio_resource, !217, !"crag6410_mmgpio_resource", i1 false, i1 false}
!217 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 253, i32 24}
!218 = !{ptr @.str.73, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 141, i32 12}
!220 = !{ptr @crag6410_lcd_powerdev, !221, !"crag6410_lcd_powerdev", i1 false, i1 false}
!221 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 140, i32 31}
!222 = !{ptr @.str.75, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 128, i32 2}
!224 = !{ptr @.str.76, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.78, !223, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @crag6410_lcd_power_set.__UNIQUE_ID_ddebug343, !223, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!228 = !{ptr @crag6410_backlight_device, !229, !"crag6410_backlight_device", i1 false, i1 false}
!229 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 117, i32 31}
!230 = !{ptr @crag6410_backlight_data, !231, !"crag6410_backlight_data", i1 false, i1 false}
!231 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 112, i32 43}
!232 = !{ptr @.str.79, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 268, i32 11}
!234 = !{ptr @speyside_device, !235, !"speyside_device", i1 false, i1 false}
!235 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 267, i32 31}
!236 = !{ptr @.str.80, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 278, i32 11}
!238 = !{ptr @tobermory_device, !239, !"tobermory_device", i1 false, i1 false}
!239 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 277, i32 31}
!240 = !{ptr @.str.81, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 283, i32 11}
!242 = !{ptr @littlemill_device, !243, !"littlemill_device", i1 false, i1 false}
!243 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 282, i32 31}
!244 = !{ptr @.str.82, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 273, i32 11}
!246 = !{ptr @lowland_device, !247, !"lowland_device", i1 false, i1 false}
!247 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 272, i32 31}
!248 = !{ptr @.str.83, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 288, i32 11}
!250 = !{ptr @bells_wm2200_device, !251, !"bells_wm2200_device", i1 false, i1 false}
!251 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 287, i32 31}
!252 = !{ptr @bells_wm5102_device, !253, !"bells_wm5102_device", i1 false, i1 false}
!253 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 292, i32 31}
!254 = !{ptr @bells_wm5110_device, !255, !"bells_wm5110_device", i1 false, i1 false}
!255 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 297, i32 31}
!256 = !{ptr @.str.84, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 356, i32 11}
!258 = !{ptr @wallvdd_device, !259, !"wallvdd_device", i1 false, i1 false}
!259 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 355, i32 31}
!260 = !{ptr @wallvdd_pdata, !261, !"wallvdd_pdata", i1 false, i1 false}
!261 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 349, i32 36}
!262 = !{ptr @wallvdd_data, !263, !"wallvdd_data", i1 false, i1 false}
!263 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 341, i32 35}
!264 = !{ptr @.str.86, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 303, i32 2}
!266 = !{ptr @.str.87, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 304, i32 2}
!268 = !{ptr @.str.88, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 305, i32 2}
!270 = !{ptr @.str.89, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 306, i32 2}
!272 = !{ptr @.str.90, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 307, i32 2}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 312, i32 2}
!276 = !{ptr @.str.92, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.93, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 313, i32 2}
!279 = !{ptr @.str.94, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 314, i32 2}
!281 = !{ptr @.str.95, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 315, i32 2}
!283 = !{ptr @.str.96, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 316, i32 2}
!285 = !{ptr @.str.97, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 317, i32 2}
!287 = !{ptr @.str.98, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 318, i32 2}
!289 = !{ptr @.str.99, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 319, i32 2}
!291 = !{ptr @.str.100, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 320, i32 2}
!293 = !{ptr @.str.101, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 321, i32 2}
!295 = !{ptr @.str.102, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 322, i32 2}
!297 = !{ptr @.str.103, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 323, i32 2}
!299 = !{ptr @.str.104, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 324, i32 2}
!301 = !{ptr @.str.105, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 326, i32 2}
!303 = !{ptr @wallvdd_consumers, !304, !"wallvdd_consumers", i1 false, i1 false}
!304 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 302, i32 41}
!305 = !{ptr @gpio_leds_pdata, !306, !"gpio_leds_pdata", i1 false, i1 false}
!306 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 821, i32 44}
!307 = !{ptr @.str.106, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 780, i32 11}
!309 = !{ptr @.str.107, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 785, i32 11}
!311 = !{ptr @.str.108, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 790, i32 11}
!313 = !{ptr @.str.109, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 795, i32 11}
!315 = !{ptr @.str.110, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 800, i32 11}
!317 = !{ptr @.str.111, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 805, i32 11}
!319 = !{ptr @.str.112, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 810, i32 11}
!321 = !{ptr @.str.113, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 815, i32 11}
!323 = !{ptr @gpio_leds, !324, !"gpio_leds", i1 false, i1 false}
!324 = !{!"../arch/arm/mach-s3c/mach-crag6410.c", i32 778, i32 30}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i64 2148711312, i64 2148711317, i64 2148711330, i64 2148711374, i64 2148711408, i64 2148711429}
