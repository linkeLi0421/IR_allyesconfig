; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netxen_nic_stats = type { [32 x i8], i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.nx_host_tx_ring = type { i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.nx_host_rds_ring = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.nx_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], i32, i32, [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.142, i32 }
%struct.anon.142 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@netxen_nic_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @netxen_nic_get_drvinfo, ptr @netxen_nic_get_regs_len, ptr @netxen_nic_get_regs, ptr @netxen_nic_get_wol, ptr @netxen_nic_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @netxen_nic_get_eeprom_len, ptr @netxen_nic_get_eeprom, ptr null, ptr @netxen_get_intr_coalesce, ptr @netxen_set_intr_coalesce, ptr @netxen_nic_get_ringparam, ptr @netxen_nic_set_ringparam, ptr null, ptr @netxen_nic_get_pauseparam, ptr @netxen_nic_set_pauseparam, ptr @netxen_nic_diag_test, ptr @netxen_nic_get_strings, ptr null, ptr @netxen_nic_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @netxen_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netxen_get_dump_flag, ptr @netxen_get_dump_data, ptr @netxen_set_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netxen_nic_get_link_ksettings, ptr @netxen_nic_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@netxen_nic_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.0.82\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx jumbo\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@netxen_validate_ringparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: setting %s ring size %d instead of %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_validate_ringparam\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c\00", [40 x i8] zeroinitializer }, align 32
@netxen_validate_ringparam._entry_ptr = internal global ptr @netxen_validate_ringparam._entry, section ".printk_index", align 4
@netxen_nic_get_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unknown board type: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_nic_get_pauseparam\00", [38 x i8] zeroinitializer }, align 32
@netxen_nic_get_pauseparam._entry_ptr = internal global ptr @netxen_nic_get_pauseparam._entry, section ".printk_index", align 4
@netxen_nic_set_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.7, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_nic_set_pauseparam\00", [38 x i8] zeroinitializer }, align 32
@netxen_nic_set_pauseparam._entry_ptr = internal global ptr @netxen_nic_set_pauseparam._entry, section ".printk_index", align 4
@netxen_nic_gstrings_test = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"Register_Test_on_offline\00\00\00\00\00\00\00\00", [32 x i8] c"Link_Test_on_offline\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@netxen_nic_gstrings_stats = internal constant { [9 x %struct.netxen_nic_stats], [88 x i8] } { [9 x %struct.netxen_nic_stats] [%struct.netxen_nic_stats { [32 x i8] c"xmit_called\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 272 }, %struct.netxen_nic_stats { [32 x i8] c"xmit_finished\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 280 }, %struct.netxen_nic_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 288 }, %struct.netxen_nic_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 296 }, %struct.netxen_nic_stats { [32 x i8] c"csummed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 304 }, %struct.netxen_nic_stats { [32 x i8] c"rx_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 312 }, %struct.netxen_nic_stats { [32 x i8] c"lro_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 320 }, %struct.netxen_nic_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 328 }, %struct.netxen_nic_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 336 }], [88 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dump not available\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"extracted the fw dump Successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW dump not enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Previous dump not cleared, not forcing dump\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Forcing a fw dump\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Disabling FW Dump\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enabling FW dump\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Forcing FW reset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Driver mask changed to: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid dump level: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@netxen_nic_get_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013netxen-nic: Unsupported board model %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"netxen_nic_get_link_ksettings\00", [34 x i8] zeroinitializer }, align 32
@netxen_nic_get_link_ksettings._entry_ptr = internal global ptr @netxen_nic_get_link_ksettings._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255, i64 182320877, i64 195952365, i64 3735936685, i64 3735944941]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [22 x i64] [i64 20, i64 16, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 49, i64 50, i64 128]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"netxen_nic_ethtool_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 919, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 70, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 76, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 456, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 459, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 462, i32 46 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 426, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 517, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 595, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"netxen_nic_gstrings_test\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 44, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"netxen_nic_gstrings_stats\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 30, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 894, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 915, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 838, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 842, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 845, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 850, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 856, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 861, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 870, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 876, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [59 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 210, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @netxen_nic_get_link_ksettings._entry, ptr @netxen_nic_get_link_ksettings._entry_ptr, ptr @netxen_nic_get_pauseparam._entry, ptr @netxen_nic_get_pauseparam._entry_ptr, ptr @netxen_nic_set_pauseparam._entry, ptr @netxen_nic_set_pauseparam._entry_ptr, ptr @netxen_validate_ringparam._entry, ptr @netxen_validate_ringparam._entry_ptr, ptr @netxen_nic_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @netxen_nic_gstrings_test, ptr @netxen_nic_gstrings_stats, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_validate_ringparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_get_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_set_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_gstrings_test to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_gstrings_stats to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_get_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_drvinfo(ptr noundef %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str, i32 noundef 32) #10
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call4 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef 136323408) #10
  %2 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_read, align 4
  %call6 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 136323412) #10
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call8 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 136323416) #10
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %call4, i32 noundef %call6, i32 noundef %call8)
  %pdev = getelementptr i8, ptr %dev, i32 2440
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call13 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netxen_nic_get_regs_len(ptr nocapture noundef readnone %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 120
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %physical_port = getelementptr i8, ptr %dev, i32 2519
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %1 to i32
  %2 = call ptr @memset(ptr %p, i32 0, i32 120)
  %revision_id = getelementptr i8, ptr %dev, i32 2429
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id, align 1
  %conv2 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv2, 16
  %pdev = getelementptr i8, ptr %dev, i32 2440
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv3 = zext i16 %8 to i32
  %or = or i32 %shl, %conv3
  %or4 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or4, ptr %version, align 4
  %is_up = getelementptr i8, ptr %dev, i32 2534
  %10 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %11)
  %cmp.not = icmp eq i16 %11, 777
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %12 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_read, align 4
  %call7 = tail call i32 %13(ptr noundef %add.ptr.i, i32 noundef 136323664) #10
  %14 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %p, align 4
  %15 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crb_read, align 4
  %call9 = tail call i32 %16(ptr noundef %add.ptr.i, i32 noundef 136323900) #10
  %arrayidx11 = getelementptr i32, ptr %p, i32 1
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call9, ptr %arrayidx11, align 4
  %18 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_read, align 4
  %call13 = tail call i32 %19(ptr noundef %add.ptr.i, i32 noundef 136323368) #10
  %arrayidx15 = getelementptr i32, ptr %p, i32 2
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call13, ptr %arrayidx15, align 4
  %io_read = getelementptr i8, ptr %dev, i32 2728
  %21 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_read, align 8
  %crb_int_state_reg = getelementptr i8, ptr %dev, i32 2748
  %23 = ptrtoint ptr %crb_int_state_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crb_int_state_reg, align 4
  %call16 = tail call i32 %22(ptr noundef %add.ptr.i, ptr noundef %24) #10
  %arrayidx18 = getelementptr i32, ptr %p, i32 3
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call16, ptr %arrayidx18, align 4
  %26 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_read, align 4
  %call20 = tail call i32 %27(ptr noundef %add.ptr.i, i32 noundef 136323384) #10
  %arrayidx22 = getelementptr i32, ptr %p, i32 4
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call20, ptr %arrayidx22, align 4
  %29 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crb_read, align 4
  %call24 = tail call i32 %30(ptr noundef %add.ptr.i, i32 noundef 136323392) #10
  %arrayidx26 = getelementptr i32, ptr %p, i32 5
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call24, ptr %arrayidx26, align 4
  %32 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_read, align 4
  %call28 = tail call i32 %33(ptr noundef %add.ptr.i, i32 noundef 136323248) #10
  %arrayidx30 = getelementptr i32, ptr %p, i32 6
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call28, ptr %arrayidx30, align 4
  %35 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %crb_read, align 4
  %call32 = tail call i32 %36(ptr noundef %add.ptr.i, i32 noundef 136323240) #10
  %arrayidx34 = getelementptr i32, ptr %p, i32 7
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call32, ptr %arrayidx34, align 4
  %38 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_read, align 4
  %call36 = tail call i32 %39(ptr noundef %add.ptr.i, i32 noundef 136323244) #10
  %arrayidx38 = getelementptr i32, ptr %p, i32 8
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call36, ptr %arrayidx38, align 4
  %41 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crb_read, align 4
  %call40 = tail call i32 %42(ptr noundef %add.ptr.i, i32 noundef 118489148) #10
  %arrayidx42 = getelementptr i32, ptr %p, i32 9
  %43 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call40, ptr %arrayidx42, align 4
  %44 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crb_read, align 4
  %call44 = tail call i32 %45(ptr noundef %add.ptr.i, i32 noundef 119537724) #10
  %arrayidx46 = getelementptr i32, ptr %p, i32 10
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call44, ptr %arrayidx46, align 4
  %47 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %crb_read, align 4
  %call48 = tail call i32 %48(ptr noundef %add.ptr.i, i32 noundef 120586300) #10
  %arrayidx50 = getelementptr i32, ptr %p, i32 11
  %49 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call48, ptr %arrayidx50, align 4
  %50 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %crb_read, align 4
  %call52 = tail call i32 %51(ptr noundef %add.ptr.i, i32 noundef 121634876) #10
  %arrayidx54 = getelementptr i32, ptr %p, i32 12
  %52 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call52, ptr %arrayidx54, align 4
  %53 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %54)
  %cmp58 = icmp ugt i8 %54, 47
  %55 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crb_read, align 4
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = tail call i32 %56(ptr noundef %add.ptr.i, i32 noundef 116391996) #10
  %arrayidx64 = getelementptr i32, ptr %p, i32 13
  %57 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call62, ptr %arrayidx64, align 4
  %58 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %crb_read, align 4
  %call66 = tail call i32 %59(ptr noundef %add.ptr.i, i32 noundef 136323736) #10
  %arrayidx68 = getelementptr i32, ptr %p, i32 16
  %60 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call66, ptr %arrayidx68, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2672
  %61 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_ring, align 8
  %hw_consumer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %hw_consumer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_consumer, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  br label %if.end92

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw nsw i32 %conv, 16
  %add73 = add nuw nsw i32 %mul, 107413504
  %call74 = tail call i32 %56(ptr noundef %add.ptr.i, i32 noundef %add73) #10
  %arrayidx76 = getelementptr i32, ptr %p, i32 14
  %68 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call74, ptr %arrayidx76, align 4
  %69 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crb_read, align 4
  %add79 = add nuw nsw i32 %mul, 107413508
  %call80 = tail call i32 %70(ptr noundef %add.ptr.i, i32 noundef %add79) #10
  %arrayidx82 = getelementptr i32, ptr %p, i32 15
  %71 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call80, ptr %arrayidx82, align 4
  %72 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crb_read, align 4
  %call84 = tail call i32 %73(ptr noundef %add.ptr.i, i32 noundef 136323732) #10
  %arrayidx86 = getelementptr i32, ptr %p, i32 16
  %74 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call84, ptr %arrayidx86, align 4
  %75 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_read, align 8
  %tx_ring88 = getelementptr i8, ptr %dev, i32 2672
  %77 = ptrtoint ptr %tx_ring88 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ring88, align 8
  %crb_cmd_consumer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %crb_cmd_consumer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %crb_cmd_consumer, align 4
  %call89 = tail call i32 %76(ptr noundef %add.ptr.i, ptr noundef %80) #10
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then60
  %call89.sink = phi i32 [ %67, %if.then60 ], [ %call89, %if.else ]
  %81 = getelementptr i32, ptr %p, i32 17
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call89.sink, ptr %81, align 4
  %83 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_read, align 8
  %tx_ring94 = getelementptr i8, ptr %dev, i32 2672
  %85 = ptrtoint ptr %tx_ring94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_ring94, align 8
  %crb_cmd_producer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %crb_cmd_producer, align 4
  %call95 = tail call i32 %84(ptr noundef %add.ptr.i, ptr noundef %88) #10
  %arrayidx97 = getelementptr i32, ptr %p, i32 18
  %89 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call95, ptr %arrayidx97, align 4
  %90 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_read, align 8
  %rds_rings = getelementptr i8, ptr %dev, i32 2656
  %92 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rds_rings, align 4
  %crb_rcv_producer = getelementptr inbounds %struct.nx_host_rds_ring, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %crb_rcv_producer to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %crb_rcv_producer, align 4
  %call100 = tail call i32 %91(ptr noundef %add.ptr.i, ptr noundef %95) #10
  %arrayidx102 = getelementptr i32, ptr %p, i32 19
  %96 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call100, ptr %arrayidx102, align 4
  %97 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_read, align 8
  %99 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rds_rings, align 4
  %crb_rcv_producer106 = getelementptr %struct.nx_host_rds_ring, ptr %100, i32 1, i32 5
  %101 = ptrtoint ptr %crb_rcv_producer106 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %crb_rcv_producer106, align 4
  %call107 = tail call i32 %98(ptr noundef %add.ptr.i, ptr noundef %102) #10
  %arrayidx109 = getelementptr i32, ptr %p, i32 20
  %103 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call107, ptr %arrayidx109, align 4
  %max_sds_rings = getelementptr i8, ptr %dev, i32 2513
  %104 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %max_sds_rings, align 1
  %conv110 = zext i8 %105 to i32
  %arrayidx112 = getelementptr i32, ptr %p, i32 21
  %106 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv110, ptr %arrayidx112, align 4
  %107 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp115243.not = icmp eq i8 %107, 0
  br i1 %cmp115243.not, label %if.end92.cleanup_crit_edge, label %for.body.lr.ph

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end92
  %sds_rings = getelementptr i8, ptr %dev, i32 2660
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.1245 = phi i32 [ 22, %for.body.lr.ph ], [ %inc120, %for.body.for.body_crit_edge ]
  %ring.0244 = phi i32 [ 0, %for.body.lr.ph ], [ %inc122, %for.body.for.body_crit_edge ]
  %108 = ptrtoint ptr %sds_rings to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sds_rings, align 4
  %110 = ptrtoint ptr %io_read to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %io_read, align 8
  %crb_sts_consumer = getelementptr %struct.nx_host_sds_ring, ptr %109, i32 %ring.0244, i32 2
  %112 = ptrtoint ptr %crb_sts_consumer to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %crb_sts_consumer, align 8
  %call119 = tail call i32 %111(ptr noundef %add.ptr.i, ptr noundef %113) #10
  %inc120 = add nuw nsw i32 %i.1245, 1
  %arrayidx121 = getelementptr i32, ptr %p, i32 %i.1245
  %114 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call119, ptr %arrayidx121, align 4
  %inc122 = add nuw nsw i32 %ring.0244, 1
  %115 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %max_sds_rings, align 1
  %conv114 = zext i8 %116 to i32
  %cmp115 = icmp ult i32 %inc122, %conv114
  br i1 %cmp115, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_wol(ptr noundef %dev, ptr nocapture noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %revision_id = getelementptr i8, ptr %dev, i32 2429
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %3)
  %cmp = icmp ult i8 %3, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call2 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 136323460) #10
  %portnum = getelementptr i8, ptr %dev, i32 2518
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum, align 2
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported, align 4
  %or = or i32 %9, 32
  store i32 %or, ptr %supported, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %10 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_read, align 4
  %call8 = tail call i32 %11(ptr noundef %add.ptr.i, i32 noundef 136323464) #10
  %12 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %portnum, align 2
  %conv10 = zext i8 %13 to i32
  %shl11 = shl nuw i32 1, %conv10
  %and12 = and i32 %shl11, %call8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.then14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %or16 = or i32 %15, 32
  store i32 %or16, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %revision_id = getelementptr i8, ptr %dev, i32 2429
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and = and i32 %3, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call4 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 136323460) #10
  %portnum = getelementptr i8, ptr %dev, i32 2518
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum, align 2
  %conv5 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv5
  %and6 = and i32 %shl, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read, align 4
  %call11 = tail call i32 %9(ptr noundef %add.ptr.i, i32 noundef 136323464) #10
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %and13 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %12 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %portnum, align 2
  %conv20 = zext i8 %13 to i32
  %shl21 = shl nuw i32 1, %conv20
  %or = or i32 %shl21, %call11
  %neg = xor i32 %shl21, -1
  %and22 = and i32 %call11, %neg
  %wol_cfg.0 = select i1 %tobool14.not, i32 %and22, i32 %or
  %crb_write = getelementptr i8, ptr %dev, i32 2712
  %14 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_write, align 8
  %call24 = tail call i32 %15(ptr noundef %add.ptr.i, i32 noundef 136323464, i32 noundef %wol_cfg.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netxen_nic_get_eeprom_len(ptr nocapture noundef readnone %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4194304
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 2440
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  %conv = zext i16 %5 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv2 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %8 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %magic, align 4
  %offset3 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %9 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset3, align 4
  %call5 = tail call i32 @netxen_rom_fast_read_words(ptr noundef %add.ptr.i, i32 noundef %10, ptr noundef %bytes, i32 noundef %1) #10
  %11 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netxen_get_intr_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ethcoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr i8, ptr %netdev, i32 2429
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_up = getelementptr i8, ptr %netdev, i32 2534
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp3.not = icmp eq i16 %3, 777
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %normal = getelementptr i8, ptr %netdev, i32 2960
  %rx_time_us = getelementptr i8, ptr %netdev, i32 2962
  %4 = ptrtoint ptr %rx_time_us to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_time_us, align 2
  %conv7 = zext i16 %5 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv7, ptr %rx_coalesce_usecs, align 4
  %tx_time_us = getelementptr i8, ptr %netdev, i32 2966
  %7 = ptrtoint ptr %tx_time_us to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_time_us, align 2
  %conv10 = zext i16 %8 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 5
  %9 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv10, ptr %tx_coalesce_usecs, align 4
  %10 = ptrtoint ptr %normal to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %normal, align 8
  %conv13 = zext i16 %11 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 2
  %12 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv13, ptr %rx_max_coalesced_frames, align 4
  %tx_packets = getelementptr i8, ptr %netdev, i32 2964
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_packets, align 4
  %conv16 = zext i16 %14 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 6
  %15 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv16, ptr %tx_max_coalesced_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_set_intr_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ethcoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %revision_id = getelementptr i8, ptr %netdev, i32 2429
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_up = getelementptr i8, ptr %netdev, i32 2534
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp3.not = icmp eq i16 %3, 777
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp7 = icmp ugt i32 %5, 65535
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp9 = icmp ugt i32 %7, 65535
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %9)
  %cmp12 = icmp ugt i32 %9, 65535
  br i1 %cmp12, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %11)
  %cmp15 = icmp ugt i32 %11, 65535
  br i1 %cmp15, label %lor.lhs.false14.cleanup_crit_edge, label %if.end18

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool22.not
  %flags = getelementptr i8, ptr %netdev, i32 2948
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %flags, align 4
  %rx_time_us = getelementptr i8, ptr %netdev, i32 2962
  %13 = ptrtoint ptr %rx_time_us to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %rx_time_us, align 2
  br label %if.end39

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 4
  %15 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv30 = trunc i32 %16 to i16
  %rx_time_us33 = getelementptr i8, ptr %netdev, i32 2962
  %17 = ptrtoint ptr %rx_time_us33 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv30, ptr %rx_time_us33, align 2
  %18 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv35 = trunc i32 %19 to i16
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then23
  %conv35.sink = phi i16 [ 256, %if.then23 ], [ %conv35, %if.else ]
  %20 = getelementptr i8, ptr %netdev, i32 2960
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv35.sink, ptr %20, align 8
  %22 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv41 = trunc i32 %23 to i16
  %tx_time_us = getelementptr i8, ptr %netdev, i32 2966
  %24 = ptrtoint ptr %tx_time_us to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv41, ptr %tx_time_us, align 2
  %25 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv45 = trunc i32 %26 to i16
  %tx_packets = getelementptr i8, ptr %netdev, i32 2964
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv45, ptr %tx_packets, align 4
  %call48 = tail call i32 @netxen_config_intr_coalesce(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @netxen_nic_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rxd = getelementptr i8, ptr %dev, i32 2506
  %0 = ptrtoint ptr %num_rxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_rxd, align 2
  %conv = zext i16 %1 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rx_pending, align 4
  %num_jumbo_rxd = getelementptr i8, ptr %dev, i32 2508
  %3 = ptrtoint ptr %num_jumbo_rxd to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_jumbo_rxd, align 4
  %conv1 = zext i16 %4 to i32
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %rx_jumbo_pending, align 4
  %num_lro_rxd = getelementptr i8, ptr %dev, i32 2510
  %6 = ptrtoint ptr %num_lro_rxd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_lro_rxd, align 2
  %conv2 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv2, %conv1
  store i32 %add, ptr %rx_jumbo_pending, align 4
  %num_txd = getelementptr i8, ptr %dev, i32 2504
  %8 = ptrtoint ptr %num_txd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_txd, align 8
  %conv4 = zext i16 %9 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %10 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4, ptr %tx_pending, align 4
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %11 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp = icmp eq i16 %12, 1
  %spec.select = select i1 %cmp, i32 4096, i32 8192
  %spec.select22 = select i1 %cmp, i32 512, i32 1024
  %13 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select22, ptr %15, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %17 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %tx_max_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %revision_id = getelementptr i8, ptr %dev, i32 2429
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp = icmp ult i8 %1, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %4 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp6 = icmp eq i16 %5, 1
  %spec.select = select i1 %cmp6, i32 4096, i32 8192
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pending, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 64) #10
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %spec.select) #10
  %sub.i = add nsw i32 %9, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 false) #10, !range !67
  %sub.i.i.i.pn.i = sub nuw nsw i32 32, %10
  %cond29.i = shl nuw i32 1, %sub.i.i.i.pn.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29.i, i32 %7)
  %cmp30.not.i = icmp eq i32 %cond29.i, %7
  br i1 %cmp30.not.i, label %if.end3.netxen_validate_ringparam.exit_crit_edge, label %do.end.i

