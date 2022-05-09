; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-pci.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
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
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.120, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.120 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@xgbe_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @xgbe_pci_table, ptr @xgbe_pci_probe, ptr @xgbe_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd-xgbe\00", [23 x i8] zeroinitializer }, align 32
@xgbe_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5208, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @xgbe_v2a to i32), i32 0 }, %struct.pci_device_id { i32 4130, i32 5209, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @xgbe_v2b to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@xgbe_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xgbe_pci_suspend, ptr @xgbe_pci_resume, ptr @xgbe_pci_suspend, ptr @xgbe_pci_resume, ptr @xgbe_pci_suspend, ptr @xgbe_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xgbe_v2a = internal global { %struct.xgbe_version_data, [48 x i8] } { %struct.xgbe_version_data { ptr @xgbe_init_function_ptrs_phy_v2, i32 1, i32 1, i32 229376, i32 229376, i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xgbe_v2b = internal global { %struct.xgbe_version_data, [48 x i8] } { %struct.xgbe_version_data { ptr @xgbe_init_function_ptrs_phy_v2, i32 1, i32 1, i32 65536, i32 65536, i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 1 }, [48 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcim_enable_device failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-pci.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr = internal global ptr @xgbe_pci_probe._entry, section ".printk_index", align 4
@xgbe_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcim_iomap_regions failed\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.9 = internal global ptr @xgbe_pci_probe._entry.7, section ".printk_index", align 4
@xgbe_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcim_iomap_table failed\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.12 = internal global ptr @xgbe_pci_probe._entry.10, section ".printk_index", align 4
@xgbe_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgmac ioremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.15 = internal global ptr @xgbe_pci_probe._entry.13, section ".printk_index", align 4
@xgbe_pci_probe.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgmac_regs = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xprop_regs = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xi2c_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xpcs ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.21 = internal global ptr @xgbe_pci_probe._entry.19, section ".printk_index", align 4
@xgbe_pci_probe.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.22, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xpcs_regs  = %p\0A\00", [47 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.23, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xpcs window def  = %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.24, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xpcs window sel  = %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.25, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xpcs window      = %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.26, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xpcs window size = %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.27, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xpcs window mask = %#010x\0A\00", [37 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 330, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid mac address\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.30 = internal global ptr @xgbe_pci_probe._entry.28, section ".printk_index", align 4
@xgbe_pci_probe.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.31, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port property 0 = %#010x\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.32, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port property 1 = %#010x\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.33, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port property 2 = %#010x\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.34, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port property 3 = %#010x\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.35, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"port property 4 = %#010x\0A\00", [38 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.36, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max tx/rx channel count = %u/%u\0A\00", [63 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.37, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max tx/rx hw queue count = %u/%u\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_pci_probe.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.38, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max tx/rx max fifo size = %u/%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net device enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 415, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net device not enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@xgbe_pci_probe._entry_ptr.43 = internal global ptr @xgbe_pci_probe._entry.40, section ".printk_index", align 4
@xgbe_config_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 175, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"single IRQ enablement failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_config_irqs\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgbe_config_irqs._entry_ptr = internal global ptr @xgbe_config_irqs._entry, section ".printk_index", align 4
@xgbe_config_irqs.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"single %s interrupt enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@xgbe_config_irqs.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.50, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" dev irq=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@xgbe_config_irqs.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.51, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" ecc irq=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@xgbe_config_irqs.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.52, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" i2c irq=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@xgbe_config_irqs.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.53, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  an irq=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@xgbe_config_irqs.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.54, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" dma%u irq=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@xgbe_config_multi_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 138, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"multi MSI/MSI-X enablement failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgbe_config_multi_msi\00", [42 x i8] zeroinitializer }, align 32
@xgbe_config_multi_msi._entry_ptr = internal global ptr @xgbe_config_multi_msi._entry, section ".printk_index", align 4
@xgbe_config_multi_msi.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"multi %s interrupts enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"xgbe_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 515, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 527, i32 9 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 516, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"xgbe_pci_table\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 503, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"xgbe_pci_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 513, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"xgbe_v2a\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 473, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"xgbe_v2b\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 488, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 233, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 241, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 247, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 254, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 261, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 262, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 263, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 268, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 273, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 302, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 304, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 306, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 308, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 310, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 330, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 352, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 353, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 354, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 355, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 356, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 369, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 372, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 391, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 404, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 415, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 175, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 189, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 196, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 197, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 198, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 199, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 201, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 138, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [44 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 158, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @xgbe_config_irqs._entry, ptr @xgbe_config_irqs._entry_ptr, ptr @xgbe_config_multi_msi._entry, ptr @xgbe_config_multi_msi._entry_ptr, ptr @xgbe_pci_probe._entry, ptr @xgbe_pci_probe._entry.10, ptr @xgbe_pci_probe._entry.13, ptr @xgbe_pci_probe._entry.19, ptr @xgbe_pci_probe._entry.28, ptr @xgbe_pci_probe._entry.40, ptr @xgbe_pci_probe._entry.7, ptr @xgbe_pci_probe._entry_ptr, ptr @xgbe_pci_probe._entry_ptr.12, ptr @xgbe_pci_probe._entry_ptr.15, ptr @xgbe_pci_probe._entry_ptr.21, ptr @xgbe_pci_probe._entry_ptr.30, ptr @xgbe_pci_probe._entry_ptr.43, ptr @xgbe_pci_probe._entry_ptr.9, ptr @xgbe_driver, ptr @.str, ptr @.str.1, ptr @xgbe_pci_table, ptr @xgbe_pci_pm_ops, ptr @xgbe_v2a, ptr @xgbe_v2b, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_v2a to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_v2b to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_pci_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_config_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_config_multi_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgbe_pci_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @xgbe_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgbe_pci_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @xgbe_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @xgbe_alloc_pdata(ptr noundef %dev1) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %do.end503

if.end:                                           ; preds = %entry
  %pcidev = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %pcidev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pcidev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = inttoptr i32 %4 to ptr
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %vdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %vdata, align 4
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  br label %err_pci_enable

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #4
  %call8 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %call7, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %err_pci_enable

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %err_pci_enable

if.end21:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call15, align 4
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %xgmac_regs, align 4
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  br label %err_pci_enable

if.end28:                                         ; preds = %if.end21
  %add.ptr = getelementptr i8, ptr %8, i32 118784
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %xprop_regs, align 8
  %add.ptr31 = getelementptr i8, ptr %8, i32 122880
  %xi2c_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr31, ptr %xi2c_regs, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 134
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end28.if.end78_crit_edge, label %do.body34

if.end28.if.end78_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

do.body34:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then39)) #4
          to label %do.body44 [label %if.then39], !srcloc !144

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug362, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %15) #4
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then56)) #4
          to label %do.body61 [label %if.then56], !srcloc !144

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xprop_regs, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug363, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %17) #4
  br label %do.body61

do.body61:                                        ; preds = %if.then56, %do.body44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then73)) #4
          to label %if.end78 [label %if.then73], !srcloc !144

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %xi2c_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xi2c_regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug364, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %19) #4
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body61, %if.end28.if.end78_crit_edge
  %arrayidx79 = getelementptr ptr, ptr %call15, i32 1
  %20 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx79, align 4
  %xpcs_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 10
  %22 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %xpcs_regs, align 8
  %tobool81.not = icmp eq ptr %21, null
  br i1 %tobool81.not, label %do.end85, label %if.end86

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %err_pci_enable

