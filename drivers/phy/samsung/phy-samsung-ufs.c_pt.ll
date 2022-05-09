; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-samsung-ufs.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-samsung-ufs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.samsung_ufs_phy_drvdata = type { ptr, %struct.pmu_isol, i8 }
%struct.pmu_isol = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.samsung_ufs_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.samsung_ufs_phy_cfg = type { i32, i32, i32, i8, i8 }

@__initcall__kmod_phy_exynos_ufs__290_365_samsung_ufs_phy_driver_init6 = internal global ptr @samsung_ufs_phy_driver_init, section ".initcall6.init", align 4
@samsung_ufs_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @samsung_ufs_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_ufs_phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_ufs_phy_driver_exit = internal global ptr @samsung_ufs_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [54 x i8] c"phy_exynos_ufs.description=Samsung SoC UFS PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [55 x i8] c"phy_exynos_ufs.author=Seungwon Jeon <essuuj@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [60 x i8] c"phy_exynos_ufs.author=Alim Akhtar <alim.akhtar@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [55 x i8] c"phy_exynos_ufs.file=drivers/phy/samsung/phy-exynos-ufs\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [30 x i8] c"phy_exynos_ufs.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"samsung-ufs-phy\00", [16 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_ufs_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynosautov9-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynosautov9_ufs_phy }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match_node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung_ufs_phy_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/phy/samsung/phy-samsung-ufs.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry_ptr = internal global ptr @samsung_ufs_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy-pma\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,pmu-syscon\00", [45 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed syscon remap for pmu\0A\00", [35 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry_ptr.10 = internal global ptr @samsung_ufs_phy_probe._entry.8, section ".printk_index", align 4
@samsung_ufs_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @samsung_ufs_phy_init, ptr @samsung_ufs_phy_exit, ptr @samsung_ufs_phy_power_on, ptr @samsung_ufs_phy_power_off, ptr @samsung_ufs_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_ufs_phy_calibrate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create PHY for ufs-phy\0A\00", [62 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry_ptr.13 = internal global ptr @samsung_ufs_phy_probe._entry.11, section ".printk_index", align 4
@samsung_ufs_phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register phy-provider\0A\00", [63 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_probe._entry_ptr.16 = internal global ptr @samsung_ufs_phy_probe._entry.14, section ".printk_index", align 4
@samsung_ufs_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set ufs phy symbol clocks\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"samsung_ufs_phy_init\00", [43 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_init._entry_ptr = internal global ptr @samsung_ufs_phy_init._entry, section ".printk_index", align 4
@samsung_ufs_phy_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set ufs phy clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_init._entry_ptr.21 = internal global ptr @samsung_ufs_phy_init._entry.19, section ".printk_index", align 4
@samsung_ufs_phy_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ufs phy calibration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_init._entry_ptr.24 = internal global ptr @samsung_ufs_phy_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx0_symbol_clk\00", [17 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get tx0_symbol_clk clock\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samsung_ufs_phy_symbol_clk_init\00", [32 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx0_symbol_clk\00", [17 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get rx0_symbol_clk clock\0A\00", [60 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr.31 = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx1_symbol_clk\00", [17 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get rx1_symbol_clk clock\0A\00", [60 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr.35 = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry.33, section ".printk_index", align 4
@samsung_ufs_phy_symbol_clk_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: tx0_symbol_clk enable failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr.38 = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry.36, section ".printk_index", align 4
@samsung_ufs_phy_symbol_clk_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: rx0_symbol_clk enable failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr.41 = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry.39, section ".printk_index", align 4
@samsung_ufs_phy_symbol_clk_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.27, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: rx1_symbol_clk enable failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_symbol_clk_init._entry_ptr.44 = internal global ptr @samsung_ufs_phy_symbol_clk_init._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_clks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ref_clk clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_ufs_phy_clks_init\00", [38 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_clks_init._entry_ptr = internal global ptr @samsung_ufs_phy_clks_init._entry, section ".printk_index", align 4
@samsung_ufs_phy_clks_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ref_clk enable failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_clks_init._entry_ptr.50 = internal global ptr @samsung_ufs_phy_clks_init._entry.48, section ".printk_index", align 4
@samsung_ufs_phy_clks_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.47, ptr @.str.3, ptr @.str.52, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_exynos_ufs\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UFS MPHY ref_clk_rate = %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid phy config index %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_ufs_phy_calibrate\00", [38 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_calibrate._entry_ptr = internal global ptr @samsung_ufs_phy_calibrate._entry, section ".printk_index", align 4
@samsung_ufs_phy_calibrate._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong state for phy calibration\0A\00", [63 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_calibrate._entry_ptr.57 = internal global ptr @samsung_ufs_phy_calibrate._entry.55, section ".printk_index", align 4
@samsung_ufs_phy_wait_for_lock_acq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get phy pll lock acquisition %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"samsung_ufs_phy_wait_for_lock_acq\00", [62 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_wait_for_lock_acq._entry_ptr = internal global ptr @samsung_ufs_phy_wait_for_lock_acq._entry, section ".printk_index", align 4
@samsung_ufs_phy_wait_for_lock_acq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to get phy cdr lock acquisition %d\0A\00", [53 x i8] zeroinitializer }, align 32
@samsung_ufs_phy_wait_for_lock_acq._entry_ptr.62 = internal global ptr @samsung_ufs_phy_wait_for_lock_acq._entry.60, section ".printk_index", align 4
@exynos7_ufs_phy = external dso_local constant %struct.samsung_ufs_phy_drvdata, align 4
@exynosautov9_ufs_phy = external dso_local constant %struct.samsung_ufs_phy_drvdata, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"samsung_ufs_phy_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 358, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 361, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"samsung_ufs_phy_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 346, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 296, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 306, i32 61 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 313, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 316, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"samsung_ufs_phy_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 271, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 323, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 339, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 213, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 218, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 222, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 137, i32 47 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 139, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 143, i32 47 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 145, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 149, i32 47 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 151, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 157, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 163, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 169, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 187, i32 40 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 189, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 193, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 197, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 85, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 127, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 60, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [41 x i8] c"../drivers/phy/samsung/phy-samsung-ufs.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 69, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_samsung_ufs_phy_driver_exit, ptr @__initcall__kmod_phy_exynos_ufs__290_365_samsung_ufs_phy_driver_init6, ptr @samsung_ufs_phy_calibrate._entry, ptr @samsung_ufs_phy_calibrate._entry.55, ptr @samsung_ufs_phy_calibrate._entry_ptr, ptr @samsung_ufs_phy_calibrate._entry_ptr.57, ptr @samsung_ufs_phy_clks_init._entry, ptr @samsung_ufs_phy_clks_init._entry.48, ptr @samsung_ufs_phy_clks_init._entry_ptr, ptr @samsung_ufs_phy_clks_init._entry_ptr.50, ptr @samsung_ufs_phy_driver_exit, ptr @samsung_ufs_phy_init._entry, ptr @samsung_ufs_phy_init._entry.19, ptr @samsung_ufs_phy_init._entry.22, ptr @samsung_ufs_phy_init._entry_ptr, ptr @samsung_ufs_phy_init._entry_ptr.21, ptr @samsung_ufs_phy_init._entry_ptr.24, ptr @samsung_ufs_phy_probe._entry, ptr @samsung_ufs_phy_probe._entry.11, ptr @samsung_ufs_phy_probe._entry.14, ptr @samsung_ufs_phy_probe._entry.8, ptr @samsung_ufs_phy_probe._entry_ptr, ptr @samsung_ufs_phy_probe._entry_ptr.10, ptr @samsung_ufs_phy_probe._entry_ptr.13, ptr @samsung_ufs_phy_probe._entry_ptr.16, ptr @samsung_ufs_phy_symbol_clk_init._entry, ptr @samsung_ufs_phy_symbol_clk_init._entry.29, ptr @samsung_ufs_phy_symbol_clk_init._entry.33, ptr @samsung_ufs_phy_symbol_clk_init._entry.36, ptr @samsung_ufs_phy_symbol_clk_init._entry.39, ptr @samsung_ufs_phy_symbol_clk_init._entry.42, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.31, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.35, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.38, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.41, ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.44, ptr @samsung_ufs_phy_wait_for_lock_acq._entry, ptr @samsung_ufs_phy_wait_for_lock_acq._entry.60, ptr @samsung_ufs_phy_wait_for_lock_acq._entry_ptr, ptr @samsung_ufs_phy_wait_for_lock_acq._entry_ptr.62, ptr @samsung_ufs_phy_driver, ptr @.str, ptr @samsung_ufs_phy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @samsung_ufs_phy_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_symbol_clk_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_clks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_clks_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_calibrate._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_wait_for_lock_acq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ufs_phy_wait_for_lock_acq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_ufs_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_ufs_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_ufs_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @samsung_ufs_phy_match, ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #6
  %reg_pma = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_pma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %reg_pma, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call6 to i32
  br label %out

if.end12:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.7) #6
  %reg_pmu = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %reg_pmu to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %reg_pmu, align 4
  %cmp.i72 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %out

if.end23:                                         ; preds = %if.end12
  %call24 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @samsung_ufs_phy_ops) #6
  %cmp.i73 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %out

if.end31:                                         ; preds = %if.end23
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %call.i, align 4
  %drvdata33 = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %drvdata33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %drvdata33, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %cfg34 = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %cfg34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cfg34, align 4
  %isol = getelementptr inbounds %struct.samsung_ufs_phy_drvdata, ptr %10, i32 0, i32 1
  %isol35 = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %isol35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %isol, ptr %isol35, align 4
  %lane_cnt = getelementptr inbounds %struct.samsung_ufs_phy, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %lane_cnt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call24, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call36 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i74 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then38, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %out

out:                                              ; preds = %if.then38, %if.end31.out_crit_edge, %if.then26, %if.then17, %if.then9, %if.end.out_crit_edge, %if.then
  %err.0 = phi i32 [ %3, %if.then9 ], [ %7, %if.then17 ], [ %8, %if.then26 ], [ %19, %if.then38 ], [ 0, %if.end31.out_crit_edge ], [ -22, %if.then ], [ -12, %if.end.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %attrs = getelementptr inbounds %struct.phy, ptr %phy, i32 0, i32 6
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attrs, align 4
  %conv = trunc i32 %3 to i8
  %lane_cnt = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %lane_cnt, align 4
  %ufs_phy_state = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ufs_phy_state, align 4
  %drvdata = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %has_symbol_clk = getelementptr inbounds %struct.samsung_ufs_phy_drvdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %has_symbol_clk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_symbol_clk, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.25) #6
  %tx0_symbol_clk.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %tx0_symbol_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %tx0_symbol_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26) #9
  br label %samsung_ufs_phy_symbol_clk_init.exit

if.end.i:                                         ; preds = %if.then
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull @.str.28) #6
  %rx0_symbol_clk.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %rx0_symbol_clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %rx0_symbol_clk.i, align 4
  %cmp.i86.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  br i1 %cmp.i86.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.30) #9
  br label %samsung_ufs_phy_symbol_clk_init.exit

if.end17.i:                                       ; preds = %if.end.i
  %call19.i = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef nonnull @.str.32) #6
  %rx1_symbol_clk.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %rx1_symbol_clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19.i, ptr %rx1_symbol_clk.i, align 4
  %cmp.i87.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %do.end25.i, label %if.end29.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34) #9
  br label %samsung_ufs_phy_symbol_clk_init.exit

