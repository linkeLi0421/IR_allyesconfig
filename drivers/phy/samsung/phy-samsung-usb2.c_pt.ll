; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-samsung-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-samsung-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_usb2_phy_config = type { ptr, ptr, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.samsung_usb2_phy_driver = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [0 x %struct.samsung_usb2_phy_instance] }
%struct.samsung_usb2_phy_instance = type { ptr, ptr, ptr, i32, i32 }
%struct.samsung_usb2_common_phy = type { ptr, ptr, i32, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_exynos_usb2__292_259_samsung_usb2_phy_driver_init6 = internal global ptr @samsung_usb2_phy_driver_init, section ".initcall6.init", align 4
@samsung_usb2_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @samsung_usb2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @samsung_usb2_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_usb2_phy_driver_exit = internal global ptr @samsung_usb2_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [66 x i8] c"phy_exynos_usb2.description=Samsung S5P/Exynos SoC USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [59 x i8] c"phy_exynos_usb2.author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [57 x i8] c"phy_exynos_usb2.file=drivers/phy/samsung/phy-exynos-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [31 x i8] c"phy_exynos_usb2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [48 x i8] c"phy_exynos_usb2.alias=platform:samsung-usb2-phy\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"samsung-usb2-phy\00", [47 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4x12-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4x12_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_usb2_phy_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_usb2_phy_config }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"This driver is required to be instantiated from device tree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung_usb2_phy_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/phy/samsung/phy-samsung-usb2.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr = internal global ptr @samsung_usb2_phy_probe._entry, section ".printk_index", align 4
@samsung_usb2_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&drv->lock\00", [21 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to map register memory (phy)\0A\00", [59 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.9 = internal global ptr @samsung_usb2_phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,pmureg-phandle\00", [41 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to map PMU registers (via syscon)\0A\00", [54 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.13 = internal global ptr @samsung_usb2_phy_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,sysreg-phandle\00", [41 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to map system registers (via syscon)\0A\00", [51 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.17 = internal global ptr @samsung_usb2_phy_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get clock of phy controller\0A\00", [57 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.21 = internal global ptr @samsung_usb2_phy_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to get reference clock for the phy controller\0A\00", [42 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.25 = internal global ptr @samsung_usb2_phy_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.2, ptr @.str.3, ptr @.str.28, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"phy_exynos_usb2\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Creating phy \22%s\22\0A\00", [45 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @samsung_usb2_phy_power_on, ptr @samsung_usb2_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create usb2_phy \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.31 = internal global ptr @samsung_usb2_phy_probe._entry.29, section ".printk_index", align 4
@samsung_usb2_phy_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_probe._entry_ptr.34 = internal global ptr @samsung_usb2_phy_probe._entry.32, section ".printk_index", align 4
@samsung_usb2_phy_power_on.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_usb2_phy_power_on\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Request to power_on \22%s\22 usb phy\0A\00", [62 x i8] zeroinitializer }, align 32
@samsung_usb2_phy_power_off.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung_usb2_phy_power_off\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Request to power_off \22%s\22 usb phy\0A\00", [61 x i8] zeroinitializer }, align 32
@exynos3250_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos4210_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos4x12_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos5250_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@exynos5420_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@s5pv210_usb2_phy_config = external dso_local constant %struct.samsung_usb2_phy_config, align 4
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"samsung_usb2_phy_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 250, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 254, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"samsung_usb2_phy_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 106, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 154, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 168, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 175, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 180, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 182, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 188, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 190, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 195, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 197, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 201, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 203, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 214, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 226, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"samsung_usb2_phy_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 85, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 229, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 243, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 26, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [42 x i8] c"../drivers/phy/samsung/phy-samsung-usb2.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 68, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_samsung_usb2_phy_driver_exit, ptr @__initcall__kmod_phy_exynos_usb2__292_259_samsung_usb2_phy_driver_init6, ptr @samsung_usb2_phy_driver_exit, ptr @samsung_usb2_phy_probe._entry, ptr @samsung_usb2_phy_probe._entry.11, ptr @samsung_usb2_phy_probe._entry.15, ptr @samsung_usb2_phy_probe._entry.19, ptr @samsung_usb2_phy_probe._entry.23, ptr @samsung_usb2_phy_probe._entry.29, ptr @samsung_usb2_phy_probe._entry.32, ptr @samsung_usb2_phy_probe._entry.7, ptr @samsung_usb2_phy_probe._entry_ptr, ptr @samsung_usb2_phy_probe._entry_ptr.13, ptr @samsung_usb2_phy_probe._entry_ptr.17, ptr @samsung_usb2_phy_probe._entry_ptr.21, ptr @samsung_usb2_phy_probe._entry_ptr.25, ptr @samsung_usb2_phy_probe._entry_ptr.31, ptr @samsung_usb2_phy_probe._entry_ptr.34, ptr @samsung_usb2_phy_probe._entry_ptr.9, ptr @samsung_usb2_phy_driver, ptr @.str, ptr @samsung_usb2_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @samsung_usb2_phy_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @samsung_usb2_phy_ops, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_usb2_phy_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_usb2_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_usb2_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_usb2_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup141

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup141_crit_edge, label %if.end5

if.end.cleanup141_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup141

if.end5:                                          ; preds = %if.end
  %num_phys = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 20) #5
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 84) #5
  %retval.0.i221 = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i221, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup141_crit_edge, label %if.end10

if.end5.cleanup141_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup141

if.end10:                                         ; preds = %if.end5
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @samsung_usb2_phy_probe.__key, i16 noundef signext 3) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %call.i, align 4
  %dev16 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %dev16, align 4
  %call17 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg_phy = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %reg_phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %reg_phy, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %11 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_phy, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup141

if.end26:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.10) #5
  %reg_pmu = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %reg_pmu to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %reg_pmu, align 4
  %cmp.i222 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %17 = ptrtoint ptr %reg_pmu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_pmu, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup141

if.end38:                                         ; preds = %if.end26
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %has_mode_switch = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %has_mode_switch to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_mode_switch, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %if.end38.if.end54_crit_edge, label %if.then41

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then41:                                        ; preds = %if.end38
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call44 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %25, ptr noundef nonnull @.str.14) #5
  %reg_sys = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %reg_sys to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call44, ptr %reg_sys, align 4
  %cmp.i223 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end50, label %if.then41.if.end54_crit_edge

if.then41.if.end54_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end50:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  %27 = ptrtoint ptr %reg_sys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_sys, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup141

if.end54:                                         ; preds = %if.then41.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %call55 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #5
  %clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call55, ptr %clk, align 4
  %cmp.i224 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup141

if.end64:                                         ; preds = %if.end54
  %call65 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #5
  %ref_clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call65, ptr %ref_clk, align 4
  %cmp.i225 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  %35 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ref_clk, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup141

if.end74:                                         ; preds = %if.end64
  %call76 = tail call i32 @clk_get_rate(ptr noundef %call65) #5
  %ref_rate = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %ref_rate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call76, ptr %ref_rate, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %rate_to_clk = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %rate_to_clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rate_to_clk, align 4
  %tobool78.not = icmp eq ptr %42, null
  br i1 %tobool78.not, label %if.end74.if.end87_crit_edge, label %if.then79

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then79:                                        ; preds = %if.end74
  %ref_reg_val = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 5
  %call83 = tail call i32 %42(i32 noundef %call76, ptr noundef %ref_reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then79.if.end87_crit_edge, label %if.then79.cleanup141_crit_edge

if.then79.cleanup141_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup141

if.then79.if.end87_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.end87:                                         ; preds = %if.then79.if.end87_crit_edge, %if.end74.if.end87_crit_edge
  %call88 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #5
  %vbus = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call88, ptr %vbus, align 4
  %cmp.i226 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then91, label %if.end87.if.end97_crit_edge

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then91:                                        ; preds = %if.end87
  %cmp = icmp eq ptr %call88, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then91.cleanup141_crit_edge, label %if.end95

if.then91.cleanup141_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup141

if.end95:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %vbus, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end95, %if.end87.if.end97_crit_edge
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %num_phys99231 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %num_phys99231 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_phys99231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp100232.not = icmp eq i32 %48, 0
  br i1 %cmp100232.not, label %if.end97.for.end_crit_edge, label %if.end97.for.body_crit_edge

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  br label %for.body

if.end97.for.end_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end97.for.body_crit_edge
  %49 = phi ptr [ %70, %for.inc.for.body_crit_edge ], [ %46, %if.end97.for.body_crit_edge ]
  %i.0233 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end97.for.body_crit_edge ]
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %label102 = getelementptr %struct.samsung_usb2_common_phy, ptr %51, i32 %i.0233, i32 3
  %52 = ptrtoint ptr %label102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %label102, align 4
  %arrayidx103 = getelementptr %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 11, i32 %i.0233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_usb2_phy_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_usb2_phy_probe, %if.then109)) #5
          to label %do.end112 [label %if.then109], !srcloc !91

