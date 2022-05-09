; ModuleID = '/llk/IR_all_yes/drivers/phy/xilinx/phy-zynqmp.c_pt.bc'
source_filename = "../drivers/phy/xilinx/phy-zynqmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xpsgtr_ssc = type { i32, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.xpsgtr_dev = type { ptr, ptr, ptr, %struct.mutex, [4 x %struct.xpsgtr_phy], [4 x ptr], [4 x ptr], i8, i32, i32 }
%struct.xpsgtr_phy = type { ptr, i8, i8, i8, i8, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }

@__initcall__kmod_phy_zynqmp__292_1034_xpsgtr_driver_init6 = internal global ptr @xpsgtr_driver_init, section ".initcall6.init", align 4
@xpsgtr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xpsgtr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xpsgtr_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xpsgtr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xpsgtr_driver_exit = internal global ptr @xpsgtr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"phy_zynqmp.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [46 x i8] c"phy_zynqmp.file=drivers/phy/xilinx/phy-zynqmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"phy_zynqmp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [68 x i8] c"phy_zynqmp.description=Xilinx ZynqMP High speed Gigabit Transceiver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xilinx-psgtr\00", [19 x i8] zeroinitializer }, align 32
@xpsgtr_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-psgtr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-psgtr-v1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xpsgtr_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xpsgtr_suspend, ptr @xpsgtr_resume, ptr @xpsgtr_suspend, ptr @xpsgtr_resume, ptr @xpsgtr_suspend, ptr @xpsgtr_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xpsgtr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&gtr_dev->gtr_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,zynqmp-psgtr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xlnx,tx-termination-fix\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serdes\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"siou\00", [27 x i8] zeroinitializer }, align 32
@xpsgtr_phyops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @xpsgtr_phy_init, ptr @xpsgtr_phy_exit, ptr @xpsgtr_phy_power_on, ptr null, ptr null, ptr null, ptr null, ptr @xpsgtr_phy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@xpsgtr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 993, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xpsgtr_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/phy/xilinx/phy-zynqmp.c\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xpsgtr_probe._entry_ptr = internal global ptr @xpsgtr_probe._entry, section ".printk_index", align 4
@xpsgtr_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1005, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"registering provider failed\0A\00", [35 x i8] zeroinitializer }, align 32
@xpsgtr_probe._entry_ptr.13 = internal global ptr @xpsgtr_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ref%u\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get reference clock %u\0A\00", [62 x i8] zeroinitializer }, align 32
@ssc_lookup = internal constant { [13 x %struct.xpsgtr_ssc], [48 x i8] } { [13 x %struct.xpsgtr_ssc] [%struct.xpsgtr_ssc { i32 19200000, i8 5, i32 608, i32 264020 }, %struct.xpsgtr_ssc { i32 20000000, i8 6, i32 634, i32 243454 }, %struct.xpsgtr_ssc { i32 24000000, i8 7, i32 760, i32 168973 }, %struct.xpsgtr_ssc { i32 26000000, i8 8, i32 824, i32 143860 }, %struct.xpsgtr_ssc { i32 27000000, i8 9, i32 856, i32 86551 }, %struct.xpsgtr_ssc { i32 38400000, i8 10, i32 1218, i32 65896 }, %struct.xpsgtr_ssc { i32 40000000, i8 11, i32 634, i32 243454 }, %struct.xpsgtr_ssc { i32 52000000, i8 12, i32 824, i32 143860 }, %struct.xpsgtr_ssc { i32 100000000, i8 13, i32 1058, i32 87533 }, %struct.xpsgtr_ssc { i32 108000000, i8 14, i32 856, i32 86551 }, %struct.xpsgtr_ssc { i32 125000000, i8 15, i32 992, i32 119497 }, %struct.xpsgtr_ssc { i32 135000000, i8 16, i32 1070, i32 55393 }, %struct.xpsgtr_ssc { i32 150000000, i8 17, i32 792, i32 187091 }], [48 x i8] zeroinitializer }, align 32
@xpsgtr_get_ref_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.8, i32 933, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid rate %lu for reference clock %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xpsgtr_get_ref_clocks\00", [42 x i8] zeroinitializer }, align 32
@xpsgtr_get_ref_clocks._entry_ptr = internal global ptr @xpsgtr_get_ref_clocks._entry, section ".printk_index", align 4
@xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.8, ptr @.str.20, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy_zynqmp\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xpsgtr_phy_tx_term_fix\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"calibrating...\0A\00", [16 x i8] zeroinitializer }, align 32
@xpsgtr_phy_tx_term_fix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.8, i32 538, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"calibration time out\0A\00", [42 x i8] zeroinitializer }, align 32
@xpsgtr_phy_tx_term_fix._entry_ptr = internal global ptr @xpsgtr_phy_tx_term_fix._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.8, ptr @.str.22, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calibration done\0A\00", [46 x i8] zeroinitializer }, align 32
@xpsgtr_wait_pll_lock.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.23, ptr @.str.8, ptr @.str.24, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpsgtr_wait_pll_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Waiting for PLL lock\0A\00", [42 x i8] zeroinitializer }, align 32
@xpsgtr_wait_pll_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 334, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lane %u (type %u, protocol %u): PLL lock timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@xpsgtr_wait_pll_lock._entry_ptr = internal global ptr @xpsgtr_wait_pll_lock._entry, section ".printk_index", align 4
@xpsgtr_phy_configure_dp.voltage_swing = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"*'$ ", [4 x i8] c"'# \FF", [4 x i8] c"$ \FF\FF", [4 x i8] c"\FF\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@xpsgtr_phy_configure_dp.pre_emphasis = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\02\02\02\02", [4 x i8] c"\01\01\01\FF", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\FF\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@xpsgtr_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.8, i32 775, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid number of cells in 'phy' property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xpsgtr_xlate\00", [19 x i8] zeroinitializer }, align 32
@xpsgtr_xlate._entry_ptr = internal global ptr @xpsgtr_xlate._entry, section ".printk_index", align 4
@xpsgtr_xlate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.8, i32 785, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid lane number %u\0A\00", [40 x i8] zeroinitializer }, align 32
@xpsgtr_xlate._entry_ptr.30 = internal global ptr @xpsgtr_xlate._entry.28, section ".printk_index", align 4
@xpsgtr_xlate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.8, i32 795, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid PHY type and/or instance\0A\00", [62 x i8] zeroinitializer }, align 32
@xpsgtr_xlate._entry_ptr.33 = internal global ptr @xpsgtr_xlate._entry.31, section ".printk_index", align 4
@xpsgtr_xlate._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.8, i32 802, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid reference clock number %u\0A\00", [61 x i8] zeroinitializer }, align 32
@xpsgtr_xlate._entry_ptr.36 = internal global ptr @xpsgtr_xlate._entry.34, section ".printk_index", align 4
@icm_matrix = internal constant { [4 x [5 x i32]], [48 x i8] } { [4 x [5 x i32]] [[5 x i32] [i32 4, i32 2, i32 0, i32 9, i32 10], [5 x i32] [i32 5, i32 3, i32 0, i32 8, i32 11], [5 x i32] [i32 6, i32 2, i32 0, i32 9, i32 12], [5 x i32] [i32 7, i32 3, i32 1, i32 8, i32 13]], [48 x i8] zeroinitializer }, align 32
@xpsgtr_set_lane_type.types = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@xpsgtr_set_lane_type.types.37 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@xpsgtr_set_lane_type.types.38 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 9], [24 x i8] zeroinitializer }, align 32
@xpsgtr_set_lane_type.types.39 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@xpsgtr_set_lane_type.types.40 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 11, i32 12, i32 13], [16 x i8] zeroinitializer }, align 32
@switch.table.xpsgtr_xlate = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\01\02\03\02\04\02\05", [24 x i8] zeroinitializer }, align 32
@switch.table.xpsgtr_xlate.41 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 4, i32 2, i32 2, i32 2, i32 2, i32 2, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.xpsgtr_xlate.42 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @xpsgtr_set_lane_type.types, ptr @xpsgtr_set_lane_type.types.39, ptr @xpsgtr_set_lane_type.types, ptr @xpsgtr_set_lane_type.types.37, ptr @xpsgtr_set_lane_type.types, ptr @xpsgtr_set_lane_type.types.38, ptr @xpsgtr_set_lane_type.types, ptr @xpsgtr_set_lane_type.types.40], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 19200000, i64 20000000, i64 24000000, i64 26000000, i64 27000000, i64 38400000, i64 40000000, i64 52000000, i64 100000000, i64 108000000, i64 125000000, i64 135000000, i64 150000000]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"xpsgtr_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1025, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1028, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"xpsgtr_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1018, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"xpsgtr_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 880, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 964, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 966, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 968, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 971, i32 64 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 975, i32 62 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"xpsgtr_phyops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 657, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 993, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1005, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 899, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 903, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"ssc_lookup\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 235, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 931, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 529, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 538, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 545, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 313, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 332, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"voltage_swing\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 463, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"pre_emphasis\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 469, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 775, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 785, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 795, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 802, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [11 x i8] c"icm_matrix\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 750, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 678, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 689, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 700, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 711, i32 20 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.200 = private constant [35 x i8] c"../drivers/phy/xilinx/phy-zynqmp.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 724, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"switch.table.xpsgtr_xlate\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"switch.table.xpsgtr_xlate.41\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [29 x i8] c"switch.table.xpsgtr_xlate.42\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_xpsgtr_driver_exit, ptr @__initcall__kmod_phy_zynqmp__292_1034_xpsgtr_driver_init6, ptr @xpsgtr_driver_exit, ptr @xpsgtr_get_ref_clocks._entry, ptr @xpsgtr_get_ref_clocks._entry_ptr, ptr @xpsgtr_phy_tx_term_fix._entry, ptr @xpsgtr_phy_tx_term_fix._entry_ptr, ptr @xpsgtr_probe._entry, ptr @xpsgtr_probe._entry.11, ptr @xpsgtr_probe._entry_ptr, ptr @xpsgtr_probe._entry_ptr.13, ptr @xpsgtr_wait_pll_lock._entry, ptr @xpsgtr_wait_pll_lock._entry_ptr, ptr @xpsgtr_xlate._entry, ptr @xpsgtr_xlate._entry.28, ptr @xpsgtr_xlate._entry.31, ptr @xpsgtr_xlate._entry.34, ptr @xpsgtr_xlate._entry_ptr, ptr @xpsgtr_xlate._entry_ptr.30, ptr @xpsgtr_xlate._entry_ptr.33, ptr @xpsgtr_xlate._entry_ptr.36, ptr @xpsgtr_driver, ptr @.str, ptr @xpsgtr_of_match, ptr @xpsgtr_pm_ops, ptr @xpsgtr_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xpsgtr_phyops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ssc_lookup, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @xpsgtr_phy_configure_dp.voltage_swing, ptr @xpsgtr_phy_configure_dp.pre_emphasis, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @icm_matrix, ptr @xpsgtr_set_lane_type.types, ptr @xpsgtr_set_lane_type.types.37, ptr @xpsgtr_set_lane_type.types.38, ptr @xpsgtr_set_lane_type.types.39, ptr @xpsgtr_set_lane_type.types.40, ptr @switch.table.xpsgtr_xlate, ptr @switch.table.xpsgtr_xlate.41, ptr @switch.table.xpsgtr_xlate.42], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_phyops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssc_lookup to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_get_ref_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_phy_tx_term_fix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_wait_pll_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_phy_configure_dp.voltage_swing to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_phy_configure_dp.pre_emphasis to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_xlate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_xlate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_xlate._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icm_matrix to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_set_lane_type.types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_set_lane_type.types.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_set_lane_type.types.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_set_lane_type.types.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xpsgtr_set_lane_type.types.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xpsgtr_xlate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xpsgtr_xlate.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xpsgtr_xlate.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xpsgtr_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xpsgtr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @xpsgtr_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 212, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %gtr_mutex = getelementptr inbounds %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %gtr_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @xpsgtr_probe.__key) #8
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i103, null
  %tx_term_fix = getelementptr inbounds %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %tobool.i to i8
  %4 = ptrtoint ptr %tx_term_fix to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %tx_term_fix, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.4) #8
  %serdes = getelementptr inbounds %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %serdes to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %serdes, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call9 to i32
  br label %cleanup58

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.5) #8
  %siou = getelementptr inbounds %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %siou to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %siou, align 4
  %cmp.i104 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then19, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call16 to i32
  br label %cleanup58

