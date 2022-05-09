; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos5-usbdrd.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos5-usbdrd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.exynos5_usbdrd_phy_drvdata = type { ptr, i32, i32, i8 }
%struct.exynos5_usbdrd_phy_config = type { i32, ptr, ptr, ptr }
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
%struct.exynos5_usbdrd_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.phy_usb_instance], i32, ptr, ptr, ptr }
%struct.phy_usb_instance = type { ptr, i32, ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_exynos5_usbdrd__293_945_exynos5_usb3drd_phy_init6 = internal global ptr @exynos5_usb3drd_phy_init, section ".initcall6.init", align 4
@exynos5_usb3drd_phy = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos5_usbdrd_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos5_usbdrd_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos5_usb3drd_phy_exit = internal global ptr @exynos5_usb3drd_phy_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [86 x i8] c"phy_exynos5_usbdrd.description=Samsung Exynos5 SoCs USB 3.0 DRD controller PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [66 x i8] c"phy_exynos5_usbdrd.author=Vivek Gautam <gautam.vivek@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [63 x i8] c"phy_exynos5_usbdrd.file=drivers/phy/samsung/phy-exynos5-usbdrd\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [34 x i8] c"phy_exynos5_usbdrd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [54 x i8] c"phy_exynos5_usbdrd.alias=platform:exynos5_usb3drd_phy\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos5_usb3drd_phy\00", [44 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_usbdrd_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-usbdrd-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_usbdrd_phy }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos5_usbdrd_phy_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/samsung/phy-exynos5-usbdrd.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr = internal global ptr @exynos5_usbdrd_phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,pmu-syscon\00", [45 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup PMU regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr.9 = internal global ptr @exynos5_usbdrd_phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbdrdphy\00", [22 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_exynos5_usbdrd\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not a multi-controller usbdrd phy\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 894, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get VBUS supply regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr.17 = internal global ptr @exynos5_usbdrd_phy_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vbus-boost\00", [21 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 904, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to get VBUS boost supply regulator\0A\00", [53 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr.21 = internal global ptr @exynos5_usbdrd_phy_probe._entry.19, section ".printk_index", align 4
@exynos5_usbdrd_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @exynos5_usbdrd_phy_init, ptr @exynos5_usbdrd_phy_exit, ptr @exynos5_usbdrd_phy_power_on, ptr @exynos5_usbdrd_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos5_usbdrd_phy_calibrate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 914, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create usbdrd_phy phy\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr.24 = internal global ptr @exynos5_usbdrd_phy_probe._entry.22, section ".printk_index", align 4
@exynos5_usbdrd_phy_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_probe._entry_ptr.27 = internal global ptr @exynos5_usbdrd_phy_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get phy clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"exynos5_usbdrd_phy_clk_handle\00", [34 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.3, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get phy reference clock\0A\00", [61 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr.34 = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry.32, section ".printk_index", align 4
@exynos5_usbdrd_phy_clk_handle._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Clock rate (%ld) not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr.37 = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_pipe\00", [23 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.3, i32 745, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PIPE3 phy operational clock not specified\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr.42 = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry.39, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_utmi\00", [23 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.30, ptr @.str.3, i32 752, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UTMI phy operational clock not specified\0A\00", [54 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr.46 = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"itp\00", [28 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.30, ptr @.str.3, i32 759, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ITP clock from main OSC not specified\0A\00", [57 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_clk_handle._entry_ptr.50 = internal global ptr @exynos5_usbdrd_phy_clk_handle._entry.48, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos5_usbdrd_phy_power_on.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exynos5_usbdrd_phy_power_on\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Request to power_on usbdrd_phy phy\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable VBUS boost supply\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_power_on._entry_ptr = internal global ptr @exynos5_usbdrd_phy_power_on._entry, section ".printk_index", align 4
@exynos5_usbdrd_phy_power_on._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable VBUS supply\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_phy_power_on._entry_ptr.56 = internal global ptr @exynos5_usbdrd_phy_power_on._entry.54, section ".printk_index", align 4
@exynos5_usbdrd_phy_power_off.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exynos5_usbdrd_phy_power_off\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Request to power_off usbdrd_phy phy\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos5420_usbdrd_phy_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed setting Loss-of-Signal level for SuperSpeed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exynos5420_usbdrd_phy_calibrate\00", [32 x i8] zeroinitializer }, align 32
@exynos5420_usbdrd_phy_calibrate._entry_ptr = internal global ptr @exynos5420_usbdrd_phy_calibrate._entry, section ".printk_index", align 4
@exynos5420_usbdrd_phy_calibrate._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed setting Tx-Vboost-Level for SuperSpeed\0A\00", [49 x i8] zeroinitializer }, align 32
@exynos5420_usbdrd_phy_calibrate._entry_ptr.63 = internal global ptr @exynos5420_usbdrd_phy_calibrate._entry.61, section ".printk_index", align 4
@exynos5420_usbdrd_phy_calibrate._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Fail to set RxDet measurement time for SuperSpeed\0A\00", [45 x i8] zeroinitializer }, align 32
@exynos5420_usbdrd_phy_calibrate._entry_ptr.66 = internal global ptr @exynos5420_usbdrd_phy_calibrate._entry.64, section ".printk_index", align 4
@crport_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CRPORT handshake timeout1 (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crport_handshake\00", [47 x i8] zeroinitializer }, align 32
@crport_handshake._entry_ptr = internal global ptr @crport_handshake._entry, section ".printk_index", align 4
@crport_handshake._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CRPORT handshake timeout2 (0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@crport_handshake._entry_ptr.71 = internal global ptr @crport_handshake._entry.69, section ".printk_index", align 4
@exynos5250_usbdrd_phy = internal constant { %struct.exynos5_usbdrd_phy_drvdata, [16 x i8] } { %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@exynos5420_usbdrd_phy = internal constant { %struct.exynos5_usbdrd_phy_drvdata, [16 x i8] } { %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 1800, i8 1 }, [16 x i8] zeroinitializer }, align 32
@exynos5433_usbdrd_phy = internal constant { %struct.exynos5_usbdrd_phy_drvdata, [16 x i8] } { %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 1832, i8 0 }, [16 x i8] zeroinitializer }, align 32
@exynos7_usbdrd_phy = internal constant { %struct.exynos5_usbdrd_phy_drvdata, [16 x i8] } { %struct.exynos5_usbdrd_phy_drvdata { ptr @phy_cfg_exynos5, i32 1796, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@phy_cfg_exynos5 = internal constant { [2 x %struct.exynos5_usbdrd_phy_config], [32 x i8] } { [2 x %struct.exynos5_usbdrd_phy_config] [%struct.exynos5_usbdrd_phy_config { i32 0, ptr @exynos5_usbdrd_phy_isol, ptr @exynos5_usbdrd_utmi_init, ptr @exynos5_usbdrd_utmi_set_refclk }, %struct.exynos5_usbdrd_phy_config { i32 1, ptr @exynos5_usbdrd_phy_isol, ptr @exynos5_usbdrd_pipe3_init, ptr @exynos5_usbdrd_pipe3_set_refclk }], [32 x i8] zeroinitializer }, align 32
@exynos5_usbdrd_pipe3_set_refclk.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exynos5_usbdrd_pipe3_set_refclk\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported ref clk\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.exynos5_usbdrd_phy_calibrate = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 64, i32 128, i32 128, i32 512], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9600000, i64 10000000, i64 12000000, i64 19200000, i64 20000000, i64 24000000, i64 50000000]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"exynos5_usb3drd_phy\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 936, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 940, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"exynos5_usbdrd_phy_of_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 808, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 857, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 862, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 864, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 873, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 875, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 888, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 894, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 898, i32 48 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 904, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [23 x i8] c"exynos5_usbdrd_phy_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 707, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 914, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 929, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 721, i32 44 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 723, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 727, i32 48 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 729, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 736, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 742, i32 49 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 744, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 749, i32 49 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 751, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 756, i32 48 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 758, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 484, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 497, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 506, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 536, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 634, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 648, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 680, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 568, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 577, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [22 x i8] c"exynos5250_usbdrd_phy\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 789, i32 48 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"exynos5420_usbdrd_phy\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 782, i32 48 }
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"exynos5433_usbdrd_phy\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 795, i32 48 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"exynos7_usbdrd_phy\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 802, i32 48 }
@___asan_gen_.285 = private unnamed_addr constant [16 x i8] c"phy_cfg_exynos5\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 767, i32 47 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [44 x i8] c"../drivers/phy/samsung/phy-exynos5-usbdrd.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 312, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [42 x i8] c"switch.table.exynos5_usbdrd_phy_calibrate\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_exynos5_usb3drd_phy_exit, ptr @__initcall__kmod_phy_exynos5_usbdrd__293_945_exynos5_usb3drd_phy_init6, ptr @crport_handshake._entry, ptr @crport_handshake._entry.69, ptr @crport_handshake._entry_ptr, ptr @crport_handshake._entry_ptr.71, ptr @exynos5420_usbdrd_phy_calibrate._entry, ptr @exynos5420_usbdrd_phy_calibrate._entry.61, ptr @exynos5420_usbdrd_phy_calibrate._entry.64, ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr, ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr.63, ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr.66, ptr @exynos5_usb3drd_phy_exit, ptr @exynos5_usbdrd_phy_clk_handle._entry, ptr @exynos5_usbdrd_phy_clk_handle._entry.32, ptr @exynos5_usbdrd_phy_clk_handle._entry.35, ptr @exynos5_usbdrd_phy_clk_handle._entry.39, ptr @exynos5_usbdrd_phy_clk_handle._entry.44, ptr @exynos5_usbdrd_phy_clk_handle._entry.48, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.34, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.37, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.42, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.46, ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.50, ptr @exynos5_usbdrd_phy_power_on._entry, ptr @exynos5_usbdrd_phy_power_on._entry.54, ptr @exynos5_usbdrd_phy_power_on._entry_ptr, ptr @exynos5_usbdrd_phy_power_on._entry_ptr.56, ptr @exynos5_usbdrd_phy_probe._entry, ptr @exynos5_usbdrd_phy_probe._entry.14, ptr @exynos5_usbdrd_phy_probe._entry.19, ptr @exynos5_usbdrd_phy_probe._entry.22, ptr @exynos5_usbdrd_phy_probe._entry.25, ptr @exynos5_usbdrd_phy_probe._entry.7, ptr @exynos5_usbdrd_phy_probe._entry_ptr, ptr @exynos5_usbdrd_phy_probe._entry_ptr.17, ptr @exynos5_usbdrd_phy_probe._entry_ptr.21, ptr @exynos5_usbdrd_phy_probe._entry_ptr.24, ptr @exynos5_usbdrd_phy_probe._entry_ptr.27, ptr @exynos5_usbdrd_phy_probe._entry_ptr.9, ptr @exynos5_usb3drd_phy, ptr @.str, ptr @exynos5_usbdrd_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @exynos5_usbdrd_phy_ops, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @exynos5250_usbdrd_phy, ptr @exynos5420_usbdrd_phy, ptr @exynos5433_usbdrd_phy, ptr @exynos7_usbdrd_phy, ptr @phy_cfg_exynos5, ptr @.str.72, ptr @.str.73, ptr @switch.table.exynos5_usbdrd_phy_calibrate], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usb3drd_phy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_clk_handle._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5_usbdrd_phy_power_on._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_usbdrd_phy_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_usbdrd_phy_calibrate._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_usbdrd_phy_calibrate._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crport_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crport_handshake._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_usbdrd_phy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_usbdrd_phy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_usbdrd_phy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7_usbdrd_phy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_cfg_exynos5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos5_usbdrd_phy_calibrate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usb3drd_phy_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_usb3drd_phy, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_usb3drd_phy_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_usb3drd_phy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup104

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %reg_phy, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup104

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup104_crit_edge, label %if.end13

if.end9.cleanup104_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup104

if.end13:                                         ; preds = %if.end9
  %drv_data14 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %drv_data14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %drv_data14, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i178 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.28) #5
  %clk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i178, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i178, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29) #8
  br label %exynos5_usbdrd_phy_clk_handle.exit

if.end.i:                                         ; preds = %if.end13
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.31) #5
  %ref_clk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %ref_clk.i, align 4
  %cmp.i94.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33) #8
  br label %exynos5_usbdrd_phy_clk_handle.exit

if.end17.i:                                       ; preds = %if.end.i
  %call19.i = tail call i32 @clk_get_rate(ptr noundef %call7.i) #5
  %extrefclk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 8
  %15 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19.i, label %exynos5_usbdrd_phy_clk_handle.exit.thread187 [
    i32 9600000, label %if.end17.i.if.end26.i_crit_edge
    i32 10000000, label %sw.bb1.i.i
    i32 12000000, label %sw.bb2.i.i
    i32 19200000, label %sw.bb3.i.i
    i32 20000000, label %sw.bb4.i.i
    i32 24000000, label %sw.bb5.i.i
    i32 50000000, label %sw.bb6.i.i
  ]

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb1.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb2.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb3.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb4.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb5.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

sw.bb6.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

exynos5_usbdrd_phy_clk_handle.exit.thread187:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %call19.i) #8
  br label %do.end

if.end26.i:                                       ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end17.i.if.end26.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %sw.bb1.i.i ], [ 2, %sw.bb2.i.i ], [ 3, %sw.bb3.i.i ], [ 4, %sw.bb4.i.i ], [ 5, %sw.bb5.i.i ], [ 7, %sw.bb6.i.i ], [ 0, %if.end17.i.if.end26.i_crit_edge ]
  %18 = ptrtoint ptr %extrefclk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i.i, ptr %extrefclk.i, align 4
  %19 = ptrtoint ptr %drv_data14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_data14, align 4
  %has_common_clk_gate.i = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %has_common_clk_gate.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_common_clk_gate.i, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not.i = icmp eq i8 %22, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end26.i.if.end18_crit_edge

