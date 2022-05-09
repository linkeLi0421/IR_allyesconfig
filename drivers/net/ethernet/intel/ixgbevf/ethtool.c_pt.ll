; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbevf/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbevf/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ixgbevf_reg_test = type { i16, i8, i8, i32, i32 }
%struct.ixgbe_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbevf_q_vector = type { ptr, i16, i16, %struct.napi_struct, %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container, %struct.callback_head, [25 x i8], [87 x i8], [0 x %struct.ixgbevf_ring], i32, %struct.spinlock, [80 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ixgbevf_ring_container = type { ptr, i32, i32, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ixgbevf_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, %union.anon.121, i32, %struct.ixgbevf_stats, %struct.u64_stats_sync, %union.anon.125, %struct.xdp_rxq_info, i64, ptr, ptr, i16, i32, [104 x i8] }
%union.anon.121 = type { ptr }
%struct.ixgbevf_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.125 = type { %struct.ixgbevf_rx_queue_stats }
%struct.ixgbevf_rx_queue_stats = type { i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbevf_adapter = type { [128 x i32], [2 x ptr], i16, i16, i32, i32, i32, [8 x ptr], i32, [8 x ptr], i64, i32, i64, i32, [8 x ptr], i64, i64, i32, i64, i64, i64, i64, ptr, ptr, ptr, ptr, %struct.ixgbe_hw, i16, i32, %struct.ixgbevf_hw_stats, i32, i64, i32, i32, i32, ptr, i32, i8, %struct.timer_list, %struct.work_struct, %struct.spinlock, i32, ptr, [64 x i8], i32, ptr }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info, i16, i16, i16, i16, i8, i8, i32 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, [6 x i8], [6 x i8], i32, i32, i8, i32, i32, i32 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_info = type { %struct.ixgbe_mbx_operations, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbevf_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@ixgbevf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @ixgbevf_get_drvinfo, ptr @ixgbevf_get_regs_len, ptr @ixgbevf_get_regs, ptr null, ptr null, ptr @ixgbevf_get_msglevel, ptr @ixgbevf_set_msglevel, ptr @ixgbevf_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @ixgbevf_get_coalesce, ptr @ixgbevf_set_coalesce, ptr @ixgbevf_get_ringparam, ptr @ixgbevf_set_ringparam, ptr null, ptr null, ptr null, ptr @ixgbevf_diag_test, ptr @ixgbevf_get_strings, ptr null, ptr @ixgbevf_get_ethtool_stats, ptr null, ptr null, ptr @ixgbevf_get_priv_flags, ptr @ixgbevf_set_priv_flags, ptr @ixgbevf_get_sset_count, ptr @ixgbevf_get_rxnfc, ptr null, ptr null, ptr null, ptr @ixgbevf_get_rxfh_key_size, ptr @ixgbevf_get_rxfh_indir_size, ptr @ixgbevf_get_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgbevf_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ixgbevf_driver_name = external dso_local constant [0 x i8], align 1
@ixgbevf_diag_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Adapter removed - test blocked\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgbevf_diag_test\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ixgbevf/ethtool.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbevf_diag_test._entry_ptr = internal global ptr @ixgbevf_diag_test._entry, section ".printk_index", align 4
@ixgbevf_diag_test.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ixgbevf\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbevf_diag_test.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register testing starting\0A\00", [37 x i8] zeroinitializer }, align 32
@ixgbevf_diag_test.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@ixgbevf_reg_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 668, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adapter removed - register test blocked\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ixgbevf_reg_test\00", [47 x i8] zeroinitializer }, align 32
@ixgbevf_reg_test._entry_ptr = internal global ptr @ixgbevf_reg_test._entry, section ".printk_index", align 4
@reg_test_vf = internal constant { [10 x %struct.ixgbevf_reg_test], [40 x i8] } { [10 x %struct.ixgbevf_reg_test] [%struct.ixgbevf_reg_test { i16 4096, i8 2, i8 1, i32 -128, i32 -128 }, %struct.ixgbevf_reg_test { i16 4100, i8 2, i8 1, i32 -1, i32 -1 }, %struct.ixgbevf_reg_test { i16 4104, i8 2, i8 1, i32 1048448, i32 1048575 }, %struct.ixgbevf_reg_test { i16 4136, i8 2, i8 3, i32 0, i32 33554432 }, %struct.ixgbevf_reg_test { i16 4120, i8 2, i8 1, i32 65535, i32 65535 }, %struct.ixgbevf_reg_test { i16 4136, i8 2, i8 3, i32 0, i32 0 }, %struct.ixgbevf_reg_test { i16 8192, i8 2, i8 1, i32 -128, i32 -1 }, %struct.ixgbevf_reg_test { i16 8196, i8 2, i8 1, i32 -1, i32 -1 }, %struct.ixgbevf_reg_test { i16 8200, i8 2, i8 1, i32 1048448, i32 1048448 }, %struct.ixgbevf_reg_test zeroinitializer], [40 x i8] zeroinitializer }, align 32
@reg_pattern_test.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_pattern_test\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@reg_set_and_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013ixgbevf: set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_set_and_check\00", [46 x i8] zeroinitializer }, align 32
@reg_set_and_check._entry_ptr = internal global ptr @reg_set_and_check._entry, section ".printk_index", align 4
@ixgbe_gstrings_test = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ixgbevf_gstrings_stats = internal constant { [14 x %struct.ixgbe_stats], [152 x i8] } { [14 x %struct.ixgbe_stats] [%struct.ixgbe_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.ixgbe_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.ixgbe_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.ixgbe_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 12 }, %struct.ixgbe_stats { [32 x i8] c"tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1136 }, %struct.ixgbe_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 608 }, %struct.ixgbe_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 616 }, %struct.ixgbe_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 32 }, %struct.ixgbe_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 672 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_page\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 712 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_page_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 696 }, %struct.ixgbe_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 704 }, %struct.ixgbe_stats { [32 x i8] c"tx_ipsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 624 }, %struct.ixgbe_stats { [32 x i8] c"rx_ipsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 720 }], [152 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xdp_queue_%u_packets\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xdp_queue_%u_bytes\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_queue_%u_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_queue_%u_bytes\00", [46 x i8] zeroinitializer }, align 32
@ixgbevf_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"legacy-rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@ixgbevf_get_rxnfc.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgbevf_get_rxnfc\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Command parameters not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"ixgbevf_ethtool_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 976, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 735, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 746, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 760, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 770, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 667, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"reg_test_vf\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 593, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 625, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 651, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"ixgbe_gstrings_test\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 70, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"ixgbevf_gstrings_stats\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 45, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 527, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 529, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 533, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 535, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 539, i32 15 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 541, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"ixgbevf_priv_flags_strings\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 77, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbevf/ethtool.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 884, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ixgbevf_diag_test._entry, ptr @ixgbevf_diag_test._entry_ptr, ptr @ixgbevf_reg_test._entry, ptr @ixgbevf_reg_test._entry_ptr, ptr @reg_set_and_check._entry, ptr @reg_set_and_check._entry_ptr, ptr @ixgbevf_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @reg_test_vf, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ixgbe_gstrings_test, ptr @ixgbevf_gstrings_stats, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ixgbevf_priv_flags_strings, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_diag_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_reg_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_test_vf to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_and_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_gstrings_test to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_gstrings_stats to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbevf_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ixgbevf_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ixgbevf_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @ixgbevf_driver_name, i32 noundef 32) #17
  %pdev = getelementptr i8, ptr %netdev, i32 3044
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  %n_priv_flags = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 7
  %6 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %n_priv_flags, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 180
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3048
  %0 = call ptr @memset(ptr %p, i32 0, i32 180)
  %revision_id = getelementptr i8, ptr %netdev, i32 3252
  %1 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 3244
  %3 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device_id, align 4
  %conv3 = zext i16 %4 to i32
  %or = or i32 %shl, %conv3
  %or4 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or4, ptr %version, align 4
  %call5 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 0) #17
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5, ptr %p, align 4
  %call6 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8) #17
  %arrayidx7 = getelementptr i32, ptr %p, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6, ptr %arrayidx7, align 4
  %call8 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 16) #17
  %arrayidx9 = getelementptr i32, ptr %p, i32 2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call8, ptr %arrayidx9, align 4
  %call10 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 12688) #17
  %arrayidx11 = getelementptr i32, ptr %p, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call10, ptr %arrayidx11, align 4
  %call12 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 72) #17
  %arrayidx13 = getelementptr i32, ptr %p, i32 4
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call12, ptr %arrayidx13, align 4
  %call14 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 260) #17
  %arrayidx15 = getelementptr i32, ptr %p, i32 5
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call14, ptr %arrayidx15, align 4
  %call16 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 260) #17
  %arrayidx17 = getelementptr i32, ptr %p, i32 6
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call16, ptr %arrayidx17, align 4
  %call18 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 264) #17
  %arrayidx19 = getelementptr i32, ptr %p, i32 7
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call18, ptr %arrayidx19, align 4
  %call20 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 268) #17
  %arrayidx21 = getelementptr i32, ptr %p, i32 8
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20, ptr %arrayidx21, align 4
  %call22 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 272) #17
  %arrayidx23 = getelementptr i32, ptr %p, i32 9
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call22, ptr %arrayidx23, align 4
  %call24 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 276) #17
  %arrayidx25 = getelementptr i32, ptr %p, i32 10
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call24, ptr %arrayidx25, align 4
  %call26 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 2080) #17
  %arrayidx27 = getelementptr i32, ptr %p, i32 11
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call26, ptr %arrayidx27, align 4
  %call28 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 288) #17
  %arrayidx29 = getelementptr i32, ptr %p, i32 12
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call28, ptr %arrayidx29, align 4
  %call30 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 320) #17
  %arrayidx31 = getelementptr i32, ptr %p, i32 13
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call30, ptr %arrayidx31, align 4
  %call35 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4096) #17
  %arrayidx38 = getelementptr i32, ptr %p, i32 14
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call35, ptr %arrayidx38, align 4
  %call35.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4160) #17
  %arrayidx38.1 = getelementptr i32, ptr %p, i32 15
  %21 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call35.1, ptr %arrayidx38.1, align 4
  %call47 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4100) #17
  %arrayidx50 = getelementptr i32, ptr %p, i32 16
  %22 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call47, ptr %arrayidx50, align 4
  %call47.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4164) #17
  %arrayidx50.1 = getelementptr i32, ptr %p, i32 17
  %23 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call47.1, ptr %arrayidx50.1, align 4
  %call62 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4104) #17
  %arrayidx65 = getelementptr i32, ptr %p, i32 18
  %24 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call62, ptr %arrayidx65, align 4
  %call62.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4168) #17
  %arrayidx65.1 = getelementptr i32, ptr %p, i32 19
  %25 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call62.1, ptr %arrayidx65.1, align 4
  %call77 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4112) #17
  %arrayidx80 = getelementptr i32, ptr %p, i32 20
  %26 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call77, ptr %arrayidx80, align 4
  %call77.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4176) #17
  %arrayidx80.1 = getelementptr i32, ptr %p, i32 21
  %27 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call77.1, ptr %arrayidx80.1, align 4
  %call92 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4120) #17
  %arrayidx95 = getelementptr i32, ptr %p, i32 22
  %28 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call92, ptr %arrayidx95, align 4
  %call92.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4184) #17
  %arrayidx95.1 = getelementptr i32, ptr %p, i32 23
  %29 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call92.1, ptr %arrayidx95.1, align 4
  %call107 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4136) #17
  %arrayidx110 = getelementptr i32, ptr %p, i32 24
  %30 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call107, ptr %arrayidx110, align 4
  %call107.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4200) #17
  %arrayidx110.1 = getelementptr i32, ptr %p, i32 25
  %31 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call107.1, ptr %arrayidx110.1, align 4
  %call122 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4116) #17
  %arrayidx125 = getelementptr i32, ptr %p, i32 26
  %32 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call122, ptr %arrayidx125, align 4
  %call122.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 4180) #17
  %arrayidx125.1 = getelementptr i32, ptr %p, i32 27
  %33 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call122.1, ptr %arrayidx125.1, align 4
  %call129 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 768) #17
  %arrayidx130 = getelementptr i32, ptr %p, i32 28
  %34 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call129, ptr %arrayidx130, align 4
  %call139 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8192) #17
  %arrayidx142 = getelementptr i32, ptr %p, i32 29
  %35 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call139, ptr %arrayidx142, align 4
  %call139.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8256) #17
  %arrayidx142.1 = getelementptr i32, ptr %p, i32 30
  %36 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call139.1, ptr %arrayidx142.1, align 4
  %call154 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8196) #17
  %arrayidx157 = getelementptr i32, ptr %p, i32 31
  %37 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call154, ptr %arrayidx157, align 4
  %call154.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8260) #17
  %arrayidx157.1 = getelementptr i32, ptr %p, i32 32
  %38 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call154.1, ptr %arrayidx157.1, align 4
  %call169 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8200) #17
  %arrayidx172 = getelementptr i32, ptr %p, i32 33
  %39 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call169, ptr %arrayidx172, align 4
  %call169.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8264) #17
  %arrayidx172.1 = getelementptr i32, ptr %p, i32 34
  %40 = ptrtoint ptr %arrayidx172.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call169.1, ptr %arrayidx172.1, align 4
  %call184 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8208) #17
  %arrayidx187 = getelementptr i32, ptr %p, i32 35
  %41 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call184, ptr %arrayidx187, align 4
  %call184.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8272) #17
  %arrayidx187.1 = getelementptr i32, ptr %p, i32 36
  %42 = ptrtoint ptr %arrayidx187.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call184.1, ptr %arrayidx187.1, align 4
  %call199 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8216) #17
  %arrayidx202 = getelementptr i32, ptr %p, i32 37
  %43 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call199, ptr %arrayidx202, align 4
  %call199.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8280) #17
  %arrayidx202.1 = getelementptr i32, ptr %p, i32 38
  %44 = ptrtoint ptr %arrayidx202.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call199.1, ptr %arrayidx202.1, align 4
  %call214 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8232) #17
  %arrayidx217 = getelementptr i32, ptr %p, i32 39
  %45 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call214, ptr %arrayidx217, align 4
  %call214.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8296) #17
  %arrayidx217.1 = getelementptr i32, ptr %p, i32 40
  %46 = ptrtoint ptr %arrayidx217.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call214.1, ptr %arrayidx217.1, align 4
  %call229 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8248) #17
  %arrayidx232 = getelementptr i32, ptr %p, i32 41
  %47 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call229, ptr %arrayidx232, align 4
  %call229.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8312) #17
  %arrayidx232.1 = getelementptr i32, ptr %p, i32 42
  %48 = ptrtoint ptr %arrayidx232.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call229.1, ptr %arrayidx232.1, align 4
  %call244 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8252) #17
  %arrayidx247 = getelementptr i32, ptr %p, i32 43
  %49 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call244, ptr %arrayidx247, align 4
  %call244.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw1, i32 noundef 8316) #17
  %arrayidx247.1 = getelementptr i32, ptr %p, i32 44
  %50 = ptrtoint ptr %arrayidx247.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call244.1, ptr %arrayidx247.1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_msglevel(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3260
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ixgbevf_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 3260
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @ixgbevf_reinit_locked(ptr noundef %add.ptr.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_itr_setting = getelementptr i8, ptr %netdev, i32 2824
  %0 = ptrtoint ptr %rx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rx_itr_setting, align 8
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp ult i16 %1, 2
  %2 = lshr i32 %conv, 2
  %spec.select = select i1 %cmp, i32 %conv, i32 %2
  %3 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %q_vector = getelementptr i8, ptr %netdev, i32 2816
  %5 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q_vector, align 8
  %count = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %6, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %count10 = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %6, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %count10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %count10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %tx_itr_setting = getelementptr i8, ptr %netdev, i32 2826
  %11 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_itr_setting, align 2
  %conv15 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp16 = icmp ult i16 %12, 2
  %13 = lshr i32 %conv15, 2
  %conv15.sink = select i1 %cmp16, i32 %conv15, i32 %13
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %14 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15.sink, ptr %tx_coalesce_usecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %q_vector1 = getelementptr i8, ptr %netdev, i32 2816
  %0 = ptrtoint ptr %q_vector1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector1, align 8
  %count = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %1, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %count4 = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %count4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %count4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %land.lhs.true7.if.end_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %9)
  %cmp = icmp ugt i32 %9, 1022
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tx_coalesce_usecs10 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %10 = ptrtoint ptr %tx_coalesce_usecs10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_coalesce_usecs10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %11)
  %cmp11 = icmp ugt i32 %11, 1022
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp16 = icmp ugt i32 %9, 1
  %.tr100 = trunc i32 %9 to i16
  %conv20 = shl nuw nsw i16 %.tr100, 2
  %conv22.sink = select i1 %cmp16, i16 %conv20, i16 %.tr100
  %12 = getelementptr i8, ptr %netdev, i32 2824
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv22.sink, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv22.sink)
  %cmp27 = icmp eq i16 %conv22.sink, 1
  %. = select i1 %cmp27, i16 200, i16 %conv22.sink
  %14 = ptrtoint ptr %tx_coalesce_usecs10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_coalesce_usecs10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp34 = icmp ugt i32 %15, 1
  %.tr = trunc i32 %15 to i16
  %conv39 = shl i16 %.tr, 2
  %conv42 = trunc i32 %15 to i16
  %conv42.sink = select i1 %cmp34, i16 %conv39, i16 %conv42
  %16 = getelementptr i8, ptr %netdev, i32 2826
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv42.sink, ptr %16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv42.sink)
  %cmp47 = icmp eq i16 %conv42.sink, 1
  %.101 = select i1 %cmp47, i16 336, i16 %conv42.sink
  %num_msix_vectors = getelementptr i8, ptr %netdev, i32 2992
  %18 = ptrtoint ptr %num_msix_vectors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_msix_vectors, align 8
  %sub = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp53102 = icmp sgt i32 %sub, 0
  br i1 %cmp53102, label %if.end14.for.body_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %if.end68.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %if.end68.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %arrayidx56 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 1, i32 %i.0103
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx56, align 4
  %count58 = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %21, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %count58 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count58, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool60.not = icmp eq i8 %23, 0
  br i1 %tobool60.not, label %for.body.if.else66_crit_edge, label %land.lhs.true61

