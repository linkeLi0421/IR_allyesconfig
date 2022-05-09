; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-hmt.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-hmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.s3c2410_platform_nand = type { i32, i32, i32, i8, i32, i32, ptr, ptr }
%struct.pwm_lookup = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.s3c_fb_pd_win = type { i16, i16, i16, i16, i16, i16 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s3c2410_nand_set = type { i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
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
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Airgoo-HMT\00", [21 x i8] zeroinitializer }, align 32
@__mach_desc_HMT = internal constant %struct.machine_desc { i32 2254, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hmt_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @hmt_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@hmt_iodesc = internal global { [0 x %struct.map_desc], [32 x i8] } zeroinitializer, align 32
@hmt_uartcfgs = internal global [3 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }, %struct.s3c2410_uartcfg { i8 2, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 3, i32 17 }], section ".init.data", align 4
@hmt_lcd_pdata = internal global %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @hmt_fb_win0, ptr null, ptr null, ptr null, ptr null], ptr @hmt_lcd_timing, i32 0, i32 96 }, section ".init.data", align 4
@hmt_nand_info = internal global { %struct.s3c2410_platform_nand, [32 x i8] } { %struct.s3c2410_platform_nand { i32 25, i32 55, i32 40, i8 0, i32 2, i32 1, ptr @hmt_nand_sets, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb power\00", [22 x i8] zeroinitializer }, align 32
@hmt_pwm_lookup = internal global { [1 x %struct.pwm_lookup], [60 x i8] } { [1 x %struct.pwm_lookup] [%struct.pwm_lookup { %struct.list_head zeroinitializer, ptr @.str.8, i32 1, ptr @.str.9, ptr null, i32 1953, i32 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@hmt_devices = internal global [7 x ptr] [ptr @s3c_device_i2c0, ptr @s3c_device_nand, ptr @s3c_device_fb, ptr @s3c_device_ohci, ptr @samsung_device_pwm, ptr @hmt_backlight_device, ptr @hmt_leds_device], section ".init.data", align 4
@hmt_fb_win0 = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 800, i16 480, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@hmt_lcd_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 800, i32 480, i32 0, i32 8, i32 13, i32 7, i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hmt_nand_sets = internal global { [1 x %struct.s3c2410_nand_set], [32 x i8] } { [1 x %struct.s3c2410_nand_set] [%struct.s3c2410_nand_set { i8 0, i32 0, i32 1, i32 5, ptr @.str.2, ptr null, ptr @hmt_nand_part, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@hmt_nand_part = internal global { [5 x %struct.mtd_partition], [56 x i8] } { [5 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.3, ptr null, i64 524288, i64 0, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.4, ptr null, i64 262144, i64 524288, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.5, ptr null, i64 262144, i64 786432, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.6, ptr null, i64 2097152, i64 1048576, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.7, ptr null, i64 0, i64 3145728, i32 0, i32 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uboot\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uboot-env1\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uboot-env2\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm-backlight.0\00", [16 x i8] zeroinitializer }, align 32
@s3c_device_i2c0 = external dso_local global %struct.platform_device, align 8
@s3c_device_nand = external dso_local global %struct.platform_device, align 8
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@s3c_device_ohci = external dso_local global %struct.platform_device, align 8
@samsung_device_pwm = external dso_local global %struct.platform_device, align 8
@hmt_backlight_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.10, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @samsung_device_pwm, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hmt_backlight_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@hmt_leds_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.12, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hmt_led_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm-backlight\00", [18 x i8] zeroinitializer }, align 32
@hmt_backlight_data = internal global { %struct.platform_pwm_backlight_data, [44 x i8] } { %struct.platform_pwm_backlight_data { i32 0, i32 25600, i32 10240, i32 0, i32 0, ptr null, i32 0, i32 0, ptr @hmt_bl_init, ptr @hmt_bl_notify, ptr null, ptr @hmt_bl_exit, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lcd backlight enable\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"leds-gpio\00", [22 x i8] zeroinitializer }, align 32
@hmt_led_data = internal global { %struct.gpio_led_platform_data, [20 x i8] } { %struct.gpio_led_platform_data { i32 4, ptr @hmt_leds, ptr null }, [20 x i8] zeroinitializer }, align 32
@hmt_leds = internal global { [4 x %struct.gpio_led], [48 x i8] } { [4 x %struct.gpio_led] [%struct.gpio_led { ptr @.str.13, ptr @.str.14, i32 173, i8 0, ptr null }, %struct.gpio_led { ptr @.str.15, ptr null, i32 174, i8 0, ptr null }, %struct.gpio_led { ptr @.str.16, ptr null, i32 175, i8 0, ptr null }, %struct.gpio_led { ptr @.str.17, ptr @.str.14, i32 176, i8 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"left:blue\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"default-on\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"right:red\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"right:green\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"right:blue\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 274, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"hmt_iodesc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 235, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"hmt_nand_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 194, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 261, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"hmt_pwm_lookup\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 72, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"hmt_fb_win0\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 130, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"hmt_lcd_timing\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 137, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"hmt_nand_sets\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 185, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 187, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"hmt_nand_part\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 157, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 159, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 164, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 169, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 174, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 179, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 73, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"hmt_backlight_device\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 122, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"hmt_leds_device\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 229, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 123, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"hmt_backlight_data\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 113, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 81, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"hmt_led_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 224, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"hmt_leds\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 203, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 205, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 207, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 210, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 214, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [32 x i8] c"../arch/arm/mach-s3c/mach-hmt.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 218, i32 13 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__mach_desc_HMT, ptr @.str, ptr @hmt_iodesc, ptr @hmt_nand_info, ptr @.str.1, ptr @hmt_pwm_lookup, ptr @hmt_fb_win0, ptr @hmt_lcd_timing, ptr @hmt_nand_sets, ptr @.str.2, ptr @hmt_nand_part, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hmt_backlight_device, ptr @hmt_leds_device, ptr @.str.10, ptr @hmt_backlight_data, ptr @.str.11, ptr @.str.12, ptr @hmt_led_data, ptr @hmt_leds, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_iodesc to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_nand_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_pwm_lookup to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_fb_win0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_lcd_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_nand_sets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_nand_part to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_backlight_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_leds_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_backlight_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_led_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmt_leds to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hmt_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef nonnull @hmt_iodesc, i32 noundef 0) #4
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #4
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @hmt_uartcfgs, i32 noundef 3) #4
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hmt_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_i2c0_set_platdata(ptr noundef null) #4
  tail call void @s3c_fb_set_platdata(ptr noundef nonnull @hmt_lcd_pdata) #4
  tail call void @s3c_nand_set_platdata(ptr noundef nonnull @hmt_nand_info) #4
  %call = tail call i32 @gpio_request(i32 noundef 24, ptr noundef nonnull @.str.1) #4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 24) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  %call2 = tail call i32 @gpio_request(i32 noundef 137, ptr noundef nonnull @.str.1) #4
  %call.i9 = tail call ptr @gpio_to_desc(i32 noundef 137) #4
  %call1.i10 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i9, i32 noundef 1) #4
  %call4 = tail call i32 @gpio_request(i32 noundef 111, ptr noundef nonnull @.str.1) #4
  %call.i11 = tail call ptr @gpio_to_desc(i32 noundef 111) #4
  %call1.i12 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i11, i32 noundef 1) #4
  %call6 = tail call i32 @gpio_request(i32 noundef 51, ptr noundef nonnull @.str.1) #4
  %call.i13 = tail call ptr @gpio_to_desc(i32 noundef 51) #4
  %call1.i14 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i13, i32 noundef 1) #4
  tail call void @pwm_add_table(ptr noundef nonnull @hmt_pwm_lookup, i32 noundef 1) #4
  %call8 = tail call i32 @platform_add_devices(ptr noundef nonnull @hmt_devices, i32 noundef 7) #4
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
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_nand_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_add_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmt_bl_init(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request(i32 noundef 13, ptr noundef nonnull @.str.11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 13) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1.i, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmt_bl_notify(ptr nocapture noundef readnone %dev, i32 noundef %brightness) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %brightness)
  %cmp = icmp slt i32 %brightness, 2048
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %brightness, 25600
  %add = add i32 %mul, 115622
  %div = sdiv i32 %add, 231245
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul1 = shl i32 %brightness, 2
  %add3 = add i32 %mul1, 16442
  %div4 = sdiv i32 %add3, 116
  %mul5 = mul i32 %div4, %div4
  %mul6 = mul i32 %mul5, %div4
  %add7 = add i32 %mul6, 524288
  %div8 = sdiv i32 %add7, 1048576
  %mul9 = mul nsw i32 %div8, 25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %brightness.addr.0 = phi i32 [ %div, %if.then ], [ %mul9, %if.else ]
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 13) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %brightness.addr.0) #4
  ret i32 %brightness.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hmt_bl_exit(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpio_free(i32 noundef 13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 274, i32 1}
!2 = !{ptr @__mach_desc_HMT, !1, !"__mach_desc_HMT", i1 false, i1 false}
!3 = !{ptr @hmt_iodesc, !4, !"hmt_iodesc", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 235, i32 24}
!5 = !{ptr @hmt_uartcfgs, !6, !"hmt_uartcfgs", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 48, i32 31}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 261, i32 31}
!9 = !{ptr @hmt_lcd_pdata, !10, !"hmt_lcd_pdata", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 149, i32 31}
!11 = !{ptr @hmt_fb_win0, !12, !"hmt_fb_win0", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 130, i32 29}
!13 = !{ptr @hmt_lcd_timing, !14, !"hmt_lcd_timing", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 137, i32 28}
!15 = !{ptr @hmt_nand_info, !16, !"hmt_nand_info", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 194, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 187, i32 12}
!19 = !{ptr @hmt_nand_sets, !20, !"hmt_nand_sets", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 185, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 159, i32 11}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 164, i32 11}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 169, i32 11}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 174, i32 11}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 179, i32 11}
!31 = !{ptr @hmt_nand_part, !32, !"hmt_nand_part", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 157, i32 29}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 73, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @hmt_pwm_lookup, !37, !"hmt_pwm_lookup", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 72, i32 26}
!38 = !{ptr @hmt_devices, !39, !"hmt_devices", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 237, i32 32}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 123, i32 11}
!42 = !{ptr @hmt_backlight_device, !43, !"hmt_backlight_device", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 122, i32 31}
!44 = !{ptr @hmt_backlight_data, !45, !"hmt_backlight_data", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 113, i32 43}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 81, i32 37}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 230, i32 12}
!50 = !{ptr @hmt_leds_device, !51, !"hmt_leds_device", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 229, i32 31}
!52 = !{ptr @hmt_led_data, !53, !"hmt_led_data", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 224, i32 38}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 205, i32 13}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 207, i32 22}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 210, i32 13}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 214, i32 13}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 218, i32 13}
!64 = !{ptr @hmt_leds, !65, !"hmt_leds", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-s3c/mach-hmt.c", i32 203, i32 24}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