if.end29.i:                                       ; preds = %if.end17.i
  %21 = ptrtoint ptr %tx0_symbol_clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx0_symbol_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end29.i.do.end35.i_crit_edge

if.end29.i.do.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35.i

if.end.i.i:                                       ; preds = %if.end29.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end37.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %22) #6
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then3.i.i, %if.end29.i.do.end35.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end29.i.do.end35.i_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph.i) #9
  br label %do.end

if.end37.i:                                       ; preds = %if.end.i.i
  %25 = ptrtoint ptr %rx0_symbol_clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx0_symbol_clk.i, align 4
  %call.i88.i = tail call i32 @clk_prepare(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool.not.i89.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool.not.i89.i, label %if.end.i92.i, label %if.end37.i.do.end44.i_crit_edge

if.end37.i.do.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

if.end.i92.i:                                     ; preds = %if.end37.i
  %call1.i90.i = tail call i32 @clk_enable(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90.i)
  %tobool2.not.i91.i = icmp eq i32 %call1.i90.i, 0
  br i1 %tobool2.not.i91.i, label %if.end46.i, label %if.then3.i93.i

if.then3.i93.i:                                   ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %26) #6
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then3.i93.i, %if.end37.i.do.end44.i_crit_edge
  %retval.0.i94.ph.i = phi i32 [ %call1.i90.i, %if.then3.i93.i ], [ %call.i88.i, %if.end37.i.do.end44.i_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i94.ph.i) #9
  br label %out_disable_tx0_clk.i