for.body.if.else66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else66

land.lhs.true61:                                  ; preds = %for.body
  %count63 = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %21, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %count63 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool64.not = icmp eq i8 %25, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end68_crit_edge, label %land.lhs.true61.if.else66_crit_edge

land.lhs.true61.if.else66_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else66

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.else66:                                        ; preds = %land.lhs.true61.if.else66_crit_edge, %for.body.if.else66_crit_edge
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %land.lhs.true61.if.end68_crit_edge
  %..sink = phi i16 [ %., %if.else66 ], [ %.101, %land.lhs.true61.if.end68_crit_edge ]
  %itr67 = getelementptr inbounds %struct.ixgbevf_q_vector, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %itr67 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %..sink, ptr %itr67, align 2
  tail call void @ixgbevf_write_eitr(ptr noundef %21) #17
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %if.end68.cleanup_crit_edge, label %if.end68.for.body_crit_edge

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end68.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ixgbevf_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3456
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_count, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3448
  %5 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ring_count, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 64)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %add = add nuw nsw i32 %7, 7
  %and = and i32 %add, 16376
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 64)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %add20 = add nuw nsw i32 %11, 7
  %and21 = and i32 %add20, 16376
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3448
  %12 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %13)
  %cmp22 = icmp eq i32 %and, %13
  br i1 %cmp22, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3456
  %14 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %15)
  %cmp23 = icmp eq i32 %and21, %15
  br i1 %cmp23, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 3432
  %call26391 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26391)
  %tobool27.not392 = icmp eq i32 %call26391, 0
  br i1 %tobool27.not392, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end25.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #17
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #17
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end25.while.end_crit_edge
  %netdev28 = getelementptr i8, ptr %netdev, i32 3036
  %16 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev28, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end56

for.cond.preheader:                               ; preds = %while.end
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2872
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31418 = icmp sgt i32 %21, 0
  br i1 %cmp31418, label %for.body.lr.ph, label %for.cond.preheader.for.cond33.preheader_crit_edge

for.cond.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond33.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = trunc i32 %and to i16
  br label %for.body

for.cond33.preheader:                             ; preds = %for.body.for.cond33.preheader_crit_edge, %for.cond.preheader.for.cond33.preheader_crit_edge
  %num_xdp_queues = getelementptr i8, ptr %netdev, i32 2836
  %22 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_xdp_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34420 = icmp sgt i32 %23, 0
  br i1 %cmp34420, label %for.body36.lr.ph, label %for.cond33.preheader.for.cond43.preheader_crit_edge

for.cond33.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond43.preheader

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %conv37 = trunc i32 %and to i16
  br label %for.body36

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0419 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 9, i32 %i.0419
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.ixgbevf_ring, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %count, align 32
  %inc = add nuw nsw i32 %i.0419, 1
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 8
  %cmp31 = icmp slt i32 %inc, %28
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.body.for.cond33.preheader_crit_edge

for.body.for.cond33.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond33.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond43.preheader:                             ; preds = %for.body36.for.cond43.preheader_crit_edge, %for.cond33.preheader.for.cond43.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2936
  %29 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp44422 = icmp sgt i32 %30, 0
  br i1 %cmp44422, label %for.body46.lr.ph, label %for.cond43.preheader.for.end53_crit_edge

for.cond43.preheader.for.end53_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end53

for.body46.lr.ph:                                 ; preds = %for.cond43.preheader
  %conv47 = trunc i32 %and21 to i16
  br label %for.body46

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %i.1421 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc41, %for.body36.for.body36_crit_edge ]
  %arrayidx38 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 7, i32 %i.1421
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx38, align 4
  %count39 = getelementptr inbounds %struct.ixgbevf_ring, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %count39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv37, ptr %count39, align 32
  %inc41 = add nuw nsw i32 %i.1421, 1
  %34 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_xdp_queues, align 4
  %cmp34 = icmp slt i32 %inc41, %35
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.cond43.preheader_crit_edge

for.body36.for.cond43.preheader_crit_edge:        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond43.preheader

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body36

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %i.2423 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc52, %for.body46.for.body46_crit_edge ]
  %arrayidx49 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.2423
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx49, align 4
  %count50 = getelementptr inbounds %struct.ixgbevf_ring, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %count50 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv47, ptr %count50, align 32
  %inc52 = add nuw nsw i32 %i.2423, 1
  %39 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_rx_queues, align 8
  %cmp44 = icmp slt i32 %inc52, %40
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.end53_crit_edge

for.body46.for.end53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end53

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body46

for.end53:                                        ; preds = %for.body46.for.end53_crit_edge, %for.cond43.preheader.for.end53_crit_edge
  %41 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %tx_ring_count, align 8
  %xdp_ring_count = getelementptr i8, ptr %netdev, i32 3452
  %42 = ptrtoint ptr %xdp_ring_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %xdp_ring_count, align 4
  %rx_ring_count55 = getelementptr i8, ptr %netdev, i32 3456
  %43 = ptrtoint ptr %rx_ring_count55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and21, ptr %rx_ring_count55, align 8
  br label %if.end219

if.end56:                                         ; preds = %while.end
  %44 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %45)
  %cmp58.not = icmp eq i32 %and, %45
  br i1 %cmp58.not, label %if.end56.if.end119_crit_edge, label %if.then60

if.end56.if.end119_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.then60:                                        ; preds = %if.end56
  %num_tx_queues61 = getelementptr i8, ptr %netdev, i32 2872
  %46 = ptrtoint ptr %num_tx_queues61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_tx_queues61, align 8
  %num_xdp_queues62 = getelementptr i8, ptr %netdev, i32 2836
  %48 = ptrtoint ptr %num_xdp_queues62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_xdp_queues62, align 4
  %add63 = add i32 %49, %47
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add63, i32 384) #17
  %51 = extractvalue { i32, i1 } %50, 1
  %52 = extractvalue { i32, i1 } %50, 0
  %retval.0.i = select i1 %51, i32 -1, i32 %52
  %call65 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #20
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then60.if.end219_crit_edge, label %for.cond69.preheader

