; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-smartq.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-smartq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.s3c_hwmon_pdata = type { [8 x ptr] }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.s3c2410_ts_mach_info = type { i32, i32, i32, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pwm_lookup = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.s3c_hwmon_chcfg = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c2410_hcd_info = type { ptr, [2 x %struct.s3c2410_hcd_port], ptr, ptr, ptr }
%struct.s3c2410_hcd_port = type { i8, i8, i8, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spi_gpio_platform_data = type { i16 }
%struct.plat_lcd_data = type { ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@smartq_iodesc = internal global [0 x %struct.map_desc] zeroinitializer, section ".init.data", align 4
@smartq_uartcfgs = internal global [3 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }, %struct.s3c2410_uartcfg { i8 2, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }], section ".init.data", align 4
@smartq_hsotg_pdata = internal global { %struct.dwc2_hsotg_plat, [44 x i8] } zeroinitializer, align 32
@smartq_hwmon_pdata = internal global %struct.s3c_hwmon_pdata { [8 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null] }, section ".init.data", align 4
@smartq_internal_hsmmc_pdata = internal global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 0, i32 0, i32 0, i32 4, i32 0, i8 0, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@smartq_touchscreen_pdata = internal global %struct.s3c2410_ts_mach_info { i32 65535, i32 99, i32 4, ptr null }, section ".init.data", align 4
@smartq_i2c_devs = internal global [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm8987\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-s3c/mach-smartq.c\00", [32 x i8] zeroinitializer }, align 32
@smartq_pwm_lookup = internal global { [1 x %struct.pwm_lookup], [60 x i8] } { [1 x %struct.pwm_lookup] [%struct.pwm_lookup { %struct.list_head zeroinitializer, ptr @.str.35, i32 1, ptr @.str.36, ptr null, i32 50000, i32 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@smartq_devices = internal global [16 x ptr] [ptr @s3c_device_hsmmc1, ptr @s3c_device_hsmmc0, ptr @s3c_device_hsmmc2, ptr @s3c_device_adc, ptr @s3c_device_fb, ptr @s3c_device_hwmon, ptr @s3c_device_i2c0, ptr @s3c_device_ohci, ptr @s3c_device_rtc, ptr @samsung_device_pwm, ptr @s3c_device_usb_hsotg, ptr @s3c64xx_device_iis0, ptr @smartq_backlight_device, ptr @smartq_lcd_control_device, ptr @smartq_lcd_power_device, ptr @smartq_usb_otg_vbus_dev], section ".init.data", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smartq-audio\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smartq:battery-voltage\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.s3c_hwmon_chcfg, [20 x i8] } { %struct.s3c_hwmon_chcfg { ptr @.str.2, i32 3300, i32 2048 }, [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smartq:reference-voltage\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.s3c_hwmon_chcfg, [20 x i8] } { %struct.s3c_hwmon_chcfg { ptr @.str.3, i32 3300, i32 4096 }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LCD power\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Power control\00", [18 x i8] zeroinitializer }, align 32
@smartq_power_off_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: failed to get GPK15\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smartq_power_off_init\00", [42 x i8] zeroinitializer }, align 32
@smartq_power_off_init._entry_ptr = internal global ptr @smartq_power_off_init._entry, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB power control\00", [46 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get GPL0\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smartq_usb_host_init\00", [43 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry_ptr = internal global ptr @smartq_usb_host_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB host power control\00", [41 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get GPL1\0A\00", [38 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry_ptr.15 = internal global ptr @smartq_usb_host_init._entry.13, section ".printk_index", align 4
@__machine_arch_type = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB host overcurrent\00", [43 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: failed to get GPL10\0A\00", [37 x i8] zeroinitializer }, align 32
@smartq_usb_host_init._entry_ptr.19 = internal global ptr @smartq_usb_host_init._entry.17, section ".printk_index", align 4
@smartq_usb_host_info = internal global { %struct.s3c2410_hcd_info, [40 x i8] } { %struct.s3c2410_hcd_info { ptr null, [2 x %struct.s3c2410_hcd_port] [%struct.s3c2410_hcd_port { i8 1, i8 0, i8 0, i8 0 }, %struct.s3c2410_hcd_port zeroinitializer], ptr @smartq_usb_host_powercontrol, ptr @smartq_usb_host_enableoc, ptr null }, [40 x i8] zeroinitializer }, align 32
@s3c_device_ohci = external dso_local global %struct.platform_device, align 8
@smartq_usb_host_powercontrol.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mach_smartq\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smartq_usb_host_powercontrol\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(%d, %d)\0A\00", [20 x i8] zeroinitializer }, align 32
@smartq_usb_host_enableoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to request usb oc irq: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smartq_usb_host_enableoc\00", [39 x i8] zeroinitializer }, align 32
@smartq_usb_host_enableoc._entry_ptr = internal global ptr @smartq_usb_host_enableoc._entry, section ".printk_index", align 4
@smartq_usb_host_ocirq.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str, ptr @.str.26, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smartq_usb_host_ocirq\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: over-current irq (oc detected)\0A\00", [60 x i8] zeroinitializer }, align 32
@smartq_usb_host_ocirq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str, ptr @.str.27, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: over-current irq (oc cleared)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wifi control\00", [19 x i8] zeroinitializer }, align 32
@smartq_wifi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get GPK1\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartq_wifi_init\00", [47 x i8] zeroinitializer }, align 32
@smartq_wifi_init._entry_ptr = internal global ptr @smartq_wifi_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wifi reset\00", [21 x i8] zeroinitializer }, align 32
@smartq_wifi_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: failed to get GPK2\0A\00", [38 x i8] zeroinitializer }, align 32
@smartq_wifi_init._entry_ptr.34 = internal global ptr @smartq_wifi_init._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm-backlight.0\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIOM\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sck\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mosi\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"miso\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@smartq_lcd_control_gpiod_table = internal global { { %struct.list_head, ptr, [5 x %struct.gpiod_lookup] }, [48 x i8] } { { %struct.list_head, ptr, [5 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.37, [5 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.38, i16 1, ptr @.str.39, i32 0, i32 0 }, %struct.gpiod_lookup { ptr @.str.38, i16 2, ptr @.str.40, i32 0, i32 0 }, %struct.gpiod_lookup { ptr @.str.38, i16 3, ptr @.str.41, i32 0, i32 0 }, %struct.gpiod_lookup { ptr @.str.38, i16 0, ptr @.str.42, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-vbus\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPL\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@smartq_usb_otg_vbus_gpiod_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.44, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.45, i16 9, ptr @.str.46, i32 0, i32 1 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc1 = external dso_local global %struct.platform_device, align 8
@s3c_device_hsmmc0 = external dso_local global %struct.platform_device, align 8
@s3c_device_hsmmc2 = external dso_local global %struct.platform_device, align 8
@s3c_device_adc = external dso_local global %struct.platform_device, align 8
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@s3c_device_hwmon = external dso_local global %struct.platform_device, align 8
@s3c_device_i2c0 = external dso_local global %struct.platform_device, align 8
@s3c_device_rtc = external dso_local global %struct.platform_device, align 8
@samsung_device_pwm = external dso_local global %struct.platform_device, align 8
@s3c_device_usb_hsotg = external dso_local global %struct.platform_device, align 8
@s3c64xx_device_iis0 = external dso_local global %struct.platform_device, align 8
@smartq_backlight_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.48, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @samsung_device_pwm, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq_backlight_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smartq_lcd_control_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.37, i32 1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq_lcd_control, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smartq_lcd_power_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.49, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_fb, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smartq_lcd_power_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@smartq_usb_otg_vbus_dev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.44, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm-backlight\00", [18 x i8] zeroinitializer }, align 32
@smartq_backlight_data = internal global { %struct.platform_pwm_backlight_data, [44 x i8] } { %struct.platform_pwm_backlight_data { i32 0, i32 1000, i32 600, i32 0, i32 0, ptr null, i32 0, i32 0, ptr @smartq_bl_init, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@smartq_lcd_control = internal global { %struct.spi_gpio_platform_data, [30 x i8] } { %struct.spi_gpio_platform_data { i16 1 }, [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-lcd\00", [19 x i8] zeroinitializer }, align 32
@smartq_lcd_power_data = internal global { %struct.plat_lcd_data, [20 x i8] } { %struct.plat_lcd_data { ptr null, ptr @smartq_lcd_power_set, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"headphone detect\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPK\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amplifiers shutdown\00", [44 x i8] zeroinitializer }, align 32
@smartq_audio_gpios = internal global { { %struct.list_head, ptr, [3 x %struct.gpiod_lookup] }, [56 x i8] } { { %struct.list_head, ptr, [3 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.1, [3 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.45, i16 12, ptr @.str.50, i32 0, i32 0 }, %struct.gpiod_lookup { ptr @.str.51, i16 12, ptr @.str.52, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"smartq_hsotg_pdata\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 189, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"smartq_internal_hsmmc_pdata\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 169, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 412, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"smartq_pwm_lookup\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 137, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 423, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 177, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 183, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 195, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 294, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 296, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 312, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 314, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 318, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 320, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 326, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 328, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"smartq_usb_host_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 113, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 70, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 107, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 83, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 86, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 354, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 356, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 360, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 362, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 138, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 217, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 219, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 221, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 223, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 225, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [31 x i8] c"smartq_lcd_control_gpiod_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 216, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 126, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 128, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [32 x i8] c"smartq_usb_otg_vbus_gpiod_table\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 125, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"smartq_backlight_device\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 155, i32 31 }
@___asan_gen_.215 = private unnamed_addr constant [26 x i8] c"smartq_lcd_control_device\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 210, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"smartq_lcd_power_device\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 240, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"smartq_usb_otg_vbus_dev\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 133, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 156, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"smartq_backlight_data\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 149, i32 43 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"smartq_lcd_control\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 206, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 241, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"smartq_lcd_power_data\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 236, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 394, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 395, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [19 x i8] c"smartq_audio_gpios\00", align 1
@___asan_gen_.249 = private constant [35 x i8] c"../arch/arm/mach-s3c/mach-smartq.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 391, i32 34 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @smartq_power_off_init._entry, ptr @smartq_power_off_init._entry_ptr, ptr @smartq_usb_host_enableoc._entry, ptr @smartq_usb_host_enableoc._entry_ptr, ptr @smartq_usb_host_init._entry, ptr @smartq_usb_host_init._entry.13, ptr @smartq_usb_host_init._entry.17, ptr @smartq_usb_host_init._entry_ptr, ptr @smartq_usb_host_init._entry_ptr.15, ptr @smartq_usb_host_init._entry_ptr.19, ptr @smartq_wifi_init._entry, ptr @smartq_wifi_init._entry.32, ptr @smartq_wifi_init._entry_ptr, ptr @smartq_wifi_init._entry_ptr.34, ptr @smartq_hsotg_pdata, ptr @smartq_internal_hsmmc_pdata, ptr @.str, ptr @smartq_pwm_lookup, ptr @.str.1, ptr @.str.2, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @smartq_usb_host_info, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @smartq_lcd_control_gpiod_table, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @smartq_usb_otg_vbus_gpiod_table, ptr @smartq_backlight_device, ptr @smartq_lcd_control_device, ptr @smartq_lcd_power_device, ptr @smartq_usb_otg_vbus_dev, ptr @.str.48, ptr @smartq_backlight_data, ptr @smartq_lcd_control, ptr @.str.49, ptr @smartq_lcd_power_data, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @smartq_audio_gpios], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_hsotg_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_internal_hsmmc_pdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_pwm_lookup to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_power_off_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_host_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_host_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_host_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_host_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_host_enableoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_wifi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_wifi_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_lcd_control_gpiod_table to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_otg_vbus_gpiod_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_backlight_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_lcd_control_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_lcd_power_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_usb_otg_vbus_dev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_backlight_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_lcd_control to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_lcd_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartq_audio_gpios to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smartq_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef nonnull @smartq_iodesc, i32 noundef 0) #5
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #5
  tail call void @s3c64xx_set_xusbxti_freq(i32 noundef 12000000) #5
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @smartq_uartcfgs, i32 noundef 3) #5
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr)) #5, !srcloc !143
  %and.i = and i32 %0, -4
  %or.i = or i32 %and.i, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr), i32 %or.i) #5, !srcloc !144
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr)) #5, !srcloc !143
  %and2.i = and i32 %1, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr), i32 %and2.i) #5, !srcloc !144
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_init_io(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_set_xtal_freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_set_xusbxti_freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c24xx_init_uarts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_set_timer_source(i32 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smartq_machine_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_i2c0_set_platdata(ptr noundef null) #5
  tail call void @dwc2_hsotg_set_platdata(ptr noundef nonnull @smartq_hsotg_pdata) #5
  tail call void @s3c_hwmon_set_platdata(ptr noundef nonnull @smartq_hwmon_pdata) #8
  tail call void @s3c_sdhci1_set_platdata(ptr noundef nonnull @smartq_internal_hsmmc_pdata) #5
  tail call void @s3c_sdhci2_set_platdata(ptr noundef nonnull @smartq_internal_hsmmc_pdata) #5
  tail call void @s3c64xx_ts_set_platdata(ptr noundef nonnull @smartq_touchscreen_pdata) #5
  %call = tail call i32 @i2c_register_board_info(i32 noundef 0, ptr noundef nonnull @smartq_i2c_devs, i32 noundef 1) #5
  %call1 = tail call fastcc i32 @smartq_lcd_setup_gpio() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !145

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call22 = tail call fastcc i32 @smartq_power_off_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !145

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 413, i32 noundef 9, ptr noundef null) #5
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %call54 = tail call fastcc i32 @smartq_usb_host_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end45.if.end77_crit_edge, label %do.end71, !prof !145

if.end45.if.end77_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.end71:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef null) #5
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %if.end45.if.end77_crit_edge
  %call86 = tail call fastcc i32 @smartq_wifi_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end77.if.end109_crit_edge, label %do.end103, !prof !145

if.end77.if.end109_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

do.end103:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 415, i32 noundef 9, ptr noundef null) #5
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end77.if.end109_crit_edge
  tail call void @pwm_add_table(ptr noundef nonnull @smartq_pwm_lookup, i32 noundef 1) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @smartq_lcd_control_gpiod_table) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @smartq_usb_otg_vbus_gpiod_table) #5
  %call117 = tail call i32 @platform_add_devices(ptr noundef nonnull @smartq_devices, i32 noundef 16) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @smartq_audio_gpios) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c0_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hsotg_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c_hwmon_set_platdata(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci1_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci2_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_ts_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_board_info(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smartq_lcd_setup_gpio() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request(i32 noundef 140, ptr noundef nonnull @.str.5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 140) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smartq_power_off_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request(i32 noundef 119, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 119) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @smartq_power_off, ptr @pm_power_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smartq_usb_host_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request(i32 noundef 121, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpio_request(i32 noundef 122, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #8
  br label %err

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  %0 = load i32, ptr @__machine_arch_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2534, i32 %0)
  %cmp11 = icmp eq i32 %0, 2534
  br i1 %cmp11, label %if.end10.if.end22_crit_edge, label %if.then12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i32 @gpio_request(i32 noundef 131, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11) #8
  tail call void @gpio_free(i32 noundef 122) #5
  br label %err

if.end22:                                         ; preds = %if.then12.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 121) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #5
  %call.i33 = tail call ptr @gpio_to_desc(i32 noundef 122) #5
  %call1.i34 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i33, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  %1 = load i32, ptr @__machine_arch_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2534, i32 %1)
  %cmp25 = icmp eq i32 %1, 2534
  br i1 %cmp25, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call.i35 = tail call ptr @gpio_to_desc(i32 noundef 131) #5
  %call1.i36 = tail call i32 @gpiod_direction_input(ptr noundef %call.i35) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.platform_device, ptr @s3c_device_ohci, i32 0, i32 3, i32 7) to i32))
  store ptr @smartq_usb_host_info, ptr getelementptr inbounds (%struct.platform_device, ptr @s3c_device_ohci, i32 0, i32 3, i32 7), align 8
  br label %cleanup

err:                                              ; preds = %do.end18, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ %call13, %do.end18 ]
  tail call void @gpio_free(i32 noundef 121) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end28, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %err ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smartq_wifi_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request(i32 noundef 105, ptr noundef nonnull @.str.28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpio_request(i32 noundef 106, ptr noundef nonnull @.str.31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30) #8
  tail call void @gpio_free(i32 noundef 105) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 105) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 1) #5
  %call.i17 = tail call ptr @gpio_to_desc(i32 noundef 106) #5
  %call1.i18 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i17, i32 noundef 0) #5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end10
  %__ms.022 = phi i32 [ 100, %if.end10 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.022, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i19 = tail call ptr @gpio_to_desc(i32 noundef 106) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i19, i32 noundef 1) #5
  %call.i20 = tail call ptr @gpio_to_desc(i32 noundef 106) #5
  %call1.i21 = tail call i32 @gpiod_direction_input(ptr noundef %call.i20) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_add_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smartq_power_off() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 119) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smartq_usb_host_powercontrol(i32 noundef %port, i32 noundef %to) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smartq_usb_host_powercontrol.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smartq_usb_host_powercontrol, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smartq_usb_host_powercontrol.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %port, i32 noundef %to) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp = icmp eq i32 %port, 0
  br i1 %cmp, label %if.then3, label %do.end.if.end4_crit_edge

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 121) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %to) #5
  %call.i8 = tail call ptr @gpio_to_desc(i32 noundef 122) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i8, i32 noundef %to) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smartq_usb_host_enableoc(ptr noundef %info, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__machine_arch_type to i32))
  %0 = load i32, ptr @__machine_arch_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2534, i32 %0)
  %cmp = icmp eq i32 %0, 2534
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %call.i13 = tail call ptr @gpio_to_desc(i32 noundef 131) #5
  %call1.i14 = tail call i32 @gpiod_to_irq(ptr noundef %call.i13) #5
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %call.i12 = tail call i32 @request_threaded_irq(i32 noundef %call1.i14, ptr noundef nonnull @smartq_usb_host_ocirq, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.16, ptr noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp3.not = icmp eq i32 %call.i12, 0
  br i1 %cmp3.not, label %if.then1.cleanup_crit_edge, label %do.end

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call.i12) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call ptr @free_irq(i32 noundef %call1.i14, ptr noundef %info) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smartq_usb_host_ocirq(i32 noundef %irq, ptr noundef %pw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 131) #5
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 0
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smartq_usb_host_ocirq, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !146

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %report_oc.i = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %pw, i32 0, i32 4
  %0 = ptrtoint ptr %report_oc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %report_oc.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %do.end.if.end21_crit_edge, label %if.then.i

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %pw, i32 noundef 3) #5
  br label %if.end21

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smartq_usb_host_ocirq, %if.then17)) #5
          to label %do.end20 [label %if.then17], !srcloc !146

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %report_oc.i26 = getelementptr inbounds %struct.s3c2410_hcd_info, ptr %pw, i32 0, i32 4
  %2 = ptrtoint ptr %report_oc.i26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_oc.i26, align 4
  %cmp.not.i27 = icmp eq ptr %3, null
  br i1 %cmp.not.i27, label %do.end20.if.end21_crit_edge, label %if.then.i28