for.body.i:                                       ; preds = %for.inc31.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %refclk.083.i = phi i32 [ %inc32.i, %for.inc31.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name.i) #8
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %name.i, align 8
  %call.i105 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %refclk.083.i) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call2.i = call ptr @devm_clk_get_optional(ptr noundef %11, ptr noundef nonnull %name.i) #8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %call2.i to i32
  %call6.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.15, i32 noundef %refclk.083.i) #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.for.inc31.i_crit_edge, label %if.end8.i

if.end.i.for.inc31.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = call i32 @clk_prepare(ptr noundef nonnull %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.i.cleanup.i_crit_edge

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.end8.i
  %call1.i.i = call i32 @clk_enable(ptr noundef nonnull %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end12.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef nonnull %call2.i) #8
  br label %cleanup.i

if.end12.i:                                       ; preds = %if.end.i.i
  %arrayidx.i = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 %refclk.083.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %call14.i = call i32 @clk_get_rate(ptr noundef nonnull %call2.i) #8
  %16 = zext i32 %call14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14.i, label %do.end.i [
    i32 19200000, label %if.end12.i.for.end.thread.i_crit_edge
    i32 20000000, label %for.end.thread.fold.split.i
    i32 24000000, label %for.end.thread.fold.split114.i
    i32 26000000, label %for.end.thread.fold.split115.i
    i32 27000000, label %for.end.thread.fold.split116.i
    i32 38400000, label %for.end.thread.fold.split117.i
    i32 40000000, label %for.end.thread.fold.split118.i
    i32 52000000, label %for.end.thread.fold.split119.i
    i32 100000000, label %for.end.thread.fold.split120.i
    i32 108000000, label %for.end.thread.fold.split121.i
    i32 125000000, label %for.end.thread.fold.split122.i
    i32 135000000, label %for.end.thread.fold.split123.i
    i32 150000000, label %for.end.thread.fold.split124.i
  ]

if.end12.i.for.end.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split.i:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split114.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split115.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split116.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split117.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split118.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split119.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split120.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split121.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split122.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split123.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split124.i:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.thread.fold.split124.i, %for.end.thread.fold.split123.i, %for.end.thread.fold.split122.i, %for.end.thread.fold.split121.i, %for.end.thread.fold.split120.i, %for.end.thread.fold.split119.i, %for.end.thread.fold.split118.i, %for.end.thread.fold.split117.i, %for.end.thread.fold.split116.i, %for.end.thread.fold.split115.i, %for.end.thread.fold.split114.i, %for.end.thread.fold.split.i, %if.end12.i.for.end.thread.i_crit_edge
  %arrayidx18.lcssa.i = phi ptr [ @ssc_lookup, %if.end12.i.for.end.thread.i_crit_edge ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 1), %for.end.thread.fold.split.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 2), %for.end.thread.fold.split114.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 3), %for.end.thread.fold.split115.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 4), %for.end.thread.fold.split116.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 5), %for.end.thread.fold.split117.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 6), %for.end.thread.fold.split118.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 7), %for.end.thread.fold.split119.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 8), %for.end.thread.fold.split120.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 9), %for.end.thread.fold.split121.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 10), %for.end.thread.fold.split122.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 11), %for.end.thread.fold.split123.i ], [ getelementptr inbounds ([13 x %struct.xpsgtr_ssc], ptr @ssc_lookup, i32 0, i32 12), %for.end.thread.fold.split124.i ]
  %arrayidx22.i = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 5, i32 %refclk.083.i
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx18.lcssa.i, ptr %arrayidx22.i, align 4
  br label %for.inc31.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.16, i32 noundef %call14.i, i32 noundef %refclk.083.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.then3.i.i, %if.end8.i.cleanup.i_crit_edge, %if.then.i
  %ret.1.i = phi i32 [ %call6.i, %if.then.i ], [ -22, %do.end.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end8.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %refclk.083.i)
  %tobool34.not85.i = icmp eq i32 %refclk.083.i, 0
  br i1 %tobool34.not85.i, label %cleanup.i.xpsgtr_get_ref_clocks.exit_crit_edge, label %while.body.i