if.end86:                                         ; preds = %if.end78
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and88 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.if.end108_crit_edge, label %do.body91

if.end86.if.end108_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

do.body91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then103)) #4
          to label %if.end108 [label %if.then103], !srcloc !144

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xpcs_regs, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug365, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %26) #4
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %do.body91, %if.end86.if.end108_crit_edge
  %call109 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %if.end108.if.else132_crit_edge, label %land.lhs.true

if.end108.if.else132_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else132

land.lhs.true:                                    ; preds = %if.end108
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %call109, i32 0, i32 7
  %27 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %28)
  %cmp = icmp eq i16 %28, 4130
  br i1 %cmp, label %land.lhs.true112, label %land.lhs.true.if.else132_crit_edge

land.lhs.true.if.else132_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else132

land.lhs.true112:                                 ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.pci_dev, ptr %call109, i32 0, i32 8
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5584, i16 %30)
  %cmp114 = icmp eq i16 %30, 5584
  br i1 %cmp114, label %if.then116, label %land.lhs.true123

if.then116:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #6
  %xpcs_window_def_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 23
  %31 = ptrtoint ptr %xpcs_window_def_reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4192, ptr %xpcs_window_def_reg, align 4
  %xpcs_window_sel_reg = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 24
  %32 = ptrtoint ptr %xpcs_window_sel_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4196, ptr %xpcs_window_sel_reg, align 8
  br label %if.end136

land.lhs.true123:                                 ; preds = %land.lhs.true112
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5301, i16 %34)
  %cmp126 = icmp eq i16 %34, 5301
  br i1 %cmp126, label %if.then128, label %land.lhs.true123.if.else132_crit_edge

