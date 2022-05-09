; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.127, i32 }
%union.anon.127 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@xgbe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgbe_platform_probe, ptr @xgbe_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgbe_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_platform_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd-xgbe\00", [23 x i8] zeroinitializer }, align 32
@xgbe_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,xgbe-seattle-v1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xgbe_v1 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgbe_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xgbe_platform_suspend, ptr @xgbe_platform_resume, ptr @xgbe_platform_suspend, ptr @xgbe_platform_resume, ptr @xgbe_platform_suspend, ptr @xgbe_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to obtain phy device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgbe_platform_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-platform.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr = internal global ptr @xgbe_platform_probe._entry, section ".printk_index", align 4
@xgbe_platform_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgmac ioremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.8 = internal global ptr @xgbe_platform_probe._entry.6, section ".printk_index", align 4
@xgbe_platform_probe.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgmac_regs = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpcs ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.13 = internal global ptr @xgbe_platform_probe._entry.11, section ".printk_index", align 4
@xgbe_platform_probe.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpcs_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxtx ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.17 = internal global ptr @xgbe_platform_probe._entry.15, section ".printk_index", align 4
@xgbe_platform_probe.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxtx_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sir0 ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.21 = internal global ptr @xgbe_platform_probe._entry.19, section ".printk_index", align 4
@xgbe_platform_probe.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sir0_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sir1 ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.25 = internal global ptr @xgbe_platform_probe._entry.23, section ".printk_index", align 4
@xgbe_platform_probe.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sir1_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac-address\00", [20 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid %s property\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.30 = internal global ptr @xgbe_platform_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-mode\00", [23 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.33 = internal global ptr @xgbe_platform_probe._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amd,per-channel-interrupt\00", [38 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA is not supported\00", [43 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.37 = internal global ptr @xgbe_platform_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net device enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net device not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@xgbe_platform_probe._entry_ptr.42 = internal global ptr @xgbe_platform_probe._entry.39, section ".printk_index", align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma_clk\00", [24 x i8] zeroinitializer }, align 32
@xgbe_of_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma devm_clk_get failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgbe_of_support\00", [16 x i8] zeroinitializer }, align 32
@xgbe_of_support._entry_ptr = internal global ptr @xgbe_of_support._entry, section ".printk_index", align 4
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_clk\00", [24 x i8] zeroinitializer }, align 32
@xgbe_of_support._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.77, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ptp devm_clk_get failed\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_of_support._entry_ptr.81 = internal global ptr @xgbe_of_support._entry.79, section ".printk_index", align 4
@xgbe_v1 = internal constant { %struct.xgbe_version_data, [48 x i8] } { %struct.xgbe_version_data { ptr @xgbe_init_function_ptrs_phy_v1, i32 0, i32 0, i32 81920, i32 81920, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"xgbe_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 606, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 608, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"xgbe_of_match\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 594, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"xgbe_platform_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 603, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 328, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 357, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 362, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 366, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 371, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 376, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 381, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 386, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 391, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 396, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 401, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 404, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 408, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 415, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 418, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 426, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 442, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 499, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 510, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 228, i32 44 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 241, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 204, i32 36 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 206, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 212, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 214, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [8 x i8] c"xgbe_v1\00", align 1
@___asan_gen_.224 = private constant [49 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 575, i32 39 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @xgbe_of_support._entry, ptr @xgbe_of_support._entry.79, ptr @xgbe_of_support._entry_ptr, ptr @xgbe_of_support._entry_ptr.81, ptr @xgbe_platform_probe._entry, ptr @xgbe_platform_probe._entry.11, ptr @xgbe_platform_probe._entry.15, ptr @xgbe_platform_probe._entry.19, ptr @xgbe_platform_probe._entry.23, ptr @xgbe_platform_probe._entry.28, ptr @xgbe_platform_probe._entry.32, ptr @xgbe_platform_probe._entry.35, ptr @xgbe_platform_probe._entry.39, ptr @xgbe_platform_probe._entry.6, ptr @xgbe_platform_probe._entry_ptr, ptr @xgbe_platform_probe._entry_ptr.13, ptr @xgbe_platform_probe._entry_ptr.17, ptr @xgbe_platform_probe._entry_ptr.21, ptr @xgbe_platform_probe._entry_ptr.25, ptr @xgbe_platform_probe._entry_ptr.30, ptr @xgbe_platform_probe._entry_ptr.33, ptr @xgbe_platform_probe._entry_ptr.37, ptr @xgbe_platform_probe._entry_ptr.42, ptr @xgbe_platform_probe._entry_ptr.8, ptr @xgbe_driver, ptr @.str, ptr @xgbe_of_match, ptr @xgbe_platform_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.59, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @xgbe_v1], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_platform_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_of_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_of_support._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_v1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgbe_platform_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgbe_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_platform_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgbe_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  %phy_mode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode) #6
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %phy_mode, align 4, !annotation !164
  %call = tail call ptr @xgbe_alloc_pdata(ptr noundef %dev1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %do.end264

if.end:                                           ; preds = %entry
  %platdev = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %platdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %platdev, align 8
  %adev = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %adev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  %cond = zext i1 %tobool.not to i32
  %use_acpi = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %use_acpi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %use_acpi, align 8
  br i1 %tobool.not, label %xgbe_get_vdata.exit.thread, label %cond.false.i

xgbe_get_vdata.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdata453 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %vdata453 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vdata453, align 4
  %dev1.i.i455 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %dev1.i.i455 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i.i455, align 8
  br label %if.then.i

cond.false.i:                                     ; preds = %if.end
  %dev.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 8
  %call.i.i = tail call ptr @of_match_device(ptr noundef nonnull @xgbe_of_match, ptr noundef %12) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.false.i.xgbe_get_vdata.exit_crit_edge, label %cond.true.i.i

cond.false.i.xgbe_get_vdata.exit_crit_edge:       ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgbe_get_vdata.exit

cond.true.i.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i = getelementptr inbounds %struct.of_device_id, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  br label %xgbe_get_vdata.exit

xgbe_get_vdata.exit:                              ; preds = %cond.true.i.i, %cond.false.i.xgbe_get_vdata.exit_crit_edge
  %cond.i.ph = phi ptr [ null, %cond.false.i.xgbe_get_vdata.exit_crit_edge ], [ %14, %cond.true.i.i ]
  %15 = ptrtoint ptr %use_acpi to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %use_acpi, align 8
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 7
  %16 = ptrtoint ptr %vdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond.i.ph, ptr %vdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i413 = icmp eq i32 %.pr, 0
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 8
  br i1 %tobool.not.i413, label %if.else.i, label %xgbe_get_vdata.exit.if.then.i_crit_edge

xgbe_get_vdata.exit.if.then.i_crit_edge:          ; preds = %xgbe_get_vdata.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %xgbe_get_vdata.exit.if.then.i_crit_edge, %xgbe_get_vdata.exit.thread
  %19 = phi ptr [ %10, %xgbe_get_vdata.exit.thread ], [ %18, %xgbe_get_vdata.exit.if.then.i_crit_edge ]
  %vdata457 = phi ptr [ %vdata453, %xgbe_get_vdata.exit.thread ], [ %vdata, %xgbe_get_vdata.exit.if.then.i_crit_edge ]
  %call.i = tail call ptr @get_device(ptr noundef %19) #6
  %20 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platdev, align 8
  br label %xgbe_get_phy_pdev.exit

if.else.i:                                        ; preds = %xgbe_get_vdata.exit
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %24 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %23, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  br label %if.else.i.i

of_parse_phandle.exit.i.i:                        ; preds = %if.else.i
  %25 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #6
  %tobool.not.i.i414 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i414, label %of_parse_phandle.exit.i.i.if.else.i.i_crit_edge, label %if.then.i.i

of_parse_phandle.exit.i.i.if.else.i.i_crit_edge:  ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = call ptr @of_find_device_by_node(ptr noundef nonnull %26) #6
  call void @of_node_put(ptr noundef nonnull %26) #6
  br label %xgbe_get_phy_pdev.exit

if.else.i.i:                                      ; preds = %of_parse_phandle.exit.i.i.if.else.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  %call3.i.i = call ptr @get_device(ptr noundef %18) #6
  %27 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platdev, align 8
  br label %xgbe_get_phy_pdev.exit

xgbe_get_phy_pdev.exit:                           ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %vdata456 = phi ptr [ %vdata457, %if.then.i ], [ %vdata, %if.then.i.i ], [ %vdata, %if.else.i.i ]
  %phy_pdev.0.i = phi ptr [ %21, %if.then.i ], [ %call2.i.i, %if.then.i.i ], [ %28, %if.else.i.i ]
  %tobool6.not = icmp eq ptr %phy_pdev.0.i, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %xgbe_get_phy_pdev.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %err_phydev

if.end8:                                          ; preds = %xgbe_get_phy_pdev.exit
  %phy_platdev = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %phy_platdev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %phy_pdev.0.i, ptr %phy_platdev, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %phy_pdev.0.i, i32 0, i32 3
  %phy_dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %phy_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev9, ptr %phy_dev, align 8
  %cmp = icmp eq ptr %phy_pdev.0.i, %pdev
  %num_resources.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %31 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_resources.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp7.not.i = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  br i1 %cmp7.not.i, label %if.then10.xgbe_resource_count.exit430_crit_edge, label %for.body.lr.ph.i

if.then10.xgbe_resource_count.exit430_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgbe_resource_count.exit430

for.body.lr.ph.i:                                 ; preds = %if.then10
  %resource.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %33 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr %struct.resource, ptr %34, i32 %i.08.i, i32 3
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp1.i = icmp eq i32 %and.i.i, 512
  %inc.i = zext i1 %cmp1.i to i32
  %spec.select.i = add i32 %count.09.i, %inc.i
  %inc2.i = add nuw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, %32
  br i1 %exitcond.not.i, label %for.body.lr.ph.i418, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.lr.ph.i418:                              ; preds = %for.body.i
  %sub = add i32 %spec.select.i, -3
  %37 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource.i, align 8
  br label %for.body.i428

for.body.i428:                                    ; preds = %for.body.i428.for.body.i428_crit_edge, %for.body.lr.ph.i418
  %count.09.i419 = phi i32 [ 0, %for.body.lr.ph.i418 ], [ %spec.select.i425, %for.body.i428.for.body.i428_crit_edge ]
  %i.08.i420 = phi i32 [ 0, %for.body.lr.ph.i418 ], [ %inc2.i426, %for.body.i428.for.body.i428_crit_edge ]
  %flags.i.i421 = getelementptr %struct.resource, ptr %38, i32 %i.08.i420, i32 3
  %39 = ptrtoint ptr %flags.i.i421 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i421, align 4
  %and.i.i422 = and i32 %40, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i.i422)
  %cmp1.i423 = icmp eq i32 %and.i.i422, 1024
  %inc.i424 = zext i1 %cmp1.i423 to i32
  %spec.select.i425 = add i32 %count.09.i419, %inc.i424
  %inc2.i426 = add nuw i32 %i.08.i420, 1
  %exitcond.not.i427 = icmp eq i32 %inc2.i426, %32
  br i1 %exitcond.not.i427, label %for.body.i428.xgbe_resource_count.exit430_crit_edge, label %for.body.i428.for.body.i428_crit_edge

for.body.i428.for.body.i428_crit_edge:            ; preds = %for.body.i428
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i428

for.body.i428.xgbe_resource_count.exit430_crit_edge: ; preds = %for.body.i428
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgbe_resource_count.exit430

xgbe_resource_count.exit430:                      ; preds = %for.body.i428.xgbe_resource_count.exit430_crit_edge, %if.then10.xgbe_resource_count.exit430_crit_edge
  %sub460 = phi i32 [ -3, %if.then10.xgbe_resource_count.exit430_crit_edge ], [ %sub, %for.body.i428.xgbe_resource_count.exit430_crit_edge ]
  %count.0.lcssa.i429 = phi i32 [ 0, %if.then10.xgbe_resource_count.exit430_crit_edge ], [ %spec.select.i425, %for.body.i428.xgbe_resource_count.exit430_crit_edge ]
  %sub13 = add i32 %count.0.lcssa.i429, -1
  br label %if.end15

if.else:                                          ; preds = %if.end8
  br i1 %cmp7.not.i, label %if.else.if.end15_crit_edge, label %for.body.lr.ph.i434

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

for.body.lr.ph.i434:                              ; preds = %if.else
  %resource.i433 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %41 = ptrtoint ptr %resource.i433 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i433, align 8
  br label %for.body.i444

for.body.i444:                                    ; preds = %for.body.i444.for.body.i444_crit_edge, %for.body.lr.ph.i434
  %count.09.i435 = phi i32 [ 0, %for.body.lr.ph.i434 ], [ %spec.select.i441, %for.body.i444.for.body.i444_crit_edge ]
  %i.08.i436 = phi i32 [ 0, %for.body.lr.ph.i434 ], [ %inc2.i442, %for.body.i444.for.body.i444_crit_edge ]
  %flags.i.i437 = getelementptr %struct.resource, ptr %42, i32 %i.08.i436, i32 3
  %43 = ptrtoint ptr %flags.i.i437 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i437, align 4
  %and.i.i438 = and i32 %44, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i.i438)
  %cmp1.i439 = icmp eq i32 %and.i.i438, 1024
  %inc.i440 = zext i1 %cmp1.i439 to i32
  %spec.select.i441 = add i32 %count.09.i435, %inc.i440
  %inc2.i442 = add nuw i32 %i.08.i436, 1
  %exitcond.not.i443 = icmp eq i32 %inc2.i442, %32
  br i1 %exitcond.not.i443, label %for.body.i444.if.end15_crit_edge, label %for.body.i444.for.body.i444_crit_edge

for.body.i444.for.body.i444_crit_edge:            ; preds = %for.body.i444
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i444

for.body.i444.if.end15_crit_edge:                 ; preds = %for.body.i444
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %for.body.i444.if.end15_crit_edge, %if.else.if.end15_crit_edge, %xgbe_resource_count.exit430
  %dma_irqend.0 = phi i32 [ %sub13, %xgbe_resource_count.exit430 ], [ 0, %if.else.if.end15_crit_edge ], [ %spec.select.i441, %for.body.i444.if.end15_crit_edge ]
  %phy_irqnum.0 = phi i32 [ %sub13, %xgbe_resource_count.exit430 ], [ 0, %if.else.if.end15_crit_edge ], [ 0, %for.body.i444.if.end15_crit_edge ]
  %phy_memnum.0 = phi i32 [ %sub460, %xgbe_resource_count.exit430 ], [ 0, %if.else.if.end15_crit_edge ], [ 0, %for.body.i444.if.end15_crit_edge ]
  %call16 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 9
  %45 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call16, ptr %xgmac_regs, align 4
  %cmp.i447 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i447, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %46 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xgmac_regs, align 4
  %48 = ptrtoint ptr %47 to i32
  br label %err_io

if.end25:                                         ; preds = %if.end15
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 134
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 4
  %and = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.if.end38_crit_edge, label %do.body28

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_platform_probe, %if.then33)) #6
          to label %if.end38 [label %if.then33], !srcloc !165

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_platform_probe.__UNIQUE_ID_ddebug351, ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %52) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %do.body28, %if.end25.if.end38_crit_edge
  %call39 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %xpcs_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 10
  %53 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call39, ptr %xpcs_regs, align 8
  %cmp.i448 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i448, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %54 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xpcs_regs, align 8
  %56 = ptrtoint ptr %55 to i32
  br label %err_io