if.then109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @samsung_usb2_phy_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef %53) #5
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %for.body
  %call113 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @samsung_usb2_phy_ops) #5
  %phy = getelementptr %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 11, i32 %i.0233, i32 1
  %54 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call113, ptr %phy, align 4
  %cmp.i227 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.30, ptr noundef %53) #8
  %57 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup141

for.inc:                                          ; preds = %do.end112
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %arrayidx126 = getelementptr %struct.samsung_usb2_common_phy, ptr %63, i32 %i.0233
  %64 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx126, ptr %arrayidx103, align 4
  %drv128 = getelementptr %struct.samsung_usb2_phy_driver, ptr %call.i, i32 0, i32 11, i32 %i.0233, i32 2
  %65 = ptrtoint ptr %drv128 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %drv128, align 4
  %attrs.i = getelementptr inbounds %struct.phy, ptr %call113, i32 0, i32 6
  %66 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %attrs.i, align 4
  %67 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx103, ptr %driver_data.i.i, align 4
  %inc = add nuw i32 %i.0233, 1
  %70 = load ptr, ptr %call.i, align 4
  %num_phys99 = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %num_phys99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_phys99, align 4
  %cmp100 = icmp ult i32 %inc, %72
  br i1 %cmp100, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end97.for.end_crit_edge
  %call132 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @samsung_usb2_phy_xlate) #5
  %cmp.i228 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %do.end137, label %for.end.cleanup141_crit_edge