if.end26.i.if.end18_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then28.i:                                      ; preds = %if.end26.i
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call30.i = tail call ptr @devm_clk_get(ptr noundef %24, ptr noundef nonnull @.str.38) #5
  %pipeclk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %pipeclk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30.i, ptr %pipeclk.i, align 4
  %cmp.i95.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i, label %do.end36.i, label %if.then28.i.if.end39.i_crit_edge

if.then28.i.if.end39.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

do.end36.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.40) #8
  %28 = ptrtoint ptr %pipeclk.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pipeclk.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end36.i, %if.then28.i.if.end39.i_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call41.i = tail call ptr @devm_clk_get(ptr noundef %30, ptr noundef nonnull @.str.43) #5
  %utmiclk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %utmiclk.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call41.i, ptr %utmiclk.i, align 4
  %cmp.i96.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i, label %do.end47.i, label %if.end39.i.if.end50.i_crit_edge

if.end39.i.if.end50.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

do.end47.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.45) #8
  %34 = ptrtoint ptr %utmiclk.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %utmiclk.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end47.i, %if.end39.i.if.end50.i_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call52.i = tail call ptr @devm_clk_get(ptr noundef %36, ptr noundef nonnull @.str.47) #5
  %itpclk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %itpclk.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call52.i, ptr %itpclk.i, align 4
  %cmp.i97.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i, label %do.end58.i, label %if.end50.i.if.end18_crit_edge

