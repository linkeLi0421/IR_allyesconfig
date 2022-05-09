; ModuleID = '/llk/IR_all_yes/drivers/phy/st/phy-stm32-usbphyc.c_pt.bc'
source_filename = "../drivers/phy/st/phy-stm32-usbphyc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_usbphyc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.clk_hw, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.stm32_usbphyc_phy = type { ptr, ptr, ptr, i32, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_phy_stm32_usbphyc__365_816_stm32_usbphyc_driver_init6 = internal global ptr @stm32_usbphyc_driver_init, section ".initcall6.init", align 4
@stm32_usbphyc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_usbphyc_probe, ptr @stm32_usbphyc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_usbphyc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usbphyc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_usbphyc_driver_exit = internal global ptr @stm32_usbphyc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description366 = internal constant [70 x i8] c"phy_stm32_usbphyc.description=STMicroelectronics STM32 USBPHYC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author367 = internal constant [66 x i8] c"phy_stm32_usbphyc.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file368 = internal constant [56 x i8] c"phy_stm32_usbphyc.file=drivers/phy/st/phy-stm32-usbphyc\00", section ".modinfo", align 1
@__UNIQUE_ID_license369 = internal constant [33 x i8] c"phy_stm32_usbphyc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm32-usbphyc\00", [18 x i8] zeroinitializer }, align 32
@stm32_usbphyc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-usbphyc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_usbphyc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr @stm32_usbphyc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk get_failed\0A\00", [16 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 636, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk enable failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_usbphyc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/phy/st/phy-stm32-usbphyc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr = internal global ptr @stm32_usbphyc_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_usbphyc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 659, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLL not reset\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.10 = internal global ptr @stm32_usbphyc_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdda1v1\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vdda1v1 supply\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdda1v8\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vdda1v8 supply\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @stm32_usbphyc_phy_init, ptr @stm32_usbphyc_phy_exit, ptr @stm32_usbphyc_phy_power_on, ptr @stm32_usbphyc_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 697, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to create phy%d: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.17 = internal global ptr @stm32_usbphyc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid reg property: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.21 = internal global ptr @stm32_usbphyc_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 741, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register phy provider: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.25 = internal global ptr @stm32_usbphyc_probe._entry.23, section ".printk_index", align 4
@stm32_usbphyc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 747, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to register ck_usbo_48m clock: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.28 = internal global ptr @stm32_usbphyc_probe._entry.26, section ".printk_index", align 4
@stm32_usbphyc_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 753, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"registered rev:%lu.%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_usbphyc_probe._entry_ptr.32 = internal global ptr @stm32_usbphyc_probe._entry.29, section ".printk_index", align 4
@stm32_usbphyc_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PLL Lock input to PHY is Low (val=%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_usbphyc_phy_init\00", [41 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_init._entry_ptr = internal global ptr @stm32_usbphyc_phy_init._entry, section ".printk_index", align 4
@stm32_usbphyc_pll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 303, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PLL enabled without known consumers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_usbphyc_pll_enable\00", [39 x i8] zeroinitializer }, align 32
@stm32_usbphyc_pll_enable._entry_ptr = internal global ptr @stm32_usbphyc_pll_enable._entry, section ".printk_index", align 4
@__stm32_usbphyc_pll_disable._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.37, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__stm32_usbphyc_pll_disable\00", [36 x i8] zeroinitializer }, align 32
@__stm32_usbphyc_pll_disable._entry_ptr = internal global ptr @__stm32_usbphyc_pll_disable._entry, section ".printk_index", align 4
@stm32_usbphyc_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"input clk freq (%dHz) out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_usbphyc_pll_init\00", [41 x i8] zeroinitializer }, align 32
@stm32_usbphyc_pll_init._entry_ptr = internal global ptr @stm32_usbphyc_pll_init._entry, section ".printk_index", align 4
@stm32_usbphyc_pll_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.39, ptr @.str.4, ptr @.str.41, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_stm32_usbphyc\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"input clk freq=%dHz, ndiv=%lu, frac=%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st,current-boost-microamp\00", [38 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 474, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"phy%d: invalid st,current-boost-microamp\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_usbphyc_phy_tuning\00", [39 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr = internal global ptr @stm32_usbphyc_phy_tuning._entry, section ".printk_index", align 4
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,no-lsfs-fb-cap\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st,decrease-hs-slew-rate\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st,tune-hs-dc-level\00", [44 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.4, i32 494, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"phy%d: invalid st,tune-hs-dc-level\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr.50 = internal global ptr @stm32_usbphyc_phy_tuning._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,enable-fs-rftime-tuning\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,enable-hs-rftime-reduction\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,trim-hs-current\00", [45 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.4, i32 509, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"phy%d: invalid st,trim-hs-current\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr.56 = internal global ptr @stm32_usbphyc_phy_tuning._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,trim-hs-impedance\00", [43 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.4, i32 517, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phy%d: invalid st,trim-hs-impedance\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr.60 = internal global ptr @stm32_usbphyc_phy_tuning._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,tune-squelch-level\00", [42 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.44, ptr @.str.4, i32 525, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy%d: invalid st,tune-squelch\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr.64 = internal global ptr @stm32_usbphyc_phy_tuning._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st,enable-hs-rx-gain-eq\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st,tune-hs-rx-offset\00", [43 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.44, ptr @.str.4, i32 536, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"phy%d: invalid st,tune-hs-rx-offset\0A\00", [59 x i8] zeroinitializer }, align 32
@stm32_usbphyc_phy_tuning._entry_ptr.69 = internal global ptr @stm32_usbphyc_phy_tuning._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st,no-hs-ftime-ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,no-lsfs-sc\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st,enable-hs-tx-staggering\00", [37 x i8] zeroinitializer }, align 32
@stm32_usbphyc_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to find phy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_usbphyc_of_xlate\00", [41 x i8] zeroinitializer }, align 32
@stm32_usbphyc_of_xlate._entry_ptr = internal global ptr @stm32_usbphyc_of_xlate._entry, section ".printk_index", align 4
@stm32_usbphyc_of_xlate._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid number of cells for phy port%d\0A\00", [56 x i8] zeroinitializer }, align 32
@stm32_usbphyc_of_xlate._entry_ptr.77 = internal global ptr @stm32_usbphyc_of_xlate._entry.75, section ".printk_index", align 4
@stm32_usbphyc_of_xlate._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy port1 already used\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_usbphyc_of_xlate._entry_ptr.80 = internal global ptr @stm32_usbphyc_of_xlate._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ck_usbo_48m\00", [20 x i8] zeroinitializer }, align 32
@usbphyc_clk48_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @stm32_usbphyc_clk48_prepare, ptr @stm32_usbphyc_clk48_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_usbphyc_clk48_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1000, i64 2000]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"stm32_usbphyc_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 807, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 812, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [23 x i8] c"stm32_usbphyc_of_match\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 801, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"stm32_usbphyc_pm_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 799, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 632, i32 52 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 636, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 659, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 673, i32 45 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 676, i32 9 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 680, i32 45 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 683, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"stm32_usbphyc_phy_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 394, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 696, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 708, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 710, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 723, i32 70 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 741, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 747, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 752, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 351, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 303, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 271, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 239, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 255, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 468, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 474, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 478, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 481, i32 32 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 484, i32 33 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 494, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 498, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 501, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 504, i32 33 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 509, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 512, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 517, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 520, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 525, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 528, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 531, i32 33 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 536, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 539, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 542, i32 33 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 545, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 585, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 591, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 602, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 441, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant [18 x i8] c"usbphyc_clk48_ops\00", align 1
@___asan_gen_.328 = private constant [38 x i8] c"../drivers/phy/st/phy-stm32-usbphyc.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 421, i32 29 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author367, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file368, ptr @__UNIQUE_ID_license369, ptr @__exitcall_stm32_usbphyc_driver_exit, ptr @__initcall__kmod_phy_stm32_usbphyc__365_816_stm32_usbphyc_driver_init6, ptr @__stm32_usbphyc_pll_disable._entry, ptr @__stm32_usbphyc_pll_disable._entry_ptr, ptr @stm32_usbphyc_driver_exit, ptr @stm32_usbphyc_of_xlate._entry, ptr @stm32_usbphyc_of_xlate._entry.75, ptr @stm32_usbphyc_of_xlate._entry.78, ptr @stm32_usbphyc_of_xlate._entry_ptr, ptr @stm32_usbphyc_of_xlate._entry_ptr.77, ptr @stm32_usbphyc_of_xlate._entry_ptr.80, ptr @stm32_usbphyc_phy_init._entry, ptr @stm32_usbphyc_phy_init._entry_ptr, ptr @stm32_usbphyc_phy_tuning._entry, ptr @stm32_usbphyc_phy_tuning._entry.48, ptr @stm32_usbphyc_phy_tuning._entry.54, ptr @stm32_usbphyc_phy_tuning._entry.58, ptr @stm32_usbphyc_phy_tuning._entry.62, ptr @stm32_usbphyc_phy_tuning._entry.67, ptr @stm32_usbphyc_phy_tuning._entry_ptr, ptr @stm32_usbphyc_phy_tuning._entry_ptr.50, ptr @stm32_usbphyc_phy_tuning._entry_ptr.56, ptr @stm32_usbphyc_phy_tuning._entry_ptr.60, ptr @stm32_usbphyc_phy_tuning._entry_ptr.64, ptr @stm32_usbphyc_phy_tuning._entry_ptr.69, ptr @stm32_usbphyc_pll_enable._entry, ptr @stm32_usbphyc_pll_enable._entry_ptr, ptr @stm32_usbphyc_pll_init._entry, ptr @stm32_usbphyc_pll_init._entry_ptr, ptr @stm32_usbphyc_probe._entry, ptr @stm32_usbphyc_probe._entry.15, ptr @stm32_usbphyc_probe._entry.19, ptr @stm32_usbphyc_probe._entry.23, ptr @stm32_usbphyc_probe._entry.26, ptr @stm32_usbphyc_probe._entry.29, ptr @stm32_usbphyc_probe._entry.7, ptr @stm32_usbphyc_probe._entry_ptr, ptr @stm32_usbphyc_probe._entry_ptr.10, ptr @stm32_usbphyc_probe._entry_ptr.17, ptr @stm32_usbphyc_probe._entry_ptr.21, ptr @stm32_usbphyc_probe._entry_ptr.25, ptr @stm32_usbphyc_probe._entry_ptr.28, ptr @stm32_usbphyc_probe._entry_ptr.32, ptr @stm32_usbphyc_driver, ptr @.str, ptr @stm32_usbphyc_of_match, ptr @stm32_usbphyc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @stm32_usbphyc_phy_ops, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @usbphyc_clk48_ops], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_pll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_phy_tuning._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_of_xlate._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_usbphyc_of_xlate._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbphyc_clk48_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_usbphyc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usbphyc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_usbphyc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup228_crit_edge, label %if.end

entry.cleanup228_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup228

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call3 to i32
  br label %cleanup228

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %clk, align 4
  %cmp.i345 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i345, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.1) #8
  br label %cleanup228

if.end17:                                         ; preds = %if.end9
  %call.i346 = tail call i32 @clk_prepare(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool.not.i = icmp eq i32 %call.i346, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call10) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end17.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i346, %if.end17.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #11
  br label %cleanup228

if.end22:                                         ; preds = %if.end.i
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i347 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i347, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #8
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call30 = tail call i32 @reset_control_deassert(ptr noundef %11) #8
  br label %if.end36

if.else:                                          ; preds = %if.end22
  %cmp = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else.clk_disable_crit_edge, label %if.end34

if.else.clk_disable_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !170
  %15 = and i32 %14, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #8, !srcloc !171
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.then26
  %call37 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call37, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 658) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !170
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and382 = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool54.not383 = icmp eq i32 %and382, 0
  br i1 %tobool54.not383, label %if.end36.for.end_crit_edge, label %if.end36.land.lhs.true_crit_edge