if.end46.i:                                       ; preds = %if.end.i92.i
  %29 = ptrtoint ptr %rx1_symbol_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx1_symbol_clk.i, align 4
  %call.i96.i = tail call i32 @clk_prepare(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %if.end.i100.i, label %if.end46.i.do.end53.i_crit_edge

if.end46.i.do.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53.i

if.end.i100.i:                                    ; preds = %if.end46.i
  %call1.i98.i = tail call i32 @clk_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98.i)
  %tobool2.not.i99.i = icmp eq i32 %call1.i98.i, 0
  br i1 %tobool2.not.i99.i, label %if.end.i100.i.if.end4_crit_edge, label %if.then3.i101.i

if.end.i100.i.if.end4_crit_edge:                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3.i101.i:                                  ; preds = %if.end.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then3.i101.i, %if.end46.i.do.end53.i_crit_edge
  %retval.0.i102.ph.i = phi i32 [ %call1.i98.i, %if.then3.i101.i ], [ %call.i96.i, %if.end46.i.do.end53.i_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i102.ph.i) #9
  %33 = ptrtoint ptr %rx0_symbol_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx0_symbol_clk.i, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %out_disable_tx0_clk.i

out_disable_tx0_clk.i:                            ; preds = %do.end53.i, %do.end44.i
  %35 = ptrtoint ptr %tx0_symbol_clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx0_symbol_clk.i, align 4
  tail call void @clk_disable(ptr noundef %36) #6
  tail call void @clk_unprepare(ptr noundef %36) #6
  br label %do.end