land.lhs.true123.if.else132_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else132

if.then128:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #6
  %xpcs_window_def_reg129 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 23
  %35 = ptrtoint ptr %xpcs_window_def_reg129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 98400, ptr %xpcs_window_def_reg129, align 4
  %xpcs_window_sel_reg130 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 24
  %36 = ptrtoint ptr %xpcs_window_sel_reg130 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 98404, ptr %xpcs_window_sel_reg130, align 8
  %37 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdata, align 4
  %an_cdr_workaround = getelementptr inbounds %struct.xgbe_version_data, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %an_cdr_workaround to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %an_cdr_workaround, align 4
  br label %if.end136

if.else132:                                       ; preds = %land.lhs.true123.if.else132_crit_edge, %land.lhs.true.if.else132_crit_edge, %if.end108.if.else132_crit_edge
  %xpcs_window_def_reg133 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 23
  %40 = ptrtoint ptr %xpcs_window_def_reg133 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 36960, ptr %xpcs_window_def_reg133, align 4
  %xpcs_window_sel_reg134 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 24
  %41 = ptrtoint ptr %xpcs_window_sel_reg134 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 36964, ptr %xpcs_window_sel_reg134, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.else132, %if.then128, %if.then116
  tail call void @pci_dev_put(ptr noundef %call109) #4
  %42 = ptrtoint ptr %xpcs_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xpcs_regs, align 8
  %xpcs_window_def_reg138 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 23
  %44 = ptrtoint ptr %xpcs_window_def_reg138 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xpcs_window_def_reg138, align 4
  %add.ptr139 = getelementptr i8, ptr %43, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #4, !srcloc !145
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %and141 = and i32 %47, 1048512
  %xpcs_window = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 25
  %48 = ptrtoint ptr %xpcs_window to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and141, ptr %xpcs_window, align 4
  %shr143 = lshr i32 %47, 2
  %and144 = and i32 %shr143, 15
  %xpcs_window_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 26
  %shl146 = shl nuw nsw i32 128, %and144
  %49 = ptrtoint ptr %xpcs_window_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl146, ptr %xpcs_window_size, align 8
  %sub = add nsw i32 %shl146, -1
  %xpcs_window_mask = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 27
  %50 = ptrtoint ptr %xpcs_window_mask to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub, ptr %xpcs_window_mask, align 4
  %51 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable, align 4
  %and150 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end136.if.end238_crit_edge, label %do.body153

if.end136.if.end238_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end238

do.body153:                                       ; preds = %if.end136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then165)) #4
          to label %do.body170 [label %if.then165], !srcloc !144

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %xpcs_window_def_reg138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xpcs_window_def_reg138, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug366, ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %54) #4
  br label %do.body170

do.body170:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then182)) #4
          to label %do.body187 [label %if.then182], !srcloc !144

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #6
  %xpcs_window_sel_reg183 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 24
  %55 = ptrtoint ptr %xpcs_window_sel_reg183 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xpcs_window_sel_reg183, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug367, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %56) #4
  br label %do.body187

do.body187:                                       ; preds = %if.then182, %do.body170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then199)) #4
          to label %do.body204 [label %if.then199], !srcloc !144

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %xpcs_window to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xpcs_window, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug368, ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %58) #4
  br label %do.body204

do.body204:                                       ; preds = %if.then199, %do.body187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then216)) #4
          to label %do.body221 [label %if.then216], !srcloc !144

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %xpcs_window_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xpcs_window_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug369, ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %60) #4
  br label %do.body221

do.body221:                                       ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then233)) #4
          to label %if.end238 [label %if.then233], !srcloc !144

if.then233:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %xpcs_window_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xpcs_window_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug370, ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %62) #4
  br label %if.end238