if.end48:                                         ; preds = %if.end38
  %57 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable, align 4
  %and50 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end70_crit_edge, label %do.body53

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_platform_probe, %if.then65)) #6
          to label %if.end70 [label %if.then65], !srcloc !165

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xpcs_regs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_platform_probe.__UNIQUE_ID_ddebug352, ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef %60) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %do.body53, %if.end48.if.end70_crit_edge
  %inc = add i32 %phy_memnum.0, 1
  %call71 = call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %phy_pdev.0.i, i32 noundef %phy_memnum.0) #6
  %rxtx_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 11
  %61 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call71, ptr %rxtx_regs, align 4
  %cmp.i449 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i449, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  %62 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rxtx_regs, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %err_io

if.end80:                                         ; preds = %if.end70
  %65 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable, align 4
  %and82 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.if.end102_crit_edge, label %do.body85

if.end80.if.end102_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.body85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_platform_probe, %if.then97)) #6
          to label %if.end102 [label %if.then97], !srcloc !165

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %rxtx_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rxtx_regs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_platform_probe.__UNIQUE_ID_ddebug353, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %68) #6
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %do.body85, %if.end80.if.end102_crit_edge
  %inc103 = add i32 %phy_memnum.0, 2
  %call104 = call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %phy_pdev.0.i, i32 noundef %inc) #6
  %sir0_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 12
  %69 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call104, ptr %sir0_regs, align 8
  %cmp.i450 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i450, label %do.end110, label %if.end113

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %70 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sir0_regs, align 8
  %72 = ptrtoint ptr %71 to i32
  br label %err_io