if.end36.land.lhs.true_crit_edge:                 ; preds = %if.end36
  br label %land.lhs.true

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then69.land.lhs.true_crit_edge, %if.end36.land.lhs.true_crit_edge
  %call58 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call58, %add.i
  br i1 %cmp3.i, label %if.then61, label %if.then69

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !170
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %for.end

if.then69:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !170
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %and = and i32 %27, 67108864
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.then69.for.end_crit_edge, label %if.then69.land.lhs.true_crit_edge

if.then69.land.lhs.true_crit_edge:                ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then69.for.end_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then69.for.end_crit_edge, %if.then61, %if.end36.for.end_crit_edge
  %pllen.0 = phi i32 [ %23, %if.then61 ], [ %19, %if.end36.for.end_crit_edge ], [ %27, %if.then69.for.end_crit_edge ]
  %and72 = and i32 %pllen.0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.8) #11
  br label %clk_disable

if.end80:                                         ; preds = %for.end
  %switch_setup = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %switch_setup to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %switch_setup, align 4
  %call.i350 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i350, null
  br i1 %cmp.not5.i, label %if.end80.of_get_child_count.exit_crit_edge, label %if.end80.for.body.i_crit_edge

if.end80.for.body.i_crit_edge:                    ; preds = %if.end80
  br label %for.body.i

if.end80.of_get_child_count.exit_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end80.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end80.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i351, %for.body.i.for.body.i_crit_edge ], [ %call.i350, %if.end80.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i351 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i351, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end80.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end80.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  %nphys = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %nphys to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %num.0.lcssa.i, ptr %nphys, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i, i32 4) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !172

devm_kcalloc.exit.thread:                         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  %phys365 = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %phys365 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %phys365, align 4
  br label %clk_disable

devm_kcalloc.exit:                                ; preds = %of_get_child_count.exit
  %35 = extractvalue { i32, i1 } %32, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %35, i32 noundef 3520) #8
  %phys = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool85.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool85.not, label %devm_kcalloc.exit.clk_disable_crit_edge, label %if.end87

devm_kcalloc.exit.clk_disable_crit_edge:          ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable

if.end87:                                         ; preds = %devm_kcalloc.exit
  %call88 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  %vdda1v1 = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %vdda1v1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call88, ptr %vdda1v1, align 4
  %cmp.i352 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i352, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call88 to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %38, ptr noundef nonnull @.str.12) #8
  br label %clk_disable

if.end95:                                         ; preds = %if.end87
  %call96 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %vdda1v8 = getelementptr inbounds %struct.stm32_usbphyc, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %vdda1v8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call96, ptr %vdda1v8, align 4
  %cmp.i353 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %if.then99, label %if.end103

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call96 to i32
  %call102 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %40, ptr noundef nonnull @.str.14) #8
  br label %clk_disable

if.end103:                                        ; preds = %if.end95
  %call104 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp106.not384 = icmp eq ptr %call104, null
  br i1 %cmp106.not384, label %if.end103.for.end167_crit_edge, label %if.end103.for.body_crit_edge

if.end103.for.body_crit_edge:                     ; preds = %if.end103
  br label %for.body

if.end103.for.end167_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end103.for.body_crit_edge
  %child.0386 = phi ptr [ %call166, %for.inc.for.body_crit_edge ], [ %call104, %if.end103.for.body_crit_edge ]
  %port.0385 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end103.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %41 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %index, align 4, !annotation !173
  %call107 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0386, ptr noundef nonnull @stm32_usbphyc_phy_ops) #8
  %cmp.i354 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i354, label %if.then109, label %if.end117

if.then109:                                       ; preds = %for.body
  %cmp111.not = icmp eq ptr %call107, inttoptr (i32 -517 to ptr)
  br i1 %cmp111.not, label %if.then109.put_child_crit_edge, label %do.end115

if.then109.put_child_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

do.end115:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call107 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %port.0385, i32 noundef %42) #11
  br label %put_child

if.end117:                                        ; preds = %for.body
  %call.i355 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #8
  %tobool119.not = icmp eq ptr %call.i355, null
  br i1 %tobool119.not, label %if.end117.put_child_crit_edge, label %if.end121

if.end117.put_child_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.end121:                                        ; preds = %if.end117
  %call.i.i356 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.18, ptr noundef nonnull %index, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i356)
  %tobool123.not = icmp sgt i32 %call.i.i356, -1
  br i1 %tobool123.not, label %lor.lhs.false, label %if.end121.do.end129_crit_edge

if.end121.do.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

lor.lhs.false:                                    ; preds = %if.end121
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  %45 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp125 = icmp ugt i32 %44, %46
  br i1 %cmp125, label %lor.lhs.false.do.end129_crit_edge, label %if.end131

lor.lhs.false.do.end129_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end129

do.end129:                                        ; preds = %lor.lhs.false.do.end129_crit_edge, %if.end121.do.end129_crit_edge
  %47 = call i32 @llvm.smin.i32(i32 %call.i.i356, i32 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call107, ptr noundef nonnull @.str.20, i32 noundef %47) #11
  br label %put_child

if.end131:                                        ; preds = %lor.lhs.false
  %48 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %49, i32 %port.0385
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i355, ptr %arrayidx, align 4
  %attrs.i = getelementptr inbounds %struct.phy, ptr %call107, i32 0, i32 6
  %51 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %attrs.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call107, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i355, ptr %driver_data.i.i, align 4
  %53 = load ptr, ptr %phys, align 4
  %arrayidx134 = getelementptr ptr, ptr %53, i32 %port.0385
  %54 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx134, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call107, ptr %55, align 4
  %57 = load ptr, ptr %phys, align 4
  %arrayidx137 = getelementptr ptr, ptr %57, i32 %port.0385
  %58 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx137, align 4
  %usbphyc138 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %usbphyc138 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %usbphyc138, align 4
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index, align 4
  %63 = load ptr, ptr %phys, align 4
  %arrayidx140 = getelementptr ptr, ptr %63, i32 %port.0385
  %64 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx140, align 4
  %index141 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %index141 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %62, ptr %index141, align 4
  %67 = load ptr, ptr %phys, align 4
  %arrayidx143 = getelementptr ptr, ptr %67, i32 %port.0385
  %68 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx143, align 4
  %active = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %active, align 4
  %call145 = call ptr @devm_regulator_get_optional(ptr noundef %call107, ptr noundef nonnull @.str.22) #8
  %71 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phys, align 4
  %arrayidx147 = getelementptr ptr, ptr %72, i32 %port.0385
  %73 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx147, align 4
  %vbus = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call145, ptr %vbus, align 4
  %76 = load ptr, ptr %phys, align 4
  %arrayidx149 = getelementptr ptr, ptr %76, i32 %port.0385
  %77 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx149, align 4
  %vbus150 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %vbus150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vbus150, align 4
  %cmp.i357 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i357, label %if.then152, label %if.end131.if.end163_crit_edge

if.end131.if.end163_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then152:                                       ; preds = %if.end131
  %cmp157 = icmp eq ptr %80, inttoptr (i32 -517 to ptr)
  br i1 %cmp157, label %if.then152.put_child_crit_edge, label %if.end159

if.then152.put_child_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_child

if.end159:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %vbus150 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %vbus150, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.end159, %if.end131.if.end163_crit_edge
  %82 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index, align 4
  %84 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phys, align 4
  %arrayidx.i = getelementptr ptr, ptr %85, i32 %83
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 4
  %mul.i = shl i32 %83, 8
  %add.i358 = add i32 %mul.i, 268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %88 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %val.i, align 4, !annotation !173
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %90, i32 %add.i358
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !170
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.42, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %92 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %92, label %if.end163.do.end42.i_crit_edge [
    i32 -22, label %if.end163.if.end44.i_crit_edge
    i32 0, label %land.lhs.true.i
  ]

if.end163.if.end44.i_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.end163.do.end42.i_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

land.lhs.true.i:                                  ; preds = %if.end163
  %94 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %val.i, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %95, label %land.lhs.true.i.do.end42.i_crit_edge [
    i32 1000, label %land.lhs.true.i.if.then17.i_crit_edge
    i32 2000, label %land.lhs.true.i.if.then17.i_crit_edge443
  ]

land.lhs.true.i.if.then17.i_crit_edge443:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

land.lhs.true.i.if.then17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

land.lhs.true.i.do.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

if.then17.i:                                      ; preds = %land.lhs.true.i.if.then17.i_crit_edge, %land.lhs.true.i.if.then17.i_crit_edge443
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %95)
  %cmp18.i = icmp eq i32 %95, 2000
  %cond.i = zext i1 %cmp18.i to i32
  %97 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond.i, ptr %val.i, align 4
  %or.i = select i1 %cmp18.i, i32 3, i32 1
  %tune.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %98 = ptrtoint ptr %tune.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tune.i, align 4
  %or39.i = or i32 %99, %or.i
  store i32 %or39.i, ptr %tune.i, align 4
  br label %if.end44.i