if.end50.i.if.end18_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end58.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.49) #8
  %40 = ptrtoint ptr %itpclk.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %itpclk.i, align 4
  br label %if.end18

exynos5_usbdrd_phy_clk_handle.exit:               ; preds = %do.end13.i, %do.end.i
  %retval.0.i179.in.in = phi ptr [ %clk.i, %do.end.i ], [ %ref_clk.i, %do.end13.i ]
  %41 = ptrtoint ptr %retval.0.i179.in.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i179.in = load ptr, ptr %retval.0.i179.in.in, align 4
  %retval.0.i179 = ptrtoint ptr %retval.0.i179.in to i32
  %tobool16.not = icmp eq ptr %retval.0.i179.in, null
  br i1 %tobool16.not, label %exynos5_usbdrd_phy_clk_handle.exit.if.end18_crit_edge, label %exynos5_usbdrd_phy_clk_handle.exit.do.end_crit_edge

exynos5_usbdrd_phy_clk_handle.exit.do.end_crit_edge: ; preds = %exynos5_usbdrd_phy_clk_handle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

exynos5_usbdrd_phy_clk_handle.exit.if.end18_crit_edge: ; preds = %exynos5_usbdrd_phy_clk_handle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %exynos5_usbdrd_phy_clk_handle.exit.do.end_crit_edge, %exynos5_usbdrd_phy_clk_handle.exit.thread187
  %retval.0.i179190 = phi i32 [ -22, %exynos5_usbdrd_phy_clk_handle.exit.thread187 ], [ %retval.0.i179, %exynos5_usbdrd_phy_clk_handle.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup104

if.end18:                                         ; preds = %exynos5_usbdrd_phy_clk_handle.exit.if.end18_crit_edge, %do.end58.i, %if.end50.i.if.end18_crit_edge, %if.end26.i.if.end18_crit_edge
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call20 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %43, ptr noundef nonnull @.str.6) #5
  %cmp.i180 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %44 = ptrtoint ptr %call20 to i32
  br label %cleanup104