if.end238:                                        ; preds = %if.then233, %do.body221, %if.end136.if.end238_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #4
  %63 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xprop_regs, align 8
  %add.ptr240 = getelementptr i8, ptr %64, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 -57600) #4, !srcloc !148
  %65 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xprop_regs, align 8
  %add.ptr242 = getelementptr i8, ptr %66, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242) #4, !srcloc !145
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %69 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xprop_regs, align 8
  %add.ptr245 = getelementptr i8, ptr %70, i32 36
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #4, !srcloc !145
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %conv248 = trunc i32 %68 to i8
  %mac_addr = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 103
  %73 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv248, ptr %mac_addr, align 2
  %shr250 = lshr i32 %68, 8
  %conv252 = trunc i32 %shr250 to i8
  %arrayidx254 = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 1
  %74 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv252, ptr %arrayidx254, align 1
  %shr255 = lshr i32 %68, 16
  %conv257 = trunc i32 %shr255 to i8
  %arrayidx259 = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 2
  %75 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv257, ptr %arrayidx259, align 2
  %shr260 = lshr i32 %68, 24
  %conv262 = trunc i32 %shr260 to i8
  %arrayidx264 = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 3
  %76 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv262, ptr %arrayidx264, align 1
  %conv266 = trunc i32 %72 to i8
  %arrayidx268 = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 4
  %77 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv266, ptr %arrayidx268, align 2
  %shr269 = lshr i32 %72, 8
  %conv271 = trunc i32 %shr269 to i8
  %arrayidx273 = getelementptr %struct.xgbe_prv_data, ptr %call, i32 0, i32 103, i32 5
  %78 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv271, ptr %arrayidx273, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %tobool276.not = icmp sgt i32 %72, -1
  br i1 %tobool276.not, label %if.end238.do.end282_crit_edge, label %lor.lhs.false

if.end238.do.end282_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end282

lor.lhs.false:                                    ; preds = %if.end238
  %79 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mac_addr, align 4
  %81 = and i32 %80, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not.i = icmp eq i32 %81, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.do.end282_crit_edge

lor.lhs.false.do.end282_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end282

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %82 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx268, align 2
  %conv.i.i = zext i16 %83 to i32
  %or.i.i = or i32 %80, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end282_crit_edge, label %if.end283

is_valid_ether_addr.exit.do.end282_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end282

do.end282:                                        ; preds = %is_valid_ether_addr.exit.do.end282_crit_edge, %lor.lhs.false.do.end282_crit_edge, %if.end238.do.end282_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #7
  br label %err_pci_enable

if.end283:                                        ; preds = %is_valid_ether_addr.exit
  %sysclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 110
  %84 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 500000000, ptr %sysclk_rate, align 4
  %ptpclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 112
  %85 = ptrtoint ptr %ptpclk_rate to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 125000000, ptr %ptpclk_rate, align 4
  %coherent = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 55
  %86 = ptrtoint ptr %coherent to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %coherent, align 8
  %arcr = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 56
  %87 = ptrtoint ptr %arcr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 986895, ptr %arcr, align 4
  %awcr = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 57
  %88 = ptrtoint ptr %awcr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 252645135, ptr %awcr, align 8
  %awarcr = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 58
  %89 = ptrtoint ptr %awarcr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3855, ptr %awarcr, align 4
  %90 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xprop_regs, align 8
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #4, !srcloc !145
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %pp0 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 16
  %94 = ptrtoint ptr %pp0 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %pp0, align 8
  %95 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %xprop_regs, align 8
  %add.ptr288 = getelementptr i8, ptr %96, i32 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr288) #4, !srcloc !145
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %pp1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 17
  %99 = ptrtoint ptr %pp1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %pp1, align 4
  %100 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %xprop_regs, align 8
  %add.ptr291 = getelementptr i8, ptr %101, i32 8
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #4, !srcloc !145
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %pp2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 18
  %104 = ptrtoint ptr %pp2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %pp2, align 8
  %105 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xprop_regs, align 8
  %add.ptr294 = getelementptr i8, ptr %106, i32 12
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr294) #4, !srcloc !145
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %pp3 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 19
  %109 = ptrtoint ptr %pp3 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %pp3, align 4
  %110 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %xprop_regs, align 8
  %add.ptr297 = getelementptr i8, ptr %111, i32 16
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr297) #4, !srcloc !145
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  %pp4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 20
  %114 = ptrtoint ptr %pp4 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %pp4, align 8
  %115 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_enable, align 4
  %and300 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end283.if.end388_crit_edge, label %do.body303

if.end283.if.end388_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end388

do.body303:                                       ; preds = %if.end283
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then315)) #4
          to label %do.body320 [label %if.then315], !srcloc !144

if.then315:                                       ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %pp0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pp0, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug371, ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %118) #4
  br label %do.body320

do.body320:                                       ; preds = %if.then315, %do.body303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then332)) #4
          to label %do.body337 [label %if.then332], !srcloc !144

if.then332:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #6
  %119 = ptrtoint ptr %pp1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pp1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug372, ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %120) #4
  br label %do.body337

do.body337:                                       ; preds = %if.then332, %do.body320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then349)) #4
          to label %do.body354 [label %if.then349], !srcloc !144

if.then349:                                       ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #6
  %121 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pp2, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug373, ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %122) #4
  br label %do.body354

do.body354:                                       ; preds = %if.then349, %do.body337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then366)) #4
          to label %do.body371 [label %if.then366], !srcloc !144