do.end42.i:                                       ; preds = %land.lhs.true.i.do.end42.i_crit_edge, %if.end163.do.end42.i_crit_edge
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.43, i32 noundef %83) #11
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end42.i, %if.then17.i, %if.end163.if.end44.i_crit_edge
  %call.i.i359 = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.45, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i359, null
  br i1 %tobool.i.not.i, label %if.then46.i, label %if.end44.i.if.end49.i_crit_edge

if.end44.i.if.end49.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune47.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %102 = ptrtoint ptr %tune47.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tune47.i, align 4
  %or48.i = or i32 %103, 4
  store i32 %or48.i, ptr %tune47.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end44.i.if.end49.i_crit_edge
  %call.i395.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.46, ptr noundef null) #8
  %tobool.i396.not.i = icmp eq ptr %call.i395.i, null
  br i1 %tobool.i396.not.i, label %if.end49.i.if.end54.i_crit_edge, label %if.then51.i

if.end49.i.if.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune52.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %104 = ptrtoint ptr %tune52.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tune52.i, align 4
  %or53.i = or i32 %105, 8
  store i32 %or53.i, ptr %tune52.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.end49.i.if.end54.i_crit_edge
  %call.i.i397.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %106 = call i32 @llvm.smin.i32(i32 %call.i.i397.i, i32 0) #8
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %106, label %if.end54.i.do.end103.i_crit_edge [
    i32 -22, label %if.end54.i.if.end106.i_crit_edge
    i32 0, label %land.lhs.true59.i
  ]

if.end54.i.if.end106.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i

if.end54.i.do.end103.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103.i

land.lhs.true59.i:                                ; preds = %if.end54.i
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %cmp60.i = icmp ult i32 %109, 4
  br i1 %cmp60.i, label %if.then61.i, label %land.lhs.true59.i.do.end103.i_crit_edge

land.lhs.true59.i.do.end103.i_crit_edge:          ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103.i

if.then61.i:                                      ; preds = %land.lhs.true59.i
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %109, label %if.then68.i [
    i32 3, label %if.then63.i
    i32 0, label %if.then61.i.if.end106.i_crit_edge
  ]

if.then61.i.if.end106.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106.i

if.then63.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune64.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %111 = ptrtoint ptr %tune64.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tune64.i, align 4
  %or65.i = or i32 %112, 16
  store i32 %or65.i, ptr %tune64.i, align 4
  br label %if.end106.i

if.then68.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp69.i = icmp eq i32 %109, 2
  %cond70.i = zext i1 %cmp69.i to i32
  %113 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond70.i, ptr %val.i, align 4
  %or95.i = select i1 %cmp69.i, i32 96, i32 64
  %tune96.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %114 = ptrtoint ptr %tune96.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tune96.i, align 4
  %or97.i = or i32 %115, %or95.i
  store i32 %or97.i, ptr %tune96.i, align 4
  br label %if.end106.i

do.end103.i:                                      ; preds = %land.lhs.true59.i.do.end103.i_crit_edge, %if.end54.i.do.end103.i_crit_edge
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.49, i32 noundef %83) #11
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.end103.i, %if.then68.i, %if.then63.i, %if.then61.i.if.end106.i_crit_edge, %if.end54.i.if.end106.i_crit_edge
  %call.i398.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.51, ptr noundef null) #8
  %tobool.i399.not.i = icmp eq ptr %call.i398.i, null
  br i1 %tobool.i399.not.i, label %if.end106.i.if.end111.i_crit_edge, label %if.then108.i

if.end106.i.if.end111.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune109.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %118 = ptrtoint ptr %tune109.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tune109.i, align 4
  %or110.i = or i32 %119, 128
  store i32 %or110.i, ptr %tune109.i, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end106.i.if.end111.i_crit_edge
  %call.i400.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.52, ptr noundef null) #8
  %tobool.i401.not.i = icmp eq ptr %call.i400.i, null
  br i1 %tobool.i401.not.i, label %if.end111.i.if.end116.i_crit_edge, label %if.then113.i

if.end111.i.if.end116.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

if.then113.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune114.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %120 = ptrtoint ptr %tune114.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tune114.i, align 4
  %or115.i = or i32 %121, 256
  store i32 %or115.i, ptr %tune114.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then113.i, %if.end111.i.if.end116.i_crit_edge
  %call.i.i402.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.53, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %122 = call i32 @llvm.smin.i32(i32 %call.i.i402.i, i32 0) #8
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %122, label %if.end116.i.do.end153.i_crit_edge [
    i32 -22, label %if.end116.i.if.end156.i_crit_edge
    i32 0, label %land.lhs.true121.i
  ]

if.end116.i.if.end156.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156.i

if.end116.i.do.end153.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153.i

land.lhs.true121.i:                               ; preds = %if.end116.i
  %124 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %125)
  %cmp122.i = icmp ult i32 %125, 16
  br i1 %cmp122.i, label %do.end144.i, label %land.lhs.true121.i.do.end153.i_crit_edge

land.lhs.true121.i.do.end153.i_crit_edge:         ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153.i

do.end144.i:                                      ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl146.i = shl nuw nsw i32 %125, 9
  %and147.i = and i32 %shl146.i, 7680
  %tune148.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %126 = ptrtoint ptr %tune148.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tune148.i, align 4
  %or149.i = or i32 %127, %and147.i
  store i32 %or149.i, ptr %tune148.i, align 4
  br label %if.end156.i

do.end153.i:                                      ; preds = %land.lhs.true121.i.do.end153.i_crit_edge, %if.end116.i.do.end153.i_crit_edge
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.55, i32 noundef %83) #11
  br label %if.end156.i

if.end156.i:                                      ; preds = %do.end153.i, %do.end144.i, %if.end116.i.if.end156.i_crit_edge
  %call.i.i403.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.57, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %130 = call i32 @llvm.smin.i32(i32 %call.i.i403.i, i32 0) #8
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %130, label %if.end156.i.do.end193.i_crit_edge [
    i32 -22, label %if.end156.i.if.end196.i_crit_edge
    i32 0, label %land.lhs.true161.i
  ]

if.end156.i.if.end196.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196.i

if.end156.i.do.end193.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end193.i

land.lhs.true161.i:                               ; preds = %if.end156.i
  %132 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %133)
  %cmp162.i = icmp ult i32 %133, 4
  br i1 %cmp162.i, label %do.end184.i, label %land.lhs.true161.i.do.end193.i_crit_edge

land.lhs.true161.i.do.end193.i_crit_edge:         ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end193.i

do.end184.i:                                      ; preds = %land.lhs.true161.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl186.i = shl nuw nsw i32 %133, 13
  %and187.i = and i32 %shl186.i, 24576
  %tune188.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %134 = ptrtoint ptr %tune188.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tune188.i, align 4
  %or189.i = or i32 %135, %and187.i
  store i32 %or189.i, ptr %tune188.i, align 4
  br label %if.end196.i

do.end193.i:                                      ; preds = %land.lhs.true161.i.do.end193.i_crit_edge, %if.end156.i.do.end193.i_crit_edge
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.59, i32 noundef %83) #11
  br label %if.end196.i