for.end.cleanup141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup141

do.end137:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.33) #8
  %75 = ptrtoint ptr %call132 to i32
  br label %cleanup141

cleanup141:                                       ; preds = %do.end137, %for.end.cleanup141_crit_edge, %cleanup.thread, %if.then91.cleanup141_crit_edge, %if.then79.cleanup141_crit_edge, %do.end71, %do.end61, %do.end50, %do.end35, %do.end23, %if.end5.cleanup141_crit_edge, %if.end.cleanup141_crit_edge, %do.end
  %retval.2 = phi i32 [ %13, %do.end23 ], [ %19, %do.end35 ], [ %29, %do.end50 ], [ %33, %do.end61 ], [ %37, %do.end71 ], [ %75, %do.end137 ], [ -22, %do.end ], [ -22, %if.end.cleanup141_crit_edge ], [ -12, %if.end5.cleanup141_crit_edge ], [ %call83, %if.then79.cleanup141_crit_edge ], [ -517, %if.then91.cleanup141_crit_edge ], [ 0, %for.end.cleanup141_crit_edge ], [ %59, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @samsung_usb2_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %num_phys = getelementptr inbounds %struct.samsung_usb2_phy_config, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %if.end27, label %do.end, !prof !92

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phy = getelementptr %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 11, i32 %3, i32 1
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %9, %if.end27 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_usb2_phy_power_on.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_usb2_phy_power_on, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %label = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @samsung_usb2_phy_power_on.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vbus = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %if.then6

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %call8 = tail call i32 @regulator_enable(ptr noundef nonnull %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.err_main_clk_crit_edge

if.end12.err_main_clk_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_main_clk

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.end.i.err_main_clk.sink.split_crit_edge

if.end.i.err_main_clk.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_main_clk.sink.split

if.end16:                                         ; preds = %if.end.i
  %ref_clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ref_clk, align 4
  %call.i62 = tail call i32 @clk_prepare(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i66, label %if.end16.err_instance_clk_crit_edge

if.end16.err_instance_clk_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_instance_clk

if.end.i66:                                       ; preds = %if.end16
  %call1.i64 = tail call i32 @clk_enable(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool2.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool2.not.i65, label %if.end20, label %if.end.i66.err_instance_clk.sink.split_crit_edge

if.end.i66.err_instance_clk.sink.split_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_instance_clk.sink.split

if.end20:                                         ; preds = %if.end.i66
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool22.not = icmp eq ptr %19, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  %lock = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call26 = tail call i32 %23(ptr noundef %1) #5
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.then23.cleanup_crit_edge, label %err_power_on

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_power_on:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  br label %err_instance_clk.sink.split

err_instance_clk.sink.split:                      ; preds = %err_power_on, %if.end.i66.err_instance_clk.sink.split_crit_edge
  %.sink = phi ptr [ %25, %err_power_on ], [ %15, %if.end.i66.err_instance_clk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call26, %err_power_on ], [ %call1.i64, %if.end.i66.err_instance_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %err_instance_clk

err_instance_clk:                                 ; preds = %err_instance_clk.sink.split, %if.end16.err_instance_clk_crit_edge
  %ret.0 = phi i32 [ %call.i62, %if.end16.err_instance_clk_crit_edge ], [ %ret.0.ph, %err_instance_clk.sink.split ]
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #5
  br label %err_main_clk.sink.split

err_main_clk.sink.split:                          ; preds = %err_instance_clk, %if.end.i.err_main_clk.sink.split_crit_edge
  %.sink75 = phi ptr [ %27, %err_instance_clk ], [ %13, %if.end.i.err_main_clk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_instance_clk ], [ %call1.i, %if.end.i.err_main_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink75) #5
  br label %err_main_clk

err_main_clk:                                     ; preds = %err_main_clk.sink.split, %if.end12.err_main_clk_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end12.err_main_clk_crit_edge ], [ %ret.1.ph, %err_main_clk.sink.split ]
  %28 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vbus, align 4
  %tobool35.not = icmp eq ptr %29, null
  br i1 %tobool35.not, label %err_main_clk.cleanup_crit_edge, label %if.then36

err_main_clk.cleanup_crit_edge:                   ; preds = %err_main_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %err_main_clk
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 @regulator_disable(ptr noundef nonnull %29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %err_main_clk.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ %ret.1, %if.then36 ], [ %ret.1, %err_main_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_usb2_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_usb2_phy_power_off.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_usb2_phy_power_off, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %label = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @samsung_usb2_phy_power_off.__UNIQUE_ID_ddebug290, ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %power_off = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power_off, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %do.end.if.end15_crit_edge, label %if.then7

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then7:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %power_off9 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %power_off9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power_off9, align 4
  %call10 = tail call i32 %17(ptr noundef %1) #5
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.then7.if.end15_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %ref_clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  %clk = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  %vbus = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vbus, align 4
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @regulator_disable(ptr noundef nonnull %23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then7.cleanup_crit_edge ], [ %call19, %if.then17 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_phy_exynos_usb2__292_259_samsung_usb2_phy_driver_init6, !1, !"__initcall__kmod_phy_exynos_usb2__292_259_samsung_usb2_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 259, i32 1}
!2 = !{ptr @__exitcall_samsung_usb2_phy_driver_exit, !1, !"__exitcall_samsung_usb2_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias297, !11, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 263, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 254, i32 12}
!14 = !{ptr @samsung_usb2_phy_driver, !15, !"samsung_usb2_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 250, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 154, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @samsung_usb2_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @samsung_usb2_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @samsung_usb2_phy_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 168, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 175, i32 3}
!29 = !{ptr @samsung_usb2_phy_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @samsung_usb2_phy_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 180, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 182, i32 3}
!35 = !{ptr @samsung_usb2_phy_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @samsung_usb2_phy_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 188, i32 24}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 190, i32 4}
!41 = !{ptr @samsung_usb2_phy_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @samsung_usb2_phy_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 195, i32 31}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 197, i32 3}
!47 = !{ptr @samsung_usb2_phy_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @samsung_usb2_phy_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 201, i32 35}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 203, i32 3}
!53 = !{ptr @samsung_usb2_phy_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @samsung_usb2_phy_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 214, i32 38}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 226, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @samsung_usb2_phy_probe.__UNIQUE_ID_ddebug291, !58, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 229, i32 4}
!63 = !{ptr @samsung_usb2_phy_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @samsung_usb2_phy_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 243, i32 3}
!67 = !{ptr @samsung_usb2_phy_probe._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @samsung_usb2_phy_probe._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @samsung_usb2_phy_ops, !70, !"samsung_usb2_phy_ops", i1 false, i1 false}
!70 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 85, i32 29}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 26, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @samsung_usb2_phy_power_on.__UNIQUE_ID_ddebug289, !72, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 68, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @samsung_usb2_phy_power_off.__UNIQUE_ID_ddebug290, !76, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!79 = !{ptr @samsung_usb2_phy_of_match, !80, !"samsung_usb2_phy_of_match", i1 false, i1 false}
!80 = !{!"../drivers/phy/samsung/phy-samsung-usb2.c", i32 106, i32 34}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{i64 2148726340, i64 2148726345, i64 2148726358, i64 2148726402, i64 2148726436, i64 2148726457}
!92 = !{!"branch_weights", i32 2000, i32 1}