if.then60.if.end219_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end219

for.cond69.preheader:                             ; preds = %if.then60
  %53 = ptrtoint ptr %num_tx_queues61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_tx_queues61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp71393 = icmp sgt i32 %54, 0
  br i1 %cmp71393, label %for.body73.lr.ph, label %for.cond69.preheader.for.cond93.preheader_crit_edge

for.cond69.preheader.for.cond93.preheader_crit_edge: ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond93.preheader

for.body73.lr.ph:                                 ; preds = %for.cond69.preheader
  %conv77 = trunc i32 %and to i16
  br label %for.body73

for.cond93.preheader:                             ; preds = %for.inc90.for.cond93.preheader_crit_edge, %for.cond69.preheader.for.cond93.preheader_crit_edge
  %i.3.lcssa = phi i32 [ 0, %for.cond69.preheader.for.cond93.preheader_crit_edge ], [ %inc91, %for.inc90.for.cond93.preheader_crit_edge ]
  %55 = ptrtoint ptr %num_xdp_queues62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_xdp_queues62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp95396 = icmp sgt i32 %56, 0
  br i1 %cmp95396, label %for.body97.lr.ph, label %for.cond93.preheader.if.end119_crit_edge

for.cond93.preheader.if.end119_crit_edge:         ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

for.body97.lr.ph:                                 ; preds = %for.cond93.preheader
  %conv101 = trunc i32 %and to i16
  br label %for.body97

for.body73:                                       ; preds = %for.inc90.for.body73_crit_edge, %for.body73.lr.ph
  %i.3394 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc91, %for.inc90.for.body73_crit_edge ]
  %arrayidx74 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %i.3394
  %arrayidx76 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 9, i32 %i.3394
  %57 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx76, align 4
  %59 = call ptr @memcpy(ptr %arrayidx74, ptr %58, i32 384)
  %count79 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %i.3394, i32 8
  %60 = ptrtoint ptr %count79 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv77, ptr %count79, align 32
  %call81 = tail call i32 @ixgbevf_setup_tx_resources(ptr noundef %arrayidx74) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %for.inc90, label %while.cond84.preheader

while.cond84.preheader:                           ; preds = %for.body73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3394)
  %tobool85.not401 = icmp eq i32 %i.3394, 0
  br i1 %tobool85.not401, label %while.cond84.preheader.while.end88_crit_edge, label %while.cond84.preheader.while.body86_crit_edge

while.cond84.preheader.while.body86_crit_edge:    ; preds = %while.cond84.preheader
  br label %while.body86

while.cond84.preheader.while.end88_crit_edge:     ; preds = %while.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end88

while.body86:                                     ; preds = %while.body86.while.body86_crit_edge, %while.cond84.preheader.while.body86_crit_edge
  %i.4402 = phi i32 [ %dec, %while.body86.while.body86_crit_edge ], [ %i.3394, %while.cond84.preheader.while.body86_crit_edge ]
  %dec = add nsw i32 %i.4402, -1
  %arrayidx87 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %dec
  tail call void @ixgbevf_free_tx_resources(ptr noundef %arrayidx87) #17
  %tobool85.not = icmp eq i32 %dec, 0
  br i1 %tobool85.not, label %while.body86.while.end88_crit_edge, label %while.body86.while.body86_crit_edge

while.body86.while.body86_crit_edge:              ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body86

while.body86.while.end88_crit_edge:               ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end88

while.end88:                                      ; preds = %while.body86.while.end88_crit_edge, %while.cond84.preheader.while.end88_crit_edge
  tail call void @vfree(ptr noundef nonnull %call65) #17
  br label %if.end219

for.inc90:                                        ; preds = %for.body73
  %inc91 = add nuw nsw i32 %i.3394, 1
  %61 = ptrtoint ptr %num_tx_queues61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_tx_queues61, align 8
  %cmp71 = icmp slt i32 %inc91, %62
  br i1 %cmp71, label %for.inc90.for.body73_crit_edge, label %for.inc90.for.cond93.preheader_crit_edge

for.inc90.for.cond93.preheader_crit_edge:         ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond93.preheader

for.inc90.for.body73_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body73

for.body97:                                       ; preds = %for.inc115.for.body97_crit_edge, %for.body97.lr.ph
  %j.0398 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc117, %for.inc115.for.body97_crit_edge ]
  %i.5397 = phi i32 [ %i.3.lcssa, %for.body97.lr.ph ], [ %inc116, %for.inc115.for.body97_crit_edge ]
  %arrayidx98 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %i.5397
  %arrayidx100 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 7, i32 %j.0398
  %63 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx100, align 4
  %65 = call ptr @memcpy(ptr %arrayidx98, ptr %64, i32 384)
  %count103 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %i.5397, i32 8
  %66 = ptrtoint ptr %count103 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv101, ptr %count103, align 32
  %call105 = tail call i32 @ixgbevf_setup_tx_resources(ptr noundef %arrayidx98) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %for.inc115, label %while.cond108.preheader

while.cond108.preheader:                          ; preds = %for.body97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5397)
  %tobool109.not399 = icmp eq i32 %i.5397, 0
  br i1 %tobool109.not399, label %while.cond108.preheader.while.end113_crit_edge, label %while.cond108.preheader.while.body110_crit_edge

while.cond108.preheader.while.body110_crit_edge:  ; preds = %while.cond108.preheader
  br label %while.body110

while.cond108.preheader.while.end113_crit_edge:   ; preds = %while.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end113

while.body110:                                    ; preds = %while.body110.while.body110_crit_edge, %while.cond108.preheader.while.body110_crit_edge
  %i.6400 = phi i32 [ %dec111, %while.body110.while.body110_crit_edge ], [ %i.5397, %while.cond108.preheader.while.body110_crit_edge ]
  %dec111 = add i32 %i.6400, -1
  %arrayidx112 = getelementptr %struct.ixgbevf_ring, ptr %call65, i32 %dec111
  tail call void @ixgbevf_free_tx_resources(ptr noundef %arrayidx112) #17
  %tobool109.not = icmp eq i32 %dec111, 0
  br i1 %tobool109.not, label %while.body110.while.end113_crit_edge, label %while.body110.while.body110_crit_edge

while.body110.while.body110_crit_edge:            ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body110

while.body110.while.end113_crit_edge:             ; preds = %while.body110
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end113

while.end113:                                     ; preds = %while.body110.while.end113_crit_edge, %while.cond108.preheader.while.end113_crit_edge
  tail call void @vfree(ptr noundef nonnull %call65) #17
  br label %if.end219

for.inc115:                                       ; preds = %for.body97
  %inc116 = add nuw i32 %i.5397, 1
  %inc117 = add nuw nsw i32 %j.0398, 1
  %67 = ptrtoint ptr %num_xdp_queues62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_xdp_queues62, align 4
  %cmp95 = icmp slt i32 %inc117, %68
  br i1 %cmp95, label %for.inc115.for.body97_crit_edge, label %for.inc115.if.end119_crit_edge

for.inc115.if.end119_crit_edge:                   ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

for.inc115.for.body97_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body97

if.end119:                                        ; preds = %for.inc115.if.end119_crit_edge, %for.cond93.preheader.if.end119_crit_edge, %if.end56.if.end119_crit_edge
  %tx_ring.0 = phi ptr [ null, %if.end56.if.end119_crit_edge ], [ %call65, %for.cond93.preheader.if.end119_crit_edge ], [ %call65, %for.inc115.if.end119_crit_edge ]
  %rx_ring_count120 = getelementptr i8, ptr %netdev, i32 3456
  %69 = ptrtoint ptr %rx_ring_count120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_ring_count120, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %70)
  %cmp121.not = icmp eq i32 %and21, %70
  br i1 %cmp121.not, label %if.end119.if.end156_crit_edge, label %if.then123

if.end119.if.end156_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

if.then123:                                       ; preds = %if.end119
  %num_rx_queues124 = getelementptr i8, ptr %netdev, i32 2936
  %71 = ptrtoint ptr %num_rx_queues124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_rx_queues124, align 8
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 384) #17
  %74 = extractvalue { i32, i1 } %73, 1
  %75 = extractvalue { i32, i1 } %73, 0
  %retval.0.i383 = select i1 %74, i32 -1, i32 %75
  %call126 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i383) #20
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %if.then123.clear_reset_crit_edge, label %for.cond130.preheader

if.then123.clear_reset_crit_edge:                 ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #19
  br label %clear_reset

for.cond130.preheader:                            ; preds = %if.then123
  %76 = ptrtoint ptr %num_rx_queues124 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_rx_queues124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp132403 = icmp sgt i32 %77, 0
  br i1 %cmp132403, label %for.body134.lr.ph, label %for.cond130.preheader.if.end156_crit_edge

for.cond130.preheader.if.end156_crit_edge:        ; preds = %for.cond130.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

for.body134.lr.ph:                                ; preds = %for.cond130.preheader
  %conv139 = trunc i32 %and21 to i16
  br label %for.body134

for.body134:                                      ; preds = %for.inc153.for.body134_crit_edge, %for.body134.lr.ph
  %i.7404 = phi i32 [ 0, %for.body134.lr.ph ], [ %inc154, %for.inc153.for.body134_crit_edge ]
  %arrayidx135 = getelementptr %struct.ixgbevf_ring, ptr %call126, i32 %i.7404
  %arrayidx137 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.7404
  %78 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx137, align 4
  %80 = call ptr @memcpy(ptr %arrayidx135, ptr %79, i32 384)
  %xdp_rxq = getelementptr %struct.ixgbevf_ring, ptr %call126, i32 %i.7404, i32 17
  %81 = call ptr @memset(ptr %xdp_rxq, i32 0, i32 128)
  %count141 = getelementptr %struct.ixgbevf_ring, ptr %call126, i32 %i.7404, i32 8
  %82 = ptrtoint ptr %count141 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv139, ptr %count141, align 32
  %call143 = tail call i32 @ixgbevf_setup_rx_resources(ptr noundef %add.ptr.i, ptr noundef %arrayidx135) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %for.inc153, label %while.cond146.preheader

while.cond146.preheader:                          ; preds = %for.body134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.7404)
  %tobool147.not405 = icmp eq i32 %i.7404, 0
  br i1 %tobool147.not405, label %while.cond146.preheader.while.end151_crit_edge, label %while.cond146.preheader.while.body148_crit_edge

while.cond146.preheader.while.body148_crit_edge:  ; preds = %while.cond146.preheader
  br label %while.body148

while.cond146.preheader.while.end151_crit_edge:   ; preds = %while.cond146.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end151

while.body148:                                    ; preds = %while.body148.while.body148_crit_edge, %while.cond146.preheader.while.body148_crit_edge
  %i.8406 = phi i32 [ %dec149, %while.body148.while.body148_crit_edge ], [ %i.7404, %while.cond146.preheader.while.body148_crit_edge ]
  %dec149 = add nsw i32 %i.8406, -1
  %arrayidx150 = getelementptr %struct.ixgbevf_ring, ptr %call126, i32 %dec149
  tail call void @ixgbevf_free_rx_resources(ptr noundef %arrayidx150) #17
  %tobool147.not = icmp eq i32 %dec149, 0
  br i1 %tobool147.not, label %while.body148.while.end151_crit_edge, label %while.body148.while.body148_crit_edge

while.body148.while.body148_crit_edge:            ; preds = %while.body148
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body148

while.body148.while.end151_crit_edge:             ; preds = %while.body148
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end151

while.end151:                                     ; preds = %while.body148.while.end151_crit_edge, %while.cond146.preheader.while.end151_crit_edge
  tail call void @vfree(ptr noundef nonnull %call126) #17
  br label %clear_reset

for.inc153:                                       ; preds = %for.body134
  %inc154 = add nuw nsw i32 %i.7404, 1
  %83 = ptrtoint ptr %num_rx_queues124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_rx_queues124, align 8
  %cmp132 = icmp slt i32 %inc154, %84
  br i1 %cmp132, label %for.inc153.for.body134_crit_edge, label %for.inc153.if.end156_crit_edge