if.end3.netxen_validate_ringparam.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_validate_ringparam.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @netxen_nic_driver_name, ptr noundef nonnull @.str.2, i32 noundef %cond29.i, i32 noundef %7) #13
  br label %netxen_validate_ringparam.exit

netxen_validate_ringparam.exit:                   ; preds = %do.end.i, %if.end3.netxen_validate_ringparam.exit_crit_edge
  %conv12 = trunc i32 %cond29.i to i16
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_jumbo_pending, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 32) #10
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 1024) #10
  %sub.i59 = add nsw i32 %14, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i59, i1 false) #10, !range !67
  %sub.i.i.i.pn.i60 = sub nuw nsw i32 32, %15
  %cond29.i61 = shl nuw i32 1, %sub.i.i.i.pn.i60
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29.i61, i32 %12)
  %cmp30.not.i62 = icmp eq i32 %cond29.i61, %12
  br i1 %cmp30.not.i62, label %netxen_validate_ringparam.exit.netxen_validate_ringparam.exit65_crit_edge, label %do.end.i64

netxen_validate_ringparam.exit.netxen_validate_ringparam.exit65_crit_edge: ; preds = %netxen_validate_ringparam.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_validate_ringparam.exit65

do.end.i64:                                       ; preds = %netxen_validate_ringparam.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @netxen_nic_driver_name, ptr noundef nonnull @.str.3, i32 noundef %cond29.i61, i32 noundef %12) #13
  br label %netxen_validate_ringparam.exit65