cleanup.i.xpsgtr_get_ref_clocks.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xpsgtr_get_ref_clocks.exit

for.inc31.i:                                      ; preds = %for.end.thread.i, %if.end.i.for.inc31.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name.i) #8
  %inc32.i = add nuw nsw i32 %refclk.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc32.i, 4
  br i1 %exitcond.not.i, label %for.inc31.i.for.body.preheader_crit_edge, label %for.inc31.i.for.body.i_crit_edge

for.inc31.i.for.body.i_crit_edge:                 ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc31.i.for.body.preheader_crit_edge:         ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

while.body.i:                                     ; preds = %cleanup.i
  %dec.i = add nsw i32 %refclk.083.i, -1
  %arrayidx36.i = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 %dec.i
  %20 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx36.i, align 4
  call void @clk_disable(ptr noundef %21) #8
  call void @clk_unprepare(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool34.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool34.not.i, label %while.body.i.xpsgtr_get_ref_clocks.exit_crit_edge, label %while.body.i.1

while.body.i.xpsgtr_get_ref_clocks.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xpsgtr_get_ref_clocks.exit

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i.1 = add nsw i32 %refclk.083.i, -2
  %arrayidx36.i.1 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 %dec.i.1
  %22 = ptrtoint ptr %arrayidx36.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx36.i.1, align 4
  call void @clk_disable(ptr noundef %23) #8
  call void @clk_unprepare(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool34.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool34.not.i.1, label %while.body.i.1.xpsgtr_get_ref_clocks.exit_crit_edge, label %while.body.i.2

while.body.i.1.xpsgtr_get_ref_clocks.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %xpsgtr_get_ref_clocks.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.2 = add nsw i32 %refclk.083.i, -3
  %arrayidx36.i.2 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 %dec.i.2
  %24 = ptrtoint ptr %arrayidx36.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx36.i.2, align 4
  call void @clk_disable(ptr noundef %25) #8
  call void @clk_unprepare(ptr noundef %25) #8
  br label %xpsgtr_get_ref_clocks.exit

xpsgtr_get_ref_clocks.exit:                       ; preds = %while.body.i.2, %while.body.i.1.xpsgtr_get_ref_clocks.exit_crit_edge, %while.body.i.xpsgtr_get_ref_clocks.exit_crit_edge, %cleanup.i.xpsgtr_get_ref_clocks.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool24.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool24.not, label %xpsgtr_get_ref_clocks.exit.for.body.preheader_crit_edge, label %xpsgtr_get_ref_clocks.exit.cleanup58_crit_edge

xpsgtr_get_ref_clocks.exit.cleanup58_crit_edge:   ; preds = %xpsgtr_get_ref_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

xpsgtr_get_ref_clocks.exit.for.body.preheader_crit_edge: ; preds = %xpsgtr_get_ref_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %xpsgtr_get_ref_clocks.exit.for.body.preheader_crit_edge, %for.inc31.i.for.body.preheader_crit_edge
  %lane = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %26 = ptrtoint ptr %lane to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %lane, align 1
  %dev27 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 0, i32 5
  %27 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %dev27, align 4
  %call29 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @xpsgtr_phyops) #8
  %cmp.i106 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %for.body.preheader.err_clk_put_crit_edge, label %for.inc

for.body.preheader.err_clk_put_crit_edge:         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call29, ptr %arrayidx, align 4
  %driver_data.i.i107 = getelementptr inbounds %struct.device, ptr %call29, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i107 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %driver_data.i.i107, align 4
  %lane.1 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 1, i32 2
  %30 = ptrtoint ptr %lane.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %lane.1, align 1
  %dev27.1 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 1, i32 5
  %31 = ptrtoint ptr %dev27.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %dev27.1, align 4
  %call29.1 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @xpsgtr_phyops) #8
  %cmp.i106.1 = icmp ugt ptr %call29.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.1, label %for.inc.err_clk_put_crit_edge, label %for.inc.1

for.inc.err_clk_put_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29.1, ptr %arrayidx.1, align 4
  %driver_data.i.i107.1 = getelementptr inbounds %struct.device, ptr %call29.1, i32 0, i32 8
  %33 = ptrtoint ptr %driver_data.i.i107.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.1, ptr %driver_data.i.i107.1, align 4
  %lane.2 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 2
  %34 = ptrtoint ptr %lane.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %lane.2, align 1
  %dev27.2 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 5
  %35 = ptrtoint ptr %dev27.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %dev27.2, align 4
  %call29.2 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @xpsgtr_phyops) #8
  %cmp.i106.2 = icmp ugt ptr %call29.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.2, label %for.inc.1.err_clk_put_crit_edge, label %for.inc.2

for.inc.1.err_clk_put_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call29.2, ptr %arrayidx.2, align 4
  %driver_data.i.i107.2 = getelementptr inbounds %struct.device, ptr %call29.2, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i107.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.2, ptr %driver_data.i.i107.2, align 4
  %lane.3 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 3, i32 2
  %38 = ptrtoint ptr %lane.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %lane.3, align 1
  %dev27.3 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 3, i32 5
  %39 = ptrtoint ptr %dev27.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %dev27.3, align 4
  %call29.3 = call ptr @devm_phy_create(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @xpsgtr_phyops) #8
  %cmp.i106.3 = icmp ugt ptr %call29.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.3, label %for.inc.2.err_clk_put_crit_edge, label %for.inc.3

for.inc.2.err_clk_put_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call29.3, ptr %arrayidx.3, align 4
  %driver_data.i.i107.3 = getelementptr inbounds %struct.device, ptr %call29.3, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i107.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.3, ptr %driver_data.i.i107.3, align 4
  %call41 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @xpsgtr_xlate) #8
  %cmp.i108 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %for.inc.3.err_clk_put_crit_edge, label %for.inc.3.cleanup58_crit_edge

for.inc.3.cleanup58_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

for.inc.3.err_clk_put_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_put

err_clk_put:                                      ; preds = %for.inc.3.err_clk_put_crit_edge, %for.inc.2.err_clk_put_crit_edge, %for.inc.1.err_clk_put_crit_edge, %for.inc.err_clk_put_crit_edge, %for.body.preheader.err_clk_put_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %for.inc.2.err_clk_put_crit_edge ], [ @.str.6, %for.inc.1.err_clk_put_crit_edge ], [ @.str.6, %for.inc.err_clk_put_crit_edge ], [ @.str.6, %for.body.preheader.err_clk_put_crit_edge ], [ @.str.12, %for.inc.3.err_clk_put_crit_edge ]
  %ret.2.in = phi ptr [ %call29.3, %for.inc.2.err_clk_put_crit_edge ], [ %call29.2, %for.inc.1.err_clk_put_crit_edge ], [ %call29.1, %for.inc.err_clk_put_crit_edge ], [ %call29, %for.body.preheader.err_clk_put_crit_edge ], [ %call41, %for.inc.3.err_clk_put_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.6.sink) #11
  %arrayidx54 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 0
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx54, align 4
  call void @clk_disable(ptr noundef %43) #8
  call void @clk_unprepare(ptr noundef %43) #8
  %arrayidx54.1 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx54.1, align 4
  call void @clk_disable(ptr noundef %45) #8
  call void @clk_unprepare(ptr noundef %45) #8
  %arrayidx54.2 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %arrayidx54.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx54.2, align 4
  call void @clk_disable(ptr noundef %47) #8
  call void @clk_unprepare(ptr noundef %47) #8
  %arrayidx54.3 = getelementptr %struct.xpsgtr_dev, ptr %call.i, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %arrayidx54.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx54.3, align 4
  call void @clk_disable(ptr noundef %49) #8
  call void @clk_unprepare(ptr noundef %49) #8
  %ret.2 = ptrtoint ptr %ret.2.in to i32
  br label %cleanup58