if.end196.i:                                      ; preds = %do.end193.i, %do.end184.i, %if.end156.i.if.end196.i_crit_edge
  %call.i.i404.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.61, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %138 = call i32 @llvm.smin.i32(i32 %call.i.i404.i, i32 0) #8
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %138, label %if.end196.i.do.end233.i_crit_edge [
    i32 -22, label %if.end196.i.if.end236.i_crit_edge
    i32 0, label %land.lhs.true201.i
  ]

if.end196.i.if.end236.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236.i

if.end196.i.do.end233.i_crit_edge:                ; preds = %if.end196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end233.i

land.lhs.true201.i:                               ; preds = %if.end196.i
  %140 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %cmp202.i = icmp ult i32 %141, 4
  br i1 %cmp202.i, label %do.end224.i, label %land.lhs.true201.i.do.end233.i_crit_edge

land.lhs.true201.i.do.end233.i_crit_edge:         ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end233.i

do.end224.i:                                      ; preds = %land.lhs.true201.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl226.i = shl nuw nsw i32 %141, 20
  %and227.i = and i32 %shl226.i, 3145728
  %tune228.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %142 = ptrtoint ptr %tune228.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tune228.i, align 4
  %or229.i = or i32 %143, %and227.i
  store i32 %or229.i, ptr %tune228.i, align 4
  br label %if.end236.i

do.end233.i:                                      ; preds = %land.lhs.true201.i.do.end233.i_crit_edge, %if.end196.i.do.end233.i_crit_edge
  %144 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %145, ptr noundef nonnull @.str.63, i32 noundef %83) #11
  br label %if.end236.i

if.end236.i:                                      ; preds = %do.end233.i, %do.end224.i, %if.end196.i.if.end236.i_crit_edge
  %call.i405.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.65, ptr noundef null) #8
  %tobool.i406.not.i = icmp eq ptr %call.i405.i, null
  br i1 %tobool.i406.not.i, label %if.end236.i.if.end241.i_crit_edge, label %if.then238.i

if.end236.i.if.end241.i_crit_edge:                ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end241.i

if.then238.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune239.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %146 = ptrtoint ptr %tune239.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tune239.i, align 4
  %or240.i = or i32 %147, 4194304
  store i32 %or240.i, ptr %tune239.i, align 4
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.then238.i, %if.end236.i.if.end241.i_crit_edge
  %call.i.i407.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.66, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #8
  %148 = call i32 @llvm.smin.i32(i32 %call.i.i407.i, i32 0) #8
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %148, label %if.end241.i.do.end278.i_crit_edge [
    i32 -22, label %if.end241.i.if.end281.i_crit_edge
    i32 0, label %land.lhs.true246.i
  ]

if.end241.i.if.end281.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281.i

if.end241.i.do.end278.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end278.i

land.lhs.true246.i:                               ; preds = %if.end241.i
  %150 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp247.i = icmp ult i32 %151, 4
  br i1 %cmp247.i, label %do.end269.i, label %land.lhs.true246.i.do.end278.i_crit_edge

land.lhs.true246.i.do.end278.i_crit_edge:         ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end278.i

do.end269.i:                                      ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl271.i = shl nuw nsw i32 %151, 23
  %and272.i = and i32 %shl271.i, 25165824
  %tune273.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %152 = ptrtoint ptr %tune273.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tune273.i, align 4
  %or274.i = or i32 %153, %and272.i
  store i32 %or274.i, ptr %tune273.i, align 4
  br label %if.end281.i

do.end278.i:                                      ; preds = %land.lhs.true246.i.do.end278.i_crit_edge, %if.end241.i.do.end278.i_crit_edge
  %154 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.68, i32 noundef %83) #11
  br label %if.end281.i

if.end281.i:                                      ; preds = %do.end278.i, %do.end269.i, %if.end241.i.if.end281.i_crit_edge
  %call.i408.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.70, ptr noundef null) #8
  %tobool.i409.not.i = icmp eq ptr %call.i408.i, null
  br i1 %tobool.i409.not.i, label %if.end281.i.if.end286.i_crit_edge, label %if.then283.i

if.end281.i.if.end286.i_crit_edge:                ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286.i

if.then283.i:                                     ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune284.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %156 = ptrtoint ptr %tune284.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tune284.i, align 4
  %or285.i = or i32 %157, 33554432
  store i32 %or285.i, ptr %tune284.i, align 4
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.then283.i, %if.end281.i.if.end286.i_crit_edge
  %call.i410.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.71, ptr noundef null) #8
  %tobool.i411.not.i = icmp eq ptr %call.i410.i, null
  br i1 %tobool.i411.not.i, label %if.then288.i, label %if.end286.i.if.end291.i_crit_edge

if.end286.i.if.end291.i_crit_edge:                ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291.i

if.then288.i:                                     ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune289.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %158 = ptrtoint ptr %tune289.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tune289.i, align 4
  %or290.i = or i32 %159, 67108864
  store i32 %or290.i, ptr %tune289.i, align 4
  br label %if.end291.i

if.end291.i:                                      ; preds = %if.then288.i, %if.end286.i.if.end291.i_crit_edge
  %call.i412.i = call ptr @of_find_property(ptr noundef nonnull %child.0386, ptr noundef nonnull @.str.72, ptr noundef null) #8
  %tobool.i413.not.i = icmp eq ptr %call.i412.i, null
  br i1 %tobool.i413.not.i, label %if.end291.i.for.inc_crit_edge, label %if.then293.i

if.end291.i.for.inc_crit_edge:                    ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then293.i:                                     ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #10
  %tune294.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %160 = ptrtoint ptr %tune294.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tune294.i, align 4
  %or295.i = or i32 %161, 134217728
  store i32 %or295.i, ptr %tune294.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then293.i, %if.end291.i.for.inc_crit_edge
  %162 = and i32 %91, 8392448
  %163 = call i32 @llvm.bswap.i32(i32 %162) #8
  %tune321.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %87, i32 0, i32 5
  %164 = ptrtoint ptr %tune321.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tune321.i, align 4
  %or322.i = or i32 %165, %163
  store i32 %or322.i, ptr %tune321.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %or322.i) #8
  %167 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base, align 4
  %add.ptr325.i = getelementptr i8, ptr %168, i32 %add.i358
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr325.i, i32 %166) #8, !srcloc !171
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %inc = add i32 %port.0385, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  %call166 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.0386) #8
  %cmp106.not = icmp eq ptr %call166, null
  br i1 %cmp106.not, label %for.inc.for.end167_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end167_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end167

for.end167:                                       ; preds = %for.inc.for.end167_crit_edge, %if.end103.for.end167_crit_edge
  %call168 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @stm32_usbphyc_of_xlate) #8
  %cmp.i360 = icmp ugt ptr %call168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i360, label %if.then170, label %if.end175

if.then170:                                       ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %call168 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %169) #11
  br label %clk_disable

if.end175:                                        ; preds = %for.end167
  %call176 = call fastcc i32 @stm32_usbphyc_clk48_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end182, label %do.end181

do.end181:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call176) #11
  br label %clk_disable