netxen_validate_ringparam.exit65:                 ; preds = %do.end.i64, %netxen_validate_ringparam.exit.netxen_validate_ringparam.exit65_crit_edge
  %conv15 = trunc i32 %cond29.i61 to i16
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %16 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pending, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 64) #10
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 1024) #10
  %sub.i66 = add nsw i32 %19, -1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %sub.i66, i1 false) #10, !range !67
  %sub.i.i.i.pn.i67 = sub nuw nsw i32 32, %20
  %cond29.i68 = shl nuw i32 1, %sub.i.i.i.pn.i67
  call void @__sanitizer_cov_trace_cmp4(i32 %cond29.i68, i32 %17)
  %cmp30.not.i69 = icmp eq i32 %cond29.i68, %17
  br i1 %cmp30.not.i69, label %netxen_validate_ringparam.exit65.netxen_validate_ringparam.exit72_crit_edge, label %do.end.i71

netxen_validate_ringparam.exit65.netxen_validate_ringparam.exit72_crit_edge: ; preds = %netxen_validate_ringparam.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %netxen_validate_ringparam.exit72

do.end.i71:                                       ; preds = %netxen_validate_ringparam.exit65
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @netxen_nic_driver_name, ptr noundef nonnull @.str.4, i32 noundef %cond29.i68, i32 noundef %17) #13
  br label %netxen_validate_ringparam.exit72

netxen_validate_ringparam.exit72:                 ; preds = %do.end.i71, %netxen_validate_ringparam.exit65.netxen_validate_ringparam.exit72_crit_edge
  %conv17 = trunc i32 %cond29.i68 to i16
  %num_rxd19 = getelementptr i8, ptr %dev, i32 2506
  %21 = ptrtoint ptr %num_rxd19 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_rxd19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %conv12)
  %cmp21 = icmp eq i16 %22, %conv12
  br i1 %cmp21, label %land.lhs.true, label %netxen_validate_ringparam.exit72.if.end35_crit_edge