if.end113:                                        ; preds = %if.end102
  %73 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable, align 4
  %and115 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end113.if.end135_crit_edge, label %do.body118

if.end113.if.end135_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

do.body118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_platform_probe, %if.then130)) #6
          to label %if.end135 [label %if.then130], !srcloc !165

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %sir0_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sir0_regs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_platform_probe.__UNIQUE_ID_ddebug354, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %76) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %do.body118, %if.end113.if.end135_crit_edge
  %call137 = call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %phy_pdev.0.i, i32 noundef %inc103) #6
  %sir1_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 13
  %77 = ptrtoint ptr %sir1_regs to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call137, ptr %sir1_regs, align 4
  %cmp.i451 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i451, label %do.end143, label %if.end146

do.end143:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  %78 = ptrtoint ptr %sir1_regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sir1_regs, align 4
  %80 = ptrtoint ptr %79 to i32
  br label %err_io

if.end146:                                        ; preds = %if.end135
  %81 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable, align 4
  %and148 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end146.if.end168_crit_edge, label %do.body151

if.end146.if.end168_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end168

do.body151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_platform_probe, %if.then163)) #6
          to label %if.end168 [label %if.then163], !srcloc !165

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %sir1_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sir1_regs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_platform_probe.__UNIQUE_ID_ddebug355, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %84) #6
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %do.body151, %if.end146.if.end168_crit_edge
  %mac_addr = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 103
  %call169 = call i32 @device_property_read_u8_array(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef %mac_addr, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %lor.lhs.false, label %if.end168.do.end177_crit_edge

if.end168.do.end177_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end177

lor.lhs.false:                                    ; preds = %if.end168
  %85 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mac_addr, align 4
  %87 = and i32 %86, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i.not.i = icmp eq i32 %87, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.do.end177_crit_edge

lor.lhs.false.do.end177_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end177

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 4
  %88 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %89 to i32
  %or.i.i = or i32 %86, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end177_crit_edge, label %if.end181

is_valid_ether_addr.exit.do.end177_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end177

do.end177:                                        ; preds = %is_valid_ether_addr.exit.do.end177_crit_edge, %lor.lhs.false.do.end177_crit_edge, %if.end168.do.end177_crit_edge
  %spec.select = phi i32 [ -22, %lor.lhs.false.do.end177_crit_edge ], [ %call169, %if.end168.do.end177_crit_edge ], [ -22, %is_valid_ether_addr.exit.do.end177_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #9
  br label %err_io

if.end181:                                        ; preds = %is_valid_ether_addr.exit
  %call182 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull %phy_mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %lor.lhs.false184, label %if.end181.do.end191_crit_edge

if.end181.do.end191_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191

lor.lhs.false184:                                 ; preds = %if.end181
  %90 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_mode, align 4
  %call186 = call i32 @strcmp(ptr noundef %91, ptr noundef nonnull dereferenceable(6) @.str.59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end195, label %lor.lhs.false184.do.end191_crit_edge

lor.lhs.false184.do.end191_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191

do.end191:                                        ; preds = %lor.lhs.false184.do.end191_crit_edge, %if.end181.do.end191_crit_edge
  %spec.select398 = phi i32 [ %call182, %if.end181.do.end191_crit_edge ], [ -22, %lor.lhs.false184.do.end191_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #9
  br label %err_io

if.end195:                                        ; preds = %lor.lhs.false184
  %phy_mode196 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 135
  %92 = ptrtoint ptr %phy_mode196 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 15, ptr %phy_mode196, align 8
  %call197 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.34) #6
  br i1 %call197, label %if.then198, label %if.end195.if.end199_crit_edge

if.end195.if.end199_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 46
  %93 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %per_channel_irq, align 4
  %channel_irq_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 49
  %94 = ptrtoint ptr %channel_irq_mode to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %channel_irq_mode, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %if.end195.if.end199_crit_edge
  %95 = ptrtoint ptr %use_acpi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %use_acpi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool201.not = icmp eq i32 %96, 0
  br i1 %tobool201.not, label %if.end206, label %if.end199.err_io_crit_edge

if.end199.err_io_crit_edge:                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end206:                                        ; preds = %if.end199
  %call205 = call fastcc i32 @xgbe_of_support(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool207.not = icmp eq i32 %call205, 0
  br i1 %tobool207.not, label %if.end209, label %if.end206.err_io_crit_edge

if.end206.err_io_crit_edge:                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end209:                                        ; preds = %if.end206
  %call210 = call i32 @device_get_dma_attr(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %do.end215, label %if.end216

do.end215:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #9
  br label %err_io

if.end216:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call210)
  %cmp217 = icmp eq i32 %call210, 2
  %conv = zext i1 %cmp217 to i32
  %coherent = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 55
  %97 = ptrtoint ptr %coherent to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv, ptr %coherent, align 8
  %spec.select477 = select i1 %cmp217, i32 2829099, i32 3158064
  %spec.select478 = select i1 %cmp217, i32 791621423, i32 808464432
  %98 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 56
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %spec.select477, ptr %98, align 4
  %100 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 57
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %spec.select478, ptr %100, align 8
  %102 = ptrtoint ptr %vdata456 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vdata456, align 4
  %tx_max_fifo_size = getelementptr inbounds %struct.xgbe_version_data, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_max_fifo_size, align 4
  %tx_max_fifo_size226 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 84
  %106 = ptrtoint ptr %tx_max_fifo_size226 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %tx_max_fifo_size226, align 4
  %rx_max_fifo_size = getelementptr inbounds %struct.xgbe_version_data, ptr %103, i32 0, i32 4
  %107 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rx_max_fifo_size, align 4
  %rx_max_fifo_size228 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 87
  %109 = ptrtoint ptr %rx_max_fifo_size228 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %rx_max_fifo_size228, align 8
  call void @xgbe_set_counts(ptr noundef %call) #6
  %irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 47
  %110 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %irq_count, align 8
  %call229 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %if.end216.err_io_crit_edge, label %if.end233

if.end216.err_io_crit_edge:                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end233:                                        ; preds = %if.end216
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 42
  %111 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call229, ptr %dev_irq, align 8
  %per_channel_irq234 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 46
  %112 = ptrtoint ptr %per_channel_irq234 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %per_channel_irq234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool235.not = icmp eq i32 %113, 0
  br i1 %tobool235.not, label %if.end233.if.end251_crit_edge, label %for.cond.preheader

if.end233.if.end251_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end251

for.cond.preheader:                               ; preds = %if.end233
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dma_irqend.0)
  %cmp239471 = icmp ugt i32 %dma_irqend.0, 1
  br i1 %cmp239471, label %for.body.preheader, label %for.cond.preheader.cleanup.thread_crit_edge

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.body.preheader:                               ; preds = %for.cond.preheader
  %114 = add i32 %dma_irqend.0, -2
  %umin = call i32 @llvm.umin.i32(i32 %114, i32 15)
  br label %for.body

for.body:                                         ; preds = %if.end247.for.body_crit_edge, %for.body.preheader
  %i.0473 = phi i32 [ %inc248, %if.end247.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_irqnum.1472 = phi i32 [ %inc242, %if.end247.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %115 = ptrtoint ptr %platdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %platdev, align 8
  %call243 = call i32 @platform_get_irq(ptr noundef %116, i32 noundef %dma_irqnum.1472) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %for.body.err_io_crit_edge, label %if.end247

for.body.err_io_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end247:                                        ; preds = %for.body
  %inc242 = add nuw nsw i32 %dma_irqnum.1472, 1
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 45, i32 %i.0473
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call243, ptr %arrayidx, align 4
  %inc248 = add nuw nsw i32 %i.0473, 1
  %exitcond.not = icmp eq i32 %i.0473, %umin
  br i1 %exitcond.not, label %if.end247.cleanup.thread_crit_edge, label %if.end247.for.body_crit_edge

if.end247.for.body_crit_edge:                     ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end247.cleanup.thread_crit_edge:               ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end247.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  %channel_irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 48
  %118 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 16, ptr %channel_irq_count, align 4
  %119 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq_count, align 8
  %add = add i32 %120, 16
  store i32 %add, ptr %irq_count, align 8
  br label %if.end251

if.end251:                                        ; preds = %cleanup.thread, %if.end233.if.end251_crit_edge
  %call253 = call i32 @platform_get_irq(ptr noundef nonnull %phy_pdev.0.i, i32 noundef %phy_irqnum.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.end251.err_io_crit_edge, label %if.end257

if.end251.err_io_crit_edge:                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end257:                                        ; preds = %if.end251
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 147
  %121 = ptrtoint ptr %an_irq to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call253, ptr %an_irq, align 4
  %call258 = call i32 @xgbe_config_netdev(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end261, label %if.end257.err_io_crit_edge

if.end257.err_io_crit_edge:                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end261:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call, align 8
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %123, ptr noundef nonnull @.str.38) #9
  br label %cleanup265

err_io:                                           ; preds = %if.end257.err_io_crit_edge, %if.end251.err_io_crit_edge, %for.body.err_io_crit_edge, %if.end216.err_io_crit_edge, %do.end215, %if.end206.err_io_crit_edge, %if.end199.err_io_crit_edge, %do.end191, %do.end177, %do.end143, %do.end110, %do.end77, %do.end45, %do.end22
  %ret.3 = phi i32 [ %48, %do.end22 ], [ %56, %do.end45 ], [ %64, %do.end77 ], [ %72, %do.end110 ], [ %80, %do.end143 ], [ %call205, %if.end206.err_io_crit_edge ], [ -19, %do.end215 ], [ %call229, %if.end216.err_io_crit_edge ], [ %call253, %if.end251.err_io_crit_edge ], [ %call258, %if.end257.err_io_crit_edge ], [ %spec.select, %do.end177 ], [ %spec.select398, %do.end191 ], [ -22, %if.end199.err_io_crit_edge ], [ %call243, %for.body.err_io_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %phy_pdev.0.i) #6
  br label %err_phydev

err_phydev:                                       ; preds = %err_io, %do.end
  %ret.4 = phi i32 [ %ret.3, %err_io ], [ -22, %do.end ]
  call void @xgbe_free_pdata(ptr noundef %call) #6
  br label %do.end264

do.end264:                                        ; preds = %err_phydev, %if.then
  %ret.5 = phi i32 [ %1, %if.then ], [ %ret.4, %err_phydev ]
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.40) #9
  br label %cleanup265

cleanup265:                                       ; preds = %do.end264, %if.end261
  %retval.0 = phi i32 [ %ret.5, %do.end264 ], [ 0, %if.end261 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_platform_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @xgbe_deconfig_netdev(ptr noundef %1) #6
  %phy_platdev = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phy_platdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_platdev, align 4
  tail call void @platform_device_put(ptr noundef %3) #6
  tail call void @xgbe_free_pdata(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_alloc_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_of_support(ptr nocapture noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.75) #6
  %sysclk = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 109
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %sysclk, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76) #9
  %3 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysclk, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  %sysclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 110
  %6 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7, ptr %sysclk_rate, align 4
  %call8 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.78) #6
  %ptpclk = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 111
  %7 = ptrtoint ptr %ptpclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %ptpclk, align 8
  %cmp.i33 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.80) #9
  %8 = ptrtoint ptr %ptpclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptpclk, align 8
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @clk_get_rate(ptr noundef %call8) #6
  %ptpclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 112
  %11 = ptrtoint ptr %ptpclk_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call19, ptr %ptpclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end14, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %10, %do.end14 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_set_counts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_config_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_free_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_deconfig_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_phy_v1(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_platform_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @xgbe_powerdown(ptr noundef %3, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 10
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call4 = tail call i32 %7(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432) #6
  %lpm_ctrl = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 167
  %or = or i32 %call4, 2048
  %8 = ptrtoint ptr %lpm_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %lpm_ctrl, align 4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 11
  %9 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %10(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_platform_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lpm_ctrl = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 167
  %4 = ptrtoint ptr %lpm_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lpm_ctrl, align 4
  %and = and i32 %5, -2049
  store i32 %and, ptr %lpm_ctrl, align 4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 11
  %6 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %7(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432, i32 noundef %and) #6
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.do.end8_crit_edge, label %if.then

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @xgbe_powerup(ptr noundef %3, i32 noundef 1) #6
  %restart_work = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %restart_work) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry.do.end8_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.do.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_powerdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_powerup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 608, i32 11}
!2 = !{ptr @xgbe_driver, !3, !"xgbe_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 606, i32 31}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 328, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xgbe_platform_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @xgbe_platform_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 357, i32 3}
!14 = !{ptr @xgbe_platform_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @xgbe_platform_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 362, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug351, !17, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 366, i32 3}
!22 = !{ptr @xgbe_platform_probe._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xgbe_platform_probe._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 371, i32 3}
!26 = !{ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug352, !25, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 376, i32 3}
!29 = !{ptr @xgbe_platform_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @xgbe_platform_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 381, i32 3}
!33 = !{ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug353, !32, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 386, i32 3}
!36 = !{ptr @xgbe_platform_probe._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @xgbe_platform_probe._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 391, i32 3}
!40 = !{ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug354, !39, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 396, i32 3}
!43 = !{ptr @xgbe_platform_probe._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xgbe_platform_probe._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 401, i32 3}
!47 = !{ptr @xgbe_platform_probe.__UNIQUE_ID_ddebug355, !46, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 404, i32 43}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 408, i32 3}
!52 = !{ptr @xgbe_platform_probe._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @xgbe_platform_probe._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 415, i32 41}
!56 = !{ptr @xgbe_platform_probe._entry.32, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 418, i32 3}
!58 = !{ptr @xgbe_platform_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 426, i32 35}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 442, i32 3}
!63 = !{ptr @xgbe_platform_probe._entry.35, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @xgbe_platform_probe._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 499, i32 31}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 510, i32 2}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xgbe_platform_probe._entry.39, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @xgbe_platform_probe._entry_ptr.42, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 228, i32 44}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 211, i32 10}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 213, i32 10}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 215, i32 10}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 217, i32 10}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 219, i32 10}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 221, i32 10}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 223, i32 10}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 225, i32 10}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 227, i32 10}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 229, i32 10}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/phy.h", i32 231, i32 10}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/phy.h", i32 233, i32 10}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/phy.h", i32 235, i32 10}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/phy.h", i32 237, i32 10}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/phy.h", i32 239, i32 10}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/phy.h", i32 241, i32 10}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/phy.h", i32 243, i32 10}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/phy.h", i32 245, i32 10}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/phy.h", i32 247, i32 10}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/phy.h", i32 249, i32 10}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/phy.h", i32 251, i32 10}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/phy.h", i32 253, i32 10}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/phy.h", i32 255, i32 10}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/phy.h", i32 257, i32 10}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/phy.h", i32 259, i32 10}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/phy.h", i32 261, i32 10}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/phy.h", i32 263, i32 10}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/phy.h", i32 265, i32 10}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/phy.h", i32 267, i32 10}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/phy.h", i32 269, i32 10}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/phy.h", i32 271, i32 10}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 204, i32 36}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 206, i32 3}
!140 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @xgbe_of_support._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @xgbe_of_support._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 212, i32 36}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 214, i32 3}
!147 = !{ptr @xgbe_of_support._entry.79, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @xgbe_of_support._entry_ptr.81, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @xgbe_of_match, !150, !"xgbe_of_match", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 594, i32 34}
!151 = !{ptr @xgbe_v1, !152, !"xgbe_v1", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 575, i32 39}
!153 = !{ptr @xgbe_platform_pm_ops, !154, !"xgbe_platform_pm_ops", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-platform.c", i32 603, i32 8}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i64 2148970325, i64 2148970330, i64 2148970343, i64 2148970387, i64 2148970421, i64 2148970442}