samsung_ufs_phy_symbol_clk_init.exit:             ; preds = %do.end25.i, %do.end13.i, %do.end.i
  %retval.0.i.in.in = phi ptr [ %tx0_symbol_clk.i, %do.end.i ], [ %rx0_symbol_clk.i, %do.end13.i ], [ %rx1_symbol_clk.i, %do.end25.i ]
  %37 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %tobool2.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool2.not, label %samsung_ufs_phy_symbol_clk_init.exit.if.end4_crit_edge, label %samsung_ufs_phy_symbol_clk_init.exit.do.end_crit_edge

samsung_ufs_phy_symbol_clk_init.exit.do.end_crit_edge: ; preds = %samsung_ufs_phy_symbol_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

samsung_ufs_phy_symbol_clk_init.exit.if.end4_crit_edge: ; preds = %samsung_ufs_phy_symbol_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %samsung_ufs_phy_symbol_clk_init.exit.do.end_crit_edge, %out_disable_tx0_clk.i, %do.end35.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.17) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %samsung_ufs_phy_symbol_clk_init.exit.if.end4_crit_edge, %if.end.i100.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call fastcc i32 @samsung_ufs_phy_clks_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %do.end10

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.20) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  %call13 = tail call i32 @samsung_ufs_phy_calibrate(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %do.end18

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %if.end12.if.end20_crit_edge
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ref_clk = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %drvdata = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %has_symbol_clk = getelementptr inbounds %struct.samsung_ufs_phy_drvdata, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %has_symbol_clk to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_symbol_clk, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx0_symbol_clk = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %tx0_symbol_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx0_symbol_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %rx0_symbol_clk = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rx0_symbol_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx0_symbol_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  %rx1_symbol_clk = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %rx1_symbol_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx1_symbol_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_pmu.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_pmu.i, align 4
  %isol1.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %isol1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isol1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %mask.i = getelementptr inbounds %struct.pmu_isol, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %en.i = getelementptr inbounds %struct.pmu_isol, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %en.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %en.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg_pmu.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_pmu.i, align 4
  %isol1.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %isol1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isol1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %mask.i = getelementptr inbounds %struct.pmu_isol, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @samsung_ufs_phy_set_mode(ptr nocapture noundef readonly %generic_phy, i32 noundef %mode, i32 noundef %submode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %generic_phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mode1 = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_ufs_phy_calibrate(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ufs_phy_state = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ufs_phy_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ugt i32 %3, 3
  br i1 %4, label %do.end, label %if.end, !prof !131

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.53, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end.outthread-pre-split_crit_edge, label %for.cond.preheader

if.end.outthread-pre-split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %outthread-pre-split

for.cond.preheader:                               ; preds = %if.end
  %id67 = getelementptr inbounds %struct.samsung_ufs_phy_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %id67 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not68 = icmp eq i8 %12, 0
  br i1 %tobool10.not68, label %for.cond.preheader.for.end17_crit_edge, label %for.cond11.preheader.lr.ph

for.cond.preheader.for.end17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.cond11.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %lane_cnt = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 11
  %reg_pma7.i = getelementptr inbounds %struct.samsung_ufs_phy, ptr %1, i32 0, i32 1
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc16.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %id71 = phi ptr [ %id67, %for.cond11.preheader.lr.ph ], [ %id, %for.inc16.for.cond11.preheader_crit_edge ]
  %cfg1.069 = phi ptr [ %10, %for.cond11.preheader.lr.ph ], [ %incdec.ptr, %for.inc16.for.cond11.preheader_crit_edge ]
  %13 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lane_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1265.not = icmp eq i8 %14, 0
  br i1 %cmp1265.not, label %for.cond11.preheader.for.inc16_crit_edge, label %for.body14.lr.ph

for.cond11.preheader.for.inc16_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16

for.body14.lr.ph:                                 ; preds = %for.cond11.preheader
  %val6.i = getelementptr inbounds %struct.samsung_ufs_phy_cfg, ptr %cfg1.069, i32 0, i32 2
  %off_1.i = getelementptr inbounds %struct.samsung_ufs_phy_cfg, ptr %cfg1.069, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %samsung_ufs_phy_config.exit.for.body14_crit_edge, %for.body14.lr.ph
  %i.066 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %samsung_ufs_phy_config.exit.for.body14_crit_edge ]
  %conv15 = trunc i32 %i.066 to i8
  %15 = zext i8 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv15, label %for.body14.samsung_ufs_phy_config.exit_crit_edge [
    i8 0, label %do.body.i
    i8 1, label %sw.bb1.i
  ]

for.body14.samsung_ufs_phy_config.exit_crit_edge: ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_ufs_phy_config.exit

do.body.i:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val6.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %19 = ptrtoint ptr %reg_pma7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_pma7.i, align 4
  %21 = ptrtoint ptr %cfg1.069 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg1.069, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #6, !srcloc !133
  br label %samsung_ufs_phy_config.exit

sw.bb1.i:                                         ; preds = %for.body14
  %23 = ptrtoint ptr %id71 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i = icmp eq i8 %24, 2
  br i1 %cmp.i, label %do.body4.i, label %sw.bb1.i.samsung_ufs_phy_config.exit_crit_edge

sw.bb1.i.samsung_ufs_phy_config.exit_crit_edge:   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %samsung_ufs_phy_config.exit

do.body4.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val6.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %reg_pma7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_pma7.i, align 4
  %30 = ptrtoint ptr %off_1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off_1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %27) #6, !srcloc !133
  br label %samsung_ufs_phy_config.exit

samsung_ufs_phy_config.exit:                      ; preds = %do.body4.i, %sw.bb1.i.samsung_ufs_phy_config.exit_crit_edge, %do.body.i, %for.body14.samsung_ufs_phy_config.exit_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %32 = ptrtoint ptr %lane_cnt to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lane_cnt, align 4
  %conv = zext i8 %33 to i32
  %cmp12 = icmp ult i32 %inc, %conv
  br i1 %cmp12, label %samsung_ufs_phy_config.exit.for.body14_crit_edge, label %samsung_ufs_phy_config.exit.for.inc16_crit_edge

samsung_ufs_phy_config.exit.for.inc16_crit_edge:  ; preds = %samsung_ufs_phy_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16

samsung_ufs_phy_config.exit.for.body14_crit_edge: ; preds = %samsung_ufs_phy_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc16:                                        ; preds = %samsung_ufs_phy_config.exit.for.inc16_crit_edge, %for.cond11.preheader.for.inc16_crit_edge
  %incdec.ptr = getelementptr %struct.samsung_ufs_phy_cfg, ptr %cfg1.069, i32 1
  %id = getelementptr %struct.samsung_ufs_phy_cfg, ptr %cfg1.069, i32 1, i32 4
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id, align 1
  %tobool10.not = icmp eq i8 %35, 0
  br i1 %tobool10.not, label %for.inc16.for.end17_crit_edge, label %for.inc16.for.cond11.preheader_crit_edge

for.inc16.for.cond11.preheader_crit_edge:         ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond11.preheader

for.inc16.for.end17_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end17

for.end17:                                        ; preds = %for.inc16.for.end17_crit_edge, %for.cond.preheader.for.end17_crit_edge
  %36 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ufs_phy_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp19 = icmp eq i32 %37, 3
  br i1 %cmp19, label %if.then21, label %for.end17.out_crit_edge

for.end17.out_crit_edge:                          ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then21:                                        ; preds = %for.end17
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call1.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 58) #6
  %reg_pma.i61 = getelementptr inbounds %struct.samsung_ufs_phy, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr129.i = getelementptr i8, ptr %41, i32 120
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129.i) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %43 = and i32 %42, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not131.i = icmp eq i32 %43, 0
  br i1 %tobool.not131.i, label %if.then21.land.lhs.true.i_crit_edge, label %if.then21.if.end37.i_crit_edge