cleanup58:                                        ; preds = %err_clk_put, %for.inc.3.cleanup58_crit_edge, %xpsgtr_get_ref_clocks.exit.cleanup58_crit_edge, %if.then19, %if.then12, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ %6, %if.then12 ], [ %8, %if.then19 ], [ -12, %entry.cleanup58_crit_edge ], [ %ret.1.i, %xpsgtr_get_ref_clocks.exit.cleanup58_crit_edge ], [ 0, %for.inc.3.cleanup58_crit_edge ], [ %ret.2, %err_clk_put ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xpsgtr_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp3 = icmp ugt i32 %5, 3
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %5) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 %5
  %arrayidx12 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %conv = trunc i32 %7 to i8
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 8
  br i1 %10, label %switch.hole_check, label %if.end9.do.end21_crit_edge

if.end9.do.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

switch.hole_check:                                ; preds = %if.end9
  %switch.shifted = lshr i8 -85, %switch.tableidx
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end21_crit_edge, label %switch.lookup

switch.hole_check.do.end21_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

switch.lookup:                                    ; preds = %switch.hole_check
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.xpsgtr_xlate, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %13)
  %switch.load = load i8, ptr %switch.gep, align 1
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep80 = getelementptr inbounds [8 x i32], ptr @switch.table.xpsgtr_xlate.41, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load81 = load i32, ptr %switch.gep80, align 4
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep82 = getelementptr inbounds [8 x ptr], ptr @switch.table.xpsgtr_xlate.42, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep82 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load83 = load ptr, ptr %switch.gep82, align 4
  %protocol8.i = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 %5, i32 3
  %18 = ptrtoint ptr %protocol8.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %switch.load, ptr %protocol8.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load81, i32 %9)
  %cmp.not.i = icmp ugt i32 %switch.load81, %9
  br i1 %cmp.not.i, label %if.end24, label %switch.lookup.do.end21_crit_edge

switch.lookup.do.end21_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end21:                                         ; preds = %switch.lookup.do.end21_crit_edge, %switch.hole_check.do.end21_crit_edge, %if.end9.do.end21_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end24:                                         ; preds = %switch.lookup
  %arrayidx.i = getelementptr i32, ptr %switch.load83, i32 %9
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %conv10.i = trunc i32 %22 to i8
  %type.i = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 %5, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv10.i, ptr %type.i, align 4
  %arrayidx26 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp27 = icmp ugt i32 %25, 3
  br i1 %cmp27, label %if.end24.do.end33_crit_edge, label %lor.lhs.false

if.end24.do.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

lor.lhs.false:                                    ; preds = %if.end24
  %arrayidx29 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 5, i32 %25
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx29, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %lor.lhs.false.do.end33_crit_edge, label %if.end35

lor.lhs.false.do.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

do.end33:                                         ; preds = %lor.lhs.false.do.end33_crit_edge, %if.end24.do.end33_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %25) #11
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  %refclk36 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 %5, i32 6
  %28 = ptrtoint ptr %refclk36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %refclk36, align 4
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type.i, align 4
  %conv41 = zext i8 %30 to i32
  %arrayidx40 = getelementptr [4 x [5 x i32]], ptr @icm_matrix, i32 0, i32 %5, i32 0
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv41)
  %cmp42 = icmp eq i32 %32, %conv41
  br i1 %cmp42, label %if.end35.if.then44_crit_edge, label %for.cond

if.end35.if.then44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.cond:                                         ; preds = %if.end35
  %arrayidx40.1 = getelementptr [4 x [5 x i32]], ptr @icm_matrix, i32 0, i32 %5, i32 1
  %33 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx40.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv41)
  %cmp42.1 = icmp eq i32 %34, %conv41
  br i1 %cmp42.1, label %for.cond.if.then44_crit_edge, label %for.cond.1

for.cond.if.then44_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.cond.1:                                       ; preds = %for.cond
  %arrayidx40.2 = getelementptr [4 x [5 x i32]], ptr @icm_matrix, i32 0, i32 %5, i32 2
  %35 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx40.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv41)
  %cmp42.2 = icmp eq i32 %36, %conv41
  br i1 %cmp42.2, label %for.cond.1.if.then44_crit_edge, label %for.cond.2

for.cond.1.if.then44_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx40.3 = getelementptr [4 x [5 x i32]], ptr @icm_matrix, i32 0, i32 %5, i32 3
  %37 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx40.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv41)
  %cmp42.3 = icmp eq i32 %38, %conv41
  br i1 %cmp42.3, label %for.cond.2.if.then44_crit_edge, label %for.cond.3

for.cond.2.if.then44_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx40.4 = getelementptr [4 x [5 x i32]], ptr @icm_matrix, i32 0, i32 %5, i32 4
  %39 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx40.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv41)
  %cmp42.4 = icmp eq i32 %40, %conv41
  br i1 %cmp42.4, label %for.cond.3.if.then44_crit_edge, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3.if.then44_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %for.cond.3.if.then44_crit_edge, %for.cond.2.if.then44_crit_edge, %for.cond.1.if.then44_crit_edge, %for.cond.if.then44_crit_edge, %if.end35.if.then44_crit_edge
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %for.cond.3.cleanup_crit_edge, %do.end33, %do.end21, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -19 to ptr), %do.end7 ], [ inttoptr (i32 -22 to ptr), %do.end21 ], [ inttoptr (i32 -22 to ptr), %do.end33 ], [ %42, %if.then44 ], [ inttoptr (i32 -22 to ptr), %for.cond.3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %gtr_mutex = getelementptr inbounds %struct.xpsgtr_dev, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %gtr_mutex, i32 noundef 0) #8
  %protocol.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp eq i8 %5, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %skip_phy_init.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skip_phy_init.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %skip_phy_init.i, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_term_fix = getelementptr inbounds %struct.xpsgtr_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %tx_term_fix to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_term_fix, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @xpsgtr_phy_tx_term_fix(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then2.out_crit_edge, label %if.end5

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %tx_term_fix to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tx_term_fix, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end5 ], [ 0, %if.end.if.end7_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %serdes.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serdes.i, align 4
  %lane.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lane.i, align 1
  %conv.i = zext i8 %16 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 14
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 8340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 268435456) #8, !srcloc !118
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %refclk.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refclk.i, align 4
  %arrayidx.i = getelementptr %struct.xpsgtr_dev, ptr %18, i32 0, i32 5, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %step_size1.i = getelementptr inbounds %struct.xpsgtr_ssc, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %step_size1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %step_size1.i, align 4
  %25 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lane.i, align 1
  %conv.i26 = zext i8 %26 to i32
  %mul.i27 = shl nuw nsw i32 %conv.i26, 2
  %add.i = or i32 %mul.i27, 65536
  %pll_ref_clk.i = getelementptr inbounds %struct.xpsgtr_ssc, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %pll_ref_clk.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pll_ref_clk.i, align 4
  %conv3.i = zext i8 %28 to i32
  %serdes.i.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %18, i32 0, i32 1
  %29 = ptrtoint ptr %serdes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serdes.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %add.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %32 = and i32 %31, -520093697
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %or.i.i = or i32 %33, %conv3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %35 = ptrtoint ptr %serdes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdes.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %36, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %34) #8, !srcloc !118
  %37 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %refclk.i, align 4
  %39 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lane.i, align 1
  %conv6.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %38, %conv6.i
  br i1 %cmp.not.i, label %if.end7.xpsgtr_configure_pll.exit_crit_edge, label %if.then.i