netxen_validate_ringparam.exit72.if.end35_crit_edge: ; preds = %netxen_validate_ringparam.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %netxen_validate_ringparam.exit72
  %num_txd24 = getelementptr i8, ptr %dev, i32 2504
  %23 = ptrtoint ptr %num_txd24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_txd24, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %conv17)
  %cmp26 = icmp eq i16 %24, %conv17
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true28:                                  ; preds = %land.lhs.true
  %num_jumbo_rxd30 = getelementptr i8, ptr %dev, i32 2508
  %25 = ptrtoint ptr %num_jumbo_rxd30 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_jumbo_rxd30, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %conv15)
  %cmp32 = icmp eq i16 %26, %conv15
  br i1 %cmp32, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end35_crit_edge

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true28.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %netxen_validate_ringparam.exit72.if.end35_crit_edge
  %27 = ptrtoint ptr %num_rxd19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv12, ptr %num_rxd19, align 2
  %num_jumbo_rxd37 = getelementptr i8, ptr %dev, i32 2508
  %28 = ptrtoint ptr %num_jumbo_rxd37 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv15, ptr %num_jumbo_rxd37, align 4
  %num_txd38 = getelementptr i8, ptr %dev, i32 2504
  %29 = ptrtoint ptr %num_txd38 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv17, ptr %num_txd38, align 8
  %call39 = tail call i32 @netxen_nic_reset_context(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end35 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_pauseparam(ptr noundef %dev, ptr nocapture noundef writeonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %physical_port = getelementptr i8, ptr %dev, i32 2519
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %autoneg, align 4
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %3 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port_type, align 8
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %do.end [
    i16 1, label %lor.lhs.false
    i16 2, label %lor.lhs.false42
  ]

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp5 = icmp ugt i8 %1, 3
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %6 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_read, align 4
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107151360
  %call8 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef %add) #10
  %shr = lshr i32 %call8, 5
  %and = and i32 %shr, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %rx_pause, align 4
  %9 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crb_read, align 4
  %call10 = tail call i32 %10(ptr noundef %add.ptr.i, i32 noundef 106955532) #10
  %11 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb13
    i8 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %call10, 1
  %12 = xor i32 %and12, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %13 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_pause, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = lshr i32 %call10, 2
  %.lobit106 = and i32 %14, 1
  %15 = xor i32 %.lobit106, 1
  %tx_pause19 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %16 = ptrtoint ptr %tx_pause19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_pause19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = lshr i32 %call10, 4
  %.lobit105 = and i32 %17, 1
  %18 = xor i32 %.lobit105, 1
  %tx_pause26 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %19 = ptrtoint ptr %tx_pause26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_pause26, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = lshr i32 %call10, 6
  %.lobit107 = and i32 %20, 1
  %21 = xor i32 %.lobit107, 1
  %tx_pause33 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %22 = ptrtoint ptr %tx_pause33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tx_pause33, align 4
  br label %cleanup

lor.lhs.false42:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp43 = icmp ugt i8 %1, 1
  br i1 %cmp43, label %lor.lhs.false42.cleanup_crit_edge, label %if.end46

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false42
  %rx_pause47 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %23 = ptrtoint ptr %rx_pause47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_pause47, align 4
  %crb_read48 = getelementptr i8, ptr %dev, i32 2708
  %24 = ptrtoint ptr %crb_read48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_read48, align 4
  %call49 = tail call i32 %25(ptr noundef %add.ptr.i, i32 noundef 106954904) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp50 = icmp eq i8 %1, 0
  br i1 %cmp50, label %if.then52, label %if.else59

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %and54 = and i32 %call49, 1
  %26 = xor i32 %and54, 1
  %tx_pause58 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %27 = ptrtoint ptr %tx_pause58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tx_pause58, align 4
  br label %cleanup

if.else59:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %28 = lshr i32 %call49, 3
  %.lobit = and i32 %28, 1
  %29 = xor i32 %.lobit, 1
  %tx_pause65 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %30 = ptrtoint ptr %tx_pause65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_pause65, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i16 %4 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %conv1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else59, %if.then52, %lor.lhs.false42.cleanup_crit_edge, %sw.default, %sw.bb20, %sw.bb13, %sw.bb, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %physical_port = getelementptr i8, ptr %dev, i32 2519
  %0 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %physical_port, align 1
  %conv = zext i8 %1 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %4 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port_type, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %5, label %do.end [
    i16 1, label %lor.lhs.false
    i16 2, label %lor.lhs.false60
  ]

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp6 = icmp ugt i8 %1, 3
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %7 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crb_read, align 4
  %mul = shl nuw nsw i32 %conv, 16
  %add = add nuw nsw i32 %mul, 107151360
  %call10 = tail call i32 %8(ptr noundef %add.ptr.i, i32 noundef %add) #10
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %9 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not = icmp eq i32 %10, 0
  %and = and i32 %call10, -33
  %masksel = select i1 %tobool11.not, i32 0, i32 32
  %val.0 = or i32 %masksel, %and
  %crb_write = getelementptr i8, ptr %dev, i32 2712
  %11 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crb_write, align 8
  %call16 = tail call i32 %12(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef %val.0) #10
  %13 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crb_read, align 4
  %call18 = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 106955532) #10
  %15 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb25
    i8 2, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end9
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %16 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and21 = and i32 %call18, -2
  br label %sw.epilog

if.else22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or23 = or i32 %call18, 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %tx_pause26 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %18 = ptrtoint ptr %tx_pause26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pause26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.else30, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %and29 = and i32 %call18, -5
  br label %sw.epilog

if.else30:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %or31 = or i32 %call18, 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end9
  %tx_pause34 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %20 = ptrtoint ptr %tx_pause34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_pause34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %and37 = and i32 %call18, -17
  br label %sw.epilog

if.else38:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %or39 = or i32 %call18, 16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  %tx_pause42 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %22 = ptrtoint ptr %tx_pause42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_pause42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool43.not = icmp eq i32 %23, 0
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %and45 = and i32 %call18, -65
  br label %sw.epilog

if.else46:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %or47 = or i32 %call18, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else46, %if.then44, %if.else38, %if.then36, %if.else30, %if.then28, %if.else22, %if.then20
  %val.1 = phi i32 [ %and45, %if.then44 ], [ %or47, %if.else46 ], [ %and37, %if.then36 ], [ %or39, %if.else38 ], [ %and29, %if.then28 ], [ %or31, %if.else30 ], [ %and21, %if.then20 ], [ %or23, %if.else22 ]
  %24 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_write, align 8
  %call50 = tail call i32 %25(ptr noundef %add.ptr.i, i32 noundef 106955532, i32 noundef %val.1) #10
  br label %cleanup

lor.lhs.false60:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp61 = icmp ugt i8 %1, 1
  br i1 %cmp61, label %lor.lhs.false60.cleanup_crit_edge, label %if.end64

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false60
  %crb_read65 = getelementptr i8, ptr %dev, i32 2708
  %26 = ptrtoint ptr %crb_read65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_read65, align 4
  %call66 = tail call i32 %27(ptr noundef %add.ptr.i, i32 noundef 106954904) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp67 = icmp eq i8 %1, 0
  %tx_pause70 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %28 = ptrtoint ptr %tx_pause70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pause70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool71.not = icmp eq i32 %29, 0
  br i1 %cmp67, label %if.then69, label %if.else77

if.then69:                                        ; preds = %if.end64
  br i1 %tobool71.not, label %if.else74, label %if.then72

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %and73 = and i32 %call66, -2
  br label %if.end85

if.else74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %or75 = or i32 %call66, 1
  br label %if.end85

if.else77:                                        ; preds = %if.end64
  br i1 %tobool71.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  %and81 = and i32 %call66, -9
  br label %if.end85