if.end182:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base, align 4
  %add.ptr185 = getelementptr i8, ptr %171, i32 1012
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #8, !srcloc !170
  %173 = call i32 @llvm.bswap.i32(i32 %172)
  %and207 = lshr i32 %173, 4
  %shr208 = and i32 %and207, 15
  %and225 = and i32 %173, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %shr208, i32 noundef %and225) #11
  br label %cleanup228

put_child:                                        ; preds = %if.then152.put_child_crit_edge, %do.end129, %if.end117.put_child_crit_edge, %do.end115, %if.then109.put_child_crit_edge
  %ret.1.ph = phi i32 [ -517, %if.then109.put_child_crit_edge ], [ %42, %do.end115 ], [ %47, %do.end129 ], [ -517, %if.then152.put_child_crit_edge ], [ -12, %if.end117.put_child_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @of_node_put(ptr noundef nonnull %child.0386) #8
  br label %clk_disable

clk_disable:                                      ; preds = %put_child, %do.end181, %if.then170, %if.then99, %if.then91, %devm_kcalloc.exit.clk_disable_crit_edge, %devm_kcalloc.exit.thread, %do.end78, %if.else.clk_disable_crit_edge
  %ret.2 = phi i32 [ -517, %if.else.clk_disable_crit_edge ], [ -517, %do.end78 ], [ %call94, %if.then91 ], [ %call102, %if.then99 ], [ %ret.1.ph, %put_child ], [ %169, %if.then170 ], [ %call176, %do.end181 ], [ -12, %devm_kcalloc.exit.clk_disable_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %174 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %175) #8
  call void @clk_unprepare(ptr noundef %175) #8
  br label %cleanup228

cleanup228:                                       ; preds = %clk_disable, %if.end182, %do.end, %if.then13, %if.then6, %entry.cleanup228_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %call16, %if.then13 ], [ %retval.0.i.ph, %do.end ], [ %ret.2, %clk_disable ], [ 0, %if.end182 ], [ -12, %entry.cleanup228_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nphys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %port.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %active = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %usbphyc1.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %usbphyc1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbphyc1.i, align 4
  %active.i = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %active.i, align 4
  %n_pll_cons.i.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %15, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons.i.i, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons.i.i, ptr %n_pll_cons.i.i, i32 1, ptr elementtype(i32) %n_pll_cons.i.i) #8, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.for.inc_crit_edge, label %if.end.i.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %15) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %port.012, 1
  %18 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nphys, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %23) #8
  %clk48_hw.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 9
  tail call void @clk_hw_unregister(ptr noundef %clk48_hw.i) #8
  %clk = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #8
  tail call void @clk_unprepare(ptr noundef %25) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_usbphyc_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %nphys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp72 = icmp sgt i32 %5, 0
  br i1 %cmp72, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %phys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %port.073, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %port.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %7, i32 %port.073
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %cmp2 = icmp eq ptr %3, %13
  br i1 %cmp2, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end7

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #11
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %index = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %15, label %if.end7.if.end40_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true12
  ]

if.end7.if.end40_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end7
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %17 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.not = icmp eq i32 %18, 0
  br i1 %cmp9.not, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true.do.end18_crit_edge

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true12:                                  ; preds = %if.end7
  %args_count13 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %19 = ptrtoint ptr %args_count13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %args_count13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp14.not = icmp eq i32 %20, 1
  br i1 %cmp14.not, label %if.then24, label %land.lhs.true12.do.end18_crit_edge

land.lhs.true12.do.end18_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %land.lhs.true12.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %15) #11
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true12
  %switch_setup = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %switch_setup to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %switch_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp25 = icmp slt i32 %22, 0
  %args27 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %23 = ptrtoint ptr %args27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %args27, align 4
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %base.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %28 = and i32 %27, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #8, !srcloc !171
  br label %stm32_usbphyc_switch_setup.exit

if.else.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %29 = or i32 %27, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #8, !srcloc !171
  br label %stm32_usbphyc_switch_setup.exit

stm32_usbphyc_switch_setup.exit:                  ; preds = %if.else.i, %if.then.i
  %30 = ptrtoint ptr %switch_setup to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %24, ptr %switch_setup, align 4
  br label %if.end40

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp32.not = icmp eq i32 %24, %22
  br i1 %cmp32.not, label %if.else.if.end40_crit_edge, label %do.end36

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79) #11
  br label %cleanup

if.end40:                                         ; preds = %if.else.if.end40_crit_edge, %stm32_usbphyc_switch_setup.exit, %land.lhs.true.if.end40_crit_edge, %if.end7.if.end40_crit_edge
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end36, %do.end18, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end18 ], [ %32, %if.end40 ], [ inttoptr (i32 -16 to ptr), %do.end36 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usbphyc_clk48_register(ptr noundef %usbphyc) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usbphyc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbphyc, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %4 = getelementptr inbounds i8, ptr %init, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.81, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @usbphyc_clk48_ops, ptr %ops, align 4
  %clk48_hw = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 9
  %init1 = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %init1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init1, align 4
  %call = call i32 @clk_hw_register(ptr noundef %1, ptr noundef %clk48_hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @of_clk_add_hw_provider(ptr noundef %3, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %clk48_hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_hw_unregister(ptr noundef %clk48_hw) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usbphyc1 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usbphyc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbphyc1, align 4
  %index = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %mul = shl i32 %5, 8
  %add = add i32 %mul, 264
  %call14 = tail call fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268369920) #8, !srcloc !171
  %call15 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call15, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 349) #8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr2986 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2986) #8, !srcloc !170
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and87 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool32.not88 = icmp eq i32 %and87, 0
  br i1 %tobool32.not88, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then47.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call36 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call36, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call36, %add.i
  br i1 %cmp3.i, label %if.then39, label %if.then47

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #8, !srcloc !170
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  br label %for.end

if.then47:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !170
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and = and i32 %19, 8
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then47.land.lhs.true_crit_edge, label %if.then47.for.end_crit_edge

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then47.land.lhs.true_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then47.for.end_crit_edge, %if.then39, %if.end.for.end_crit_edge
  %monout.0 = phi i32 [ %15, %if.then39 ], [ %11, %if.end.for.end_crit_edge ], [ %19, %if.then47.for.end_crit_edge ]
  %and51 = and i32 %monout.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %for.end
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %and58 = and i32 %monout.0, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33, i32 noundef %and58) #11
  %n_pll_cons.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons.i, ptr %n_pll_cons.i, i32 1, ptr elementtype(i32) %n_pll_cons.i) #8, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i83 = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i83, label %do.end57.cleanup_crit_edge, label %if.end.i

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %3) #8
  br label %cleanup

if.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end.i, %do.end57.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %call14, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ 0, %do.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usbphyc1 = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usbphyc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbphyc1, align 4
  %active = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %active, align 4
  %n_pll_cons.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %3, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons.i, ptr %n_pll_cons.i, i32 1, ptr elementtype(i32) %n_pll_cons.i) #8, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %entry.stm32_usbphyc_pll_disable.exit_crit_edge, label %if.end.i

entry.stm32_usbphyc_pll_disable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_usbphyc_pll_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %3) #8
  br label %stm32_usbphyc_pll_disable.exit