if.then21.if.end37.i_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then21.land.lhs.true.i_crit_edge:              ; preds = %if.then21
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then27.i.land.lhs.true.i_crit_edge, %if.then21.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %44 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %45, i32 120
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %47 = and i32 %46, 536870912
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.then27.i.land.lhs.true.i_crit_edge, label %if.then27.i.if.end37.i_crit_edge

if.then27.i.if.end37.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then27.i.land.lhs.true.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %48 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr21.i = getelementptr i8, ptr %49, i32 120
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %51 = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool31.not.i = icmp eq i32 %51, 0
  br i1 %tobool31.not.i, label %for.end.i.out.sink.split.i_crit_edge, label %for.end.i.if.end37.i_crit_edge

for.end.i.if.end37.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

for.end.i.out.sink.split.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end37.i:                                       ; preds = %for.end.i.if.end37.i_crit_edge, %if.then27.i.if.end37.i_crit_edge, %if.then21.if.end37.i_crit_edge
  %call41.i = tail call i64 @ktime_get() #6
  %add.i118.i = add i64 %call41.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 67) #6
  %52 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr59132.i = getelementptr i8, ptr %53, i32 376
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59132.i) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %55 = and i32 %54, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool64.not134.i = icmp eq i32 %55, 0
  br i1 %tobool64.not134.i, label %if.end37.i.land.lhs.true68.i_crit_edge, label %if.end37.i.outthread-pre-split_crit_edge