if.end27:                                         ; preds = %if.end18
  %call28 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.body30, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_usbdrd_phy_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_usbdrd_phy_probe, %if.end39.thread)) #5
          to label %if.end39 [label %if.end39.thread], !srcloc !159

if.end39.thread:                                  ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_usbdrd_phy_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.12) #5
  br label %sw.default

if.end39:                                         ; preds = %do.body30, %if.end27.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cond114 = icmp eq i32 %call28, 1
  br i1 %cond114, label %sw.bb, label %if.end39.sw.default_crit_edge

if.end39.sw.default_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %drv_data14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %drv_data14, align 4
  %pmu_offset_usbdrd1_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %46, i32 0, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end39.sw.default_crit_edge, %if.end39.thread
  %47 = ptrtoint ptr %drv_data14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drv_data14, align 4
  %pmu_offset_usbdrd0_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %48, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %pmu_offset.0.in = phi ptr [ %pmu_offset_usbdrd1_phy, %sw.bb ], [ %pmu_offset_usbdrd0_phy, %sw.default ]
  %49 = ptrtoint ptr %pmu_offset.0.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %pmu_offset.0 = load i32, ptr %pmu_offset.0.in, align 4
  %call43 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  %vbus = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call43, ptr %vbus, align 4
  %cmp.i181 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then46, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then46:                                        ; preds = %sw.epilog
  %cmp49 = icmp eq ptr %call43, inttoptr (i32 -517 to ptr)
  br i1 %cmp49, label %if.then46.cleanup104_crit_edge, label %do.end54

if.then46.cleanup104_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup104

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  %51 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %vbus, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %sw.epilog.if.end56_crit_edge
  %call57 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #5
  %vbus_boost = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 11
  %52 = ptrtoint ptr %vbus_boost to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call57, ptr %vbus_boost, align 4
  %cmp.i182 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then60, label %if.end56.if.end70_crit_edge

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then60:                                        ; preds = %if.end56
  %cmp63 = icmp eq ptr %call57, inttoptr (i32 -517 to ptr)
  br i1 %cmp63, label %if.then60.cleanup104_crit_edge, label %do.end68

if.then60.cleanup104_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup104

do.end68:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  %53 = ptrtoint ptr %vbus_boost to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %vbus_boost, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %if.end56.if.end70_crit_edge
  %call72 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_ops) #5
  %cmp.i183 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.end70.cleanup.thread_crit_edge, label %for.inc

if.end70.cleanup.thread_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %if.end70.cleanup.thread_crit_edge
  %call72.lcssa = phi ptr [ %call72, %if.end70.cleanup.thread_crit_edge ], [ %call72.1, %for.inc.cleanup.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  %54 = ptrtoint ptr %call72.lcssa to i32
  br label %cleanup104

for.inc:                                          ; preds = %if.end70
  %arrayidx = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 0
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call72, ptr %arrayidx, align 4
  %index = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %56 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %index, align 4
  %reg_pmu85 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %57 = ptrtoint ptr %reg_pmu85 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call20, ptr %reg_pmu85, align 4
  %pmu_offset88 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %58 = ptrtoint ptr %pmu_offset88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %pmu_offset.0, ptr %pmu_offset88, align 4
  %59 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call10, align 4
  %phy_cfg92 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 0, i32 4
  %61 = ptrtoint ptr %phy_cfg92 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %phy_cfg92, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call72, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %call72.1 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_ops) #5
  %cmp.i183.1 = icmp ugt ptr %call72.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call72.1, ptr %arrayidx.1, align 4
  %index.1 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %64 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %index.1, align 4
  %reg_pmu85.1 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 1, i32 2
  %65 = ptrtoint ptr %reg_pmu85.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call20, ptr %reg_pmu85.1, align 4
  %pmu_offset88.1 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 1, i32 3
  %66 = ptrtoint ptr %pmu_offset88.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %pmu_offset.0, ptr %pmu_offset88.1, align 4
  %67 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call10, align 4
  %arrayidx89.1 = getelementptr %struct.exynos5_usbdrd_phy_config, ptr %68, i32 1
  %phy_cfg92.1 = getelementptr %struct.exynos5_usbdrd_phy, ptr %call.i, i32 0, i32 7, i32 1, i32 4
  %69 = ptrtoint ptr %phy_cfg92.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx89.1, ptr %phy_cfg92.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %call72.1, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx.1, ptr %driver_data.i.i.1, align 4
  %call95 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @exynos5_usbdrd_phy_xlate) #5
  %cmp.i184 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end100, label %for.inc.1.cleanup104_crit_edge

for.inc.1.cleanup104_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup104

do.end100:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.26) #8
  %73 = ptrtoint ptr %call95 to i32
  br label %cleanup104