for.inc153.if.end156_crit_edge:                   ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end156

for.inc153.for.body134_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body134

if.end156:                                        ; preds = %for.inc153.if.end156_crit_edge, %for.cond130.preheader.if.end156_crit_edge, %if.end119.if.end156_crit_edge
  %rx_ring.0 = phi ptr [ null, %if.end119.if.end156_crit_edge ], [ %call126, %for.cond130.preheader.if.end156_crit_edge ], [ %call126, %for.inc153.if.end156_crit_edge ]
  tail call void @ixgbevf_down(ptr noundef %add.ptr.i) #17
  %tobool157.not = icmp eq ptr %tx_ring.0, null
  br i1 %tobool157.not, label %if.end156.if.end188_crit_edge, label %for.cond159.preheader

if.end156.if.end188_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end188

for.cond159.preheader:                            ; preds = %if.end156
  %num_tx_queues160 = getelementptr i8, ptr %netdev, i32 2872
  %85 = ptrtoint ptr %num_tx_queues160 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_tx_queues160, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp161410 = icmp sgt i32 %86, 0
  br i1 %cmp161410, label %for.cond159.preheader.for.body163_crit_edge, label %for.cond159.preheader.for.end171_crit_edge

for.cond159.preheader.for.end171_crit_edge:       ; preds = %for.cond159.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end171

for.cond159.preheader.for.body163_crit_edge:      ; preds = %for.cond159.preheader
  br label %for.body163

for.body163:                                      ; preds = %for.body163.for.body163_crit_edge, %for.cond159.preheader.for.body163_crit_edge
  %i.9411 = phi i32 [ %inc170, %for.body163.for.body163_crit_edge ], [ 0, %for.cond159.preheader.for.body163_crit_edge ]
  %arrayidx165 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 9, i32 %i.9411
  %87 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx165, align 4
  tail call void @ixgbevf_free_tx_resources(ptr noundef %88) #17
  %89 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx165, align 4
  %arrayidx168 = getelementptr %struct.ixgbevf_ring, ptr %tx_ring.0, i32 %i.9411
  %91 = call ptr @memcpy(ptr %90, ptr %arrayidx168, i32 384)
  %inc170 = add nuw nsw i32 %i.9411, 1
  %92 = ptrtoint ptr %num_tx_queues160 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_tx_queues160, align 8
  %cmp161 = icmp slt i32 %inc170, %93
  br i1 %cmp161, label %for.body163.for.body163_crit_edge, label %for.body163.for.end171_crit_edge

for.body163.for.end171_crit_edge:                 ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end171

for.body163.for.body163_crit_edge:                ; preds = %for.body163
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body163

for.end171:                                       ; preds = %for.body163.for.end171_crit_edge, %for.cond159.preheader.for.end171_crit_edge
  %i.9.lcssa = phi i32 [ 0, %for.cond159.preheader.for.end171_crit_edge ], [ %inc170, %for.body163.for.end171_crit_edge ]
  %94 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and, ptr %tx_ring_count, align 8
  %num_xdp_queues174 = getelementptr i8, ptr %netdev, i32 2836
  %95 = ptrtoint ptr %num_xdp_queues174 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_xdp_queues174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp175413 = icmp sgt i32 %96, 0
  br i1 %cmp175413, label %for.end171.for.body177_crit_edge, label %for.end171.for.end186_crit_edge

for.end171.for.end186_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end186

for.end171.for.body177_crit_edge:                 ; preds = %for.end171
  br label %for.body177

for.body177:                                      ; preds = %for.body177.for.body177_crit_edge, %for.end171.for.body177_crit_edge
  %j.1415 = phi i32 [ %inc185, %for.body177.for.body177_crit_edge ], [ 0, %for.end171.for.body177_crit_edge ]
  %i.10414 = phi i32 [ %inc184, %for.body177.for.body177_crit_edge ], [ %i.9.lcssa, %for.end171.for.body177_crit_edge ]
  %arrayidx179 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 7, i32 %j.1415
  %97 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx179, align 4
  tail call void @ixgbevf_free_tx_resources(ptr noundef %98) #17
  %99 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx179, align 4
  %arrayidx182 = getelementptr %struct.ixgbevf_ring, ptr %tx_ring.0, i32 %i.10414
  %101 = call ptr @memcpy(ptr %100, ptr %arrayidx182, i32 384)
  %inc184 = add nuw i32 %i.10414, 1
  %inc185 = add nuw nsw i32 %j.1415, 1
  %102 = ptrtoint ptr %num_xdp_queues174 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_xdp_queues174, align 4
  %cmp175 = icmp slt i32 %inc185, %103
  br i1 %cmp175, label %for.body177.for.body177_crit_edge, label %for.body177.for.end186_crit_edge

for.body177.for.end186_crit_edge:                 ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end186

for.body177.for.body177_crit_edge:                ; preds = %for.body177
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body177

for.end186:                                       ; preds = %for.body177.for.end186_crit_edge, %for.end171.for.end186_crit_edge
  %xdp_ring_count187 = getelementptr i8, ptr %netdev, i32 3452
  %104 = ptrtoint ptr %xdp_ring_count187 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and, ptr %xdp_ring_count187, align 4
  tail call void @vfree(ptr noundef nonnull %tx_ring.0) #17
  br label %if.end188

if.end188:                                        ; preds = %for.end186, %if.end156.if.end188_crit_edge
  %tobool189.not = icmp eq ptr %rx_ring.0, null
  br i1 %tobool189.not, label %if.end188.if.end205_crit_edge, label %for.cond191.preheader

if.end188.if.end205_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end205

for.cond191.preheader:                            ; preds = %if.end188
  %num_rx_queues192 = getelementptr i8, ptr %netdev, i32 2936
  %105 = ptrtoint ptr %num_rx_queues192 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_rx_queues192, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp193416 = icmp sgt i32 %106, 0
  br i1 %cmp193416, label %for.cond191.preheader.for.body195_crit_edge, label %for.cond191.preheader.for.end203_crit_edge

for.cond191.preheader.for.end203_crit_edge:       ; preds = %for.cond191.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end203

for.cond191.preheader.for.body195_crit_edge:      ; preds = %for.cond191.preheader
  br label %for.body195

for.body195:                                      ; preds = %for.body195.for.body195_crit_edge, %for.cond191.preheader.for.body195_crit_edge
  %i.11417 = phi i32 [ %inc202, %for.body195.for.body195_crit_edge ], [ 0, %for.cond191.preheader.for.body195_crit_edge ]
  %arrayidx197 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %i.11417
  %107 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx197, align 4
  tail call void @ixgbevf_free_rx_resources(ptr noundef %108) #17
  %109 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx197, align 4
  %arrayidx200 = getelementptr %struct.ixgbevf_ring, ptr %rx_ring.0, i32 %i.11417
  %111 = call ptr @memcpy(ptr %110, ptr %arrayidx200, i32 384)
  %inc202 = add nuw nsw i32 %i.11417, 1
  %112 = ptrtoint ptr %num_rx_queues192 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_rx_queues192, align 8
  %cmp193 = icmp slt i32 %inc202, %113
  br i1 %cmp193, label %for.body195.for.body195_crit_edge, label %for.body195.for.end203_crit_edge

for.body195.for.end203_crit_edge:                 ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end203

for.body195.for.body195_crit_edge:                ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body195

for.end203:                                       ; preds = %for.body195.for.end203_crit_edge, %for.cond191.preheader.for.end203_crit_edge
  %114 = ptrtoint ptr %rx_ring_count120 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and21, ptr %rx_ring_count120, align 8
  tail call void @vfree(ptr noundef nonnull %rx_ring.0) #17
  br label %if.end205

if.end205:                                        ; preds = %for.end203, %if.end188.if.end205_crit_edge
  tail call void @ixgbevf_up(ptr noundef %add.ptr.i) #17
  br label %if.end219

clear_reset:                                      ; preds = %while.end151, %if.then123.clear_reset_crit_edge
  %err.5 = phi i32 [ %call143, %while.end151 ], [ -12, %if.then123.clear_reset_crit_edge ]
  %tobool206.not = icmp eq ptr %tx_ring.0, null
  br i1 %tobool206.not, label %clear_reset.if.end219_crit_edge, label %for.cond208.preheader

clear_reset.if.end219_crit_edge:                  ; preds = %clear_reset
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end219

for.cond208.preheader:                            ; preds = %clear_reset
  %num_tx_queues209 = getelementptr i8, ptr %netdev, i32 2872
  %num_xdp_queues210 = getelementptr i8, ptr %netdev, i32 2836
  %115 = ptrtoint ptr %num_tx_queues209 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_tx_queues209, align 8
  %117 = ptrtoint ptr %num_xdp_queues210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_xdp_queues210, align 4
  %add211407 = add i32 %118, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add211407)
  %cmp212408 = icmp sgt i32 %add211407, 0
  br i1 %cmp212408, label %for.cond208.preheader.for.body214_crit_edge, label %for.cond208.preheader.for.end218_crit_edge

for.cond208.preheader.for.end218_crit_edge:       ; preds = %for.cond208.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end218

for.cond208.preheader.for.body214_crit_edge:      ; preds = %for.cond208.preheader
  br label %for.body214

for.body214:                                      ; preds = %for.body214.for.body214_crit_edge, %for.cond208.preheader.for.body214_crit_edge
  %i.12409 = phi i32 [ %inc217, %for.body214.for.body214_crit_edge ], [ 0, %for.cond208.preheader.for.body214_crit_edge ]
  %arrayidx215 = getelementptr %struct.ixgbevf_ring, ptr %tx_ring.0, i32 %i.12409
  tail call void @ixgbevf_free_tx_resources(ptr noundef %arrayidx215) #17
  %inc217 = add nuw nsw i32 %i.12409, 1
  %119 = ptrtoint ptr %num_tx_queues209 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_tx_queues209, align 8
  %121 = ptrtoint ptr %num_xdp_queues210 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_xdp_queues210, align 4
  %add211 = add i32 %122, %120
  %cmp212 = icmp slt i32 %inc217, %add211
  br i1 %cmp212, label %for.body214.for.body214_crit_edge, label %for.body214.for.end218_crit_edge

for.body214.for.end218_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end218

for.body214.for.body214_crit_edge:                ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body214

for.end218:                                       ; preds = %for.body214.for.end218_crit_edge, %for.cond208.preheader.for.end218_crit_edge
  tail call void @vfree(ptr noundef nonnull %tx_ring.0) #17
  br label %if.end219

if.end219:                                        ; preds = %for.end218, %clear_reset.if.end219_crit_edge, %if.end205, %while.end113, %while.end88, %if.then60.if.end219_crit_edge, %for.end53
  %err.5387 = phi i32 [ %err.5, %for.end218 ], [ %err.5, %clear_reset.if.end219_crit_edge ], [ -12, %if.then60.if.end219_crit_edge ], [ 0, %for.end53 ], [ 0, %if.end205 ], [ %call105, %while.end113 ], [ %call81, %while.end88 ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end219, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5387, %if.end219 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr nocapture noundef %data) #3 align 64 {
entry:
  %link_up.i141 = alloca i8, align 1
  %link_speed.i142 = alloca i32, align 4
  %link_up.i = alloca i8, align 1
  %link_speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %hw = getelementptr i8, ptr %netdev, i32 3048
  %hw_addr = getelementptr i8, ptr %netdev, i32 3052
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr i8, ptr %netdev, i32 3044
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #21
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1, ptr %data, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1, ptr %arrayidx5, align 8
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %netdev, i32 3432
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #17
  %flags6 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %do.body9, label %do.body74

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbevf_diag_test, %if.then19)) #17
          to label %do.end26 [label %if.then19], !srcloc !70

