; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-mini6410.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-mini6410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c_fb_platdata = type { ptr, [5 x ptr], ptr, i32, i32 }
%struct.s3c2410_platform_nand = type { i32, i32, i32, i8, i32, i32, ptr, ptr }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dm9000_plat_data = type { i32, [6 x i8], ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.plat_lcd_data = type { ptr, ptr, ptr }

@__setup_str_mini6410_features_setup = internal constant [10 x i8] c"mini6410=\00", section ".init.rodata", align 1
@__setup_mini6410_features_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mini6410_features_setup, ptr @mini6410_features_setup, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MINI6410\00", [23 x i8] zeroinitializer }, align 32
@__mach_desc_MINI6410 = internal constant %struct.machine_desc { i32 2520, ptr @.str, i32 256, ptr null, i32 229, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mini6410_map_io, ptr null, ptr @s3c6410_init_irq, ptr @s3c64xx_timer_init, ptr @mini6410_machine_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@mini6410_features_str = internal global [12 x i8] c"0\00\00\00\00\00\00\00\00\00\00\00", section ".init.data", align 1
@mini6410_uartcfgs = internal global [4 x %struct.s3c2410_uartcfg] [%struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 1, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 2, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 7, i32 17 }, %struct.s3c2410_uartcfg { i8 3, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 7, i32 17 }], section ".init.data", align 4
@mini6410_machine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016MINI6410: Option string mini6410=%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mini6410_machine_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-s3c/mach-mini6410.c\00", [62 x i8] zeroinitializer }, align 32
@mini6410_machine_init._entry_ptr = internal global ptr @mini6410_machine_init._entry, section ".printk_index", align 4
@mini6410_machine_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016MINI6410: selected LCD display is %dx%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mini6410_machine_init._entry_ptr.6 = internal global ptr @mini6410_machine_init._entry.4, section ".printk_index", align 4
@mini6410_lcd_pdata = internal global [3 x %struct.s3c_fb_platdata] [%struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @mini6410_lcd_type0_fb_win, ptr null, ptr null, ptr null, ptr null], ptr @mini6410_lcd_type0_timing, i32 0, i32 96 }, %struct.s3c_fb_platdata { ptr @s3c64xx_fb_gpio_setup_24bpp, [5 x ptr] [ptr @mini6410_lcd_type1_fb_win, ptr null, ptr null, ptr null, ptr null], ptr @mini6410_lcd_type1_timing, i32 0, i32 96 }, %struct.s3c_fb_platdata zeroinitializer], section ".init.data", align 4
@mini6410_nand_info = internal global { %struct.s3c2410_platform_nand, [32 x i8] } { %struct.s3c2410_platform_nand { i32 25, i32 55, i32 40, i8 0, i32 2, i32 1, ptr @mini6410_nand_sets, ptr null }, [32 x i8] zeroinitializer }, align 32
@mini6410_hsmmc1_pdata = internal global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 0, i32 0, i32 0, i32 2, i32 154, i8 1, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LCD power\00", [22 x i8] zeroinitializer }, align 32
@mini6410_devices = internal global [8 x ptr] [ptr @mini6410_device_eth, ptr @s3c_device_hsmmc0, ptr @s3c_device_hsmmc1, ptr @s3c_device_ohci, ptr @s3c_device_nand, ptr @s3c_device_fb, ptr @mini6410_lcd_powerdev, ptr @s3c_device_adc], section ".init.data", align 4
@mini6410_parse_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016MINI6410: '%c' ignored, screen type already set\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mini6410_parse_features\00", [40 x i8] zeroinitializer }, align 32
@mini6410_parse_features._entry_ptr = internal global ptr @mini6410_parse_features._entry, section ".printk_index", align 4
@mini6410_parse_features._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016MINI6410: '%c' out of range LCD mode\0A\00", [56 x i8] zeroinitializer }, align 32
@mini6410_parse_features._entry_ptr.12 = internal global ptr @mini6410_parse_features._entry.10, section ".printk_index", align 4
@mini6410_lcd_type0_fb_win = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 480, i16 272, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@mini6410_lcd_type0_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 480, i32 272, i32 0, i32 3, i32 2, i32 1, i32 1, i32 40, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@mini6410_lcd_type1_fb_win = internal global { %struct.s3c_fb_pd_win, [20 x i8] } { %struct.s3c_fb_pd_win { i16 16, i16 32, i16 800, i16 480, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@mini6410_lcd_type1_timing = internal global { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 0, i32 800, i32 480, i32 0, i32 8, i32 13, i32 7, i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@mini6410_nand_sets = internal global { [1 x %struct.s3c2410_nand_set], [32 x i8] } { [1 x %struct.s3c2410_nand_set] [%struct.s3c2410_nand_set { i8 0, i32 0, i32 1, i32 3, ptr @.str.13, ptr null, ptr @mini6410_nand_part, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@mini6410_nand_part = internal global { [3 x %struct.mtd_partition], [40 x i8] } { [3 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.14, ptr null, i64 1048576, i64 0, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.15, ptr null, i64 2097152, i64 1048576, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.16, ptr null, i64 0, i64 3145728, i32 0, i32 0, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uboot\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@mini6410_device_eth = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.17, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mini6410_dm9k_pdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @mini6410_dm9k_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc0 = external dso_local global %struct.platform_device, align 8
@s3c_device_hsmmc1 = external dso_local global %struct.platform_device, align 8
@s3c_device_ohci = external dso_local global %struct.platform_device, align 8
@s3c_device_nand = external dso_local global %struct.platform_device, align 8
@s3c_device_fb = external dso_local global %struct.platform_device, align 8
@mini6410_lcd_powerdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.18, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_fb, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mini6410_lcd_power_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_device_adc = external dso_local global %struct.platform_device, align 8
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm9000\00", [25 x i8] zeroinitializer }, align 32
@mini6410_dm9k_pdata = internal global { %struct.dm9000_plat_data, [40 x i8] } { %struct.dm9000_plat_data { i32 18, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mini6410_dm9k_resource = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 402653184, i32 402653185, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 402653188, i32 402653189, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 108, i32 108, ptr null, i32 1028, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-lcd\00", [19 x i8] zeroinitializer }, align 32
@mini6410_lcd_power_data = internal global { %struct.plat_lcd_data, [20 x i8] } { %struct.plat_lcd_data { ptr null, ptr @mini6410_lcd_power_set, ptr null }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 357, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 316, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 322, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"mini6410_nand_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 132, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"mini6410_hsmmc1_pdata\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 215, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 351, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 294, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 299, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"mini6410_lcd_type0_fb_win\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 141, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"mini6410_lcd_type0_timing\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 148, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"mini6410_lcd_type1_fb_win\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 160, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"mini6410_lcd_type1_timing\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 167, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"mini6410_nand_sets\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 123, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 125, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"mini6410_nand_part\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 105, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 107, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 112, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 117, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"mini6410_device_eth\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 95, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"mini6410_lcd_powerdev\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 209, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 96, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"mini6410_dm9k_pdata\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 91, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"mini6410_dm9k_resource\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 84, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 210, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"mini6410_lcd_power_data\00", align 1
@___asan_gen_.113 = private constant [37 x i8] c"../arch/arm/mach-s3c/mach-mini6410.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 205, i32 29 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__mach_desc_MINI6410, ptr @__setup_mini6410_features_setup, ptr @mini6410_machine_init._entry, ptr @mini6410_machine_init._entry.4, ptr @mini6410_machine_init._entry_ptr, ptr @mini6410_machine_init._entry_ptr.6, ptr @mini6410_parse_features._entry, ptr @mini6410_parse_features._entry.10, ptr @mini6410_parse_features._entry_ptr, ptr @mini6410_parse_features._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @mini6410_nand_info, ptr @mini6410_hsmmc1_pdata, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mini6410_lcd_type0_fb_win, ptr @mini6410_lcd_type0_timing, ptr @mini6410_lcd_type1_fb_win, ptr @mini6410_lcd_type1_timing, ptr @mini6410_nand_sets, ptr @.str.13, ptr @mini6410_nand_part, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mini6410_device_eth, ptr @mini6410_lcd_powerdev, ptr @.str.17, ptr @mini6410_dm9k_pdata, ptr @mini6410_dm9k_resource, ptr @.str.18, ptr @mini6410_lcd_power_data], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_machine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_machine_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_nand_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_hsmmc1_pdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_parse_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_parse_features._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_type0_fb_win to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_type0_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_type1_fb_win to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_type1_timing to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_nand_sets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_nand_part to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_device_eth to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_powerdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_dm9k_pdata to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_dm9k_resource to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mini6410_lcd_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mini6410_features_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @strscpy(ptr noundef nonnull @mini6410_features_str, ptr noundef nonnull %str, i32 noundef 12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mini6410_map_io() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c64xx_init_io(ptr noundef null, i32 noundef 0) #4
  tail call void @s3c64xx_set_xtal_freq(i32 noundef 12000000) #4
  tail call void @s3c24xx_init_uarts(ptr noundef nonnull @mini6410_uartcfgs, i32 noundef 4) #4
  tail call void @s3c64xx_set_timer_source(i32 noundef 3, i32 noundef 4) #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr)) #4, !srcloc !82
  %and = and i32 %0, -4
  %or = or i32 %and, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162528864 to ptr), i32 %or) #4, !srcloc !83
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr)) #4, !srcloc !82
  %and2 = and i32 %1, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -161480692 to ptr), i32 %and2) #4, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c6410_init_irq() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_timer_init() #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mini6410_machine_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @mini6410_features_str) #7
  %0 = load i8, ptr @mini6410_features_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not1.i = icmp eq i8 %0, 0
  br i1 %tobool.not1.i, label %entry.mini6410_parse_features.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.mini6410_parse_features.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mini6410_parse_features.exit

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %features.sroa.7.0 = phi i32 [ %features.sroa.7.2, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %features.sroa.0.0 = phi i32 [ %features.sroa.0.1, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %1 = phi i8 [ %3, %sw.epilog.i.while.body.i_crit_edge ], [ %0, %entry.while.body.i_crit_edge ]
  %fp.02.i = phi ptr [ %incdec.ptr.i, %sw.epilog.i.while.body.i_crit_edge ], [ @mini6410_features_str, %entry.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %fp.02.i, i32 1
  %conv.i = zext i8 %1 to i32
  %.off.i = add i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  %and.i = and i32 %features.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %sw.bb.i.sw.epilog.i.sink.split_crit_edge

sw.bb.i.sw.epilog.i.sink.split_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.sink.split

if.else.i:                                        ; preds = %sw.bb.i
  %sub.i = add nsw i32 %conv.i, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 2
  br i1 %cmp.i, label %if.else.i.sw.epilog.i.sink.split_crit_edge, label %if.else.i.sw.epilog.i_crit_edge

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.else.i.sw.epilog.i.sink.split_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.sink.split

sw.epilog.i.sink.split:                           ; preds = %if.else.i.sw.epilog.i.sink.split_crit_edge, %sw.bb.i.sw.epilog.i.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %sw.bb.i.sw.epilog.i.sink.split_crit_edge ], [ @.str.11, %if.else.i.sw.epilog.i.sink.split_crit_edge ]
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, i32 noundef %conv.i) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.i.sink.split, %if.else.i.sw.epilog.i_crit_edge, %while.body.i.sw.epilog.i_crit_edge
  %features.sroa.7.2 = phi i32 [ %features.sroa.7.0, %while.body.i.sw.epilog.i_crit_edge ], [ %sub.i, %if.else.i.sw.epilog.i_crit_edge ], [ %features.sroa.7.0, %sw.epilog.i.sink.split ]
  %features.sroa.0.1 = phi i32 [ %features.sroa.0.0, %while.body.i.sw.epilog.i_crit_edge ], [ 1, %if.else.i.sw.epilog.i_crit_edge ], [ 1, %sw.epilog.i.sink.split ]
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %sw.epilog.i.mini6410_parse_features.exit_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

sw.epilog.i.mini6410_parse_features.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mini6410_parse_features.exit

mini6410_parse_features.exit:                     ; preds = %sw.epilog.i.mini6410_parse_features.exit_crit_edge, %entry.mini6410_parse_features.exit_crit_edge
  %features.sroa.7.3 = phi i32 [ 0, %entry.mini6410_parse_features.exit_crit_edge ], [ %features.sroa.7.2, %sw.epilog.i.mini6410_parse_features.exit_crit_edge ]
  %win = getelementptr [3 x %struct.s3c_fb_platdata], ptr @mini6410_lcd_pdata, i32 0, i32 %features.sroa.7.3, i32 1
  %4 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %win, align 4
  %xres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %xres to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xres, align 2
  %conv = zext i16 %7 to i32
  %yres = getelementptr inbounds %struct.s3c_fb_pd_win, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %yres, align 2
  %conv10 = zext i16 %9 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv10) #7
  tail call void @s3c_nand_set_platdata(ptr noundef nonnull @mini6410_nand_info) #4
  %arrayidx13 = getelementptr [3 x %struct.s3c_fb_platdata], ptr @mini6410_lcd_pdata, i32 0, i32 %features.sroa.7.3
  tail call void @s3c_fb_set_platdata(ptr noundef %arrayidx13) #4
  tail call void @s3c_sdhci1_set_platdata(ptr noundef nonnull @mini6410_hsmmc1_pdata) #4
  tail call void @s3c64xx_ts_set_platdata(ptr noundef null) #4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -165675008 to ptr)) #4, !srcloc !82
  %and = and i32 %10, -241
  %or = or i32 %and, 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -165675008 to ptr), i32 %or) #4, !srcloc !83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -165675000 to ptr), i32 67966048) #4, !srcloc !83
  %call15 = tail call i32 @gpio_request(i32 noundef 53, ptr noundef nonnull @.str.7) #4
  %call16 = tail call i32 @gpio_request(i32 noundef 32, ptr noundef nonnull @.str.7) #4
  %call17 = tail call i32 @platform_add_devices(ptr noundef nonnull @mini6410_devices, i32 noundef 8) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_init_io(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_set_xtal_freq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c24xx_init_uarts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @s3c64xx_set_timer_source(i32 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_nand_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_fb_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci1_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_ts_set_platdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c64xx_fb_gpio_setup_24bpp() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mini6410_lcd_power_set(ptr nocapture noundef readnone %pd, i32 noundef %power) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool.not = icmp ne i32 %power, 0
  %call.i2 = tail call ptr @gpio_to_desc(i32 noundef 32) #4
  %. = zext i1 %tobool.not to i32
  %call1.i3 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i2, i32 noundef %.) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__setup_mini6410_features_setup, !1, !"__setup_mini6410_features_setup", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 270, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 357, i32 1}
!4 = !{ptr @__mach_desc_MINI6410, !3, !"__mach_desc_MINI6410", i1 false, i1 false}
!5 = !{ptr @__setup_str_mini6410_features_setup, !1, !"__setup_str_mini6410_features_setup", i1 false, i1 false}
!6 = !{ptr @mini6410_features_str, !7, !"mini6410_features_str", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 260, i32 13}
!8 = !{ptr @mini6410_uartcfgs, !9, !"mini6410_uartcfgs", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 51, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 316, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mini6410_machine_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @mini6410_machine_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 322, i32 2}
!18 = !{ptr @mini6410_machine_init._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mini6410_machine_init._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 351, i32 32}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 294, i32 5}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mini6410_parse_features._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mini6410_parse_features._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 299, i32 6}
!29 = !{ptr @mini6410_parse_features._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mini6410_parse_features._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mini6410_lcd_pdata, !32, !"mini6410_lcd_pdata", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 179, i32 31}
!33 = !{ptr @mini6410_lcd_type0_fb_win, !34, !"mini6410_lcd_type0_fb_win", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 141, i32 29}
!35 = !{ptr @mini6410_lcd_type0_timing, !36, !"mini6410_lcd_type0_timing", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 148, i32 28}
!37 = !{ptr @mini6410_lcd_type1_fb_win, !38, !"mini6410_lcd_type1_fb_win", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 160, i32 29}
!39 = !{ptr @mini6410_lcd_type1_timing, !40, !"mini6410_lcd_type1_timing", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 167, i32 28}
!41 = !{ptr @mini6410_nand_info, !42, !"mini6410_nand_info", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 132, i32 37}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 125, i32 12}
!45 = !{ptr @mini6410_nand_sets, !46, !"mini6410_nand_sets", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 123, i32 32}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 107, i32 11}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 112, i32 11}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 117, i32 11}
!53 = !{ptr @mini6410_nand_part, !54, !"mini6410_nand_part", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 105, i32 29}
!55 = !{ptr @mini6410_hsmmc1_pdata, !56, !"mini6410_hsmmc1_pdata", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 215, i32 34}
!57 = !{ptr @mini6410_devices, !58, !"mini6410_devices", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 222, i32 32}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 96, i32 11}
!61 = !{ptr @mini6410_device_eth, !62, !"mini6410_device_eth", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 95, i32 31}
!63 = !{ptr @mini6410_dm9k_pdata, !64, !"mini6410_dm9k_pdata", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 91, i32 32}
!65 = !{ptr @mini6410_dm9k_resource, !66, !"mini6410_dm9k_resource", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 84, i32 24}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 210, i32 12}
!69 = !{ptr @mini6410_lcd_powerdev, !70, !"mini6410_lcd_powerdev", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 209, i32 31}
!71 = !{ptr @mini6410_lcd_power_data, !72, !"mini6410_lcd_power_data", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-s3c/mach-mini6410.c", i32 205, i32 29}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 4205256}
!83 = !{i64 4204838}