stm32_usbphyc_pll_disable.exit:                   ; preds = %if.end.i, %entry.stm32_usbphyc_pll_disable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.stm32_usbphyc_pll_disable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %usbphyc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %n_pll_cons = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons, ptr %n_pll_cons, i32 1, ptr elementtype(i32) %n_pll_cons) #8, !srcloc !179
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 2
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.end
  %5 = ptrtoint ptr %usbphyc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbphyc, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.35) #11
  %call5 = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %usbphyc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %do.end.dec_n_pll_cons_crit_edge

do.end.dec_n_pll_cons_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_n_pll_cons

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %vdda1v1.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 6
  %7 = ptrtoint ptr %vdda1v1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdda1v1.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.dec_n_pll_cons_crit_edge

if.end9.dec_n_pll_cons_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_n_pll_cons

if.end.i:                                         ; preds = %if.end9
  %vdda1v8.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 7
  %9 = ptrtoint ptr %vdda1v8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdda1v8.i, align 4
  %call1.i = tail call i32 @regulator_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.end.i.dec_n_pll_cons.sink.split_crit_edge

if.end.i.dec_n_pll_cons.sink.split_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_n_pll_cons.sink.split

if.end13:                                         ; preds = %if.end.i
  %call14 = tail call fastcc i32 @stm32_usbphyc_pll_init(ptr noundef %usbphyc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %reg_disable

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %12 = or i32 %11, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %12) #8, !srcloc !171
  br label %cleanup

reg_disable:                                      ; preds = %if.end13
  %13 = ptrtoint ptr %vdda1v8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdda1v8.i, align 4
  %call.i36 = tail call i32 @regulator_disable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %reg_disable.dec_n_pll_cons.sink.split_crit_edge, label %reg_disable.dec_n_pll_cons_crit_edge

reg_disable.dec_n_pll_cons_crit_edge:             ; preds = %reg_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_n_pll_cons

reg_disable.dec_n_pll_cons.sink.split_crit_edge:  ; preds = %reg_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_n_pll_cons.sink.split

dec_n_pll_cons.sink.split:                        ; preds = %reg_disable.dec_n_pll_cons.sink.split_crit_edge, %if.end.i.dec_n_pll_cons.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call1.i, %if.end.i.dec_n_pll_cons.sink.split_crit_edge ], [ %call14, %reg_disable.dec_n_pll_cons.sink.split_crit_edge ]
  %15 = ptrtoint ptr %vdda1v1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdda1v1.i, align 4
  %call6.i = tail call i32 @regulator_disable(ptr noundef %16) #8
  br label %dec_n_pll_cons

dec_n_pll_cons:                                   ; preds = %dec_n_pll_cons.sink.split, %reg_disable.dec_n_pll_cons_crit_edge, %if.end9.dec_n_pll_cons_crit_edge, %do.end.dec_n_pll_cons_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.dec_n_pll_cons_crit_edge ], [ %call14, %reg_disable.dec_n_pll_cons_crit_edge ], [ %call.i, %if.end9.dec_n_pll_cons_crit_edge ], [ %ret.0.ph, %dec_n_pll_cons.sink.split ]
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons, ptr %n_pll_cons, i32 1, ptr elementtype(i32) %n_pll_cons) #8, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %dec_n_pll_cons, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dec_n_pll_cons ], [ 0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__stm32_usbphyc_pll_disable(ptr nocapture noundef readonly %usbphyc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %3 = and i32 %2, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #8, !srcloc !171
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 270) #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not45 = icmp eq i32 %5, 0
  br i1 %tobool.not45, label %entry.if.end31_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %7 = and i32 %6, 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then21.if.end31_crit_edge, label %if.then21.land.lhs.true_crit_edge

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.end:                                          ; preds = %land.lhs.true
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !170
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool25.not = icmp eq i32 %9, 0
  br i1 %tobool25.not, label %for.end.if.end31_crit_edge, label %do.end30

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %usbphyc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usbphyc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %for.end.if.end31_crit_edge, %if.then21.if.end31_crit_edge, %entry.if.end31_crit_edge
  %vdda1v8.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 7
  %12 = ptrtoint ptr %vdda1v8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdda1v8.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.stm32_usbphyc_regulators_disable.exit_crit_edge

if.end31.stm32_usbphyc_regulators_disable.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_usbphyc_regulators_disable.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %vdda1v1.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 6
  %14 = ptrtoint ptr %vdda1v1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdda1v1.i, align 4
  %call1.i = tail call i32 @regulator_disable(ptr noundef %15) #8
  br label %stm32_usbphyc_regulators_disable.exit

stm32_usbphyc_regulators_disable.exit:            ; preds = %if.end.i, %if.end31.stm32_usbphyc_regulators_disable.exit_crit_edge
  %retval.0.i42 = phi i32 [ %call.i, %if.end31.stm32_usbphyc_regulators_disable.exit_crit_edge ], [ %call1.i, %if.end.i ]
  ret i32 %retval.0.i42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_usbphyc_pll_init(ptr nocapture noundef readonly %usbphyc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #8
  %2 = add i32 %call, -38400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19200001, i32 %2)
  %3 = icmp ult i32 %2, -19200001
  br i1 %3, label %do.end, label %if.else400.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %usbphyc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbphyc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %call) #11
  br label %cleanup

if.else400.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl nuw nsw i32 %call, 1
  %div173.i = udiv i32 -1414967296, %mul.i
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 188743680000000) #12, !srcloc !182
  %asmresult1.i593.i = extractvalue { i64, i64 } %6, 1
  %extract.t125 = trunc i64 %asmresult1.i593.i to i16
  %7 = and i32 %div173.i, 127
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %extract.t125)
  %tobool54.not = icmp eq i16 %extract.t125, 0
  %8 = trunc i64 %asmresult1.i593.i to i32
  %conv50 = shl i32 %8, 10
  %shl51 = and i32 %conv50, 67107840
  %or56 = or i32 %shl51, 536870912
  %or57 = select i1 %tobool54.not, i32 0, i32 %or56
  %or = or i32 %or57, %7
  %usbphyc_pll.0 = or i32 %or, -805306368
  %9 = tail call i32 @llvm.bswap.i32(i32 %usbphyc_pll.0)
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %usbphyc, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_usbphyc_pll_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_usbphyc_pll_init, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !183