if.else82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #12
  %or83 = or i32 %call66, 8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then80, %if.else74, %if.then72
  %val.2 = phi i32 [ %and73, %if.then72 ], [ %or75, %if.else74 ], [ %and81, %if.then80 ], [ %or83, %if.else82 ]
  %crb_write86 = getelementptr i8, ptr %dev, i32 2712
  %30 = ptrtoint ptr %crb_write86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_write86, align 8
  %call87 = tail call i32 %31(ptr noundef %add.ptr.i, i32 noundef 106954904, i32 noundef %val.2) #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv1 = zext i16 %5 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %conv1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end85, %lor.lhs.false60.cleanup_crit_edge, %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %lor.lhs.false60.cleanup_crit_edge ], [ 0, %if.end85 ], [ 0, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_diag_test(ptr noundef %dev, ptr nocapture noundef %eth_test, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 16)
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %crb_read.i = getelementptr i8, ptr %dev, i32 2708
  %1 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %crb_read.i, align 4
  %call1.i = tail call i32 %2(ptr noundef %add.ptr.i.i, i32 noundef 101711872) #10
  %pdev.i = getelementptr i8, ptr %dev, i32 2440
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor.i, align 8
  %7 = trunc i32 %call1.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %7)
  %cmp.not.i = icmp eq i16 %6, %7
  br i1 %cmp.not.i, label %if.end.i, label %netxen_nic_reg_test.exit.thread19

netxen_nic_reg_test.exit.thread19:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %data, align 8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %revision_id.i = getelementptr i8, ptr %dev, i32 2429
  %9 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %10)
  %cmp4.i = icmp ugt i8 %10, 47
  br i1 %cmp4.i, label %netxen_nic_reg_test.exit.thread, label %netxen_nic_reg_test.exit

netxen_nic_reg_test.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %data, align 8
  br label %if.end

netxen_nic_reg_test.exit:                         ; preds = %if.end.i
  %crb_write.i = getelementptr i8, ptr %dev, i32 2712
  %12 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_write.i, align 8
  %call8.i = tail call i32 %13(ptr noundef %add.ptr.i.i, i32 noundef 136324224, i32 noundef -1515870811) #10
  %14 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_read.i, align 4
  %call10.i = tail call i32 %15(ptr noundef %add.ptr.i.i, i32 noundef 136324224) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1515870811, i32 %call10.i)
  %cmp11.not.i = icmp ne i32 %call10.i, -1515870811
  %16 = zext i1 %cmp11.not.i to i64
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %data, align 8
  br i1 %cmp11.not.i, label %netxen_nic_reg_test.exit.if.then_crit_edge, label %netxen_nic_reg_test.exit.if.end_crit_edge

netxen_nic_reg_test.exit.if.end_crit_edge:        ; preds = %netxen_nic_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

netxen_nic_reg_test.exit.if.then_crit_edge:       ; preds = %netxen_nic_reg_test.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %netxen_nic_reg_test.exit.if.then_crit_edge, %netxen_nic_reg_test.exit.thread19
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %netxen_nic_reg_test.exit.if.end_crit_edge, %netxen_nic_reg_test.exit.thread
  %revision_id.i14 = getelementptr i8, ptr %dev, i32 2429
  %20 = ptrtoint ptr %revision_id.i14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision_id.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %21)
  %cmp.i = icmp ugt i8 %21, 47
  br i1 %cmp.i, label %if.then.i, label %netxen_nic_test_link.exit

if.then.i:                                        ; preds = %if.end
  %22 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crb_read.i, align 4
  %call3.i = tail call i32 %23(ptr noundef %add.ptr.i.i, i32 noundef 136323736) #10
  %pci_func.i = getelementptr i8, ptr %dev, i32 2430
  %24 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pci_func.i, align 2
  %conv5.i = zext i8 %25 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 2
  %shr.i = lshr i32 %call3.i, %mul.i
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp6.i = icmp ne i32 %and.i, 1
  %conv222 = zext i1 %cmp6.i to i64
  %arrayidx323 = getelementptr i64, ptr %data, i32 1
  %26 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv222, ptr %arrayidx323, align 8
  br i1 %cmp6.i, label %if.then.i.if.then5_crit_edge, label %if.then.i.if.end8_crit_edge

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

netxen_nic_test_link.exit:                        ; preds = %if.end
  %physical_port.i = getelementptr i8, ptr %dev, i32 2519
  %27 = ptrtoint ptr %physical_port.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %physical_port.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crb_read.i, align 4
  %call9.i = tail call i32 %30(ptr noundef %add.ptr.i.i, i32 noundef 136323732) #10
  %mul10.i = shl nuw nsw i32 %conv.i, 3
  %shr11.i = lshr i32 %call9.i, %mul10.i
  %and12.i = and i32 %shr11.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and12.i)
  %cmp13.i = icmp ne i32 %and12.i, 16
  %conv2 = zext i1 %cmp13.i to i64
  %arrayidx3 = getelementptr i64, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv2, ptr %arrayidx3, align 8
  br i1 %cmp13.i, label %netxen_nic_test_link.exit.if.then5_crit_edge, label %netxen_nic_test_link.exit.if.end8_crit_edge

netxen_nic_test_link.exit.if.end8_crit_edge:      ; preds = %netxen_nic_test_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