if.end7.xpsgtr_configure_pll.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %xpsgtr_configure_pll.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %mul11.i = shl nuw nsw i32 %conv6.i, 2
  %add12.i = add nuw nsw i32 %mul11.i, 10336
  %shl.i = shl nuw i32 1, %38
  %serdes.i.i47.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %serdes.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %serdes.i.i47.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %44, i32 %add12.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %46 = and i32 %45, 1895825407
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %or.i50.i = or i32 %47, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i50.i) #8
  %49 = ptrtoint ptr %serdes.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serdes.i.i47.i, align 4
  %add.ptr.i6.i51.i = getelementptr i8, ptr %50, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i51.i, i32 %48) #8, !srcloc !118
  br label %xpsgtr_configure_pll.exit

xpsgtr_configure_pll.exit:                        ; preds = %if.then.i, %if.end7.xpsgtr_configure_pll.exit_crit_edge
  %and.i = and i32 %24, 255
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %serdes.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serdes.i.i, align 4
  %55 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lane.i, align 1
  %conv.i.i = zext i8 %56 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 14
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 9072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %58 = and i32 %57, 16777215
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %or.i53.i = or i32 %59, %and.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i53.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %60) #8, !srcloc !118
  %shr.i = lshr i32 %24, 8
  %and14.i = and i32 %shr.i, 255
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %serdes.i55.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %serdes.i55.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %serdes.i55.i, align 4
  %65 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %lane.i, align 1
  %conv.i57.i = zext i8 %66 to i32
  %mul.i58.i = shl nuw nsw i32 %conv.i57.i, 14
  %add.ptr.i59.i = getelementptr i8, ptr %64, i32 %mul.i58.i
  %add.ptr1.i60.i = getelementptr i8, ptr %add.ptr.i59.i, i32 9076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i60.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %68 = and i32 %67, 16777215
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %or.i62.i = or i32 %69, %and14.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i62.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60.i, i32 %70) #8, !srcloc !118
  %shr15.i = lshr i32 %24, 16
  %and16.i = and i32 %shr15.i, 255
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %serdes.i64.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %serdes.i64.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %serdes.i64.i, align 4
  %75 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %lane.i, align 1
  %conv.i66.i = zext i8 %76 to i32
  %mul.i67.i = shl nuw nsw i32 %conv.i66.i, 14
  %add.ptr.i68.i = getelementptr i8, ptr %74, i32 %mul.i67.i
  %add.ptr1.i69.i = getelementptr i8, ptr %add.ptr.i68.i, i32 9080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i69.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %78 = and i32 %77, 16777215
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %or.i71.i = or i32 %79, %and16.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i71.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i69.i, i32 %80) #8, !srcloc !118
  %steps.i = getelementptr inbounds %struct.xpsgtr_ssc, ptr %22, i32 0, i32 2
  %81 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %steps.i, align 4
  %and17.i = and i32 %82, 255
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %serdes.i73.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %serdes.i73.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %serdes.i73.i, align 4
  %87 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %lane.i, align 1
  %conv.i75.i = zext i8 %88 to i32
  %mul.i76.i = shl nuw nsw i32 %conv.i75.i, 14
  %add.ptr.i77.i = getelementptr i8, ptr %86, i32 %mul.i76.i
  %add.ptr1.i78.i = getelementptr i8, ptr %add.ptr.i77.i, i32 9064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i78.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %90 = and i32 %89, 16777215
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  %or.i80.i = or i32 %91, %and17.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i80.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i78.i, i32 %92) #8, !srcloc !118
  %93 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %steps.i, align 4
  %shr19.i = lshr i32 %94, 8
  %and20.i = and i32 %shr19.i, 7
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %serdes.i82.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %serdes.i82.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %serdes.i82.i, align 4
  %99 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %lane.i, align 1
  %conv.i84.i = zext i8 %100 to i32
  %mul.i85.i = shl nuw nsw i32 %conv.i84.i, 14
  %add.ptr.i86.i = getelementptr i8, ptr %98, i32 %mul.i85.i
  %add.ptr1.i87.i = getelementptr i8, ptr %add.ptr.i86.i, i32 9068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i87.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %102 = and i32 %101, -117440513
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  %or.i89.i = or i32 %103, %and20.i
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i89.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i87.i, i32 %104) #8, !srcloc !118
  %shr21.i = lshr i32 %24, 24
  %and22.i = and i32 %shr21.i, 3
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %serdes.i91.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %serdes.i91.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %serdes.i91.i, align 4
  %109 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %lane.i, align 1
  %conv.i93.i = zext i8 %110 to i32
  %mul.i94.i = shl nuw nsw i32 %conv.i93.i, 14
  %add.ptr.i95.i = getelementptr i8, ptr %108, i32 %mul.i94.i
  %add.ptr1.i96.i = getelementptr i8, ptr %add.ptr.i95.i, i32 9084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i96.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %112 = and i32 %111, -50331649
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #8
  %or23.i = or i32 %and22.i, %113
  %or.i98.i = or i32 %or23.i, 48
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i98.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i96.i, i32 %114) #8, !srcloc !118
  tail call fastcc void @xpsgtr_lane_set_protocol(ptr noundef %1)
  %115 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %protocol.i, align 2
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %116, label %xpsgtr_configure_pll.exit.out_crit_edge [
    i8 4, label %sw.bb
    i8 2, label %sw.bb8
    i8 5, label %sw.bb9
  ]

xpsgtr_configure_pll.exit.out_crit_edge:          ; preds = %xpsgtr_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %xpsgtr_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  %serdes.i.i28 = getelementptr inbounds %struct.xpsgtr_dev, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %serdes.i.i28 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %serdes.i.i28, align 4
  %122 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %lane.i, align 1
  %conv.i.i29 = zext i8 %123 to i32
  %mul.i.i30 = shl nuw nsw i32 %conv.i.i29, 14
  %add.ptr.i.i31 = getelementptr i8, ptr %121, i32 %mul.i.i30
  %add.ptr1.i.i32 = getelementptr i8, ptr %add.ptr.i.i31, i32 3252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i32, i32 922746880) #8, !srcloc !118
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 4
  %serdes.i3.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %serdes.i3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %serdes.i3.i, align 4
  %128 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %lane.i, align 1
  %conv.i5.i = zext i8 %129 to i32
  %mul.i6.i = shl nuw nsw i32 %conv.i5.i, 14
  %add.ptr.i7.i = getelementptr i8, ptr %127, i32 %mul.i6.i
  %add.ptr1.i8.i = getelementptr i8, ptr %add.ptr.i7.i, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i, i32 16777216) #8, !srcloc !118
  br label %out

sw.bb8:                                           ; preds = %xpsgtr_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %serdes.i.i.i34 = getelementptr inbounds %struct.xpsgtr_dev, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %serdes.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %serdes.i.i.i34, align 4
  %134 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %lane.i, align 1
  %conv.i.i.i = zext i8 %135 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 14
  %add.ptr.i.i.i35 = getelementptr i8, ptr %133, i32 %mul.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i35, i32 4204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 251658240) #8, !srcloc !118
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  %serdes.i3.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %serdes.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %serdes.i3.i.i, align 4
  %140 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %lane.i, align 1
  %conv.i5.i.i = zext i8 %141 to i32
  %mul.i6.i.i = shl nuw nsw i32 %conv.i5.i.i, 14
  %add.ptr.i7.i.i = getelementptr i8, ptr %139, i32 %mul.i6.i.i
  %add.ptr1.i8.i.i = getelementptr i8, ptr %add.ptr.i7.i.i, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i.i, i32 251658240) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %142 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %lane.i, align 1
  %conv.i36 = zext i8 %143 to i32
  %144 = shl nuw i32 %conv.i36, 24
  %siou.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %131, i32 0, i32 2
  %145 = ptrtoint ptr %siou.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %siou.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %146, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %144) #8, !srcloc !118
  br label %out