if.end37.i.outthread-pre-split_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %outthread-pre-split

if.end37.i.land.lhs.true68.i_crit_edge:           ; preds = %if.end37.i
  br label %land.lhs.true68.i

land.lhs.true68.i:                                ; preds = %if.then82.i.land.lhs.true68.i_crit_edge, %if.end37.i.land.lhs.true68.i_crit_edge
  %call69.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call69.i, i64 %add.i118.i)
  %cmp3.i120.i = icmp sgt i64 %call69.i, %add.i118.i
  br i1 %cmp3.i120.i, label %for.end86.i, label %if.then82.i

if.then82.i:                                      ; preds = %land.lhs.true68.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %56 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr59.i = getelementptr i8, ptr %57, i32 376
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %59 = and i32 %58, 268435456
  %tobool64.not.i = icmp eq i32 %59, 0
  br i1 %tobool64.not.i, label %if.then82.i.land.lhs.true68.i_crit_edge, label %if.then82.i.outthread-pre-split_crit_edge

if.then82.i.outthread-pre-split_crit_edge:        ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %outthread-pre-split

if.then82.i.land.lhs.true68.i_crit_edge:          ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true68.i

for.end86.i:                                      ; preds = %land.lhs.true68.i
  %60 = ptrtoint ptr %reg_pma.i61 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_pma.i61, align 4
  %add.ptr76.i = getelementptr i8, ptr %61, i32 376
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #6, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %63 = and i32 %62, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool89.not.i = icmp eq i32 %63, 0
  br i1 %tobool89.not.i, label %for.end86.i.out.sink.split.i_crit_edge, label %for.end86.i.outthread-pre-split_crit_edge