if.then366:                                       ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #6
  %123 = ptrtoint ptr %pp3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pp3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug374, ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %124) #4
  br label %do.body371

do.body371:                                       ; preds = %if.then366, %do.body354
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then383)) #4
          to label %if.end388 [label %if.then383], !srcloc !144

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #6
  %125 = ptrtoint ptr %pp4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pp4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug375, ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %126) #4
  br label %if.end388

if.end388:                                        ; preds = %if.then383, %do.body371, %if.end283.if.end388_crit_edge
  %127 = ptrtoint ptr %pp1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pp1, align 4
  %shr390 = lshr i32 %128, 16
  %and391 = and i32 %shr390, 31
  %tx_max_channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 63
  %129 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and391, ptr %tx_max_channel_count, align 8
  %shr393 = lshr i32 %128, 24
  %and394 = and i32 %shr393, 31
  %rx_max_channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 64
  %130 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and394, ptr %rx_max_channel_count, align 4
  %and397 = and i32 %128, 31
  %tx_max_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 72
  %131 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and397, ptr %tx_max_q_count, align 4
  %shr399 = lshr i32 %128, 8
  %and400 = and i32 %shr399, 31
  %rx_max_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 73
  %132 = ptrtoint ptr %rx_max_q_count to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and400, ptr %rx_max_q_count, align 8
  %133 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %msg_enable, align 4
  %and402 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and402)
  %tobool403.not = icmp eq i32 %and402, 0
  br i1 %tobool403.not, label %if.end388.if.end441_crit_edge, label %do.body405

if.end388.if.end441_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end441

do.body405:                                       ; preds = %if.end388
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then417)) #4
          to label %do.body423 [label %if.then417], !srcloc !144

if.then417:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #6
  %135 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_max_channel_count, align 8
  %137 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx_max_channel_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug376, ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %136, i32 noundef %138) #4
  br label %do.body423

do.body423:                                       ; preds = %if.then417, %do.body405
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then435)) #4
          to label %if.end441 [label %if.then435], !srcloc !144

if.then435:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #6
  %139 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_max_q_count, align 4
  %141 = ptrtoint ptr %rx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rx_max_q_count, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug377, ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %140, i32 noundef %142) #4
  br label %if.end441

if.end441:                                        ; preds = %if.then435, %do.body423, %if.end388.if.end441_crit_edge
  tail call void @xgbe_set_counts(ptr noundef %call) #4
  %143 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pp2, align 8
  %tx_max_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 84
  %and444 = shl i32 %144, 14
  %mul = and i32 %and444, 1073725440
  %145 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul, ptr %tx_max_fifo_size, align 4
  %146 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %vdata, align 4
  %tx_max_fifo_size448 = getelementptr inbounds %struct.xgbe_version_data, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %tx_max_fifo_size448 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_max_fifo_size448, align 4
  %150 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %149)
  %151 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %tx_max_fifo_size, align 4
  %rx_max_fifo_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %call, i32 0, i32 87
  %152 = lshr i32 %144, 2
  %mul457 = and i32 %152, 1073725440
  %153 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %mul457, ptr %rx_max_fifo_size, align 8
  %rx_max_fifo_size460 = getelementptr inbounds %struct.xgbe_version_data, ptr %147, i32 0, i32 4
  %154 = ptrtoint ptr %rx_max_fifo_size460 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_max_fifo_size460, align 4
  %156 = tail call i32 @llvm.umin.i32(i32 %mul457, i32 %155)
  %157 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %rx_max_fifo_size, align 8
  %158 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %msg_enable, align 4
  %and470 = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470)
  %tobool471.not = icmp eq i32 %and470, 0
  br i1 %tobool471.not, label %if.end441.if.end491_crit_edge, label %do.body473

if.end441.if.end491_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end491

do.body473:                                       ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_pci_probe, %if.then485)) #4
          to label %if.end491 [label %if.then485], !srcloc !144

if.then485:                                       ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #6
  %160 = ptrtoint ptr %tx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_max_fifo_size, align 4
  %162 = ptrtoint ptr %rx_max_fifo_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rx_max_fifo_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_pci_probe.__UNIQUE_ID_ddebug382, ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %161, i32 noundef %163) #4
  br label %if.end491

if.end491:                                        ; preds = %if.then485, %do.body473, %if.end441.if.end491_crit_edge
  %call492 = tail call fastcc i32 @xgbe_config_irqs(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492)
  %tobool493.not = icmp eq i32 %call492, 0
  br i1 %tobool493.not, label %if.end495, label %if.end491.err_pci_enable_crit_edge