sw.bb9:                                           ; preds = %xpsgtr_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  %149 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %lane.i, align 1
  %conv.i40 = zext i8 %150 to i32
  %mul.i41 = shl nuw nsw i32 %conv.i40, 1
  %shl.neg.i = shl nsw i32 -1, %mul.i41
  %sub5.i = sub nsw i32 30, %mul.i41
  %shr.i42 = lshr i32 -1, %sub5.i
  %and.i43 = and i32 %shr.i42, %shl.neg.i
  %serdes.i.i.i44 = getelementptr inbounds %struct.xpsgtr_dev, ptr %148, i32 0, i32 1
  %151 = ptrtoint ptr %serdes.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %serdes.i.i.i44, align 4
  %add.ptr.i.i.i45 = getelementptr i8, ptr %152, i32 65600
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i45) #8, !srcloc !119
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %neg.i.i = xor i32 %and.i43, -1
  %and.i.i = and i32 %154, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %155 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %156 = ptrtoint ptr %serdes.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %serdes.i.i.i44, align 4
  %add.ptr.i6.i.i46 = getelementptr i8, ptr %157, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i46, i32 %155) #8, !srcloc !118
  %158 = ptrtoint ptr %serdes.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %serdes.i.i.i44, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %159, i32 65604
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #8, !srcloc !119
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %and.i21.i = and i32 %161, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %162 = tail call i32 @llvm.bswap.i32(i32 %and.i21.i) #8
  %163 = ptrtoint ptr %serdes.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %serdes.i.i.i44, align 4
  %add.ptr.i6.i22.i = getelementptr i8, ptr %164, i32 65604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i22.i, i32 %162) #8, !srcloc !118
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  %serdes.i.i23.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %serdes.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %serdes.i.i23.i, align 4
  %169 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %lane.i, align 1
  %conv.i.i.i47 = zext i8 %170 to i32
  %mul.i.i.i48 = shl nuw nsw i32 %conv.i.i.i47, 14
  %add.ptr.i.i24.i = getelementptr i8, ptr %168, i32 %mul.i.i.i48
  %add.ptr1.i.i.i49 = getelementptr i8, ptr %add.ptr.i.i24.i, i32 4204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i49, i32 251658240) #8, !srcloc !118
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  %serdes.i3.i.i50 = getelementptr inbounds %struct.xpsgtr_dev, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %serdes.i3.i.i50 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %serdes.i3.i.i50, align 4
  %175 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %lane.i, align 1
  %conv.i5.i.i51 = zext i8 %176 to i32
  %mul.i6.i.i52 = shl nuw nsw i32 %conv.i5.i.i51, 14
  %add.ptr.i7.i.i53 = getelementptr i8, ptr %174, i32 %mul.i6.i.i52
  %add.ptr1.i8.i.i54 = getelementptr i8, ptr %add.ptr.i7.i.i53, i32 244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i8.i.i54, i32 251658240) #8, !srcloc !118
  br label %out

out:                                              ; preds = %sw.bb9, %sw.bb8, %sw.bb, %xpsgtr_configure_pll.exit.out_crit_edge, %if.then2.out_crit_edge, %land.lhs.true.i.out_crit_edge
  %ret.1 = phi i32 [ %call3, %if.then2.out_crit_edge ], [ %ret.0, %xpsgtr_configure_pll.exit.out_crit_edge ], [ %ret.0, %sw.bb9 ], [ %ret.0, %sw.bb8 ], [ %ret.0, %sw.bb ], [ 0, %land.lhs.true.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %gtr_mutex) #8
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xpsgtr_phy_exit(ptr nocapture noundef readonly %phy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %skip_phy_init = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skip_phy_init to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %skip_phy_init, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %protocol.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol.i, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %3, label %entry.if.then6_crit_edge [
    i8 3, label %land.lhs.true.i
    i8 4, label %lor.lhs.false
  ]

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

land.lhs.true.i:                                  ; preds = %entry
  %skip_phy_init.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skip_phy_init.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %skip_phy_init.i, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then6_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.if.then6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp4 = icmp eq i8 %8, 8
  br i1 %cmp4, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %land.lhs.true.i.if.then6_crit_edge, %entry.if.then6_crit_edge
  %call7 = tail call fastcc i32 @xpsgtr_wait_pll_lock(ptr noundef %phy)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_phy_configure(ptr nocapture noundef readonly %phy, ptr nocapture noundef readonly %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %protocol = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.not = icmp eq i8 %3, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pre = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 3
  %4 = ptrtoint ptr %pre to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pre, align 4
  %voltage = getelementptr inbounds %struct.phy_configure_opts_dp, ptr %opts, i32 0, i32 2
  %6 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %voltage, align 4
  %arrayidx1.i = getelementptr [4 x [4 x i8]], ptr @xpsgtr_phy_configure_dp.voltage_swing, i32 0, i32 %5, i32 %7
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %9 to i32
  %dev.i.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %serdes.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdes.i.i, align 4
  %lane.i.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %lane.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lane.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 14
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 3264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %16 = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %16) #8, !srcloc !118
  %arrayidx3.i = getelementptr [4 x [4 x i8]], ptr @xpsgtr_phy_configure_dp.pre_emphasis, i32 0, i32 %5, i32 %7
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %serdes.i9.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %serdes.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serdes.i9.i, align 4
  %23 = ptrtoint ptr %lane.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lane.i.i, align 1
  %conv.i11.i = zext i8 %24 to i32
  %mul.i12.i = shl nuw nsw i32 %conv.i11.i, 14
  %add.ptr.i13.i = getelementptr i8, ptr %22, i32 %mul.i12.i
  %add.ptr1.i14.i = getelementptr i8, ptr %add.ptr.i13.i, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %25 = shl nuw i32 %conv4.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i14.i, i32 %25) #8, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpsgtr_phy_tx_term_fix(ptr nocapture noundef readonly %gtr_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xpsgtr_phy, ptr %gtr_phy, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %serdes.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 65560
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %5 = and i32 %4, -50331649
  %6 = or i32 %5, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %8, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %6) #8, !srcloc !118
  %9 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %10, i32 65560
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %12 = and i32 %11, -50331649
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i64 = getelementptr i8, ptr %15, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i64, i32 %13) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 60488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %19, i32 60492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 536870912) #8, !srcloc !118
  tail call fastcc void @xpsgtr_lane_set_protocol(ptr noundef %gtr_phy)
  %20 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %21, i32 65560
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %23 = and i32 %22, -50331649
  %24 = or i32 %23, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i71 = getelementptr i8, ptr %26, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i71, i32 %24) #8, !srcloc !118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpsgtr_phy_tx_term_fix, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug290, ptr noundef %28, ptr noundef nonnull @.str.20) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %29 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i7398 = getelementptr i8, ptr %30, i32 61204
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7398) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %32 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not99 = icmp eq i32 %32, 0
  br i1 %cmp.not99, label %do.end.if.end7_crit_edge, label %do.end.do.body18_crit_edge

do.end.do.body18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.end.if.end7_crit_edge:                         ; preds = %do.end
  br label %if.end7

if.end7:                                          ; preds = %do.cond15.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %timeout.0100 = phi i32 [ %dec, %do.cond15.if.end7_crit_edge ], [ 1000, %do.end.if.end7_crit_edge ]
  %dec = add nsw i32 %timeout.0100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %cleanup.thread, label %do.cond15