if.then19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %netdev21 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbevf_diag_test.__UNIQUE_ID_ddebug355, ptr noundef %15, ptr noundef nonnull @.str.6) #17
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body9
  %arrayidx27 = getelementptr i64, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i) #17
  %16 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %link_up.i, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed.i) #17
  %17 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %link_speed.i, align 4
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %arrayidx27, align 8
  %check_link.i = getelementptr i8, ptr %netdev, i32 3096
  %19 = ptrtoint ptr %check_link.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %check_link.i, align 4
  %call.i = call i32 %20(ptr noundef %hw, ptr noundef nonnull %link_speed.i, ptr noundef nonnull %link_up.i, i1 noundef zeroext true) #17
  %21 = ptrtoint ptr %link_up.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link_up.i, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end26.ixgbevf_link_test.exit_crit_edge

do.end26.ixgbevf_link_test.exit_crit_edge:        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbevf_link_test.exit

if.then.i:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1, ptr %arrayidx27, align 8
  br label %ixgbevf_link_test.exit

ixgbevf_link_test.exit:                           ; preds = %if.then.i, %do.end26.ixgbevf_link_test.exit_crit_edge
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx27, align 8
  %conv.i = trunc i64 %25 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool29.not = icmp eq i32 %conv.i, 0
  br i1 %tobool29.not, label %ixgbevf_link_test.exit.if.end33_crit_edge, label %if.then30

ixgbevf_link_test.exit.if.end33_crit_edge:        ; preds = %ixgbevf_link_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

if.then30:                                        ; preds = %ixgbevf_link_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags6, align 4
  %or32 = or i32 %27, 2
  store i32 %or32, ptr %flags6, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %ixgbevf_link_test.exit.if.end33_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %call36 = call i32 @ixgbevf_close(ptr noundef %netdev) #17
  br label %do.body39

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  call void @ixgbevf_reset(ptr noundef %add.ptr.i) #17
  br label %do.body39

do.body39:                                        ; preds = %if.else, %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbevf_diag_test, %if.then51)) #17
          to label %do.end59 [label %if.then51], !srcloc !70

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %netdev54 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %netdev54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev54, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbevf_diag_test.__UNIQUE_ID_ddebug356, ptr noundef %31, ptr noundef nonnull @.str.7) #17
  br label %do.end59

do.end59:                                         ; preds = %if.then51, %do.body39
  %32 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_addr, align 4
  %tobool.not.i138 = icmp eq ptr %33, null
  br i1 %tobool.not.i138, label %do.end.i, label %do.end59.for.cond.preheader.i_crit_edge, !prof !69

do.end59.for.cond.preheader.i_crit_edge:          ; preds = %do.end59
  br label %for.cond.preheader.i

do.end.i:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #19
  %pdev.i = getelementptr i8, ptr %netdev, i32 3044
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9) #21
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1, ptr %data, align 8
  br label %if.then63

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %do.end59.for.cond.preheader.i_crit_edge
  %test.0112.i = phi ptr [ %incdec.ptr.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ @reg_test_vf, %do.end59.for.cond.preheader.i_crit_edge ]
  %array_len.i = getelementptr inbounds %struct.ixgbevf_reg_test, ptr %test.0112.i, i32 0, i32 1
  %37 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %array_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp109.not.i = icmp eq i8 %38, 0
  br i1 %cmp109.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %test_type.i = getelementptr inbounds %struct.ixgbevf_reg_test, ptr %test.0112.i, i32 0, i32 2
  %mask49.i = getelementptr inbounds %struct.ixgbevf_reg_test, ptr %test.0112.i, i32 0, i32 3
  %write50.i = getelementptr inbounds %struct.ixgbevf_reg_test, ptr %test.0112.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %test_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %test_type.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i8 %40, label %for.body.i.for.inc.i_crit_edge [
    i8 1, label %sw.epilog.i
    i8 2, label %sw.bb9.i
    i8 3, label %sw.bb18.i
    i8 4, label %sw.bb25.i
    i8 5, label %sw.bb34.i
    i8 6, label %sw.bb43.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb9.i:                                         ; preds = %for.body.i
  %42 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %test.0112.i, align 4
  %conv11.i = zext i16 %43 to i32
  %mul12.i = shl i32 %i.0110.i, 6
  %add13.i = add i32 %mul12.i, %conv11.i
  %44 = ptrtoint ptr %mask49.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask49.i, align 4
  %46 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !prof !69

if.then.i.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1, ptr %data, align 8
  br label %if.then63

if.end.i.i:                                       ; preds = %sw.bb9.i
  %49 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %write50.i, align 4
  %call.i.i = call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add13.i) #17
  %and.i.i = and i32 %50, %45
  %51 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge, label %do.body4.i.i.i, !prof !69

if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit.i.i

do.body4.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  call void @arm_heavy_mb() #17
  %53 = call i32 @llvm.bswap.i32(i32 %and.i.i) #17
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 %add13.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %53) #17, !srcloc !74
  br label %ixgbe_write_reg.exit.i.i

ixgbe_write_reg.exit.i.i:                         ; preds = %do.body4.i.i.i, %if.end.i.i.ixgbe_write_reg.exit.i.i_crit_edge
  %call7.i.i = call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %add13.i) #17
  %and9.i.i = and i32 %call7.i.i, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and9.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %and9.i.i
  br i1 %cmp.not.i.i, label %if.end15.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %ixgbe_write_reg.exit.i.i
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %add13.i, i32 noundef %and9.i.i, i32 noundef %and.i.i) #21
  %54 = zext i32 %add13.i to i64
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %data, align 8
  %56 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i39.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i39.i.i, label %do.end.i.i.if.then63_crit_edge, label %do.body4.i41.i.i, !prof !69

do.end.i.i.if.then63_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then63

do.body4.i41.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  call void @arm_heavy_mb() #17
  %58 = call i32 @llvm.bswap.i32(i32 %call.i.i) #17
  %add.ptr.i40.i.i = getelementptr i8, ptr %57, i32 %add13.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i.i, i32 %58) #17, !srcloc !74
  br label %if.then63

if.end15.i.i:                                     ; preds = %ixgbe_write_reg.exit.i.i
  %59 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i44.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i44.i.i, label %if.end15.i.i.for.inc.i_crit_edge, label %do.body4.i46.i.i, !prof !69

if.end15.i.i.for.inc.i_crit_edge:                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

do.body4.i46.i.i:                                 ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  call void @arm_heavy_mb() #17
  %61 = call i32 @llvm.bswap.i32(i32 %call.i.i) #17
  %add.ptr.i45.i.i = getelementptr i8, ptr %60, i32 %add13.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %61) #17, !srcloc !74
  br label %for.inc.i

sw.bb18.i:                                        ; preds = %for.body.i
  %62 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %test.0112.i, align 4
  %64 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %write50.i, align 4
  %66 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i102.i = icmp eq ptr %67, null
  br i1 %tobool.not.i102.i, label %sw.bb18.i.for.inc.i_crit_edge, label %do.body4.i.i, !prof !69

sw.bb18.i.for.inc.i_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

do.body4.i.i:                                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #19
  %mul22.i = shl i32 %i.0110.i, 6
  %conv21.i = zext i16 %63 to i32
  %add23.i = add i32 %mul22.i, %conv21.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  call void @arm_heavy_mb() #17
  %68 = call i32 @llvm.bswap.i32(i32 %65) #17
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 %add23.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %68) #17, !srcloc !74
  br label %for.inc.i

sw.bb25.i:                                        ; preds = %for.body.i
  %69 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %test.0112.i, align 4
  %conv27.i = zext i16 %70 to i32
  %mul28.i = shl i32 %i.0110.i, 2
  %add29.i = add i32 %mul28.i, %conv27.i
  %71 = ptrtoint ptr %mask49.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask49.i, align 4
  %73 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %write50.i, align 4
  %call32.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add29.i, i32 noundef %72, i32 noundef %74) #17
  br i1 %call32.i, label %sw.bb25.i.if.then63_crit_edge, label %sw.bb25.i.for.inc.i_crit_edge

sw.bb25.i.for.inc.i_crit_edge:                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb25.i.if.then63_crit_edge:                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then63

sw.bb34.i:                                        ; preds = %for.body.i
  %75 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %test.0112.i, align 4
  %conv36.i = zext i16 %76 to i32
  %mul37.i = shl i32 %i.0110.i, 3
  %add38.i = add i32 %mul37.i, %conv36.i
  %77 = ptrtoint ptr %mask49.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask49.i, align 4
  %79 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %write50.i, align 4
  %call41.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add38.i, i32 noundef %78, i32 noundef %80) #17
  br i1 %call41.i, label %sw.bb34.i.if.then63_crit_edge, label %sw.bb34.i.for.inc.i_crit_edge

sw.bb34.i.for.inc.i_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb34.i.if.then63_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then63

sw.bb43.i:                                        ; preds = %for.body.i
  %81 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %test.0112.i, align 4
  %conv45.i = zext i16 %82 to i32
  %mul47.i = shl i32 %i.0110.i, 3
  %add46.i = or i32 %mul47.i, 4
  %add48.i = add i32 %add46.i, %conv45.i
  %83 = ptrtoint ptr %mask49.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask49.i, align 4
  %85 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %write50.i, align 4
  %call51.i = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add48.i, i32 noundef %84, i32 noundef %86) #17
  br i1 %call51.i, label %sw.bb43.i.if.then63_crit_edge, label %sw.bb43.i.for.inc.i_crit_edge

sw.bb43.i.for.inc.i_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb43.i.if.then63_crit_edge:                    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then63

sw.epilog.i:                                      ; preds = %for.body.i
  %87 = ptrtoint ptr %test.0112.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %test.0112.i, align 4
  %conv8.i = zext i16 %88 to i32
  %mul.i = shl i32 %i.0110.i, 6
  %add.i = add i32 %mul.i, %conv8.i
  %89 = ptrtoint ptr %mask49.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mask49.i, align 4
  %91 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %write50.i, align 4
  %call.i139 = call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %add.i, i32 noundef %90, i32 noundef %92) #17
  br i1 %call.i139, label %sw.epilog.i.if.then63_crit_edge, label %sw.epilog.i.for.inc.i_crit_edge

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.epilog.i.if.then63_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then63

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %sw.bb43.i.for.inc.i_crit_edge, %sw.bb34.i.for.inc.i_crit_edge, %sw.bb25.i.for.inc.i_crit_edge, %do.body4.i.i, %sw.bb18.i.for.inc.i_crit_edge, %do.body4.i46.i.i, %if.end15.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %93 = ptrtoint ptr %array_len.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %array_len.i, align 2
  %conv.i140 = zext i8 %94 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i140
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ixgbevf_reg_test, ptr %test.0112.i, i32 1
  %95 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %incdec.ptr.i, align 4
  %tobool4.not.i = icmp eq i16 %96, 0
  br i1 %tobool4.not.i, label %ixgbevf_reg_test.exit, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.preheader.i

ixgbevf_reg_test.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 0, ptr %data, align 8
  br label %if.end66

if.then63:                                        ; preds = %sw.epilog.i.if.then63_crit_edge, %sw.bb43.i.if.then63_crit_edge, %sw.bb34.i.if.then63_crit_edge, %sw.bb25.i.if.then63_crit_edge, %do.body4.i41.i.i, %do.end.i.i.if.then63_crit_edge, %if.then.i.i, %do.end.i
  %98 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags6, align 4
  %or65 = or i32 %99, 2
  store i32 %or65, ptr %flags6, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %ixgbevf_reg_test.exit
  call void @ixgbevf_reset(ptr noundef %add.ptr.i) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #17
  br i1 %tobool.i.not, label %if.end66.if.end104_crit_edge, label %if.then69

if.end66.if.end104_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  %call70 = call i32 @ixgbevf_open(ptr noundef %netdev) #17
  br label %if.end104

do.body74:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbevf_diag_test, %if.then86)) #17
          to label %do.end94 [label %if.then86], !srcloc !70

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #19
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 8
  %netdev89 = getelementptr inbounds %struct.ixgbevf_adapter, ptr %101, i32 0, i32 23
  %102 = ptrtoint ptr %netdev89 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbevf_diag_test.__UNIQUE_ID_ddebug357, ptr noundef %103, ptr noundef nonnull @.str.8) #17
  br label %do.end94