do.end20.if.end21_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then.i28:                                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %pw, i32 noundef 0) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then.i28, %do.end20.if.end21_crit_edge, %if.then.i, %do.end.if.end21_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smartq_bl_init(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s3c_gpio_cfgpin(i32 noundef 53, i32 noundef -14) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_gpio_cfgpin(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smartq_lcd_power_set(ptr nocapture noundef readnone %pd, i32 noundef %power) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 140) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %power) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 412, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 423, i32 34}
!4 = !{ptr @smartq_hsotg_pdata, !5, !"smartq_hsotg_pdata", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 189, i32 31}
!6 = !{ptr @smartq_iodesc, !7, !"smartq_iodesc", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 379, i32 24}
!8 = !{ptr @smartq_uartcfgs, !9, !"smartq_uartcfgs", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 44, i32 31}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 177, i32 12}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 183, i32 12}
!14 = !{ptr @smartq_hwmon_pdata, !15, !"smartq_hwmon_pdata", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 174, i32 31}
!16 = !{ptr @smartq_internal_hsmmc_pdata, !17, !"smartq_internal_hsmmc_pdata", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 169, i32 34}
!18 = !{ptr @smartq_touchscreen_pdata, !19, !"smartq_touchscreen_pdata", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 163, i32 36}
!20 = !{ptr @smartq_i2c_devs, !21, !"smartq_i2c_devs", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 246, i32 30}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 195, i32 37}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 294, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 296, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smartq_power_off_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @smartq_power_off_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 312, i32 37}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 314, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @smartq_usb_host_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @smartq_usb_host_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 318, i32 37}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 320, i32 3}
!42 = !{ptr @smartq_usb_host_init._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @smartq_usb_host_init._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 326, i32 39}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 328, i32 4}
!48 = !{ptr @smartq_usb_host_init._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @smartq_usb_host_init._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @smartq_usb_host_info, !51, !"smartq_usb_host_info", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 113, i32 32}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 70, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @smartq_usb_host_powercontrol.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 107, i32 4}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @smartq_usb_host_enableoc._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @smartq_usb_host_enableoc._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 83, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug302, !63, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 86, i32 3}
!68 = !{ptr @smartq_usb_host_ocirq.__UNIQUE_ID_ddebug303, !67, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 354, i32 37}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 356, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @smartq_wifi_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @smartq_wifi_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 360, i32 37}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 362, i32 3}
!80 = !{ptr @smartq_wifi_init._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @smartq_wifi_init._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 138, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @smartq_pwm_lookup, !86, !"smartq_pwm_lookup", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 137, i32 26}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 217, i32 20}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 219, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 221, i32 3}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 223, i32 3}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 225, i32 3}
!98 = !{ptr @smartq_lcd_control_gpiod_table, !99, !"smartq_lcd_control_gpiod_table", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 216, i32 34}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 126, i32 12}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 128, i32 3}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @smartq_usb_otg_vbus_gpiod_table, !106, !"smartq_usb_otg_vbus_gpiod_table", i1 false, i1 false}
!106 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 125, i32 34}
!107 = !{ptr @smartq_devices, !108, !"smartq_devices", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 250, i32 32}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 156, i32 11}
!111 = !{ptr @smartq_backlight_device, !112, !"smartq_backlight_device", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 155, i32 31}
!113 = !{ptr @smartq_backlight_data, !114, !"smartq_backlight_data", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 149, i32 43}
!115 = !{ptr @smartq_lcd_control_device, !116, !"smartq_lcd_control_device", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 210, i32 31}
!117 = !{ptr @smartq_lcd_control, !118, !"smartq_lcd_control", i1 false, i1 false}
!118 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 206, i32 38}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 241, i32 12}
!121 = !{ptr @smartq_lcd_power_device, !122, !"smartq_lcd_power_device", i1 false, i1 false}
!122 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 240, i32 31}
!123 = !{ptr @smartq_lcd_power_data, !124, !"smartq_lcd_power_data", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 236, i32 29}
!125 = !{ptr @smartq_usb_otg_vbus_dev, !126, !"smartq_usb_otg_vbus_dev", i1 false, i1 false}
!126 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 133, i32 31}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 394, i32 3}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 395, i32 3}
!131 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @smartq_audio_gpios, !133, !"smartq_audio_gpios", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-s3c/mach-smartq.c", i32 391, i32 34}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 4312948}
!144 = !{i64 4312530}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148764651, i64 2148764656, i64 2148764669, i64 2148764713, i64 2148764747, i64 2148764768}