if.end491.err_pci_enable_crit_edge:               ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_pci_enable

if.end495:                                        ; preds = %if.end491
  %call496 = tail call i32 @xgbe_config_netdev(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call496)
  %tobool497.not = icmp eq i32 %call496, 0
  br i1 %tobool497.not, label %if.end499, label %err_irq_vectors

if.end499:                                        ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #6
  %164 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %165, ptr noundef nonnull @.str.39) #7
  br label %cleanup

err_irq_vectors:                                  ; preds = %if.end495
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pcidev, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %167) #4
  br label %err_pci_enable

err_pci_enable:                                   ; preds = %err_irq_vectors, %if.end491.err_pci_enable_crit_edge, %do.end282, %do.end85, %do.end27, %do.end20, %do.end13, %do.end
  %ret.0 = phi i32 [ %call4, %do.end ], [ %call8, %do.end13 ], [ %call492, %if.end491.err_pci_enable_crit_edge ], [ %call496, %err_irq_vectors ], [ -22, %do.end282 ], [ -12, %do.end85 ], [ -12, %do.end27 ], [ -12, %do.end20 ]
  tail call void @xgbe_free_pdata(ptr noundef %call) #4
  br label %do.end503

do.end503:                                        ; preds = %err_pci_enable, %if.then
  %ret.1 = phi i32 [ %0, %if.then ], [ %ret.0, %err_pci_enable ]
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.41) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end503, %if.end499
  %retval.0 = phi i32 [ %ret.1, %do.end503 ], [ 0, %if.end499 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @xgbe_deconfig_netdev(ptr noundef %1) #4
  %pcidev = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %3) #4
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !148
  tail call void @xgbe_free_pdata(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_init_function_ptrs_phy_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xgbe_alloc_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_set_counts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_config_irqs(ptr noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xgbe_config_multi_msi(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %pcidev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 1
  %0 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcidev, align 4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.44) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcidev, align 4
  %msi_enabled = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %7 = trunc i40 %bf.load to i32
  %8 = lshr i32 %7, 27
  %9 = and i32 %8, 1
  %isr_as_tasklet = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 168
  %10 = ptrtoint ptr %isr_as_tasklet to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %isr_as_tasklet, align 8
  %irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 47
  %11 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %irq_count, align 8
  %channel_irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 48
  %12 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %channel_irq_count, align 4
  %call7 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef 0) #4
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %13 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %dev_irq, align 8
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %call9 = tail call i32 @pci_irq_vector(ptr noundef %15, i32 noundef 0) #4
  %ecc_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %16 = ptrtoint ptr %ecc_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call9, ptr %ecc_irq, align 4
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %call11 = tail call i32 @pci_irq_vector(ptr noundef %18, i32 noundef 0) #4
  %i2c_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 44
  %19 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11, ptr %i2c_irq, align 8
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 4
  %call13 = tail call i32 @pci_irq_vector(ptr noundef %21, i32 noundef 0) #4
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %22 = ptrtoint ptr %an_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call13, ptr %an_irq, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end3.out_crit_edge, label %do.body16

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then21)) #4
          to label %out [label %if.then21], !srcloc !144

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %25 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev22, align 8
  %27 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcidev, align 4
  %msi_enabled24 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 49
  %29 = ptrtoint ptr %msi_enabled24 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 5)
  %bf.load25 = load i40, ptr %msi_enabled24, align 1
  %30 = and i40 %bf.load25, 134217728
  %tobool29.not = icmp eq i40 %30, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.49, ptr @.str.48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug356, ptr noundef %26, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond30) #4
  br label %out

out:                                              ; preds = %if.then21, %do.body16, %if.end3.out_crit_edge, %entry.out_crit_edge
  %msg_enable35 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %31 = ptrtoint ptr %msg_enable35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable35, align 4
  %and36 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %out.cleanup_crit_edge, label %if.then38

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then38:                                        ; preds = %out
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then51)) #4
          to label %do.body57 [label %if.then51], !srcloc !144

if.then51:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %dev52 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %33 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev52, align 8
  %dev_irq53 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %35 = ptrtoint ptr %dev_irq53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_irq53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug357, ptr noundef %34, ptr noundef nonnull @.str.50, i32 noundef %36) #4
  br label %do.body57

do.body57:                                        ; preds = %if.then51, %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then69)) #4
          to label %do.body75 [label %if.then69], !srcloc !144

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  %dev70 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %37 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev70, align 8
  %ecc_irq71 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %39 = ptrtoint ptr %ecc_irq71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ecc_irq71, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug358, ptr noundef %38, ptr noundef nonnull @.str.51, i32 noundef %40) #4
  br label %do.body75