do.end94:                                         ; preds = %if.then86, %do.body74
  %arrayidx95 = getelementptr i64, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link_up.i141) #17
  %104 = ptrtoint ptr %link_up.i141 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -1, ptr %link_up.i141, align 1, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed.i142) #17
  %105 = ptrtoint ptr %link_speed.i142 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %link_speed.i142, align 4
  %106 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 0, ptr %arrayidx95, align 8
  %check_link.i144 = getelementptr i8, ptr %netdev, i32 3096
  %107 = ptrtoint ptr %check_link.i144 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %check_link.i144, align 4
  %call.i145 = call i32 %108(ptr noundef %hw, ptr noundef nonnull %link_speed.i142, ptr noundef nonnull %link_up.i141, i1 noundef zeroext true) #17
  %109 = ptrtoint ptr %link_up.i141 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %link_up.i141, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i146 = icmp eq i8 %110, 0
  br i1 %tobool.not.i146, label %if.then.i147, label %do.end94.ixgbevf_link_test.exit149_crit_edge

do.end94.ixgbevf_link_test.exit149_crit_edge:     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbevf_link_test.exit149

if.then.i147:                                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #19
  %111 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 1, ptr %arrayidx95, align 8
  br label %ixgbevf_link_test.exit149

ixgbevf_link_test.exit149:                        ; preds = %if.then.i147, %do.end94.ixgbevf_link_test.exit149_crit_edge
  %112 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx95, align 8
  %conv.i148 = trunc i64 %113 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed.i142) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link_up.i141) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i148)
  %tobool97.not = icmp eq i32 %conv.i148, 0
  br i1 %tobool97.not, label %ixgbevf_link_test.exit149.if.end101_crit_edge, label %if.then98

ixgbevf_link_test.exit149.if.end101_crit_edge:    ; preds = %ixgbevf_link_test.exit149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end101

if.then98:                                        ; preds = %ixgbevf_link_test.exit149
  call void @__sanitizer_cov_trace_pc() #19
  %114 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags6, align 4
  %or100 = or i32 %115, 2
  store i32 %or100, ptr %flags6, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %ixgbevf_link_test.exit149.if.end101_crit_edge
  %116 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 0, ptr %data, align 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #17
  br label %if.end104

if.end104:                                        ; preds = %if.end101, %if.then69, %if.end66.if.end104_crit_edge
  %call105 = call i32 @msleep_interruptible(i32 noundef 4000) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %do.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.body.preheader
    i32 2, label %sw.bb32
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %1 = call ptr @memcpy(ptr %data, ptr @ixgbevf_gstrings_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %2 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %3 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %4 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %5 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %6 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %7 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %8 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %9 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %10 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %11 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %12 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 11), i32 32)
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  %13 = call ptr @memcpy(ptr %add.ptr.11, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 12), i32 32)
  %add.ptr.12 = getelementptr i8, ptr %data, i32 416
  %14 = call ptr @memcpy(ptr %add.ptr.12, ptr getelementptr inbounds ([14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 13), i32 32)
  %add.ptr.13 = getelementptr i8, ptr %data, i32 448
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2872
  %15 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp366 = icmp sgt i32 %16, 0
  br i1 %cmp366, label %for.body.preheader.for.body4_crit_edge, label %for.body.preheader.for.cond12.preheader_crit_edge

for.body.preheader.for.cond12.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond12.preheader

for.body.preheader.for.body4_crit_edge:           ; preds = %for.body.preheader
  br label %for.body4

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %17 = call ptr @memcpy(ptr %data, ptr @ixgbe_gstrings_test, i32 64)
  br label %sw.epilog

for.cond12.preheader:                             ; preds = %for.body4.for.cond12.preheader_crit_edge, %for.body.preheader.for.cond12.preheader_crit_edge
  %p.1.lcssa = phi ptr [ %add.ptr.13, %for.body.preheader.for.cond12.preheader_crit_edge ], [ %add.ptr8, %for.body4.for.cond12.preheader_crit_edge ]
  %num_xdp_queues = getelementptr i8, ptr %netdev, i32 2836
  %18 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_xdp_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1369 = icmp sgt i32 %19, 0
  br i1 %cmp1369, label %for.cond12.preheader.for.body14_crit_edge, label %for.cond12.preheader.for.cond22.preheader_crit_edge

for.cond12.preheader.for.cond22.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond22.preheader

for.cond12.preheader.for.body14_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body14

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.preheader.for.body4_crit_edge
  %i.168 = phi i32 [ %inc10, %for.body4.for.body4_crit_edge ], [ 0, %for.body.preheader.for.body4_crit_edge ]
  %p.167 = phi ptr [ %add.ptr8, %for.body4.for.body4_crit_edge ], [ %add.ptr.13, %for.body.preheader.for.body4_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.167, ptr noundef nonnull @.str.15, i32 noundef %i.168)
  %add.ptr6 = getelementptr i8, ptr %p.167, i32 32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr6, ptr noundef nonnull @.str.16, i32 noundef %i.168)
  %add.ptr8 = getelementptr i8, ptr %p.167, i32 64
  %inc10 = add nuw nsw i32 %i.168, 1
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 8
  %cmp3 = icmp slt i32 %inc10, %21
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.cond12.preheader_crit_edge

for.body4.for.cond12.preheader_crit_edge:         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond12.preheader

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4

for.cond22.preheader:                             ; preds = %for.body14.for.cond22.preheader_crit_edge, %for.cond12.preheader.for.cond22.preheader_crit_edge
  %p.2.lcssa = phi ptr [ %p.1.lcssa, %for.cond12.preheader.for.cond22.preheader_crit_edge ], [ %add.ptr18, %for.body14.for.cond22.preheader_crit_edge ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2936
  %22 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2373 = icmp sgt i32 %23, 0
  br i1 %cmp2373, label %for.cond22.preheader.for.body24_crit_edge, label %for.cond22.preheader.sw.epilog_crit_edge

for.cond22.preheader.sw.epilog_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.cond22.preheader.for.body24_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body24

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond12.preheader.for.body14_crit_edge
  %i.271 = phi i32 [ %inc20, %for.body14.for.body14_crit_edge ], [ 0, %for.cond12.preheader.for.body14_crit_edge ]
  %p.270 = phi ptr [ %add.ptr18, %for.body14.for.body14_crit_edge ], [ %p.1.lcssa, %for.cond12.preheader.for.body14_crit_edge ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.270, ptr noundef nonnull @.str.17, i32 noundef %i.271)
  %add.ptr16 = getelementptr i8, ptr %p.270, i32 32
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16, ptr noundef nonnull @.str.18, i32 noundef %i.271)
  %add.ptr18 = getelementptr i8, ptr %p.270, i32 64
  %inc20 = add nuw nsw i32 %i.271, 1
  %24 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_xdp_queues, align 4
  %cmp13 = icmp slt i32 %inc20, %25
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.cond22.preheader_crit_edge

for.body14.for.cond22.preheader_crit_edge:        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond22.preheader

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond22.preheader.for.body24_crit_edge
  %i.375 = phi i32 [ %inc30, %for.body24.for.body24_crit_edge ], [ 0, %for.cond22.preheader.for.body24_crit_edge ]
  %p.374 = phi ptr [ %add.ptr28, %for.body24.for.body24_crit_edge ], [ %p.2.lcssa, %for.cond22.preheader.for.body24_crit_edge ]
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.374, ptr noundef nonnull @.str.19, i32 noundef %i.375)
  %add.ptr26 = getelementptr i8, ptr %p.374, i32 32
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr26, ptr noundef nonnull @.str.20, i32 noundef %i.375)
  %add.ptr28 = getelementptr i8, ptr %p.374, i32 64
  %inc30 = add nuw nsw i32 %i.375, 1
  %26 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_rx_queues, align 8
  %cmp23 = icmp slt i32 %inc30, %27
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.sw.epilog_crit_edge