netxen_nic_test_link.exit.if.then5_crit_edge:     ; preds = %netxen_nic_test_link.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %netxen_nic_test_link.exit.if.then5_crit_edge, %if.then.i.if.then5_crit_edge
  %flags6 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %32 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags6, align 4
  %or7 = or i32 %33, 2
  store i32 %or7, ptr %flags6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %netxen_nic_test_link.exit.if.end8_crit_edge, %if.then.i.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.body.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = call ptr @memcpy(ptr %data, ptr @netxen_nic_gstrings_stats, i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 5), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 192
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 6), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 224
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 7), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 256
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([9 x %struct.netxen_nic_stats], ptr @netxen_nic_gstrings_stats, i32 0, i32 8), i32 32)
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call ptr @memcpy(ptr %data, ptr @netxen_nic_gstrings_test, i32 64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 2576
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %add.ptr.1 = getelementptr i8, ptr %dev, i32 2584
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %arrayidx3.1 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx3.1, align 8
  %add.ptr.2 = getelementptr i8, ptr %dev, i32 2592
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %arrayidx3.2 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx3.2, align 8
  %add.ptr.3 = getelementptr i8, ptr %dev, i32 2600
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %arrayidx3.3 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx3.3, align 8
  %add.ptr.4 = getelementptr i8, ptr %dev, i32 2608
  %12 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4, align 8
  %arrayidx3.4 = getelementptr i64, ptr %data, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx3.4, align 8
  %add.ptr.5 = getelementptr i8, ptr %dev, i32 2616
  %15 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5, align 8
  %arrayidx3.5 = getelementptr i64, ptr %data, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx3.5, align 8
  %add.ptr.6 = getelementptr i8, ptr %dev, i32 2624
  %18 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6, align 8
  %arrayidx3.6 = getelementptr i64, ptr %data, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx3.6, align 8
  %add.ptr.7 = getelementptr i8, ptr %dev, i32 2632
  %21 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7, align 8
  %arrayidx3.7 = getelementptr i64, ptr %data, i32 7
  %23 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx3.7, align 8
  %add.ptr.8 = getelementptr i8, ptr %dev, i32 2640
  %24 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.8, align 8
  %arrayidx3.8 = getelementptr i64, ptr %data, i32 8
  %26 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx3.8, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netxen_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %switch.selectcmp = icmp eq i32 %sset, 1
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %switch.selectcmp2 = icmp eq i32 %sset, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 2, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netxen_get_dump_flag(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %dump) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_mdump_rdy = getelementptr i8, ptr %netdev, i32 3048
  %0 = ptrtoint ptr %fw_mdump_rdy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_mdump_rdy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %md_dump_size = getelementptr i8, ptr %netdev, i32 3016
  %2 = ptrtoint ptr %md_dump_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %md_dump_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %4 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %4, align 4
  %md_enabled = getelementptr i8, ptr %netdev, i32 3015
  %6 = ptrtoint ptr %md_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %md_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.else5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %md_capture_mask = getelementptr i8, ptr %netdev, i32 3014
  %8 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %md_capture_mask, align 2
  %conv = zext i8 %9 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.end.if.end7_crit_edge
  %conv.sink = phi i32 [ %conv, %if.else5 ], [ 0, %if.end.if.end7_crit_edge ]
  %10 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.sink, ptr %10, align 4
  %fw_version = getelementptr i8, ptr %netdev, i32 3000
  %12 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_version, align 8
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %version, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_get_dump_data(ptr noundef %netdev, ptr nocapture noundef writeonly %dump, ptr nocapture noundef writeonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_mdump_rdy = getelementptr i8, ptr %netdev, i32 3048
  %0 = ptrtoint ptr %fw_mdump_rdy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_mdump_rdy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %md_template_size = getelementptr i8, ptr %netdev, i32 3024
  %2 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %md_template_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp32.not = icmp ult i32 %3, 4
  br i1 %cmp32.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %div31 = lshr i32 %3, 2
  %md_template = getelementptr i8, ptr %netdev, i32 3040
  %4 = ptrtoint ptr %md_template to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md_template, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %data.035 = phi ptr [ %incdec.ptr2, %for.body.for.body_crit_edge ], [ %buffer, %for.body.preheader ]
  %hdr_ptr.034 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %hdr_ptr.034, i32 1
  %6 = ptrtoint ptr %hdr_ptr.034 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr_ptr.034, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %incdec.ptr2 = getelementptr i32, ptr %data.035, i32 1
  %9 = ptrtoint ptr %data.035 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data.035, align 4
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %div31
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %buffer, i32 %3
  %md_capture_buff = getelementptr i8, ptr %netdev, i32 3044
  %10 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %md_capture_buff, align 4
  %12 = ptrtoint ptr %md_template_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %md_template_size, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 %13
  %md_capture_size = getelementptr i8, ptr %netdev, i32 3020
  %14 = ptrtoint ptr %md_capture_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %md_capture_size, align 4
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr4, i32 %15)
  %17 = load i32, ptr %md_capture_size, align 4
  %add = add i32 %17, %3
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %len, align 4
  %md_capture_mask = getelementptr i8, ptr %netdev, i32 3014
  %19 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %md_capture_mask, align 2
  %conv = zext i8 %20 to i32
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %21 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %flag, align 4
  %22 = load ptr, ptr %md_capture_buff, align 4
  tail call void @vfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %md_capture_buff to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %md_capture_buff, align 4
  %24 = ptrtoint ptr %fw_mdump_rdy to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fw_mdump_rdy, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %for.end ], [ @.str.11, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull %.str.12.sink) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_set_dump(ptr noundef %netdev, ptr nocapture noundef readonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flag, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1, label %for.cond.6 [
    i32 -559022355, label %sw.bb
    i32 195952365, label %sw.bb6
    i32 182320877, label %sw.bb12
    i32 -559030611, label %sw.bb18
    i32 3, label %entry.if.then22_crit_edge
    i32 7, label %entry.if.then22_crit_edge54
    i32 15, label %entry.if.then22_crit_edge55
    i32 31, label %entry.if.then22_crit_edge56
    i32 63, label %entry.if.then22_crit_edge57
    i32 127, label %entry.if.then22_crit_edge58
    i32 255, label %entry.if.then22_crit_edge59
  ]

entry.if.then22_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

sw.bb:                                            ; preds = %entry
  %md_enabled = getelementptr i8, ptr %netdev, i32 3015
  %3 = ptrtoint ptr %md_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %md_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %fw_mdump_rdy = getelementptr i8, ptr %netdev, i32 3048
  %5 = ptrtoint ptr %fw_mdump_rdy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_mdump_rdy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.15) #13
  %call5 = tail call i32 @nx_dev_request_reset(ptr noundef %add.ptr.i) #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %md_enabled7 = getelementptr i8, ptr %netdev, i32 3015
  %7 = ptrtoint ptr %md_enabled7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %md_enabled7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %sw.bb6.cleanup_crit_edge, label %if.then9

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.16) #13
  %9 = ptrtoint ptr %md_enabled7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %md_enabled7, align 1
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %md_enabled13 = getelementptr i8, ptr %netdev, i32 3015
  %10 = ptrtoint ptr %md_enabled13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %md_enabled13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.then15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.17) #13
  %12 = ptrtoint ptr %md_enabled13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %md_enabled13, align 1
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.18) #13
  %call19 = tail call i32 @nx_dev_request_reset(ptr noundef %add.ptr.i) #10
  %flags = getelementptr i8, ptr %netdev, i32 2548
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, -65
  store i32 %and, ptr %flags, align 4
  br label %cleanup

for.cond.6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.20, i32 noundef %1) #13
  br label %cleanup

if.then22:                                        ; preds = %entry.if.then22_crit_edge, %entry.if.then22_crit_edge54, %entry.if.then22_crit_edge55, %entry.if.then22_crit_edge56, %entry.if.then22_crit_edge57, %entry.if.then22_crit_edge58, %entry.if.then22_crit_edge59
  %conv = trunc i32 %1 to i8
  %md_capture_mask = getelementptr i8, ptr %netdev, i32 3014
  %15 = ptrtoint ptr %md_capture_mask to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %md_capture_mask, align 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.19, i32 noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %for.cond.6, %sw.bb18, %if.then15, %sw.bb12.cleanup_crit_edge, %if.then9, %sw.bb6.cleanup_crit_edge, %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then22 ], [ -22, %for.cond.6 ], [ 0, %if.then3 ], [ 0, %if.then ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %sw.bb18 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_type, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %1, label %entry.cleanup164_crit_edge [
    i16 1, label %if.then
    i16 2, label %if.then13
  ]

entry.cleanup164_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %port, align 1
  %link_speed = getelementptr i8, ptr %dev, i32 2536
  %4 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_speed, align 8
  %conv2 = zext i16 %5 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv2, ptr %speed, align 4
  %link_duplex = getelementptr i8, ptr %dev, i32 2538
  %7 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %link_duplex, align 2
  %conv4 = trunc i16 %8 to i8
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %duplex, align 4
  %link_autoneg = getelementptr i8, ptr %dev, i32 2540
  %10 = ptrtoint ptr %link_autoneg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %link_autoneg, align 4
  %conv6 = trunc i16 %11 to i8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %autoneg, align 1
  br label %skip

if.then13:                                        ; preds = %entry
  %crb_read = getelementptr i8, ptr %dev, i32 2708
  %13 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crb_read, align 4
  %call14 = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 136323108) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 3
  %. = select i1 %cmp15, i32 32, i32 4096
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then13.if.end35_crit_edge, label %land.lhs.true

if.then13.if.end35_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then13
  %has_link_events = getelementptr i8, ptr %dev, i32 2528
  %17 = ptrtoint ptr %has_link_events to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_link_events, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %land.lhs.true.if.end35_crit_edge, label %if.then22

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %link_speed23 = getelementptr i8, ptr %dev, i32 2536
  %19 = ptrtoint ptr %link_speed23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %link_speed23, align 8
  %conv24 = zext i16 %20 to i32
  %speed26 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %speed26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv24, ptr %speed26, align 4
  %link_autoneg27 = getelementptr i8, ptr %dev, i32 2540
  %22 = ptrtoint ptr %link_autoneg27 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %link_autoneg27, align 4
  %conv28 = trunc i16 %23 to i8
  %autoneg30 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %autoneg30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv28, ptr %autoneg30, align 1
  %link_duplex31 = getelementptr i8, ptr %dev, i32 2538
  %25 = ptrtoint ptr %link_duplex31 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %link_duplex31, align 2
  %conv32 = trunc i16 %26 to i8
  %duplex34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %duplex34 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv32, ptr %duplex34, align 4
  br label %skip

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.then13.if.end35_crit_edge
  %port37 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %port37 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %port37, align 1
  %revision_id = getelementptr i8, ptr %dev, i32 2429
  %29 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %30)
  %cmp40 = icmp ugt i8 %30, 47
  br i1 %cmp40, label %if.then42, label %if.end35.if.end57_crit_edge

if.end35.if.end57_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %pci_func = getelementptr i8, ptr %dev, i32 2430
  %31 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pci_func, align 2
  %33 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crb_read, align 4
  %conv46 = zext i8 %32 to i32
  %div242 = and i32 %conv46, 252
  %add = add nuw nsw i32 %div242, 136323816
  %call47 = tail call i32 %34(ptr noundef %add.ptr.i, i32 noundef %add) #10
  %and = shl nuw nsw i32 %conv46, 3
  %mul49 = and i32 %and, 24
  %shr = lshr i32 %call47, %mul49
  %and50 = and i32 %shr, 255
  %mul51 = mul nuw nsw i32 %and50, 100
  br label %if.end57

if.end57:                                         ; preds = %if.then42, %if.end35.if.end57_crit_edge
  %.sink = phi i32 [ %mul51, %if.then42 ], [ 10000, %if.end35.if.end57_crit_edge ]
  %35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 4
  %duplex59 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %37 = ptrtoint ptr %duplex59 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %duplex59, align 4
  %autoneg61 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %38 = ptrtoint ptr %autoneg61 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %autoneg61, align 1
  br label %skip