if.then65:                                        ; preds = %if.else400.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %usbphyc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbphyc, align 4
  %and100 = lshr exact i32 %or57, 10
  %shr101 = and i32 %and100, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_usbphyc_pll_init.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.41, i32 noundef %call, i32 noundef %7, i32 noundef %shr101) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.else400.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then65 ], [ 0, %if.else400.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_clk48_prepare(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -36
  %call = tail call fastcc i32 @stm32_usbphyc_pll_enable(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_usbphyc_clk48_unprepare(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pll_cons.i = getelementptr i8, ptr %hw, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_pll_cons.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %n_pll_cons.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_pll_cons.i, ptr %n_pll_cons.i, i32 1, ptr elementtype(i32) %n_pll_cons.i) #8, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %entry.stm32_usbphyc_pll_disable.exit_crit_edge, label %if.end.i

entry.stm32_usbphyc_pll_disable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_usbphyc_pll_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %hw, i32 -36
  %call1.i = tail call fastcc i32 @__stm32_usbphyc_pll_disable(ptr noundef %add.ptr) #8
  br label %stm32_usbphyc_pll_disable.exit

stm32_usbphyc_pll_disable.exit:                   ; preds = %if.end.i, %entry.stm32_usbphyc_pll_disable.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_usbphyc_clk48_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 48000000
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_usbphyc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %switch_setup = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %switch_setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %switch_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %base.i = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !171
  br label %stm32_usbphyc_switch_setup.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = or i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !171
  br label %stm32_usbphyc_switch_setup.exit

stm32_usbphyc_switch_setup.exit:                  ; preds = %if.else.i, %if.then.i
  %9 = ptrtoint ptr %switch_setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %switch_setup, align 4
  br label %if.end

if.end:                                           ; preds = %stm32_usbphyc_switch_setup.exit, %entry.if.end_crit_edge
  %nphys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nphys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp211 = icmp sgt i32 %11, 0
  br i1 %cmp211, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %phys = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 4
  %base = getelementptr inbounds %struct.stm32_usbphyc, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %port.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %port.012
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tune = getelementptr inbounds %struct.stm32_usbphyc_phy, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %tune to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tune, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %mul = shl i32 %port.012, 8
  %add = add i32 %mul, 268
  %add.ptr = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !171
  %inc = add nuw nsw i32 %port.012, 1
  %21 = ptrtoint ptr %nphys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nphys, align 4
  %cmp2 = icmp slt i32 %inc, %22
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125, !126, !128, !130, !132, !133, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_phy_stm32_usbphyc__365_816_stm32_usbphyc_driver_init6, !1, !"__initcall__kmod_phy_stm32_usbphyc__365_816_stm32_usbphyc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 816, i32 1}
!2 = !{ptr @__exitcall_stm32_usbphyc_driver_exit, !1, !"__exitcall_stm32_usbphyc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description366, !4, !"__UNIQUE_ID_description366", i1 false, i1 false}
!4 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 818, i32 1}
!5 = !{ptr @__UNIQUE_ID_author367, !6, !"__UNIQUE_ID_author367", i1 false, i1 false}
!6 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 819, i32 1}
!7 = !{ptr @__UNIQUE_ID_file368, !8, !"__UNIQUE_ID_file368", i1 false, i1 false}
!8 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 820, i32 1}
!9 = !{ptr @__UNIQUE_ID_license369, !8, !"__UNIQUE_ID_license369", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 812, i32 11}
!12 = !{ptr @stm32_usbphyc_driver, !13, !"stm32_usbphyc_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 807, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 632, i32 52}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 636, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_usbphyc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_usbphyc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 659, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_usbphyc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_usbphyc_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 673, i32 45}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 676, i32 9}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 680, i32 45}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 683, i32 9}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 696, i32 5}
!39 = !{ptr @stm32_usbphyc_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stm32_usbphyc_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 708, i32 37}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 710, i32 4}
!45 = !{ptr @stm32_usbphyc_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stm32_usbphyc_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 723, i32 70}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 741, i32 3}
!51 = !{ptr @stm32_usbphyc_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @stm32_usbphyc_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 747, i32 3}
!55 = !{ptr @stm32_usbphyc_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @stm32_usbphyc_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 752, i32 2}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm32_usbphyc_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32_usbphyc_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @stm32_usbphyc_phy_ops, !63, !"stm32_usbphyc_phy_ops", i1 false, i1 false}
!63 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 394, i32 29}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 351, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @stm32_usbphyc_phy_init._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @stm32_usbphyc_phy_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 303, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stm32_usbphyc_pll_enable._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @stm32_usbphyc_pll_enable._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 271, i32 3}
!76 = !{ptr @__stm32_usbphyc_pll_disable._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @__stm32_usbphyc_pll_disable._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 239, i32 3}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stm32_usbphyc_pll_init._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stm32_usbphyc_pll_init._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 255, i32 2}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @stm32_usbphyc_pll_init.__UNIQUE_ID_ddebug299, !84, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 468, i32 33}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 474, i32 4}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stm32_usbphyc_phy_tuning._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 478, i32 33}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 481, i32 32}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 484, i32 33}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 494, i32 4}
!102 = !{ptr @stm32_usbphyc_phy_tuning._entry.48, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr.50, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 498, i32 32}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 501, i32 32}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 504, i32 33}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 509, i32 4}
!112 = !{ptr @stm32_usbphyc_phy_tuning._entry.54, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr.56, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 512, i32 33}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 517, i32 4}
!118 = !{ptr @stm32_usbphyc_phy_tuning._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 520, i32 33}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 525, i32 4}
!124 = !{ptr @stm32_usbphyc_phy_tuning._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 528, i32 32}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 531, i32 33}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 536, i32 4}
!132 = !{ptr @stm32_usbphyc_phy_tuning._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @stm32_usbphyc_phy_tuning._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 539, i32 32}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 542, i32 33}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 545, i32 32}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 585, i32 3}
!142 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @stm32_usbphyc_of_xlate._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @stm32_usbphyc_of_xlate._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 591, i32 3}
!147 = !{ptr @stm32_usbphyc_of_xlate._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @stm32_usbphyc_of_xlate._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 602, i32 5}
!151 = !{ptr @stm32_usbphyc_of_xlate._entry.78, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @stm32_usbphyc_of_xlate._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 441, i32 14}
!155 = !{ptr @usbphyc_clk48_ops, !156, !"usbphyc_clk48_ops", i1 false, i1 false}
!156 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 421, i32 29}
!157 = !{ptr @stm32_usbphyc_of_match, !158, !"stm32_usbphyc_of_match", i1 false, i1 false}
!158 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 801, i32 34}
!159 = !{ptr @stm32_usbphyc_pm_ops, !160, !"stm32_usbphyc_pm_ops", i1 false, i1 false}
!160 = !{!"../drivers/phy/st/phy-stm32-usbphyc.c", i32 799, i32 8}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 4639784}
!171 = !{i64 4639366}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{!"auto-init"}
!174 = !{i8 0, i8 2}
!175 = !{i64 2148406166}
!176 = !{i64 2148320899, i64 2148320931, i64 2148320960, i64 2148320994, i64 2148321025, i64 2148321048}
!177 = !{i64 2148406395}
!178 = !{i64 2148403125}
!179 = !{i64 2148318434, i64 2148318466, i64 2148318495, i64 2148318529, i64 2148318560, i64 2148318583}
!180 = !{i64 2148403354}
!181 = !{i64 2148320179, i64 2148320205, i64 2148320234, i64 2148320268, i64 2148320299, i64 2148320322}
!182 = !{i64 2148680918, i64 2148681198, i64 2148681532, i64 2148681866}
!183 = !{i64 2148772199, i64 2148772204, i64 2148772217, i64 2148772261, i64 2148772295, i64 2148772316}