for.end86.i.outthread-pre-split_crit_edge:        ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %outthread-pre-split

for.end86.i.out.sink.split.i_crit_edge:           ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %for.end86.i.out.sink.split.i_crit_edge, %for.end.i.out.sink.split.i_crit_edge
  %.str.61.sink.i = phi ptr [ @.str.58, %for.end.i.out.sink.split.i_crit_edge ], [ @.str.61, %for.end86.i.out.sink.split.i_crit_edge ]
  %64 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %.str.61.sink.i, i32 noundef -110) #9
  br label %outthread-pre-split

outthread-pre-split:                              ; preds = %out.sink.split.i, %for.end86.i.outthread-pre-split_crit_edge, %if.then82.i.outthread-pre-split_crit_edge, %if.end37.i.outthread-pre-split_crit_edge, %if.end.outthread-pre-split_crit_edge
  %err.0.ph = phi i32 [ -110, %out.sink.split.i ], [ 0, %for.end86.i.outthread-pre-split_crit_edge ], [ 0, %if.end.outthread-pre-split_crit_edge ], [ 0, %if.end37.i.outthread-pre-split_crit_edge ], [ 0, %if.then82.i.outthread-pre-split_crit_edge ]
  %66 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load i32, ptr %ufs_phy_state, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %for.end17.out_crit_edge
  %67 = phi i32 [ %.pr, %outthread-pre-split ], [ %37, %for.end17.out_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %outthread-pre-split ], [ 0, %for.end17.out_crit_edge ]
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %67, label %do.end34 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb28
    i32 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %ufs_phy_state, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %ufs_phy_state, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %ufs_phy_state, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %ufs_phy_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %ufs_phy_state, align 4
  br label %cleanup