for.body24.sw.epilog_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body24

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %28 = call ptr @memcpy(ptr %data, ptr @ixgbevf_priv_flags_strings, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %for.body24.sw.epilog_crit_edge, %for.cond22.preheader.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbevf_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #17
  %0 = call ptr @memset(ptr %temp, i32 255, i32 192)
  tail call void @ixgbevf_update_stats(ptr noundef %add.ptr.i) #17
  %call1 = call ptr @dev_get_stats(ptr noundef %netdev, ptr noundef nonnull %temp) #17
  br label %for.body

for.cond11.preheader:                             ; preds = %for.inc
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2872
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12163 = icmp sgt i32 %2, 0
  br i1 %cmp12163, label %for.cond11.preheader.for.body14_crit_edge, label %for.cond11.preheader.for.cond31.preheader_crit_edge

for.cond11.preheader.for.cond31.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond31.preheader

for.cond11.preheader.for.body14_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0161 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %type = getelementptr [14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 %i.0161, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %for.body.for.inc_crit_edge [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %for.body.sw.epilog_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %sw.bb3 ], [ %call1, %for.body.sw.epilog_crit_edge ]
  %stat_offset5 = getelementptr [14 x %struct.ixgbe_stats], ptr @ixgbevf_gstrings_stats, i32 0, i32 %i.0161, i32 3
  %6 = ptrtoint ptr %stat_offset5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat_offset5, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i.sink, i32 %7
  %8 = lshr i32 16176, %i.0161
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not = icmp eq i32 %9, 0
  br i1 %cmp9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr6, align 8
  br label %for.inc

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr6, align 4
  %conv = zext i32 %13 to i64
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true, %for.body.for.inc_crit_edge
  %cond.sink = phi i64 [ 0, %for.body.for.inc_crit_edge ], [ %11, %cond.true ], [ %conv, %cond.false ]
  %arrayidx10 = getelementptr i64, ptr %data, i32 %i.0161
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %cond.sink, ptr %arrayidx10, align 8
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond31.preheader:                             ; preds = %for.inc28.for.cond31.preheader_crit_edge, %for.cond11.preheader.for.cond31.preheader_crit_edge
  %i.1.lcssa = phi i32 [ 14, %for.cond11.preheader.for.cond31.preheader_crit_edge ], [ %i.2, %for.inc28.for.cond31.preheader_crit_edge ]
  %num_xdp_queues = getelementptr i8, ptr %netdev, i32 2836
  %15 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_xdp_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp32166 = icmp sgt i32 %16, 0
  br i1 %cmp32166, label %for.cond31.preheader.for.body34_crit_edge, label %for.cond31.preheader.for.cond61.preheader_crit_edge

for.cond31.preheader.for.cond61.preheader_crit_edge: ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond61.preheader

for.cond31.preheader.for.body34_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body34

for.body14:                                       ; preds = %for.inc28.for.body14_crit_edge, %for.cond11.preheader.for.body14_crit_edge
  %j.0165 = phi i32 [ %inc29, %for.inc28.for.body14_crit_edge ], [ 0, %for.cond11.preheader.for.body14_crit_edge ]
  %i.1164 = phi i32 [ %i.2, %for.inc28.for.body14_crit_edge ], [ 14, %for.cond11.preheader.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 9, i32 %j.0165
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %for.body14
  %syncp = getelementptr inbounds %struct.ixgbevf_ring, ptr %18, i32 0, i32 15
  %stats21 = getelementptr inbounds %struct.ixgbevf_ring, ptr %18, i32 0, i32 14
  %arrayidx22 = getelementptr i64, ptr %data, i32 %i.1164
  %bytes = getelementptr inbounds %struct.ixgbevf_ring, ptr %18, i32 0, i32 14, i32 1
  %add = or i32 %i.1164, 1
  %arrayidx24 = getelementptr i64, ptr %data, i32 %add
  br label %do.body

if.then:                                          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19
  %inc16 = or i32 %i.1164, 1
  %arrayidx17 = getelementptr i64, ptr %data, i32 %i.1164
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i64, ptr %data, i32 %inc16
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %arrayidx19, align 8
  br label %for.inc28

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call20 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %21 = ptrtoint ptr %stats21 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stats21, align 16
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx22, align 8
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bytes, align 8
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx24, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !75
  %27 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %28, %call20
  br i1 %cmp.i.i.i.i.not, label %do.body.for.inc28_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body.for.inc28_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc28

for.inc28:                                        ; preds = %do.body.for.inc28_crit_edge, %if.then
  %i.2 = add i32 %i.1164, 2
  %inc29 = add nuw nsw i32 %j.0165, 1
  %29 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_tx_queues, align 8
  %cmp12 = icmp slt i32 %inc29, %30
  br i1 %cmp12, label %for.inc28.for.body14_crit_edge, label %for.inc28.for.cond31.preheader_crit_edge

for.inc28.for.cond31.preheader_crit_edge:         ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond31.preheader

for.inc28.for.body14_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14

for.cond61.preheader:                             ; preds = %for.inc58.for.cond61.preheader_crit_edge, %for.cond31.preheader.for.cond61.preheader_crit_edge
  %i.3.lcssa = phi i32 [ %i.1.lcssa, %for.cond31.preheader.for.cond61.preheader_crit_edge ], [ %i.4, %for.inc58.for.cond61.preheader_crit_edge ]
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2936
  %31 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp62170 = icmp sgt i32 %32, 0
  br i1 %cmp62170, label %for.cond61.preheader.for.body64_crit_edge, label %for.cond61.preheader.for.end90_crit_edge

for.cond61.preheader.for.end90_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end90

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.body34:                                       ; preds = %for.inc58.for.body34_crit_edge, %for.cond31.preheader.for.body34_crit_edge
  %j.1168 = phi i32 [ %inc59, %for.inc58.for.body34_crit_edge ], [ 0, %for.cond31.preheader.for.body34_crit_edge ]
  %i.3167 = phi i32 [ %i.4, %for.inc58.for.body34_crit_edge ], [ %i.1.lcssa, %for.cond31.preheader.for.body34_crit_edge ]
  %arrayidx35 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 7, i32 %j.1168
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %34, null
  br i1 %tobool36.not, label %if.then37, label %do.body43.preheader

do.body43.preheader:                              ; preds = %for.body34
  %syncp44 = getelementptr inbounds %struct.ixgbevf_ring, ptr %34, i32 0, i32 15
  %stats46 = getelementptr inbounds %struct.ixgbevf_ring, ptr %34, i32 0, i32 14
  %arrayidx48 = getelementptr i64, ptr %data, i32 %i.3167
  %bytes50 = getelementptr inbounds %struct.ixgbevf_ring, ptr %34, i32 0, i32 14, i32 1
  %add51 = add i32 %i.3167, 1
  %arrayidx52 = getelementptr i64, ptr %data, i32 %add51
  br label %do.body43

if.then37:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #19
  %inc38 = add i32 %i.3167, 1
  %arrayidx39 = getelementptr i64, ptr %data, i32 %i.3167
  %35 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i64, ptr %data, i32 %inc38
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %arrayidx41, align 8
  br label %for.inc58

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.body43.preheader
  %call45 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp44)
  %37 = ptrtoint ptr %stats46 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %stats46, align 16
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx48, align 8
  %40 = ptrtoint ptr %bytes50 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes50, align 8
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx52, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !75
  %43 = ptrtoint ptr %syncp44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %syncp44, align 4
  %cmp.i.i.i.i159.not = icmp eq i32 %44, %call45
  br i1 %cmp.i.i.i.i159.not, label %do.body43.for.inc58_crit_edge, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body43

do.body43.for.inc58_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc58

for.inc58:                                        ; preds = %do.body43.for.inc58_crit_edge, %if.then37
  %i.4 = add i32 %i.3167, 2
  %inc59 = add nuw nsw i32 %j.1168, 1
  %45 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_xdp_queues, align 4
  %cmp32 = icmp slt i32 %inc59, %46
  br i1 %cmp32, label %for.inc58.for.body34_crit_edge, label %for.inc58.for.cond61.preheader_crit_edge

for.inc58.for.cond61.preheader_crit_edge:         ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond61.preheader

for.inc58.for.body34_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body34

for.body64:                                       ; preds = %for.inc88.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %j.2172 = phi i32 [ %inc89, %for.inc88.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  %i.5171 = phi i32 [ %i.6, %for.inc88.for.body64_crit_edge ], [ %i.3.lcssa, %for.cond61.preheader.for.body64_crit_edge ]
  %arrayidx65 = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 14, i32 %j.2172
  %47 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %48, null
  br i1 %tobool66.not, label %if.then67, label %do.body73.preheader

do.body73.preheader:                              ; preds = %for.body64
  %syncp74 = getelementptr inbounds %struct.ixgbevf_ring, ptr %48, i32 0, i32 15
  %stats76 = getelementptr inbounds %struct.ixgbevf_ring, ptr %48, i32 0, i32 14
  %arrayidx78 = getelementptr i64, ptr %data, i32 %i.5171
  %bytes80 = getelementptr inbounds %struct.ixgbevf_ring, ptr %48, i32 0, i32 14, i32 1
  %add81 = add i32 %i.5171, 1
  %arrayidx82 = getelementptr i64, ptr %data, i32 %add81
  br label %do.body73

if.then67:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #19
  %inc68 = add i32 %i.5171, 1
  %arrayidx69 = getelementptr i64, ptr %data, i32 %i.5171
  %49 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %arrayidx69, align 8
  %arrayidx71 = getelementptr i64, ptr %data, i32 %inc68
  %50 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %arrayidx71, align 8
  br label %for.inc88

do.body73:                                        ; preds = %do.body73.do.body73_crit_edge, %do.body73.preheader
  %call75 = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp74)
  %51 = ptrtoint ptr %stats76 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %stats76, align 16
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx78, align 8
  %54 = ptrtoint ptr %bytes80 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bytes80, align 8
  %56 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx82, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !75
  %57 = ptrtoint ptr %syncp74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %syncp74, align 4
  %cmp.i.i.i.i160.not = icmp eq i32 %58, %call75
  br i1 %cmp.i.i.i.i160.not, label %do.body73.for.inc88_crit_edge, label %do.body73.do.body73_crit_edge

do.body73.do.body73_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body73

do.body73.for.inc88_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc88

for.inc88:                                        ; preds = %do.body73.for.inc88_crit_edge, %if.then67
  %i.6 = add i32 %i.5171, 2
  %inc89 = add nuw nsw i32 %j.2172, 1
  %59 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_rx_queues, align 8
  %cmp62 = icmp slt i32 %inc89, %60
  br i1 %cmp62, label %for.inc88.for.body64_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end90

for.inc88.for.body64_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body64

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %for.cond61.preheader.for.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_priv_flags(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 3680
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_set_priv_flags(ptr noundef %netdev, i32 noundef %priv_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags1 = getelementptr i8, ptr %netdev, i32 3680
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, -3
  %and2 = shl i32 %priv_flags, 1
  %2 = and i32 %and2, 2
  %spec.select = or i32 %and, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %1)
  %cmp.not = icmp eq i32 %spec.select, %1
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then4:                                         ; preds = %entry
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %flags1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ixgbevf_reinit_locked(ptr noundef %add.ptr.i) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %stringset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %stringset, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2872
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_tx_queues, align 8
  %num_xdp_queues = getelementptr i8, ptr %netdev, i32 2836
  %3 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_xdp_queues, align 4
  %add = add i32 %4, %2
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2936
  %5 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_rx_queues, align 8
  %add4 = add i32 %add, %6
  %mul = shl i32 %add4, 1
  %add5 = add i32 %mul, 14
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 1, %sw.bb6 ], [ %add5, %sw.bb1 ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_get_rxnfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %info, ptr nocapture noundef readnone %rules) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cond = icmp eq i32 %1, 45
  br i1 %cond, label %sw.bb, label %do.body1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_rx_queues = getelementptr i8, ptr %dev, i32 2936
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 8
  %conv = sext i32 %3 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgbevf_get_rxnfc.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgbevf_get_rxnfc, %if.then)) #17
          to label %cleanup [label %if.then], !srcloc !70

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  %hw = getelementptr i8, ptr %dev, i32 3048
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %netdev = getelementptr inbounds %struct.ixgbevf_adapter, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ixgbevf_get_rxnfc.__UNIQUE_ID_ddebug358, ptr noundef %8, ptr noundef nonnull @.str.22) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %if.then ], [ -95, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_rxfh_indir_size(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %netdev, i32 3156
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  %. = select i1 %cmp, i32 64, i32 128
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbevf_get_rxfh(ptr noundef %netdev, ptr noundef %indir, ptr noundef %key, ptr noundef writeonly %hfunc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr i8, ptr %netdev, i32 3048
  %type = getelementptr i8, ptr %netdev, i32 3156
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.then1.if.end5_crit_edge, label %if.then3

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #19
  %rss_key = getelementptr i8, ptr %netdev, i32 3612
  %3 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rss_key, align 4
  %5 = call ptr @memcpy(ptr %key, ptr %4, i32 40)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then1.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %indir, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbevf_adapter, ptr %add.ptr.i, i32 0, i32 43, i32 %i.053
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %arrayidx9 = getelementptr i32, ptr %indir, i32 %i.053
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool11.not = icmp eq ptr %indir, null
  %tobool12.not = icmp eq ptr %key, null
  %or.cond = and i1 %tobool11.not, %tobool12.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %mbx_lock = getelementptr i8, ptr %netdev, i32 3564
  tail call void @_raw_spin_lock_bh(ptr noundef %mbx_lock) #17
  br i1 %tobool11.not, label %land.lhs.true21, label %if.end19

if.end19:                                         ; preds = %if.end14
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2936
  %9 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_rx_queues, align 8
  %call18 = tail call i32 @ixgbevf_get_reta_locked(ptr noundef %hw, ptr noundef nonnull %indir, i32 noundef %10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp ne i32 %call18, 0
  %brmerge = or i1 %tobool12.not, %tobool20.not
  br i1 %brmerge, label %if.end19.if.end26_crit_edge, label %if.end19.if.then23_crit_edge

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end14
  br i1 %tobool12.not, label %land.lhs.true21.if.end26_crit_edge, label %land.lhs.true21.if.then23_crit_edge

land.lhs.true21.if.then23_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then23

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true21.if.then23_crit_edge, %if.end19.if.then23_crit_edge
  %call25 = tail call i32 @ixgbevf_get_rss_key_locked(ptr noundef %hw, ptr noundef nonnull %key) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true21.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %err.1 = phi i32 [ %call18, %if.end19.if.end26_crit_edge ], [ %call25, %if.then23 ], [ 0, %land.lhs.true21.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %mbx_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %err.1, %if.end26 ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ixgbevf_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %link_modes, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %autoneg, align 1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %port, align 1
  %link_up = getelementptr i8, ptr %netdev, i32 3468
  %5 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %link_up, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %link_speed = getelementptr i8, ptr %netdev, i32 3464
  %7 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %switch.selectcmp = icmp eq i32 %8, 32
  %switch.select = select i1 %switch.selectcmp, i32 1000, i32 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %switch.selectcmp22 = icmp eq i32 %8, 8
  %switch.select23 = select i1 %switch.selectcmp22, i32 100, i32 %switch.select
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %switch.select23.sink = phi i32 [ %switch.select23, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ 1, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.select23.sink, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %11, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_reinit_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_write_eitr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_setup_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_free_tx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_setup_rx_resources(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_free_rx_resources(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_up(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_open(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr noundef %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 26
  %hw_addr = getelementptr inbounds %struct.ixgbevf_adapter, ptr %adapter, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !prof !69

for.cond.preheader:                               ; preds = %entry
  %call = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %and = and i32 %write, 1515870810
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.preheader.ixgbe_write_reg.exit_crit_edge, label %do.body4.i, !prof !69

for.cond.preheader.ixgbe_write_reg.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %data, align 8
  br label %cleanup

do.body4.i:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %5 = tail call i32 @llvm.bswap.i32(i32 %and) #17
  %add.ptr.i = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #17, !srcloc !74
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body4.i, %for.cond.preheader.ixgbe_write_reg.exit_crit_edge
  %call7 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %and10 = and i32 %and, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %and10)
  %cmp11.not = icmp eq i32 %call7, %and10
  br i1 %cmp11.not, label %if.end31, label %ixgbe_write_reg.exit.do.body13_crit_edge

ixgbe_write_reg.exit.do.body13_crit_edge:         ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body13

do.body13:                                        ; preds = %ixgbe_write_reg.exit.3.do.body13_crit_edge, %ixgbe_write_reg.exit.2.do.body13_crit_edge, %ixgbe_write_reg.exit.1.do.body13_crit_edge, %ixgbe_write_reg.exit.do.body13_crit_edge
  %call7.lcssa = phi i32 [ %call7, %ixgbe_write_reg.exit.do.body13_crit_edge ], [ %call7.1, %ixgbe_write_reg.exit.1.do.body13_crit_edge ], [ %call7.2, %ixgbe_write_reg.exit.2.do.body13_crit_edge ], [ %call7.3, %ixgbe_write_reg.exit.3.do.body13_crit_edge ]
  %and10.lcssa = phi i32 [ %and10, %ixgbe_write_reg.exit.do.body13_crit_edge ], [ %and10.1, %ixgbe_write_reg.exit.1.do.body13_crit_edge ], [ 0, %ixgbe_write_reg.exit.2.do.body13_crit_edge ], [ %and10.3, %ixgbe_write_reg.exit.3.do.body13_crit_edge ]
  %call.lcssa = phi i32 [ %call, %ixgbe_write_reg.exit.do.body13_crit_edge ], [ %call.1, %ixgbe_write_reg.exit.1.do.body13_crit_edge ], [ %call.2, %ixgbe_write_reg.exit.2.do.body13_crit_edge ], [ %call.3, %ixgbe_write_reg.exit.3.do.body13_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_pattern_test.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reg_pattern_test, %if.then22)) #17
          to label %do.end29 [label %if.then22], !srcloc !70

if.then22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %netdev = getelementptr inbounds %struct.ixgbevf_adapter, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @reg_pattern_test.__UNIQUE_ID_ddebug354, ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %reg, i32 noundef %call7.lcssa, i32 noundef %and10.lcssa) #17
  br label %do.end29

do.end29:                                         ; preds = %if.then22, %do.body13
  %10 = zext i32 %reg to i64
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %data, align 8
  %12 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i58 = icmp eq ptr %13, null
  br i1 %tobool.not.i58, label %do.end29.cleanup_crit_edge, label %do.body4.i60, !prof !69

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body4.i60:                                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %14 = tail call i32 @llvm.bswap.i32(i32 %call.lcssa) #17
  %add.ptr.i59 = getelementptr i8, ptr %13, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %14) #17, !srcloc !74
  br label %cleanup

if.end31:                                         ; preds = %ixgbe_write_reg.exit
  %15 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i63 = icmp eq ptr %16, null
  br i1 %tobool.not.i63, label %if.end31.ixgbe_write_reg.exit66_crit_edge, label %do.body4.i65, !prof !69

if.end31.ixgbe_write_reg.exit66_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit66

do.body4.i65:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %17 = tail call i32 @llvm.bswap.i32(i32 %call) #17
  %add.ptr.i64 = getelementptr i8, ptr %16, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %17) #17, !srcloc !74
  br label %ixgbe_write_reg.exit66

ixgbe_write_reg.exit66:                           ; preds = %do.body4.i65, %if.end31.ixgbe_write_reg.exit66_crit_edge
  %call.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %and.1 = and i32 %write, -1515870811
  %18 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i.1 = icmp eq ptr %19, null
  br i1 %tobool.not.i.1, label %ixgbe_write_reg.exit66.ixgbe_write_reg.exit.1_crit_edge, label %do.body4.i.1, !prof !69

ixgbe_write_reg.exit66.ixgbe_write_reg.exit.1_crit_edge: ; preds = %ixgbe_write_reg.exit66
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit.1

do.body4.i.1:                                     ; preds = %ixgbe_write_reg.exit66
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.1) #17
  %add.ptr.i.1 = getelementptr i8, ptr %19, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %20) #17, !srcloc !74
  br label %ixgbe_write_reg.exit.1

ixgbe_write_reg.exit.1:                           ; preds = %do.body4.i.1, %ixgbe_write_reg.exit66.ixgbe_write_reg.exit.1_crit_edge
  %call7.1 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %and10.1 = and i32 %and.1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.1, i32 %and10.1)
  %cmp11.not.1 = icmp eq i32 %call7.1, %and10.1
  br i1 %cmp11.not.1, label %if.end31.1, label %ixgbe_write_reg.exit.1.do.body13_crit_edge

ixgbe_write_reg.exit.1.do.body13_crit_edge:       ; preds = %ixgbe_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body13

if.end31.1:                                       ; preds = %ixgbe_write_reg.exit.1
  %21 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i63.1 = icmp eq ptr %22, null
  br i1 %tobool.not.i63.1, label %if.end31.1.ixgbe_write_reg.exit66.1_crit_edge, label %do.body4.i65.1, !prof !69

if.end31.1.ixgbe_write_reg.exit66.1_crit_edge:    ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit66.1

do.body4.i65.1:                                   ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %23 = tail call i32 @llvm.bswap.i32(i32 %call.1) #17
  %add.ptr.i64.1 = getelementptr i8, ptr %22, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.1, i32 %23) #17, !srcloc !74
  br label %ixgbe_write_reg.exit66.1

ixgbe_write_reg.exit66.1:                         ; preds = %do.body4.i65.1, %if.end31.1.ixgbe_write_reg.exit66.1_crit_edge
  %call.2 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %24 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i.2 = icmp eq ptr %25, null
  br i1 %tobool.not.i.2, label %ixgbe_write_reg.exit66.1.ixgbe_write_reg.exit.2_crit_edge, label %do.body4.i.2, !prof !69

ixgbe_write_reg.exit66.1.ixgbe_write_reg.exit.2_crit_edge: ; preds = %ixgbe_write_reg.exit66.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit.2

do.body4.i.2:                                     ; preds = %ixgbe_write_reg.exit66.1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %add.ptr.i.2 = getelementptr i8, ptr %25, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #17, !srcloc !74
  br label %ixgbe_write_reg.exit.2

ixgbe_write_reg.exit.2:                           ; preds = %do.body4.i.2, %ixgbe_write_reg.exit66.1.ixgbe_write_reg.exit.2_crit_edge
  %call7.2 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %cmp11.not.2 = icmp eq i32 %call7.2, 0
  br i1 %cmp11.not.2, label %if.end31.2, label %ixgbe_write_reg.exit.2.do.body13_crit_edge

ixgbe_write_reg.exit.2.do.body13_crit_edge:       ; preds = %ixgbe_write_reg.exit.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body13

if.end31.2:                                       ; preds = %ixgbe_write_reg.exit.2
  %26 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i63.2 = icmp eq ptr %27, null
  br i1 %tobool.not.i63.2, label %if.end31.2.ixgbe_write_reg.exit66.2_crit_edge, label %do.body4.i65.2, !prof !69

if.end31.2.ixgbe_write_reg.exit66.2_crit_edge:    ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit66.2

do.body4.i65.2:                                   ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %28 = tail call i32 @llvm.bswap.i32(i32 %call.2) #17
  %add.ptr.i64.2 = getelementptr i8, ptr %27, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.2, i32 %28) #17, !srcloc !74
  br label %ixgbe_write_reg.exit66.2