cleanup104:                                       ; preds = %do.end100, %for.inc.1.cleanup104_crit_edge, %cleanup.thread, %if.then60.cleanup104_crit_edge, %if.then46.cleanup104_crit_edge, %do.end25, %do.end, %if.end9.cleanup104_crit_edge, %if.then6, %entry.cleanup104_crit_edge
  %retval.2 = phi i32 [ %5, %if.then6 ], [ %retval.0.i179190, %do.end ], [ %44, %do.end25 ], [ %73, %do.end100 ], [ -12, %entry.cleanup104_crit_edge ], [ -22, %if.end9.cleanup104_crit_edge ], [ -517, %if.then46.cleanup104_crit_edge ], [ -517, %if.then60.cleanup104_crit_edge ], [ 0, %for.inc.1.cleanup104_crit_edge ], [ %54, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exynos5_usbdrd_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end23, !prof !160

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 691, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx26 = getelementptr %struct.exynos5_usbdrd_phy, ptr %3, i32 0, i32 7, i32 %1
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %5, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %clk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_phy, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_phy, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1073741832) #5, !srcloc !162
  %12 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_phy, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  %15 = and i32 %14, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_phy, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %15) #5, !srcloc !162
  %18 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_phy, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %21 = or i32 %20, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_phy, align 4
  %add.ptr33 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %21) #5, !srcloc !162
  %phy_cfg = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_cfg, align 4
  %phy_init = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %phy_init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_init, align 4
  tail call void %27(ptr noundef %add.ptr.i) #5
  %28 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_cfg, align 4
  %set_refclk = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %set_refclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_refclk, align 4
  %call35 = tail call i32 %31(ptr noundef %1) #5
  %or36 = or i32 %call35, 1572883
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %33 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_phy, align 4
  %add.ptr41 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %32) #5, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #5
  %and42 = and i32 %or36, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %and42)
  %37 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_phy, align 4
  %add.ptr47 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %36) #5, !srcloc !162
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %40) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %40, %do.body ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %clk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1124073472) #5, !srcloc !162
  %8 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_phy, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  %11 = and i32 %10, -16783361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_phy, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %11) #5, !srcloc !162
  %14 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_phy, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  %17 = or i32 %16, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_phy, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %17) #5, !srcloc !162
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.end ], [ %5, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_usbdrd_phy_power_on.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_usbdrd_phy_power_on, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_usbdrd_phy_power_on.__UNIQUE_ID_ddebug290, ptr noundef %5, ptr noundef nonnull @.str.52) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref_clk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 9
  %6 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.clk_prepare_enable.exit_crit_edge

do.end.clk_prepare_enable.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %do.end.clk_prepare_enable.exit_crit_edge
  %drv_data = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 6
  %8 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_data, align 4
  %has_common_clk_gate = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %has_common_clk_gate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_common_clk_gate, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then7, label %clk_prepare_enable.exit.if.end11_crit_edge

clk_prepare_enable.exit.if.end11_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %clk_prepare_enable.exit
  %pipeclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 3
  %12 = ptrtoint ptr %pipeclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipeclk, align 4
  %call.i78 = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end.i82, label %if.then7.clk_prepare_enable.exit85_crit_edge

if.then7.clk_prepare_enable.exit85_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit85

if.end.i82:                                       ; preds = %if.then7
  %call1.i80 = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool2.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool2.not.i81, label %if.end.i82.clk_prepare_enable.exit85_crit_edge, label %if.then3.i83

if.end.i82.clk_prepare_enable.exit85_crit_edge:   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit85

if.then3.i83:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %clk_prepare_enable.exit85