do.end34:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.56) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %do.end34 ], [ %err.0, %sw.bb30 ], [ %err.0, %sw.bb28 ], [ %err.0, %sw.bb26 ], [ %err.0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_ufs_phy_clks_init(ptr nocapture noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.45) #6
  %ref_clk = getelementptr inbounds %struct.samsung_ufs_phy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ref_clk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.46) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %6) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i33.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i33.ph) #9
  br label %cleanup

do.body12:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_ufs_phy_clks_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_ufs_phy_clks_init, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !140

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %11 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ref_clk, align 4
  %call20 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @samsung_ufs_phy_clks_init.__UNIQUE_ID_ddebug289, ptr noundef %10, ptr noundef nonnull @.str.52, i32 noundef %call20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body12, %do.end9
  %retval.0 = phi i32 [ %retval.0.i33.ph, %do.end9 ], [ 0, %if.then17 ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_phy_exynos_ufs__290_365_samsung_ufs_phy_driver_init6, !1, !"__initcall__kmod_phy_exynos_ufs__290_365_samsung_ufs_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 365, i32 1}
!2 = !{ptr @__exitcall_samsung_ufs_phy_driver_exit, !1, !"__exitcall_samsung_ufs_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 366, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 367, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 368, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 369, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 361, i32 11}
!14 = !{ptr @samsung_ufs_phy_driver, !15, !"samsung_ufs_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 358, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 296, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @samsung_ufs_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @samsung_ufs_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 306, i32 61}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 313, i32 19}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 316, i32 3}
!30 = !{ptr @samsung_ufs_phy_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @samsung_ufs_phy_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 323, i32 3}
!34 = !{ptr @samsung_ufs_phy_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @samsung_ufs_phy_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 339, i32 3}
!38 = !{ptr @samsung_ufs_phy_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @samsung_ufs_phy_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @samsung_ufs_phy_ops, !41, !"samsung_ufs_phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 271, i32 29}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 213, i32 4}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @samsung_ufs_phy_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @samsung_ufs_phy_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 218, i32 3}
!49 = !{ptr @samsung_ufs_phy_init._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @samsung_ufs_phy_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 222, i32 3}
!53 = !{ptr @samsung_ufs_phy_init._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @samsung_ufs_phy_init._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 137, i32 47}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 139, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 143, i32 47}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 145, i32 3}
!66 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 149, i32 47}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 151, i32 3}
!72 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 157, i32 3}
!76 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 163, i32 3}
!80 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 169, i32 3}
!84 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @samsung_ufs_phy_symbol_clk_init._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 187, i32 40}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 189, i32 3}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @samsung_ufs_phy_clks_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @samsung_ufs_phy_clks_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 193, i32 3}
!95 = !{ptr @samsung_ufs_phy_clks_init._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @samsung_ufs_phy_clks_init._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 197, i32 2}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @samsung_ufs_phy_clks_init.__UNIQUE_ID_ddebug289, !98, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 85, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @samsung_ufs_phy_calibrate._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @samsung_ufs_phy_calibrate._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 127, i32 3}
!108 = !{ptr @samsung_ufs_phy_calibrate._entry.55, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @samsung_ufs_phy_calibrate._entry_ptr.57, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 60, i32 3}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @samsung_ufs_phy_wait_for_lock_acq._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @samsung_ufs_phy_wait_for_lock_acq._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 69, i32 3}
!117 = !{ptr @samsung_ufs_phy_wait_for_lock_acq._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @samsung_ufs_phy_wait_for_lock_acq._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @samsung_ufs_phy_match, !120, !"samsung_ufs_phy_match", i1 false, i1 false}
!120 = !{!"../drivers/phy/samsung/phy-samsung-ufs.c", i32 346, i32 34}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i8 0, i8 2}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2155136401}
!133 = !{i64 4528480}
!134 = !{i64 2155136832}
!135 = !{i64 4528898}
!136 = !{i64 2155138971}
!137 = !{i64 2155139525}
!138 = !{i64 2155143255}
!139 = !{i64 2155143809}
!140 = !{i64 2148729276, i64 2148729281, i64 2148729294, i64 2148729338, i64 2148729372, i64 2148729393}