do.body75:                                        ; preds = %if.then69, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then87)) #4
          to label %do.body93 [label %if.then87], !srcloc !144

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  %dev88 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %41 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev88, align 8
  %i2c_irq89 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 44
  %43 = ptrtoint ptr %i2c_irq89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i2c_irq89, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug359, ptr noundef %42, ptr noundef nonnull @.str.52, i32 noundef %44) #4
  br label %do.body93

do.body93:                                        ; preds = %if.then87, %do.body75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then105)) #4
          to label %do.end110 [label %if.then105], !srcloc !144

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  %dev106 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %45 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev106, align 8
  %an_irq107 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %47 = ptrtoint ptr %an_irq107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %an_irq107, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug360, ptr noundef %46, ptr noundef nonnull @.str.53, i32 noundef %48) #4
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body93
  %channel_irq_count111 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 48
  %49 = ptrtoint ptr %channel_irq_count111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel_irq_count111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp112186.not = icmp eq i32 %50, 0
  br i1 %cmp112186.not, label %do.end110.cleanup_crit_edge, label %do.body113.lr.ph

do.end110.cleanup_crit_edge:                      ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body113.lr.ph:                                 ; preds = %do.end110
  %dev126 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  br label %do.body113

do.body113:                                       ; preds = %for.inc.do.body113_crit_edge, %do.body113.lr.ph
  %i.0187 = phi i32 [ 0, %do.body113.lr.ph ], [ %inc, %for.inc.do.body113_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_irqs, %if.then125)) #4
          to label %for.inc [label %if.then125], !srcloc !144

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev126, align 8
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 45, i32 %i.0187
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_irqs.__UNIQUE_ID_ddebug361, ptr noundef %52, ptr noundef nonnull @.str.54, i32 noundef %i.0187, i32 noundef %54) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then125, %do.body113
  %inc = add nuw i32 %i.0187, 1
  %55 = ptrtoint ptr %channel_irq_count111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel_irq_count111, align 4
  %cmp112 = icmp ult i32 %inc, %56
  br i1 %cmp112, label %for.inc.do.body113_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.do.body113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body113

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end110.cleanup_crit_edge, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %out.cleanup_crit_edge ], [ 0, %do.end110.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_config_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_free_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_config_multi_msi(ptr nocapture noundef %pdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 68
  %0 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_count, align 4
  %tx_ring_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 66
  %2 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_count, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  %add = add i32 %4, 4
  %pcidev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 1
  %5 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcidev, align 4
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %6, i32 noundef 5, i32 noundef %add, i32 noundef 6, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.55) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %isr_as_tasklet = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 168
  %9 = ptrtoint ptr %isr_as_tasklet to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %isr_as_tasklet, align 8
  %irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 47
  %10 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %irq_count, align 8
  %11 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev, align 4
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %12, i32 noundef 0) #4
  %dev_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 42
  %13 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %dev_irq, align 8
  %14 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcidev, align 4
  %call5 = tail call i32 @pci_irq_vector(ptr noundef %15, i32 noundef 1) #4
  %ecc_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 43
  %16 = ptrtoint ptr %ecc_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %ecc_irq, align 4
  %17 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcidev, align 4
  %call7 = tail call i32 @pci_irq_vector(ptr noundef %18, i32 noundef 2) #4
  %i2c_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 44
  %19 = ptrtoint ptr %i2c_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call7, ptr %i2c_irq, align 8
  %20 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcidev, align 4
  %call9 = tail call i32 @pci_irq_vector(ptr noundef %21, i32 noundef 3) #4
  %an_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 147
  %22 = ptrtoint ptr %an_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call9, ptr %an_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp1066 = icmp ugt i32 %call.i, 4
  br i1 %cmp1066, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %23 = add nsw i32 %call.i, -4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 4, %for.body.preheader ]
  %j.067 = phi i32 [ %inc13, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %24 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcidev, align 4
  %call12 = tail call i32 @pci_irq_vector(ptr noundef %25, i32 noundef %i.068) #4
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 45, i32 %j.067
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call12, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.068, 1
  %inc13 = add nuw i32 %j.067, 1
  %exitcond.not = icmp eq i32 %inc13, %23
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  %channel_irq_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 48
  %27 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %j.0.lcssa, ptr %channel_irq_count, align 4
  %per_channel_irq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %28 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %per_channel_irq, align 4
  %channel_irq_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 49
  %29 = ptrtoint ptr %channel_irq_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %channel_irq_mode, align 8
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.body15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_multi_msi.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_multi_msi, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !144

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %32 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22, align 8
  %34 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcidev, align 4
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 49
  %36 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %36, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %37 = and i40 %bf.load, 67108864
  %tobool24.not = icmp eq i40 %37, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.48, ptr @.str.58
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgbe_config_multi_msi.__UNIQUE_ID_ddebug355, ptr noundef %33, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body15, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then21 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_deconfig_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @xgbe_powerdown(ptr noundef %3, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 10
  %6 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_mmd_regs, align 4
  %call4 = tail call i32 %7(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432) #4
  %lpm_ctrl = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 167
  %or = or i32 %call4, 2048
  %8 = ptrtoint ptr %lpm_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %lpm_ctrl, align 4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 11
  %9 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %10(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432, i32 noundef %or) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -57600) #4, !srcloc !148
  %lpm_ctrl = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 167
  %6 = ptrtoint ptr %lpm_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lpm_ctrl, align 4
  %and = and i32 %7, -2049
  store i32 %and, ptr %lpm_ctrl, align 4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 51, i32 11
  %8 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_mmd_regs, align 4
  tail call void %9(ptr noundef %1, i32 noundef 0, i32 noundef 1073938432, i32 noundef %and) #4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @xgbe_powerup(ptr noundef %3, i32 noundef 1) #4
  %restart_work = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %restart_work) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_powerdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xgbe_powerup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !128, !129, !131, !132, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 527, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 516, i32 10}