clk_prepare_enable.exit85:                        ; preds = %if.then3.i83, %if.end.i82.clk_prepare_enable.exit85_crit_edge, %if.then7.clk_prepare_enable.exit85_crit_edge
  %utmiclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 4
  %14 = ptrtoint ptr %utmiclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %utmiclk, align 4
  %call.i86 = tail call i32 @clk_prepare(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %if.end.i90, label %clk_prepare_enable.exit85.clk_prepare_enable.exit93_crit_edge

clk_prepare_enable.exit85.clk_prepare_enable.exit93_crit_edge: ; preds = %clk_prepare_enable.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit93

if.end.i90:                                       ; preds = %clk_prepare_enable.exit85
  %call1.i88 = tail call i32 @clk_enable(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i89, label %if.end.i90.clk_prepare_enable.exit93_crit_edge, label %if.then3.i91

if.end.i90.clk_prepare_enable.exit93_crit_edge:   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit93

if.then3.i91:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %clk_prepare_enable.exit93

clk_prepare_enable.exit93:                        ; preds = %if.then3.i91, %if.end.i90.clk_prepare_enable.exit93_crit_edge, %clk_prepare_enable.exit85.clk_prepare_enable.exit93_crit_edge
  %itpclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 5
  %16 = ptrtoint ptr %itpclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %itpclk, align 4
  %call.i94 = tail call i32 @clk_prepare(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %if.end.i98, label %clk_prepare_enable.exit93.if.end11_crit_edge

clk_prepare_enable.exit93.if.end11_crit_edge:     ; preds = %clk_prepare_enable.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.i98:                                       ; preds = %clk_prepare_enable.exit93
  %call1.i96 = tail call i32 @clk_enable(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool2.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool2.not.i97, label %if.end.i98.if.end11_crit_edge, label %if.then3.i99

if.end.i98.if.end11_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3.i99:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %17) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then3.i99, %if.end.i98.if.end11_crit_edge, %clk_prepare_enable.exit93.if.end11_crit_edge, %clk_prepare_enable.exit.if.end11_crit_edge
  %vbus_boost = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 11
  %18 = ptrtoint ptr %vbus_boost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbus_boost, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %if.then13

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 @regulator_enable(ptr noundef nonnull %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end23_crit_edge, label %do.end20

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.53) #8
  br label %fail_vbus

if.end23:                                         ; preds = %if.then13.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %vbus = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 10
  %22 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vbus, align 4
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.end23.if.end35_crit_edge, label %if.then25

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then25:                                        ; preds = %if.end23
  %call27 = tail call i32 @regulator_enable(ptr noundef nonnull %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then25.if.end35_crit_edge, label %do.end32

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end32:                                         ; preds = %if.then25
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.55) #8
  %26 = ptrtoint ptr %vbus_boost to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbus_boost, align 4
  %tobool37.not = icmp eq ptr %27, null
  br i1 %tobool37.not, label %do.end32.fail_vbus_crit_edge, label %if.then38

do.end32.fail_vbus_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_vbus

if.end35:                                         ; preds = %if.then25.if.end35_crit_edge, %if.end23.if.end35_crit_edge
  %phy_cfg = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_cfg, align 4
  %phy_isol = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %phy_isol to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_isol, align 4
  tail call void %31(ptr noundef %1, i32 noundef 0) #5
  br label %cleanup

if.then38:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @regulator_disable(ptr noundef nonnull %27) #5
  br label %fail_vbus

fail_vbus:                                        ; preds = %if.then38, %do.end32.fail_vbus_crit_edge, %do.end20
  %ret.0 = phi i32 [ %call15, %do.end20 ], [ %call27, %if.then38 ], [ %call27, %do.end32.fail_vbus_crit_edge ]
  %32 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  %34 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_data, align 4
  %has_common_clk_gate44 = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %has_common_clk_gate44 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_common_clk_gate44, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool45.not = icmp eq i8 %37, 0
  br i1 %tobool45.not, label %if.then46, label %fail_vbus.cleanup_crit_edge

fail_vbus.cleanup_crit_edge:                      ; preds = %fail_vbus
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then46:                                        ; preds = %fail_vbus
  call void @__sanitizer_cov_trace_pc() #7
  %itpclk47 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 5
  %38 = ptrtoint ptr %itpclk47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %itpclk47, align 4
  tail call void @clk_disable(ptr noundef %39) #5
  tail call void @clk_unprepare(ptr noundef %39) #5
  %utmiclk48 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 4
  %40 = ptrtoint ptr %utmiclk48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %utmiclk48, align 4
  tail call void @clk_disable(ptr noundef %41) #5
  tail call void @clk_unprepare(ptr noundef %41) #5
  %pipeclk49 = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 3
  %42 = ptrtoint ptr %pipeclk49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pipeclk49, align 4
  tail call void @clk_disable(ptr noundef %43) #5
  tail call void @clk_unprepare(ptr noundef %43) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %fail_vbus.cleanup_crit_edge, %if.end35
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %ret.0, %if.then46 ], [ %ret.0, %fail_vbus.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_usbdrd_phy_power_off.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_usbdrd_phy_power_off, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_usbdrd_phy_power_off.__UNIQUE_ID_ddebug291, ptr noundef %5, ptr noundef nonnull @.str.58) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phy_cfg = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_cfg, align 4
  %phy_isol = getelementptr inbounds %struct.exynos5_usbdrd_phy_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %phy_isol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_isol, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #5
  %vbus = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 10
  %10 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %vbus_boost = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 11
  %12 = ptrtoint ptr %vbus_boost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbus_boost, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %ref_clk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 9
  %14 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %drv_data = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 6
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_data, align 4
  %has_common_clk_gate = getelementptr inbounds %struct.exynos5_usbdrd_phy_drvdata, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %has_common_clk_gate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_common_clk_gate, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %itpclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 5
  %20 = ptrtoint ptr %itpclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %itpclk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  %pipeclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %pipeclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipeclk, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  %utmiclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %utmiclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %utmiclk, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_phy_calibrate(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %3, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %phy_cfg = getelementptr inbounds %struct.phy_usb_instance, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_cfg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @crport_ctrl_write(ptr noundef %add.ptr.i, i32 noundef 21, i32 noundef 41993) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup.sink.split.i_crit_edge

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call fastcc i32 @crport_ctrl_write(ptr noundef %add.ptr.i, i32 noundef 18, i32 noundef 40960) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i
  %extrefclk.i = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 8
  %8 = ptrtoint ptr %extrefclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extrefclk.i, align 4
  %switch.tableidx = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 5
  br i1 %10, label %switch.lookup, label %if.end8.i.sw.epilog.i_crit_edge

if.end8.i.sw.epilog.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.exynos5_usbdrd_phy_calibrate, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end8.i.sw.epilog.i_crit_edge
  %temp.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 128, %if.end8.i.sw.epilog.i_crit_edge ]
  %call11.i = tail call fastcc i32 @crport_ctrl_write(ptr noundef %add.ptr.i, i32 noundef 4112, i32 noundef %temp.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.cleanup.sink.split.i_crit_edge

sw.epilog.i.cleanup.sink.split.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %sw.epilog.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then.cleanup.sink.split.i_crit_edge
  %.str.65.sink.i = phi ptr [ @.str.59, %if.then.cleanup.sink.split.i_crit_edge ], [ @.str.62, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.65, %sw.epilog.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.then.cleanup.sink.split.i_crit_edge ], [ %call1.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call11.i, %sw.epilog.i.cleanup.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.65.sink.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %sw.epilog.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crport_ctrl_write(ptr nocapture noundef readonly %phy_drd, i32 noundef %addr, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void @arm_heavy_mb() #5
  %shl = shl i32 %addr, 2
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %phy_drd, i32 0, i32 1
  %1 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !162
  %call = tail call fastcc i32 @crport_handshake(ptr noundef %phy_drd, i32 noundef %shl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %shl5 = shl i32 %data, 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl5)
  %4 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_phy, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #5, !srcloc !162
  %call9 = tail call fastcc i32 @crport_handshake(ptr noundef %phy_drd, i32 noundef %shl5, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.body2.cleanup_crit_edge

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call fastcc i32 @crport_handshake(ptr noundef %phy_drd, i32 noundef %shl5, i32 noundef 524288)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call9, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crport_handshake(ptr nocapture noundef readonly %phy_drd, i32 noundef %val, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %or = or i32 %cmd, %val
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %phy_drd, i32 0, i32 1
  %1 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !162
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 566) #5
  %3 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_phy, align 4
  %add.ptr12140 = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12140) #5, !srcloc !165
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  %and141 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool.not142 = icmp eq i32 %and141, 0
  br i1 %tobool.not142, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then31

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_phy, align 4
  %add.ptr25 = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !165
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %11 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_phy, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !165
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  %and = and i32 %14, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then31.land.lhs.true_crit_edge, label %if.then31.for.end_crit_edge

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %if.then31.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  %result.0 = phi i32 [ %10, %if.then21 ], [ %6, %entry.for.end_crit_edge ], [ %14, %if.then31.for.end_crit_edge ]
  %and34 = and i32 %result.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.end.cleanup.sink.split_crit_edge, label %do.body42

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body42:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %val)
  %16 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_phy, align 4
  %add.ptr46 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %15) #5, !srcloc !162
  %call50 = tail call i64 @ktime_get() #5
  %add.i132 = add i64 %call50, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 575) #5
  %18 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_phy, align 4
  %add.ptr68143 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68143) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool73.not145 = icmp eq i32 %21, 0
  br i1 %tobool73.not145, label %do.body42.cleanup_crit_edge, label %do.body42.land.lhs.true77_crit_edge

do.body42.land.lhs.true77_crit_edge:              ; preds = %do.body42
  br label %land.lhs.true77

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true77:                                  ; preds = %if.then91.land.lhs.true77_crit_edge, %do.body42.land.lhs.true77_crit_edge
  %call78 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call78, i64 %add.i132)
  %cmp3.i134 = icmp sgt i64 %call78, %add.i132
  br i1 %cmp3.i134, label %for.end95, label %if.then91