skip:                                             ; preds = %if.end57, %if.then22, %if.then
  %supported.1 = phi i32 [ 63, %if.then ], [ %., %if.then22 ], [ %., %if.end57 ]
  %advertising.1 = phi i32 [ 60, %if.then ], [ %., %if.then22 ], [ %., %if.end57 ]
  %physical_port = getelementptr i8, ptr %dev, i32 2519
  %39 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %physical_port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %41 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %phy_address, align 2
  %board_type = getelementptr i8, ptr %dev, i32 2434
  %42 = ptrtoint ptr %board_type to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %board_type, align 2
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %43, label %do.end [
    i16 10, label %skip.sw.bb_crit_edge
    i16 12, label %skip.sw.bb_crit_edge258
    i16 33, label %skip.sw.bb_crit_edge259
    i16 36, label %skip.sw.bb_crit_edge260
    i16 41, label %skip.sw.bb_crit_edge261
    i16 15, label %skip.sw.bb69_crit_edge
    i16 49, label %skip.sw.bb69_crit_edge262
    i16 35, label %skip.sw.bb69_crit_edge263
    i16 39, label %skip.sw.bb69_crit_edge264
    i16 14, label %skip.sw.bb84_crit_edge
    i16 13, label %skip.sw.bb84_crit_edge265
    i16 37, label %skip.sw.bb84_crit_edge266
    i16 40, label %skip.sw.bb84_crit_edge267
    i16 34, label %skip.sw.bb84_crit_edge268
    i16 38, label %skip.sw.bb91_crit_edge
    i16 42, label %skip.sw.bb91_crit_edge269
    i16 43, label %skip.sw.bb91_crit_edge270
    i16 11, label %skip.sw.bb99_crit_edge
    i16 50, label %skip.sw.bb99_crit_edge271
    i16 128, label %sw.bb106
  ]

skip.sw.bb99_crit_edge271:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

skip.sw.bb99_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

skip.sw.bb91_crit_edge270:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb91

skip.sw.bb91_crit_edge269:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb91

skip.sw.bb91_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb91

skip.sw.bb84_crit_edge268:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

skip.sw.bb84_crit_edge267:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

skip.sw.bb84_crit_edge266:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

skip.sw.bb84_crit_edge265:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

skip.sw.bb84_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb84

skip.sw.bb69_crit_edge264:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

skip.sw.bb69_crit_edge263:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

skip.sw.bb69_crit_edge262:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

skip.sw.bb69_crit_edge:                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

skip.sw.bb_crit_edge261:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

skip.sw.bb_crit_edge260:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

skip.sw.bb_crit_edge259:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

skip.sw.bb_crit_edge258:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

skip.sw.bb_crit_edge:                             ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %skip.sw.bb_crit_edge, %skip.sw.bb_crit_edge258, %skip.sw.bb_crit_edge259, %skip.sw.bb_crit_edge260, %skip.sw.bb_crit_edge261
  %or = or i32 %supported.1, 64
  %or68 = or i32 %advertising.1, 64
  br label %sw.bb69

sw.bb69:                                          ; preds = %sw.bb, %skip.sw.bb69_crit_edge, %skip.sw.bb69_crit_edge262, %skip.sw.bb69_crit_edge263, %skip.sw.bb69_crit_edge264
  %supported.2 = phi i32 [ %supported.1, %skip.sw.bb69_crit_edge ], [ %supported.1, %skip.sw.bb69_crit_edge262 ], [ %supported.1, %skip.sw.bb69_crit_edge263 ], [ %supported.1, %skip.sw.bb69_crit_edge264 ], [ %or, %sw.bb ]
  %advertising.2 = phi i32 [ %advertising.1, %skip.sw.bb69_crit_edge ], [ %advertising.1, %skip.sw.bb69_crit_edge262 ], [ %advertising.1, %skip.sw.bb69_crit_edge263 ], [ %advertising.1, %skip.sw.bb69_crit_edge264 ], [ %or68, %sw.bb ]
  %or70 = or i32 %supported.2, 128
  %or71 = or i32 %advertising.2, 128
  %port73 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %45 = ptrtoint ptr %port73 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %port73, align 1
  %46 = ptrtoint ptr %board_type to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %board_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %47)
  %cmp77 = icmp eq i16 %47, 15
  br i1 %cmp77, label %sw.bb69.cond.end_crit_edge, label %cond.false

sw.bb69.cond.end_crit_edge:                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #12
  %link_autoneg79 = getelementptr i8, ptr %dev, i32 2540
  %48 = ptrtoint ptr %link_autoneg79 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %link_autoneg79, align 4
  %phi.cast241 = trunc i16 %49 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.bb69.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast241, %cond.false ], [ 0, %sw.bb69.cond.end_crit_edge ]
  %autoneg83 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %autoneg83 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cond, ptr %autoneg83, align 1
  br label %if.end150

sw.bb84:                                          ; preds = %skip.sw.bb84_crit_edge, %skip.sw.bb84_crit_edge265, %skip.sw.bb84_crit_edge266, %skip.sw.bb84_crit_edge267, %skip.sw.bb84_crit_edge268
  %or85 = or i32 %supported.1, 512
  %or86 = or i32 %advertising.1, 512
  %port88 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %51 = ptrtoint ptr %port88 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %port88, align 1
  %autoneg90 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %52 = ptrtoint ptr %autoneg90 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %autoneg90, align 1
  br label %if.end150

sw.bb91:                                          ; preds = %skip.sw.bb91_crit_edge, %skip.sw.bb91_crit_edge269, %skip.sw.bb91_crit_edge270
  %or92 = or i32 %advertising.1, 128
  %or93 = or i32 %supported.1, 128
  %state.i243 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %53 = ptrtoint ptr %state.i243 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i243, align 4
  %and1.i.i244 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i244)
  %tobool.i245.not = icmp eq i32 %and1.i.i244, 0
  br i1 %tobool.i245.not, label %sw.bb91.sw.bb99_crit_edge, label %land.rhs

sw.bb91.sw.bb99_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

land.rhs:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #12
  %has_link_events96 = getelementptr i8, ptr %dev, i32 2528
  %55 = ptrtoint ptr %has_link_events96 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_link_events96, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool98 = icmp ne i8 %56, 0
  %phi.cast240 = zext i1 %tobool98 to i32
  br label %sw.bb99

sw.bb99:                                          ; preds = %land.rhs, %sw.bb91.sw.bb99_crit_edge, %skip.sw.bb99_crit_edge, %skip.sw.bb99_crit_edge271
  %check_sfp_module.0 = phi i32 [ 0, %skip.sw.bb99_crit_edge ], [ 0, %skip.sw.bb99_crit_edge271 ], [ 0, %sw.bb91.sw.bb99_crit_edge ], [ %phi.cast240, %land.rhs ]
  %supported.3 = phi i32 [ %supported.1, %skip.sw.bb99_crit_edge ], [ %supported.1, %skip.sw.bb99_crit_edge271 ], [ %or93, %sw.bb91.sw.bb99_crit_edge ], [ %or93, %land.rhs ]
  %advertising.3 = phi i32 [ %advertising.1, %skip.sw.bb99_crit_edge ], [ %advertising.1, %skip.sw.bb99_crit_edge271 ], [ %or92, %sw.bb91.sw.bb99_crit_edge ], [ %or92, %land.rhs ]
  %or100 = or i32 %supported.3, 1024
  %or101 = or i32 %advertising.3, 1024
  %port103 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %57 = ptrtoint ptr %port103 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %port103, align 1
  %autoneg105 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %58 = ptrtoint ptr %autoneg105 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %autoneg105, align 1
  br label %sw.epilog

sw.bb106:                                         ; preds = %skip
  %59 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %60)
  %cmp110 = icmp eq i16 %60, 2
  br i1 %cmp110, label %if.then112, label %if.else127

if.then112:                                       ; preds = %sw.bb106
  %autoneg114 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %61 = ptrtoint ptr %autoneg114 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %autoneg114, align 1
  %or115 = or i32 %supported.1, 1152
  %or116 = or i32 %advertising.1, 1152
  %port118 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %62 = ptrtoint ptr %port118 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %port118, align 1
  %state.i246 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %63 = ptrtoint ptr %state.i246 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %state.i246, align 4
  %and1.i.i247 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i247)
  %tobool.i248.not = icmp eq i32 %and1.i.i247, 0
  br i1 %tobool.i248.not, label %if.then112.if.end150_crit_edge, label %land.rhs121

if.then112.if.end150_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