!4 = !{ptr @xgbe_driver, !5, !"xgbe_driver", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 515, i32 26}
!6 = !{ptr @xgbe_pci_table, !7, !"xgbe_pci_table", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 503, i32 35}
!8 = !{ptr @xgbe_v2a, !9, !"xgbe_v2a", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 473, i32 33}
!10 = !{ptr @xgbe_v2b, !11, !"xgbe_v2b", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 488, i32 33}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 233, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xgbe_pci_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @xgbe_pci_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 241, i32 3}
!22 = !{ptr @xgbe_pci_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @xgbe_pci_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 247, i32 3}
!26 = !{ptr @xgbe_pci_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xgbe_pci_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 254, i32 3}
!30 = !{ptr @xgbe_pci_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @xgbe_pci_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 261, i32 3}
!34 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug362, !33, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 262, i32 3}
!37 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug363, !36, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 263, i32 3}
!40 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug364, !39, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 268, i32 3}
!43 = !{ptr @xgbe_pci_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xgbe_pci_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 273, i32 3}
!47 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug365, !46, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 302, i32 3}
!50 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug366, !49, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 304, i32 3}
!53 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug367, !52, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 306, i32 3}
!56 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug368, !55, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 308, i32 3}
!59 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug369, !58, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 310, i32 3}
!62 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug370, !61, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 330, i32 3}
!65 = !{ptr @xgbe_pci_probe._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @xgbe_pci_probe._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 352, i32 3}
!69 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug371, !68, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 353, i32 3}
!72 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug372, !71, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 354, i32 3}
!75 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug373, !74, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 355, i32 3}
!78 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug374, !77, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 356, i32 3}
!81 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug375, !80, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 369, i32 3}
!84 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug376, !83, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 372, i32 3}
!87 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug377, !86, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 391, i32 3}
!90 = !{ptr @xgbe_pci_probe.__UNIQUE_ID_ddebug382, !89, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 404, i32 31}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 415, i32 2}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @xgbe_pci_probe._entry.40, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @xgbe_pci_probe._entry_ptr.43, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 175, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @xgbe_config_irqs._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @xgbe_config_irqs._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 189, i32 3}
!106 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug356, !105, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!107 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 196, i32 3}
!111 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug357, !110, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 197, i32 3}
!114 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug358, !113, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 198, i32 3}
!117 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug359, !116, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 199, i32 3}
!120 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug360, !119, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 201, i32 4}
!123 = !{ptr @xgbe_config_irqs.__UNIQUE_ID_ddebug361, !122, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 138, i32 3}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @xgbe_config_multi_msi._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @xgbe_config_multi_msi._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 158, i32 3}
!131 = !{ptr @xgbe_config_multi_msi.__UNIQUE_ID_ddebug355, !130, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!132 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @xgbe_pci_pm_ops, !134, !"xgbe_pci_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-pci.c", i32 513, i32 8}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2148969756, i64 2148969761, i64 2148969774, i64 2148969818, i64 2148969852, i64 2148969873}
!145 = !{i64 4996604}
!146 = !{i64 2152536953}
!147 = !{i64 2152538308}
!148 = !{i64 4996186}