cleanup.thread:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21) #11
  br label %cleanup38

do.cond15:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #8
  %36 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %37, i32 61204
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %39 = and i32 %38, 33554432
  %cmp.not = icmp eq i32 %39, 0
  br i1 %cmp.not, label %do.cond15.if.end7_crit_edge, label %do.cond15.do.body18_crit_edge

do.cond15.do.body18_crit_edge:                    ; preds = %do.cond15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.cond15.if.end7_crit_edge:                      ; preds = %do.cond15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.body18:                                        ; preds = %do.cond15.do.body18_crit_edge, %do.end.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpsgtr_phy_tx_term_fix, %if.then30)) #8
          to label %do.end34 [label %if.then30], !srcloc !125

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug291, ptr noundef %41, ptr noundef nonnull @.str.22) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body18
  %42 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %43, i32 2828
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #8, !srcloc !119
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %46 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %47, i32 65560
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %49 = and i32 %48, -50331649
  %50 = or i32 %49, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i80 = getelementptr i8, ptr %52, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i80, i32 %50) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %53 = shl i32 %45, 21
  %54 = and i32 %53, 117440512
  %55 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %56, i32 60492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %54) #8, !srcloc !118
  %and37 = shl i32 %45, 29
  %or = or i32 %and37, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %58, i32 60488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %or) #8, !srcloc !118
  %59 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %60, i32 65560
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %62 = and i32 %61, -50331649
  %63 = or i32 %62, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i89 = getelementptr i8, ptr %65, i32 65560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i89, i32 %63) #8, !srcloc !118
  br label %cleanup38

cleanup38:                                        ; preds = %do.end34, %cleanup.thread
  %retval.2 = phi i32 [ 0, %do.end34 ], [ -110, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xpsgtr_lane_set_protocol(ptr nocapture noundef readonly %gtr_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xpsgtr_phy, ptr %gtr_phy, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %protocol1 = getelementptr inbounds %struct.xpsgtr_phy, ptr %gtr_phy, i32 0, i32 3
  %2 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol1, align 2
  %lane = getelementptr inbounds %struct.xpsgtr_phy, ptr %gtr_phy, i32 0, i32 2
  %4 = ptrtoint ptr %lane to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lane, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb5
    i8 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2 = zext i8 %3 to i32
  %serdes.i.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 65552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %10 = and i32 %9, -117440513
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or.i = or i32 %11, %conv2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %13 = ptrtoint ptr %serdes.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serdes.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %14, i32 65552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %12) #8, !srcloc !118
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 4
  %serdes.i.i18 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %serdes.i.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serdes.i.i18, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %16, i32 65552
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %18 = and i32 %17, -1879048193
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or.i21 = or i32 %19, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i21) #8
  %21 = ptrtoint ptr %serdes.i.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serdes.i.i18, align 4
  %add.ptr.i6.i22 = getelementptr i8, ptr %22, i32 65552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i22, i32 %20) #8, !srcloc !118
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = zext i8 %3 to i32
  %serdes.i.i23 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %serdes.i.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serdes.i.i23, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %24, i32 65556
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %26 = and i32 %25, -117440513
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %or.i26 = or i32 %27, %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i26) #8
  %29 = ptrtoint ptr %serdes.i.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serdes.i.i23, align 4
  %add.ptr.i6.i27 = getelementptr i8, ptr %30, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i27, i32 %28) #8, !srcloc !118
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i8 %3 to i32
  %shl9 = shl nuw nsw i32 %conv8, 4
  %serdes.i.i28 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %serdes.i.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serdes.i.i28, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %32, i32 65556
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %34 = and i32 %33, -1879048193
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %or.i31 = or i32 %35, %shl9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #8
  %37 = ptrtoint ptr %serdes.i.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serdes.i.i28, align 4
  %add.ptr.i6.i32 = getelementptr i8, ptr %38, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i32, i32 %36) #8, !srcloc !118
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xpsgtr_wait_pll_lock(ptr nocapture noundef readonly %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xpsgtr_wait_pll_lock.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xpsgtr_wait_pll_lock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xpsgtr_wait_pll_lock.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lane.i = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %serdes.i41 = getelementptr inbounds %struct.xpsgtr_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %serdes.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdes.i41, align 4
  %10 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lane.i, align 1
  %conv.i42 = zext i8 %11 to i32
  %mul.i43 = shl nuw nsw i32 %conv.i42, 14
  %add.ptr.i44 = getelementptr i8, ptr %9, i32 %mul.i43
  %add.ptr1.i45 = getelementptr i8, ptr %add.ptr.i44, i32 9188
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i45) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not46 = icmp eq i32 %13, 0
  br i1 %cmp.not46, label %do.end.if.end7_crit_edge, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end.if.end7_crit_edge:                         ; preds = %do.end
  br label %if.end7

if.end7:                                          ; preds = %cleanup.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %timeout.047 = phi i32 [ %dec, %cleanup.if.end7_crit_edge ], [ 1000, %do.end.if.end7_crit_edge ]
  %dec = add nsw i32 %timeout.047, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %do.end15, label %cleanup

cleanup:                                          ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %serdes.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serdes.i, align 4
  %19 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lane.i, align 1
  %conv.i = zext i8 %20 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 14
  %add.ptr.i = getelementptr i8, ptr %18, i32 9188
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %22 = and i32 %21, 268435456
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %cleanup.if.end7_crit_edge, label %cleanup.if.end19_crit_edge

cleanup.if.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

cleanup.if.end7_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %25 = ptrtoint ptr %lane.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lane.i, align 1
  %conv = zext i8 %26 to i32
  %type = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 4
  %conv17 = zext i8 %28 to i32
  %protocol = getelementptr inbounds %struct.xpsgtr_phy, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol, align 2
  %conv18 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv17, i32 noundef %conv18) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end15, %cleanup.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %ret.1.ph38 = phi i32 [ -110, %do.end15 ], [ 0, %do.end.if.end19_crit_edge ], [ 0, %cleanup.if.end19_crit_edge ]
  ret i32 %ret.1.ph38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serdes.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 65552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !119
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %saved_icm_cfg0 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %saved_icm_cfg0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved_icm_cfg0, align 4
  %7 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serdes.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 65556
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #8, !srcloc !119
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %saved_icm_cfg1 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %saved_icm_cfg1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %saved_icm_cfg1, align 4
  %arrayidx = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %arrayidx.1 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  %arrayidx.2 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  %arrayidx.3 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %19) #8
  tail call void @clk_unprepare(ptr noundef %19) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xpsgtr_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %clk_prepare_enable.exit

clk_prepare_enable.exit.thread81:                 ; preds = %if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge, %if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge, %if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge
  %call1.i.lcssa.ph = phi i32 [ %call1.i.3, %if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge ], [ %call1.i.2, %if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge ], [ %call1.i.1, %if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge ]
  %i.058.lcssa67.ph = phi i32 [ 3, %if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge ], [ 2, %if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge ], [ 1, %if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge ]
  %.lcssa65.ph = phi ptr [ %9, %if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge ], [ %7, %if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge ], [ %5, %if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.lcssa65.ph) #8
  br label %while.body

clk_prepare_enable.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %for.inc.while.body_crit_edge

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.i.1:                                       ; preds = %for.inc
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge

if.end.i.1.clk_prepare_enable.exit.thread81_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.thread81

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %for.inc.1.while.body_crit_edge

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.i.2:                                       ; preds = %for.inc.1
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %for.inc.2, label %if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge

if.end.i.2.clk_prepare_enable.exit.thread81_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.thread81

for.inc.2:                                        ; preds = %if.end.i.2
  %arrayidx.3 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %for.inc.2.while.body_crit_edge

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.i.3:                                       ; preds = %for.inc.2
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %for.inc.3, label %if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge

if.end.i.3.clk_prepare_enable.exit.thread81_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.thread81

for.inc.3:                                        ; preds = %if.end.i.3
  %serdes.i = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serdes.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 65552
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !119
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %14 = ptrtoint ptr %serdes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serdes.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 65556
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !119
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %saved_icm_cfg0 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %saved_icm_cfg0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saved_icm_cfg0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %land.lhs.true, label %for.inc.3.if.end7_crit_edge

for.inc.3.if.end7_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %for.inc.3
  %saved_icm_cfg1 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %saved_icm_cfg1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved_icm_cfg1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not = icmp eq i32 %21, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %for.inc.3.if.end7_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp9 = icmp eq i32 %13, %19
  br i1 %cmp9, label %land.lhs.true10, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true10:                                  ; preds = %if.end7
  %saved_icm_cfg111 = getelementptr inbounds %struct.xpsgtr_dev, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %saved_icm_cfg111 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved_icm_cfg111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %23)
  %cmp12 = icmp eq i32 %17, %23
  br i1 %cmp12, label %land.lhs.true10.if.end14_crit_edge, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %if.end7.if.else_crit_edge
  br label %if.end14

if.end14:                                         ; preds = %if.else, %land.lhs.true10.if.end14_crit_edge
  %skip_phy_init.0.off0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true10.if.end14_crit_edge ]
  %frombool = zext i1 %skip_phy_init.0.off0 to i8
  %skip_phy_init20 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %24 = ptrtoint ptr %skip_phy_init20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %skip_phy_init20, align 1
  %skip_phy_init20.1 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 1, i32 4
  %25 = ptrtoint ptr %skip_phy_init20.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %skip_phy_init20.1, align 1
  %skip_phy_init20.2 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 2, i32 4
  %26 = ptrtoint ptr %skip_phy_init20.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %skip_phy_init20.2, align 1
  %skip_phy_init20.3 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 4, i32 3, i32 4
  %27 = ptrtoint ptr %skip_phy_init20.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %skip_phy_init20.3, align 1
  br label %cleanup

while.body:                                       ; preds = %for.inc.2.while.body_crit_edge, %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge, %clk_prepare_enable.exit.thread81
  %retval.0.i75 = phi i32 [ %call1.i.lcssa.ph, %clk_prepare_enable.exit.thread81 ], [ %call.i.3, %for.inc.2.while.body_crit_edge ], [ %call.i.2, %for.inc.1.while.body_crit_edge ], [ %call.i.1, %for.inc.while.body_crit_edge ]
  %i.0586974 = phi i32 [ %i.058.lcssa67.ph, %clk_prepare_enable.exit.thread81 ], [ 3, %for.inc.2.while.body_crit_edge ], [ 2, %for.inc.1.while.body_crit_edge ], [ 1, %for.inc.while.body_crit_edge ]
  %dec = add nsw i32 %i.0586974, -1
  %arrayidx26 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 %dec
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx26, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.0586974, -2
  %arrayidx26.1 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 %dec.1
  %30 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx26.1, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool24.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool24.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec.2 = add nsw i32 %i.0586974, -3
  %arrayidx26.2 = getelementptr %struct.xpsgtr_dev, ptr %1, i32 0, i32 6, i32 %dec.2
  %32 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx26.2, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.2, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end14, %land.lhs.true.cleanup_crit_edge, %clk_prepare_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call1.i, %clk_prepare_enable.exit ], [ 0, %if.end14 ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i75, %while.body.2 ], [ %retval.0.i75, %while.body.1.cleanup_crit_edge ], [ %retval.0.i75, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_phy_zynqmp__292_1034_xpsgtr_driver_init6, !1, !"__initcall__kmod_phy_zynqmp__292_1034_xpsgtr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1034, i32 1}
!2 = !{ptr @__exitcall_xpsgtr_driver_exit, !1, !"__exitcall_xpsgtr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1036, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1037, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description296, !9, !"__UNIQUE_ID_description296", i1 false, i1 false}
!9 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1038, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1028, i32 11}
!12 = !{ptr @xpsgtr_driver, !13, !"xpsgtr_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1025, i32 31}
!14 = !{ptr @xpsgtr_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 964, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 966, i32 34}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 968, i32 30}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 971, i32 64}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 975, i32 62}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 993, i32 4}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xpsgtr_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @xpsgtr_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1005, i32 3}
!35 = !{ptr @xpsgtr_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @xpsgtr_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 899, i32 32}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 903, i32 10}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 931, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xpsgtr_get_ref_clocks._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @xpsgtr_get_ref_clocks._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ssc_lookup, !47, !"ssc_lookup", i1 false, i1 false}
!47 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 235, i32 32}
!48 = !{ptr @xpsgtr_phyops, !49, !"xpsgtr_phyops", i1 false, i1 false}
!49 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 657, i32 29}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 529, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug290, !51, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 538, i32 4}
!57 = !{ptr @xpsgtr_phy_tx_term_fix._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xpsgtr_phy_tx_term_fix._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 545, i32 2}
!61 = !{ptr @xpsgtr_phy_tx_term_fix.__UNIQUE_ID_ddebug291, !60, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 313, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xpsgtr_wait_pll_lock.__UNIQUE_ID_ddebug289, !63, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 332, i32 3}
!68 = !{ptr @xpsgtr_wait_pll_lock._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @xpsgtr_wait_pll_lock._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @xpsgtr_phy_configure_dp.voltage_swing, !71, !"voltage_swing", i1 false, i1 false}
!71 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 463, i32 18}
!72 = !{ptr @xpsgtr_phy_configure_dp.pre_emphasis, !73, !"pre_emphasis", i1 false, i1 false}
!73 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 469, i32 18}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 775, i32 3}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @xpsgtr_xlate._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @xpsgtr_xlate._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 785, i32 3}
!81 = !{ptr @xpsgtr_xlate._entry.28, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @xpsgtr_xlate._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 795, i32 3}
!85 = !{ptr @xpsgtr_xlate._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @xpsgtr_xlate._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 802, i32 3}
!89 = !{ptr @xpsgtr_xlate._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @xpsgtr_xlate._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @xpsgtr_set_lane_type.types, !92, !"types", i1 false, i1 false}
!92 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 678, i32 20}
!93 = !{ptr @xpsgtr_set_lane_type.types.37, !94, !"types", i1 false, i1 false}
!94 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 689, i32 20}
!95 = !{ptr @xpsgtr_set_lane_type.types.38, !96, !"types", i1 false, i1 false}
!96 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 700, i32 20}
!97 = !{ptr @xpsgtr_set_lane_type.types.39, !98, !"types", i1 false, i1 false}
!98 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 711, i32 20}
!99 = !{ptr @xpsgtr_set_lane_type.types.40, !100, !"types", i1 false, i1 false}
!100 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 724, i32 20}
!101 = !{ptr @icm_matrix, !102, !"icm_matrix", i1 false, i1 false}
!102 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 750, i32 27}
!103 = !{ptr @xpsgtr_of_match, !104, !"xpsgtr_of_match", i1 false, i1 false}
!104 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 1018, i32 34}
!105 = !{ptr @xpsgtr_pm_ops, !106, !"xpsgtr_pm_ops", i1 false, i1 false}
!106 = !{!"../drivers/phy/xilinx/phy-zynqmp.c", i32 880, i32 32}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i8 0, i8 2}
!117 = !{i64 2155075122}
!118 = !{i64 3094287}
!119 = !{i64 3094705}
!120 = !{i64 2155073390}
!121 = !{i64 2155073779}
!122 = !{i64 2155076348}
!123 = !{i64 2155077225}
!124 = !{i64 2155083018}
!125 = !{i64 2148746697, i64 2148746702, i64 2148746715, i64 2148746759, i64 2148746793, i64 2148746814}
!126 = !{i64 2155074743}