if.then91:                                        ; preds = %land.lhs.true77
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %22 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_phy, align 4
  %add.ptr68 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %25 = and i32 %24, 16777216
  %tobool73.not = icmp eq i32 %25, 0
  br i1 %tobool73.not, label %if.then91.cleanup_crit_edge, label %if.then91.land.lhs.true77_crit_edge

if.then91.land.lhs.true77_crit_edge:              ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true77

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end95:                                        ; preds = %land.lhs.true77
  %26 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_phy, align 4
  %add.ptr85 = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool98.not = icmp eq i32 %29, 0
  br i1 %tobool98.not, label %for.end95.cleanup_crit_edge, label %for.end95.cleanup.sink.split_crit_edge

for.end95.cleanup.sink.split_crit_edge:           ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end95.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %for.end.cleanup.sink.split_crit_edge ], [ @.str.70, %for.end95.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %phy_drd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_drd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.70.sink, i32 noundef %val) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end95.cleanup_crit_edge, %if.then91.cleanup_crit_edge, %do.body42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end95.cleanup_crit_edge ], [ 0, %do.body42.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_phy_isol(ptr nocapture noundef readonly %inst, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_pmu = getelementptr inbounds %struct.phy_usb_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %reg_pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_pmu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  %cond = zext i1 %tobool1.not to i32
  %pmu_offset = getelementptr inbounds %struct.phy_usb_instance, ptr %inst, i32 0, i32 3
  %2 = ptrtoint ptr %pmu_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmu_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_utmi_init(ptr nocapture noundef readonly %phy_drd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %phy_drd, i32 0, i32 1
  %0 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  %3 = and i32 %2, -125
  %4 = or i32 %3, 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_phy, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #5, !srcloc !162
  %7 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_phy, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %10 = and i32 %9, -520093697
  %11 = or i32 %10, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_phy, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_phy, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 1073741824) #5, !srcloc !162
  %16 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_phy, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  %19 = and i32 %18, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_phy, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %19) #5, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_utmi_set_refclk(ptr nocapture noundef readonly %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %inst, i32 0, i32 1
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %1, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %inst, i32 %idx.neg.i
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  %5 = and i32 %4, 335544319
  %6 = or i32 %5, 201326592
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %extrefclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 8
  %8 = ptrtoint ptr %extrefclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extrefclk, align 4
  %shl = shl i32 %9, 5
  %or4 = or i32 %7, %shl
  ret i32 %or4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5_usbdrd_pipe3_init(ptr nocapture noundef readonly %phy_drd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %phy_drd, i32 0, i32 1
  %0 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  %3 = and i32 %2, -520093697
  %4 = or i32 %3, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_phy, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #5, !srcloc !162
  %7 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_phy, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  %10 = and i32 %9, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_phy, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #5, !srcloc !162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5_usbdrd_pipe3_set_refclk(ptr nocapture noundef readonly %inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.phy_usb_instance, ptr %inst, i32 0, i32 1
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %.neg.i = mul i32 %1, -20
  %idx.neg.i = add i32 %.neg.i, -28
  %add.ptr.i = getelementptr i8, ptr %inst, i32 %idx.neg.i
  %reg_phy = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  %5 = and i32 %4, -201785345
  %6 = or i32 %5, 201326592
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %extrefclk = getelementptr inbounds %struct.exynos5_usbdrd_phy, ptr %add.ptr.i, i32 0, i32 8
  %8 = ptrtoint ptr %extrefclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extrefclk, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %9, label %do.body [
    i32 7, label %sw.bb
    i32 5, label %sw.bb5
    i32 4, label %sw.bb7
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or4 = or i32 %7, 102400
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %7, 1141063680
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or8 = or i32 %7, 256000
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or10 = or i32 %7, 1140854784
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5_usbdrd_pipe3_set_refclk.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5_usbdrd_pipe3_set_refclk, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !159

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos5_usbdrd_pipe3_set_refclk.__UNIQUE_ID_ddebug289, ptr noundef %12, ptr noundef nonnull @.str.73) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  %reg.0 = phi i32 [ %7, %if.then ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb ], [ %7, %do.body ]
  ret i32 %reg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !142, !143, !145, !147}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__initcall__kmod_phy_exynos5_usbdrd__293_945_exynos5_usb3drd_phy_init6, !1, !"__initcall__kmod_phy_exynos5_usbdrd__293_945_exynos5_usb3drd_phy_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 945, i32 1}
!2 = !{ptr @__exitcall_exynos5_usb3drd_phy_exit, !1, !"__exitcall_exynos5_usb3drd_phy_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 946, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 947, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 948, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias298, !11, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 949, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 940, i32 12}
!14 = !{ptr @exynos5_usb3drd_phy, !15, !"exynos5_usb3drd_phy", i1 false, i1 false}
!15 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 936, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 857, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @exynos5_usbdrd_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 862, i32 10}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 864, i32 3}
!28 = !{ptr @exynos5_usbdrd_phy_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 873, i32 34}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 875, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @exynos5_usbdrd_phy_probe.__UNIQUE_ID_ddebug292, !33, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 888, i32 42}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 894, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @exynos5_usbdrd_phy_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 898, i32 48}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 904, i32 3}
!47 = !{ptr @exynos5_usbdrd_phy_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 914, i32 4}
!51 = !{ptr @exynos5_usbdrd_phy_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 929, i32 3}
!55 = !{ptr @exynos5_usbdrd_phy_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @exynos5_usbdrd_phy_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 721, i32 44}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 723, i32 3}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 727, i32 48}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 729, i32 3}
!68 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 736, i32 3}
!72 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 742, i32 49}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 744, i32 4}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry.39, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 749, i32 49}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 751, i32 4}
!85 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 756, i32 48}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 758, i32 4}
!91 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry.48, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @exynos5_usbdrd_phy_clk_handle._entry_ptr.50, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @exynos5_usbdrd_phy_ops, !94, !"exynos5_usbdrd_phy_ops", i1 false, i1 false}
!94 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 707, i32 29}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 484, i32 2}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @exynos5_usbdrd_phy_power_on.__UNIQUE_ID_ddebug290, !96, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 497, i32 4}
!101 = !{ptr @exynos5_usbdrd_phy_power_on._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @exynos5_usbdrd_phy_power_on._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 506, i32 4}
!105 = !{ptr @exynos5_usbdrd_phy_power_on._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @exynos5_usbdrd_phy_power_on._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 536, i32 2}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @exynos5_usbdrd_phy_power_off.__UNIQUE_ID_ddebug291, !108, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 634, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 648, i32 3}
!118 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 680, i32 3}
!122 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @exynos5420_usbdrd_phy_calibrate._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 568, i32 3}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @crport_handshake._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @crport_handshake._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 577, i32 3}
!131 = !{ptr @crport_handshake._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @crport_handshake._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @exynos5_usbdrd_phy_of_match, !134, !"exynos5_usbdrd_phy_of_match", i1 false, i1 false}
!134 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 808, i32 34}
!135 = !{ptr @exynos5250_usbdrd_phy, !136, !"exynos5250_usbdrd_phy", i1 false, i1 false}
!136 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 789, i32 48}
!137 = !{ptr @phy_cfg_exynos5, !138, !"phy_cfg_exynos5", i1 false, i1 false}
!138 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 767, i32 47}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 312, i32 3}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @exynos5_usbdrd_pipe3_set_refclk.__UNIQUE_ID_ddebug289, !140, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!143 = !{ptr @exynos5420_usbdrd_phy, !144, !"exynos5420_usbdrd_phy", i1 false, i1 false}
!144 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 782, i32 48}
!145 = !{ptr @exynos5433_usbdrd_phy, !146, !"exynos5433_usbdrd_phy", i1 false, i1 false}
!146 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 795, i32 48}
!147 = !{ptr @exynos7_usbdrd_phy, !148, !"exynos7_usbdrd_phy", i1 false, i1 false}
!148 = !{!"../drivers/phy/samsung/phy-exynos5-usbdrd.c", i32 802, i32 48}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i8 0, i8 2}
!159 = !{i64 2148746003, i64 2148746008, i64 2148746021, i64 2148746065, i64 2148746099, i64 2148746120}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2155232710}
!162 = !{i64 3093593}
!163 = !{i64 2155233116}
!164 = !{i64 2155233623}
!165 = !{i64 3094011}
!166 = !{i64 2155234319}
!167 = !{i64 2155234628}
!168 = !{i64 2155235324}
!169 = !{i64 2155235631}
!170 = !{i64 2155236451}
!171 = !{i64 2155237481}
!172 = !{i64 2155238133}
!173 = !{i64 2155238829}
!174 = !{i64 2155239304}
!175 = !{i64 2155240000}
!176 = !{i64 2155240389}
!177 = !{i64 2155262038}
!178 = !{i64 2155262608}
!179 = !{i64 2155253045}
!180 = !{i64 2155255063}
!181 = !{i64 2155255573}
!182 = !{i64 2155257534}
!183 = !{i64 2155259538}
!184 = !{i64 2155260048}
!185 = !{i64 2155229527}
!186 = !{i64 2155229777}
!187 = !{i64 2155230473}
!188 = !{i64 2155230717}
!189 = !{i64 2155231229}
!190 = !{i64 2155231997}
!191 = !{i64 2155232304}
!192 = !{i64 2155226978}
!193 = !{i64 2155227584}
!194 = !{i64 2155227828}
!195 = !{i64 2155228524}
!196 = !{i64 2155228831}
!197 = !{i64 2155224004}