land.rhs121:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %has_link_events122 = getelementptr i8, ptr %dev, i32 2528
  %65 = ptrtoint ptr %has_link_events122 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %has_link_events122, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool124 = icmp ne i8 %66, 0
  %phi.cast = zext i1 %tobool124 to i32
  br label %sw.epilog

if.else127:                                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #12
  %or128 = or i32 %supported.1, 192
  %or129 = or i32 %advertising.1, 192
  %port131 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %67 = ptrtoint ptr %port131 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %port131, align 1
  br label %if.end150

do.end:                                           ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  %conv67 = zext i16 %43 to i32
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv67) #13
  br label %cleanup164

sw.epilog:                                        ; preds = %land.rhs121, %sw.bb99
  %check_sfp_module.1 = phi i32 [ %check_sfp_module.0, %sw.bb99 ], [ %phi.cast, %land.rhs121 ]
  %supported.4 = phi i32 [ %or100, %sw.bb99 ], [ %or115, %land.rhs121 ]
  %advertising.4 = phi i32 [ %or101, %sw.bb99 ], [ %or116, %land.rhs121 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_sfp_module.1)
  %tobool137.not = icmp eq i32 %check_sfp_module.1, 0
  br i1 %tobool137.not, label %sw.epilog.if.end150_crit_edge, label %if.then138

sw.epilog.if.end150_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then138:                                       ; preds = %sw.epilog
  %module_type = getelementptr i8, ptr %dev, i32 2542
  %68 = ptrtoint ptr %module_type to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %module_type, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %69, label %sw.default146 [
    i16 2, label %if.then138.sw.bb140_crit_edge
    i16 3, label %if.then138.sw.bb140_crit_edge272
    i16 4, label %if.then138.sw.bb140_crit_edge273
    i16 5, label %if.then138.sw.bb140_crit_edge274
    i16 6, label %if.then138.sw.bb143_crit_edge
    i16 7, label %if.then138.sw.bb143_crit_edge275
    i16 8, label %if.then138.sw.bb143_crit_edge276
  ]

if.then138.sw.bb143_crit_edge276:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb143

if.then138.sw.bb143_crit_edge275:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb143

if.then138.sw.bb143_crit_edge:                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb143

if.then138.sw.bb140_crit_edge274:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb140

if.then138.sw.bb140_crit_edge273:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb140

if.then138.sw.bb140_crit_edge272:                 ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb140

if.then138.sw.bb140_crit_edge:                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb140

sw.bb140:                                         ; preds = %if.then138.sw.bb140_crit_edge, %if.then138.sw.bb140_crit_edge272, %if.then138.sw.bb140_crit_edge273, %if.then138.sw.bb140_crit_edge274
  %port142 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %71 = ptrtoint ptr %port142 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %port142, align 1
  br label %if.end150

sw.bb143:                                         ; preds = %if.then138.sw.bb143_crit_edge, %if.then138.sw.bb143_crit_edge275, %if.then138.sw.bb143_crit_edge276
  %port145 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %72 = ptrtoint ptr %port145 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %port145, align 1
  br label %if.end150

sw.default146:                                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  %port148 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %73 = ptrtoint ptr %port148 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %port148, align 1
  br label %if.end150

if.end150:                                        ; preds = %sw.default146, %sw.bb143, %sw.bb140, %sw.epilog.if.end150_crit_edge, %if.else127, %if.then112.if.end150_crit_edge, %sw.bb84, %cond.end
  %advertising.4257 = phi i32 [ %advertising.4, %sw.bb140 ], [ %advertising.4, %sw.bb143 ], [ %advertising.4, %sw.default146 ], [ %advertising.4, %sw.epilog.if.end150_crit_edge ], [ %or116, %if.then112.if.end150_crit_edge ], [ %or71, %cond.end ], [ %or86, %sw.bb84 ], [ %or129, %if.else127 ]
  %supported.4256 = phi i32 [ %supported.4, %sw.bb140 ], [ %supported.4, %sw.bb143 ], [ %supported.4, %sw.default146 ], [ %supported.4, %sw.epilog.if.end150_crit_edge ], [ %or115, %if.then112.if.end150_crit_edge ], [ %or70, %cond.end ], [ %or85, %sw.bb84 ], [ %or128, %if.else127 ]
  %state.i249 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %74 = ptrtoint ptr %state.i249 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i249, align 4
  %and1.i.i250 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i250)
  %tobool.i251.not = icmp eq i32 %and1.i.i250, 0
  br i1 %tobool.i251.not, label %if.end150.if.then154_crit_edge, label %lor.lhs.false

if.end150.if.then154_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then154

lor.lhs.false:                                    ; preds = %if.end150
  %linkup = getelementptr i8, ptr %dev, i32 2431
  %76 = ptrtoint ptr %linkup to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %linkup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool153.not = icmp eq i8 %77, 0
  br i1 %tobool153.not, label %lor.lhs.false.if.then154_crit_edge, label %lor.lhs.false.if.end159_crit_edge

lor.lhs.false.if.end159_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

lor.lhs.false.if.then154_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then154

if.then154:                                       ; preds = %lor.lhs.false.if.then154_crit_edge, %if.end150.if.then154_crit_edge
  %duplex156 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %78 = ptrtoint ptr %duplex156 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %duplex156, align 4
  %speed158 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %79 = ptrtoint ptr %speed158 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %speed158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %lor.lhs.false.if.end159_crit_edge
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.4256) #10
  %advertising162 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising162, i32 noundef %advertising.4257) #10
  br label %cleanup164

cleanup164:                                       ; preds = %if.end159, %do.end, %entry.cleanup164_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end159 ], [ -5, %entry.cleanup164_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  %port_type = getelementptr i8, ptr %dev, i32 2432
  %2 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities = getelementptr i8, ptr %dev, i32 2544
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 8
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  %conv6 = zext i8 %7 to i32
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autoneg, align 1
  %conv8 = zext i8 %9 to i32
  %call9 = tail call i32 @nx_fw_cmd_set_gbe_port(ptr noundef %add.ptr.i, i32 noundef %1, i32 noundef %conv6, i32 noundef %conv8) #10
  %10 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call9, label %if.then14 [
    i32 9, label %if.end4.cleanup_crit_edge
    i32 0, label %if.end16
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %conv17 = trunc i32 %1 to i16
  %link_speed = getelementptr i8, ptr %dev, i32 2536
  %11 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv17, ptr %link_speed, align 8
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %duplex, align 4
  %conv20 = zext i8 %13 to i16
  %link_duplex = getelementptr i8, ptr %dev, i32 2538
  %14 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv20, ptr %link_duplex, align 2
  %15 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %autoneg, align 1
  %conv23 = zext i8 %16 to i16
  %link_autoneg = getelementptr i8, ptr %dev, i32 2540
  %17 = ptrtoint ptr %link_autoneg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv23, ptr %link_autoneg, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end16.cleanup_crit_edge, label %if.end26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndo_stop, align 4
  %call27 = tail call i32 %23(ptr noundef %dev) #10
  %24 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndo_open, align 4
  %call29 = tail call i32 %27(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end16.cleanup_crit_edge, %if.then14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then14 ], [ %call29, %if.end26 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_rom_fast_read_words(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_intr_coalesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_nic_reset_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nx_dev_request_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nx_fw_cmd_set_gbe_port(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @netxen_nic_ethtool_ops, !1, !"netxen_nic_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 919, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 70, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 76, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 456, i32 39}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 459, i32 43}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 462, i32 46}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 426, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @netxen_validate_ringparam._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @netxen_validate_ringparam._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 517, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @netxen_nic_get_pauseparam._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @netxen_nic_get_pauseparam._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 595, i32 3}
!25 = !{ptr @netxen_nic_set_pauseparam._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @netxen_nic_set_pauseparam._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @netxen_nic_gstrings_test, !28, !"netxen_nic_gstrings_test", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 44, i32 19}
!29 = !{ptr @netxen_nic_gstrings_stats, !30, !"netxen_nic_gstrings_stats", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 30, i32 38}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 894, i32 23}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 915, i32 22}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 838, i32 24}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 842, i32 24}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 845, i32 23}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 850, i32 24}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 856, i32 24}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 861, i32 23}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 870, i32 6}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 876, i32 4}
!51 = distinct !{null, !52, !"FW_DUMP_LEVELS", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 826, i32 18}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_ethtool.c", i32 210, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @netxen_nic_get_link_ksettings._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @netxen_nic_get_link_ksettings._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i32 0, i32 33}