ixgbe_write_reg.exit66.2:                         ; preds = %do.body4.i65.2, %if.end31.2.ixgbe_write_reg.exit66.2_crit_edge
  %call.3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %29 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i.3 = icmp eq ptr %30, null
  br i1 %tobool.not.i.3, label %ixgbe_write_reg.exit66.2.ixgbe_write_reg.exit.3_crit_edge, label %do.body4.i.3, !prof !69

ixgbe_write_reg.exit66.2.ixgbe_write_reg.exit.3_crit_edge: ; preds = %ixgbe_write_reg.exit66.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %ixgbe_write_reg.exit.3

do.body4.i.3:                                     ; preds = %ixgbe_write_reg.exit66.2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %31 = tail call i32 @llvm.bswap.i32(i32 %write) #17
  %add.ptr.i.3 = getelementptr i8, ptr %30, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %31) #17, !srcloc !74
  br label %ixgbe_write_reg.exit.3

ixgbe_write_reg.exit.3:                           ; preds = %do.body4.i.3, %ixgbe_write_reg.exit66.2.ixgbe_write_reg.exit.3_crit_edge
  %call7.3 = tail call i32 @ixgbevf_read_reg(ptr noundef %hw, i32 noundef %reg) #17
  %and10.3 = and i32 %write, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.3, i32 %and10.3)
  %cmp11.not.3 = icmp eq i32 %call7.3, %and10.3
  br i1 %cmp11.not.3, label %if.end31.3, label %ixgbe_write_reg.exit.3.do.body13_crit_edge

ixgbe_write_reg.exit.3.do.body13_crit_edge:       ; preds = %ixgbe_write_reg.exit.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body13

if.end31.3:                                       ; preds = %ixgbe_write_reg.exit.3
  %32 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr, align 4
  %tobool.not.i63.3 = icmp eq ptr %33, null
  br i1 %tobool.not.i63.3, label %if.end31.3.cleanup_crit_edge, label %do.body4.i65.3, !prof !69

if.end31.3.cleanup_crit_edge:                     ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body4.i65.3:                                   ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  tail call void @arm_heavy_mb() #17
  %34 = tail call i32 @llvm.bswap.i32(i32 %call.3) #17
  %add.ptr.i64.3 = getelementptr i8, ptr %33, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.3, i32 %34) #17, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.body4.i65.3, %if.end31.3.cleanup_crit_edge, %do.body4.i60, %do.end29.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %do.end29.cleanup_crit_edge ], [ true, %do.body4.i60 ], [ false, %do.body4.i65.3 ], [ false, %if.end31.3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbevf_update_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !76
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @trace_hardirqs_off() #17
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #17
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #17
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #17
  tail call void @trace_hardirqs_on() #17
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #17
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #17
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #17
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !77
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !69

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !78
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !79
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !80
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !81
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_get_reta_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbevf_get_rss_key_locked(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @ixgbevf_ethtool_ops, !1, !"ixgbevf_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 976, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 735, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ixgbevf_diag_test._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ixgbevf_diag_test._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 746, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug355, !11, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 760, i32 3}
!16 = !{ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug356, !15, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 770, i32 3}
!19 = !{ptr @ixgbevf_diag_test.__UNIQUE_ID_ddebug357, !18, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 667, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ixgbevf_reg_test._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ixgbevf_reg_test._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @reg_test_vf, !26, !"reg_test_vf", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 593, i32 38}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 625, i32 4}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @reg_pattern_test.__UNIQUE_ID_ddebug354, !28, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!31 = distinct !{null, !32, !"register_test_patterns", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 606, i32 18}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 651, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @reg_set_and_check._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @reg_set_and_check._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 527, i32 15}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 529, i32 15}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 533, i32 15}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 535, i32 15}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 539, i32 15}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 541, i32 15}
!50 = !{ptr @ixgbe_gstrings_test, !51, !"ixgbe_gstrings_test", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 70, i32 19}
!52 = !{ptr @ixgbevf_gstrings_stats, !53, !"ixgbevf_gstrings_stats", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 45, i32 27}
!54 = !{ptr @ixgbevf_priv_flags_strings, !55, !"ixgbevf_priv_flags_strings", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 77, i32 19}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgbevf/ethtool.c", i32 884, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ixgbevf_get_rxnfc.__UNIQUE_ID_ddebug358, !57, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2148978852, i64 2148978857, i64 2148978870, i64 2148978914, i64 2148978948, i64 2148978969}
!71 = !{!"auto-init"}
!72 = !{i8 0, i8 2}
!73 = !{i64 2156596417}
!74 = !{i64 5397608}
!75 = !{i64 2149997301}
!76 = !{i64 769175, i64 769236}
!77 = !{i64 771907}
!78 = !{i64 772192}
!79 = !{i64 2154797341}
!80 = !{i64 2154797183}
!81 = !{i64 2154797511}
