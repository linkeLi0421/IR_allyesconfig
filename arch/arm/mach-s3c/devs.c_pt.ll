; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/devs.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/devs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c_sdhci_platdata = type { i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.s3c2410_platform_i2c = type { i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c2410_ts_mach_info = type { i32, i32, i32, ptr }
%struct.samsung_keypad_platdata = type { ptr, i32, i32, i8, i8, ptr }
%struct.s3c2410_platform_nand = type { i32, i32, i32, i8, i32, i32, ptr, ptr }
%struct.s3c2410_nand_set = type { i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.s3c64xx_spi_info = type { i32, i32, i8, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-adc\00", [21 x i8] zeroinitializer }, align 32
@s3c_adc_resource = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 2113974272, i32 2113974527, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 95, i32 95, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 94, i32 94, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_adc = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @s3c_adc_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s3c-fb\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_fb_resource = internal global { [4 x %struct.resource], [32 x i8] } { [4 x %struct.resource] [%struct.resource { i32 1997537280, i32 1997553663, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 62, i32 62, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 61, i32 61, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 63, i32 63, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_fb = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 4, ptr @s3c_fb_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-hwmon\00", [22 x i8] zeroinitializer }, align 32
@s3c_device_hwmon = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.2, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr getelementptr (i8, ptr @s3c_device_adc, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_hsmmc0_def_platdata = dso_local global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-sdhci\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_hsmmc_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2082471936, i32 2082476031, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 88, i32 88, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc0 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.3, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_hsmmc0_def_platdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.4, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_hsmmc_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_hsmmc1_def_platdata = dso_local global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_hsmmc1_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2083520512, i32 2083524607, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 89, i32 89, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc1 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.3, i32 1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_hsmmc1_def_platdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.5, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_hsmmc1_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_hsmmc2_def_platdata = dso_local global { %struct.s3c_sdhci_platdata, [56 x i8] } { %struct.s3c_sdhci_platdata { i32 4, i32 7, i32 0, i32 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_hsmmc2_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2084569088, i32 2084573183, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 81, i32 81, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_hsmmc2 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.3, i32 2, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_hsmmc2_def_platdata, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.6, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_hsmmc2_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c2410-i2c\00", [20 x i8] zeroinitializer }, align 32
@s3c_i2c0_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130722816, i32 2130726911, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 82, i32 82, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_i2c0 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.7, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_i2c0_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@default_i2c_data = dso_local global %struct.s3c2410_platform_i2c { i32 0, i32 0, i32 16, i32 100000, i32 100, ptr null }, section ".init.data", align 4
@s3c_i2c1_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130767872, i32 2130771967, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 37, i32 37, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_i2c1 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.7, i32 1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_i2c1_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_cfcon_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1882193920, i32 1882210303, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 78, i32 78, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_cfcon = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr null, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_cfcon_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"samsung-keypad\00", [17 x i8] zeroinitializer }, align 32
@samsung_keypad_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2113970176, i32 2113970207, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 54, i32 54, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@samsung_device_keypad = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.8, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @samsung_keypad_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c2410-nand\00", [19 x i8] zeroinitializer }, align 32
@s3c_nand_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 1881145344, i32 1882193919, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_nand = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.9, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @s3c_nand_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c_nand_set_platdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: no memory for sets\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3c_nand_set_platdata\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-s3c/devs.c\00", [39 x i8] zeroinitializer }, align 32
@s3c_nand_set_platdata._entry_ptr = internal global ptr @s3c_nand_set_platdata._entry, section ".printk_index", align 4
@s3c_nand_set_platdata._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.12, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: failed to copy set %d\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c_nand_set_platdata._entry_ptr.15 = internal global ptr @s3c_nand_set_platdata._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-pwm\00", [20 x i8] zeroinitializer }, align 32
@samsung_pwm_resource = internal global { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 2130731008, i32 2130735103, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@samsung_device_pwm = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.16, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @samsung_pwm_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c64xx-rtc\00", [20 x i8] zeroinitializer }, align 32
@s3c_rtc_resource = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 2113949696, i32 2113949951, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 92, i32 92, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 34, i32 34, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_rtc = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.17, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @s3c_rtc_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@default_ts_data = internal global %struct.s3c2410_ts_mach_info { i32 10000, i32 49, i32 2, ptr null }, section ".init.data", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c2410-ohci\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_usb_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 1949302784, i32 1949303039, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 79, i32 79, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_ohci = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.18, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.19, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_usb_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s3c-hsotg\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c_usb_hsotg_resources = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2080374784, i32 2080505855, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 90, i32 90, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_usb_hsotg = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.20, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.21, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_usb_hsotg_resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c2410-wdt\00", [20 x i8] zeroinitializer }, align 32
@s3c_wdt_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2113945600, i32 2113946623, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 58, i32 58, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c_device_wdt = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.22, i32 -1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c_wdt_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c6410-spi\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x i64], [24 x i8] } { [1 x i64] [i64 4294967295], [24 x i8] zeroinitializer }, align 32
@s3c64xx_spi0_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130751488, i32 2130751743, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 80, i32 80, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_device_spi0 = dso_local global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.23, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr @.compoundliteral.24, i64 4294967295, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 2, ptr @s3c64xx_spi0_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c64xx_spi0_set_platdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.12, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Invalid SPI configuration\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c64xx_spi0_set_platdata\00", [38 x i8] zeroinitializer }, align 32
@s3c64xx_spi0_set_platdata._entry_ptr = internal global ptr @s3c64xx_spi0_set_platdata._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 116, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"s3c_adc_resource\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 109, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"s3c_device_adc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 115, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 155, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"s3c_fb_resource\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 147, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"s3c_device_fb\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 154, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 176, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"s3c_device_hwmon\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 175, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"s3c_hsmmc0_def_platdata\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 196, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 203, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"s3c_hsmmc_resource\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 191, i32 24 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"s3c_device_hsmmc0\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 202, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"s3c_hsmmc1_def_platdata\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 226, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"s3c_hsmmc1_resource\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 221, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"s3c_device_hsmmc1\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 232, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"s3c_hsmmc2_def_platdata\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 258, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"s3c_hsmmc2_resource\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 253, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"s3c_device_hsmmc2\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 264, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 320, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"s3c_i2c0_resource\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 314, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"s3c_device_i2c0\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 319, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"s3c_i2c1_resource\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 349, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"s3c_device_i2c1\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 354, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"s3c_cfcon_resource\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 573, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"s3c_device_cfcon\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 578, i32 24 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 600, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"samsung_keypad_resources\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 594, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"samsung_device_keypad\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 599, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 661, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"s3c_nand_resource\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 656, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"s3c_device_nand\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 660, i32 24 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 731, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 738, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 794, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"samsung_pwm_resource\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 789, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"samsung_device_pwm\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 793, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 831, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"s3c_rtc_resource\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 824, i32 24 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"s3c_device_rtc\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 830, i32 24 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 971, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"s3c_usb_resource\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 965, i32 24 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"s3c_device_ohci\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 970, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1027, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"s3c_usb_hsotg_resources\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1021, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant [21 x i8] c"s3c_device_usb_hsotg\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1026, i32 24 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1086, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"s3c_wdt_resource\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1080, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"s3c_device_wdt\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1085, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1100, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [22 x i8] c"s3c64xx_spi0_resource\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1094, i32 24 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"s3c64xx_device_spi0\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1099, i32 24 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [28 x i8] c"../arch/arm/mach-s3c/devs.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1117, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @s3c64xx_spi0_set_platdata._entry, ptr @s3c64xx_spi0_set_platdata._entry_ptr, ptr @s3c_nand_set_platdata._entry, ptr @s3c_nand_set_platdata._entry.13, ptr @s3c_nand_set_platdata._entry_ptr, ptr @s3c_nand_set_platdata._entry_ptr.15, ptr @.str, ptr @s3c_adc_resource, ptr @s3c_device_adc, ptr @.str.1, ptr @.compoundliteral, ptr @s3c_fb_resource, ptr @s3c_device_fb, ptr @.str.2, ptr @s3c_device_hwmon, ptr @s3c_hsmmc0_def_platdata, ptr @.str.3, ptr @.compoundliteral.4, ptr @s3c_hsmmc_resource, ptr @s3c_device_hsmmc0, ptr @s3c_hsmmc1_def_platdata, ptr @.compoundliteral.5, ptr @s3c_hsmmc1_resource, ptr @s3c_device_hsmmc1, ptr @s3c_hsmmc2_def_platdata, ptr @.compoundliteral.6, ptr @s3c_hsmmc2_resource, ptr @s3c_device_hsmmc2, ptr @.str.7, ptr @s3c_i2c0_resource, ptr @s3c_device_i2c0, ptr @s3c_i2c1_resource, ptr @s3c_device_i2c1, ptr @s3c_cfcon_resource, ptr @s3c_device_cfcon, ptr @.str.8, ptr @samsung_keypad_resources, ptr @samsung_device_keypad, ptr @.str.9, ptr @s3c_nand_resource, ptr @s3c_device_nand, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @samsung_pwm_resource, ptr @samsung_device_pwm, ptr @.str.17, ptr @s3c_rtc_resource, ptr @s3c_device_rtc, ptr @.str.18, ptr @.compoundliteral.19, ptr @s3c_usb_resource, ptr @s3c_device_ohci, ptr @.str.20, ptr @.compoundliteral.21, ptr @s3c_usb_hsotg_resources, ptr @s3c_device_usb_hsotg, ptr @.str.22, ptr @s3c_wdt_resource, ptr @s3c_device_wdt, ptr @.str.23, ptr @.compoundliteral.24, ptr @s3c64xx_spi0_resource, ptr @s3c64xx_device_spi0, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_adc_resource to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_adc to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_fb_resource to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_fb to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_hwmon to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc0_def_platdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_hsmmc0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc1_def_platdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc1_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_hsmmc1 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc2_def_platdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_hsmmc2_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_hsmmc2 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_i2c0_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_i2c0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_i2c1_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_i2c1 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_cfcon_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_cfcon to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_keypad_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_device_keypad to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_nand_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_nand to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_nand_set_platdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_nand_set_platdata._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_device_pwm to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_rtc_resource to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_rtc to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_usb_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_ohci to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_usb_hsotg_resources to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_usb_hsotg to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_wdt_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_device_wdt to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi0_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_device_spi0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_spi0_set_platdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_fb_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %pd, i32 noundef 36, ptr noundef nonnull @s3c_device_fb) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s3c_set_platdata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_hwmon_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %pd, i32 noundef 32, ptr noundef nonnull @s3c_device_hwmon) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_sdhci0_set_platdata(ptr noundef %pd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_sdhci_set_platdata(ptr noundef %pd, ptr noundef nonnull @s3c_hsmmc0_def_platdata) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_sdhci_set_platdata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_sdhci1_set_platdata(ptr noundef %pd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_sdhci_set_platdata(ptr noundef %pd, ptr noundef nonnull @s3c_hsmmc1_def_platdata) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_sdhci2_set_platdata(ptr noundef %pd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_sdhci_set_platdata(ptr noundef %pd, ptr noundef nonnull @s3c_hsmmc2_def_platdata) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_i2c0_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 0, ptr @default_i2c_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pd.addr.0 = phi ptr [ %pd, %entry.if.end_crit_edge ], [ @default_i2c_data, %if.then ]
  %call = tail call ptr @s3c_set_platdata(ptr noundef nonnull %pd.addr.0, i32 noundef 24, ptr noundef nonnull @s3c_device_i2c0) #6
  %cfg_gpio = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_gpio, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @s3c_i2c0_cfg_gpio, ptr %cfg_gpio, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c0_cfg_gpio(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_i2c1_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 1, ptr @default_i2c_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pd.addr.0 = phi ptr [ %pd, %entry.if.end_crit_edge ], [ @default_i2c_data, %if.then ]
  %call = tail call ptr @s3c_set_platdata(ptr noundef nonnull %pd.addr.0, i32 noundef 24, ptr noundef nonnull @s3c_device_i2c1) #6
  %cfg_gpio = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_gpio, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @s3c_i2c1_cfg_gpio, ptr %cfg_gpio, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_i2c1_cfg_gpio(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_ide_set_platdata(ptr noundef %pdata) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %pdata, i32 noundef 4, ptr noundef nonnull @s3c_device_cfcon) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_keypad_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %pd, i32 noundef 20, ptr noundef nonnull @samsung_device_keypad) #6
  %cfg_gpio = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %cfg_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @samsung_keypad_cfg_gpio, ptr %cfg_gpio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_keypad_cfg_gpio(i32 noundef, i32 noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_nand_set_platdata(ptr noundef %nand) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %nand, i32 noundef 32, ptr noundef nonnull @s3c_device_nand) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.end:                                           ; preds = %entry
  %nr_sets = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_sets, align 4
  %mul = shl i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool1.not = icmp eq i32 %mul, 0
  br i1 %tobool1.not, label %if.end.cleanup22_crit_edge, label %if.then2

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.then2:                                         ; preds = %if.end
  %sets = getelementptr inbounds %struct.s3c2410_platform_nand, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %sets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sets, align 4
  %call3 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %mul, i32 noundef 3264) #6
  %4 = ptrtoint ptr %sets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %sets, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then2
  %5 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp39 = icmp sgt i32 %6, 0
  br i1 %cmp39, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup22_crit_edge

for.cond.preheader.cleanup22_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #9
  br label %cleanup22

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %to.040 = phi ptr [ %incdec.ptr, %if.end18.for.body_crit_edge ], [ %call3, %for.cond.preheader.for.body_crit_edge ]
  %call10 = tail call fastcc i32 @s3c_nand_copy_set(ptr noundef %to.040) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %i.041) #9
  br label %cleanup22

if.end18:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.s3c2410_nand_set, ptr %to.040, i32 1
  %inc = add nuw nsw i32 %i.041, 1
  %7 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_sets, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.cleanup22_crit_edge

if.end18.cleanup22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup22

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup22:                                        ; preds = %if.end18.cleanup22_crit_edge, %do.end15, %do.end, %for.cond.preheader.cleanup22_crit_edge, %if.end.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c_nand_copy_set(ptr nocapture noundef %set) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_partitions = getelementptr inbounds %struct.s3c2410_nand_set, ptr %set, i32 0, i32 3
  %0 = ptrtoint ptr %nr_partitions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_partitions, align 4
  %mul = mul i32 %1, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %partitions = getelementptr inbounds %struct.s3c2410_nand_set, ptr %set, i32 0, i32 6
  %2 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %partitions, align 4
  %call = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %mul, i32 noundef 3264) #6
  %4 = ptrtoint ptr %partitions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %partitions, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %nr_map = getelementptr inbounds %struct.s3c2410_nand_set, ptr %set, i32 0, i32 5
  %5 = ptrtoint ptr %nr_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nr_map, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end4.if.end16_crit_edge, label %land.lhs.true

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %nr_chips = getelementptr inbounds %struct.s3c2410_nand_set, ptr %set, i32 0, i32 2
  %7 = ptrtoint ptr %nr_chips to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end16_crit_edge, label %if.then7

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then7:                                         ; preds = %land.lhs.true
  %mul9 = shl i32 %8, 2
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %6, i32 noundef %mul9, i32 noundef 3264) #6
  %9 = ptrtoint ptr %nr_map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %nr_map, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @samsung_pwm_set_platdata(ptr noundef %pd) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %pd, ptr getelementptr inbounds (%struct.platform_device, ptr @samsung_device_pwm, i32 0, i32 3, i32 7), align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c64xx_ts_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  %spec.store.select = select i1 %tobool.not, ptr @default_ts_data, ptr %pd
  %call = tail call ptr @s3c_set_platdata(ptr noundef %spec.store.select, i32 noundef 16, ptr noundef nonnull @s3c_device_adc) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_ohci_set_platdata(ptr noundef %info) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %info, i32 noundef 24, ptr noundef nonnull @s3c_device_ohci) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hsotg_set_platdata(ptr noundef %pd) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @s3c_set_platdata(ptr noundef %pd, i32 noundef 20, ptr noundef nonnull @s3c_device_usb_hsotg) #6
  %phy_init = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_init, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %phy_init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @s3c_usb_phy_init, ptr %phy_init, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_exit = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %phy_exit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_exit, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %phy_exit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @s3c_usb_phy_exit, ptr %phy_exit, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_usb_phy_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c_usb_phy_exit(ptr noundef, i32 noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c64xx_spi0_set_platdata(ptr noundef %cfg_gpio, i32 noundef %src_clk_nr, i32 noundef %num_cs) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pd = alloca %struct.s3c64xx_spi_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pd) #6
  %0 = getelementptr inbounds i8, ptr %pd, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cs)
  %tobool.not = icmp eq i32 %num_cs, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_clk_nr)
  %cmp = icmp slt i32 %src_clk_nr, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_cs1 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %num_cs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num_cs, ptr %num_cs1, align 4
  %3 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %src_clk_nr, ptr %pd, align 4
  %tobool3.not = icmp eq ptr %cfg_gpio, null
  %spec.select = select i1 %tobool3.not, ptr @s3c64xx_spi0_cfg_gpio, ptr %cfg_gpio
  %cfg_gpio4 = getelementptr inbounds %struct.s3c64xx_spi_info, ptr %pd, i32 0, i32 3
  %4 = ptrtoint ptr %cfg_gpio4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %cfg_gpio4, align 4
  %call5 = call ptr @s3c_set_platdata(ptr noundef nonnull %pd, i32 noundef 16, ptr noundef nonnull @s3c64xx_device_spi0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3c64xx_spi0_cfg_gpio() #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/devs.c", i32 116, i32 11}
!2 = !{ptr @s3c_device_adc, !3, !"s3c_device_adc", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/devs.c", i32 115, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/devs.c", i32 155, i32 11}
!6 = !{ptr @s3c_device_fb, !7, !"s3c_device_fb", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/devs.c", i32 154, i32 24}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/devs.c", i32 176, i32 11}
!10 = !{ptr @s3c_device_hwmon, !11, !"s3c_device_hwmon", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/devs.c", i32 175, i32 24}
!12 = !{ptr @s3c_hsmmc0_def_platdata, !13, !"s3c_hsmmc0_def_platdata", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/devs.c", i32 196, i32 27}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/devs.c", i32 203, i32 11}
!16 = !{ptr @s3c_device_hsmmc0, !17, !"s3c_device_hsmmc0", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/devs.c", i32 202, i32 24}
!18 = !{ptr @s3c_hsmmc1_def_platdata, !19, !"s3c_hsmmc1_def_platdata", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/devs.c", i32 226, i32 27}
!20 = !{ptr @s3c_device_hsmmc1, !21, !"s3c_device_hsmmc1", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/devs.c", i32 232, i32 24}
!22 = !{ptr @s3c_hsmmc2_def_platdata, !23, !"s3c_hsmmc2_def_platdata", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/devs.c", i32 258, i32 27}
!24 = !{ptr @s3c_device_hsmmc2, !25, !"s3c_device_hsmmc2", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-s3c/devs.c", i32 264, i32 24}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/devs.c", i32 320, i32 11}
!28 = !{ptr @s3c_device_i2c0, !29, !"s3c_device_i2c0", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-s3c/devs.c", i32 319, i32 24}
!30 = !{ptr @default_i2c_data, !31, !"default_i2c_data", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/devs.c", i32 326, i32 29}
!32 = !{ptr @s3c_device_i2c1, !33, !"s3c_device_i2c1", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-s3c/devs.c", i32 354, i32 24}
!34 = !{ptr @s3c_device_cfcon, !35, !"s3c_device_cfcon", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/devs.c", i32 578, i32 24}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/devs.c", i32 600, i32 11}
!38 = !{ptr @samsung_device_keypad, !39, !"samsung_device_keypad", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/devs.c", i32 599, i32 24}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/devs.c", i32 661, i32 11}
!42 = !{ptr @s3c_device_nand, !43, !"s3c_device_nand", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/devs.c", i32 660, i32 24}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/devs.c", i32 731, i32 4}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @s3c_nand_set_platdata._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @s3c_nand_set_platdata._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/devs.c", i32 738, i32 5}
!52 = !{ptr @s3c_nand_set_platdata._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @s3c_nand_set_platdata._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/devs.c", i32 794, i32 11}
!56 = !{ptr @samsung_device_pwm, !57, !"samsung_device_pwm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-s3c/devs.c", i32 793, i32 24}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-s3c/devs.c", i32 831, i32 11}
!60 = !{ptr @s3c_device_rtc, !61, !"s3c_device_rtc", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-s3c/devs.c", i32 830, i32 24}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-s3c/devs.c", i32 971, i32 11}
!64 = !{ptr @s3c_device_ohci, !65, !"s3c_device_ohci", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-s3c/devs.c", i32 970, i32 24}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-s3c/devs.c", i32 1027, i32 11}
!68 = !{ptr @s3c_device_usb_hsotg, !69, !"s3c_device_usb_hsotg", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-s3c/devs.c", i32 1026, i32 24}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-s3c/devs.c", i32 1086, i32 11}
!72 = !{ptr @s3c_device_wdt, !73, !"s3c_device_wdt", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-s3c/devs.c", i32 1085, i32 24}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-s3c/devs.c", i32 1100, i32 11}
!76 = !{ptr @s3c64xx_device_spi0, !77, !"s3c64xx_device_spi0", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-s3c/devs.c", i32 1099, i32 24}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-s3c/devs.c", i32 1117, i32 3}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @s3c64xx_spi0_set_platdata._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @s3c64xx_spi0_set_platdata._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @s3c_adc_resource, !84, !"s3c_adc_resource", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-s3c/devs.c", i32 109, i32 24}
!85 = !{ptr @s3c_fb_resource, !86, !"s3c_fb_resource", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-s3c/devs.c", i32 147, i32 24}
!87 = !{ptr @s3c_hsmmc_resource, !88, !"s3c_hsmmc_resource", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-s3c/devs.c", i32 191, i32 24}
!89 = !{ptr @s3c_hsmmc1_resource, !90, !"s3c_hsmmc1_resource", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-s3c/devs.c", i32 221, i32 24}
!91 = !{ptr @s3c_hsmmc2_resource, !92, !"s3c_hsmmc2_resource", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-s3c/devs.c", i32 253, i32 24}
!93 = !{ptr @s3c_i2c0_resource, !94, !"s3c_i2c0_resource", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-s3c/devs.c", i32 314, i32 24}
!95 = !{ptr @s3c_i2c1_resource, !96, !"s3c_i2c1_resource", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-s3c/devs.c", i32 349, i32 24}
!97 = !{ptr @s3c_cfcon_resource, !98, !"s3c_cfcon_resource", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-s3c/devs.c", i32 573, i32 24}
!99 = !{ptr @samsung_keypad_resources, !100, !"samsung_keypad_resources", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-s3c/devs.c", i32 594, i32 24}
!101 = !{ptr @s3c_nand_resource, !102, !"s3c_nand_resource", i1 false, i1 false}
!102 = !{!"../arch/arm/mach-s3c/devs.c", i32 656, i32 24}
!103 = !{ptr @samsung_pwm_resource, !104, !"samsung_pwm_resource", i1 false, i1 false}
!104 = !{!"../arch/arm/mach-s3c/devs.c", i32 789, i32 24}
!105 = !{ptr @s3c_rtc_resource, !106, !"s3c_rtc_resource", i1 false, i1 false}
!106 = !{!"../arch/arm/mach-s3c/devs.c", i32 824, i32 24}
!107 = !{ptr @default_ts_data, !108, !"default_ts_data", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-s3c/devs.c", i32 946, i32 36}
!109 = !{ptr @s3c_usb_resource, !110, !"s3c_usb_resource", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-s3c/devs.c", i32 965, i32 24}
!111 = !{ptr @s3c_usb_hsotg_resources, !112, !"s3c_usb_hsotg_resources", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-s3c/devs.c", i32 1021, i32 24}
!113 = !{ptr @s3c_wdt_resource, !114, !"s3c_wdt_resource", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-s3c/devs.c", i32 1080, i32 24}
!115 = !{ptr @s3c64xx_spi0_resource, !116, !"s3c64xx_spi0_resource", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-s3c/devs.c", i32 1094, i32 24}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
