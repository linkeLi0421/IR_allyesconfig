; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_stats = type { [32 x i8], i32, i32 }
%struct.fm10k_intfc = type { [128 x i32], ptr, ptr, ptr, [1 x i32], [1 x i32], i32, i32, i16, i32, i16, [90 x i8], [128 x ptr], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, [128 x ptr], [256 x ptr], ptr, i32, [2 x %struct.fm10k_ring_feature], ptr, %struct.fm10k_hw_stats, %struct.fm10k_hw, %struct.spinlock, ptr, ptr, i16, i16, i16, %struct.timer_list, %struct.work_struct, i32, i32, i32, i32, i8, i8, [32 x i32], [10 x i32], i16, i16, %struct.list_head, %struct.delayed_work, %struct.spinlock, ptr, i8, i8, i16, i16, i16, [36 x i8] }
%struct.fm10k_ring_feature = type { i16, i16, i16, i16 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fm10k_q_vector = type { ptr, ptr, i16, %struct.fm10k_ring_container, %struct.fm10k_ring_container, %struct.napi_struct, %struct.cpumask, [25 x i8], ptr, %struct.callback_head, [60 x i8], [0 x %struct.fm10k_ring] }
%struct.fm10k_ring_container = type { ptr, i32, i32, i16, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fm10k_ring = type { ptr, ptr, ptr, ptr, ptr, %union.anon.118, ptr, [1 x i32], i32, i32, i8, i8, i8, i16, i16, i16, i16, i16, %struct.fm10k_queue_stats, %struct.u64_stats_sync, %union.anon.119, [72 x i8] }
%union.anon.118 = type { ptr }
%struct.fm10k_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { %struct.fm10k_rx_queue_stats, ptr }
%struct.fm10k_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }

@fm10k_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1553, i32 0, ptr @fm10k_get_drvinfo, ptr @fm10k_get_regs_len, ptr @fm10k_get_regs, ptr null, ptr null, ptr @fm10k_get_msglevel, ptr @fm10k_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @fm10k_get_coalesce, ptr @fm10k_set_coalesce, ptr @fm10k_get_ringparam, ptr @fm10k_set_ringparam, ptr null, ptr @fm10k_get_pauseparam, ptr @fm10k_set_pauseparam, ptr @fm10k_self_test, ptr @fm10k_get_strings, ptr null, ptr @fm10k_get_ethtool_stats, ptr null, ptr null, ptr @fm10k_get_priv_flags, ptr @fm10k_set_priv_flags, ptr @fm10k_get_sset_count, ptr @fm10k_get_rxnfc, ptr @fm10k_set_rxnfc, ptr null, ptr null, ptr @fm10k_get_rssrk_size, ptr @fm10k_get_reta_size, ptr @fm10k_get_rssh, ptr @fm10k_set_rssh, ptr null, ptr null, ptr @fm10k_get_channels, ptr @fm10k_set_channels, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@fm10k_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Interface removed - test blocked\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fm10k_gstrings_test = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"Mailbox test (on/offline)\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@fm10k_gstrings_net_stats = internal constant { [10 x %struct.fm10k_stats], [112 x i8] } { [10 x %struct.fm10k_stats] [%struct.fm10k_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4 }, %struct.fm10k_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 12 }, %struct.fm10k_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 20 }, %struct.fm10k_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0 }, %struct.fm10k_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 8 }, %struct.fm10k_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16 }, %struct.fm10k_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 24 }, %struct.fm10k_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40 }, %struct.fm10k_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 48 }, %struct.fm10k_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 56 }], [112 x i8] zeroinitializer }, align 32
@fm10k_gstrings_global_stats = internal constant { [17 x %struct.fm10k_stats], [184 x i8] } { [17 x %struct.fm10k_stats] [%struct.fm10k_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1152 }, %struct.fm10k_stats { [32 x i8] c"tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1160 }, %struct.fm10k_stats { [32 x i8] c"tx_csum_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1168 }, %struct.fm10k_stats { [32 x i8] c"rx_alloc_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1176 }, %struct.fm10k_stats { [32 x i8] c"rx_csum_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1184 }, %struct.fm10k_stats { [32 x i8] c"tx_packets_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1200 }, %struct.fm10k_stats { [32 x i8] c"tx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1192 }, %struct.fm10k_stats { [32 x i8] c"rx_packets_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1216 }, %struct.fm10k_stats { [32 x i8] c"rx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1208 }, %struct.fm10k_stats { [32 x i8] c"rx_drops_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1224 }, %struct.fm10k_stats { [32 x i8] c"rx_overrun_pf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1232 }, %struct.fm10k_stats { [32 x i8] c"rx_overrun_vf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 1240 }, %struct.fm10k_stats { [32 x i8] c"swapi_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16184 }, %struct.fm10k_stats { [32 x i8] c"mac_rules_used\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16188 }, %struct.fm10k_stats { [32 x i8] c"mac_rules_avail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 16192 }, %struct.fm10k_stats { [32 x i8] c"reset_while_pending\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 13368 }, %struct.fm10k_stats { [32 x i8] c"tx_hang_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 1312 }], [184 x i8] zeroinitializer }, align 32
@fm10k_gstrings_mbx_stats = internal constant { [9 x %struct.fm10k_stats], [88 x i8] } { [9 x %struct.fm10k_stats] [%struct.fm10k_stats { [32 x i8] c"mbx_tx_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.fm10k_stats { [32 x i8] c"mbx_tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 120 }, %struct.fm10k_stats { [32 x i8] c"mbx_tx_messages\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 128 }, %struct.fm10k_stats { [32 x i8] c"mbx_tx_dwords\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 136 }, %struct.fm10k_stats { [32 x i8] c"mbx_tx_mbmem_pulled\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.fm10k_stats { [32 x i8] c"mbx_rx_messages\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }, %struct.fm10k_stats { [32 x i8] c"mbx_rx_dwords\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 160 }, %struct.fm10k_stats { [32 x i8] c"mbx_rx_parse_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 176 }, %struct.fm10k_stats { [32 x i8] c"mbx_rx_mbmem_pushed\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 168 }], [88 x i8] zeroinitializer }, align 32
@fm10k_gstrings_pf_stats = internal constant { [8 x %struct.fm10k_stats], [64 x i8] } { [8 x %struct.fm10k_stats] [%struct.fm10k_stats { [32 x i8] c"timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2880 }, %struct.fm10k_stats { [32 x i8] c"ur\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2896 }, %struct.fm10k_stats { [32 x i8] c"ca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2912 }, %struct.fm10k_stats { [32 x i8] c"um\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2928 }, %struct.fm10k_stats { [32 x i8] c"xec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2944 }, %struct.fm10k_stats { [32 x i8] c"vlan_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2960 }, %struct.fm10k_stats { [32 x i8] c"loopback_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2976 }, %struct.fm10k_stats { [32 x i8] c"nodesc_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2992 }], [64 x i8] zeroinitializer }, align 32
@fm10k_gstrings_queue_stats = internal constant { [2 x %struct.fm10k_stats], [48 x i8] } { [2 x %struct.fm10k_stats] [%struct.fm10k_stats { [32 x i8] c"%s_queue_%u_packets\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.fm10k_stats { [32 x i8] c"%s_queue_%u_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 64 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@__fm10k_add_ethtool_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected stat size for %s\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"enabling UDP RSS: fragmented packets may arrive out of order to the stack above\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 45]
@__sancov_gen_cov_switch_values.13 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.14 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 192]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"fm10k_ethtool_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1160, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 950, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"fm10k_gstrings_test\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 121, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"fm10k_gstrings_net_stats\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 31, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"fm10k_gstrings_global_stats\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 52, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"fm10k_gstrings_mbx_stats\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 91, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"fm10k_gstrings_pf_stats\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 76, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"fm10k_gstrings_queue_stats\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 107, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 172, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 175, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 251, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [52 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 865, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @fm10k_ethtool_ops, ptr @.str, ptr @fm10k_gstrings_test, ptr @fm10k_gstrings_net_stats, ptr @fm10k_gstrings_global_stats, ptr @fm10k_gstrings_mbx_stats, ptr @fm10k_gstrings_pf_stats, ptr @fm10k_gstrings_queue_stats, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_test to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_net_stats to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_global_stats to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_mbx_stats to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_pf_stats to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_gstrings_queue_stats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fm10k_write_reta(ptr noundef %interface, ptr noundef readonly %indir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %indices = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 38, i32 0, i32 1
  %0 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %indices, align 2
  %hw1 = getelementptr inbounds %struct.fm10k_intfc, ptr %interface, i32 0, i32 41
  %tobool.not = icmp eq ptr %indir, null
  %conv = zext i16 %1 to i32
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %cleanup.for.cond2.preheader_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc43, %cleanup.for.cond2.preheader_crit_edge ]
  %mul = shl i32 %i.064, 2
  br i1 %tobool.not, label %if.else.3, label %if.then.3

if.then.3:                                        ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx5 = getelementptr i32, ptr %indir, i32 %mul
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %add.1 = or i32 %mul, 1
  %arrayidx5.1 = getelementptr i32, ptr %indir, i32 %add.1
  %4 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.1, align 4
  %add.2 = or i32 %mul, 2
  %arrayidx5.2 = getelementptr i32, ptr %indir, i32 %add.2
  %6 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.2, align 4
  %add.3 = or i32 %mul, 3
  %arrayidx5.3 = getelementptr i32, ptr %indir, i32 %add.3
  %8 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.3, align 4
  br label %if.end.3

if.else.3:                                        ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #21
  %rem.i = urem i32 %mul, %conv
  %add7.1 = or i32 %mul, 1
  %rem.i.1 = urem i32 %add7.1, %conv
  %add7.2 = or i32 %mul, 2
  %rem.i.2 = urem i32 %add7.2, %conv
  %add7.3 = or i32 %mul, 3
  %rem.i.3 = urem i32 %add7.3, %conv
  br label %if.end.3

if.end.3:                                         ; preds = %if.else.3, %if.then.3
  %n.0.281 = phi i32 [ %7, %if.then.3 ], [ %rem.i.2, %if.else.3 ]
  %n.0667079 = phi i32 [ %3, %if.then.3 ], [ %rem.i, %if.else.3 ]
  %n.0.17277 = phi i32 [ %5, %if.then.3 ], [ %rem.i.1, %if.else.3 ]
  %n.0.3 = phi i32 [ %9, %if.then.3 ], [ %rem.i.3, %if.else.3 ]
  %shl = shl i32 %n.0.17277, 8
  %or = or i32 %shl, %n.0667079
  %shl12 = shl i32 %n.0.281, 16
  %or13 = or i32 %or, %shl12
  %shl15 = shl i32 %n.0.3, 24
  %or16 = or i32 %or13, %shl15
  %arrayidx18 = getelementptr %struct.fm10k_intfc, ptr %interface, i32 0, i32 56, i32 %i.064
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or16)
  %cmp19 = icmp eq i32 %11, %or16
  br i1 %cmp19, label %if.end.3.cleanup_crit_edge, label %if.end22

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end22:                                         ; preds = %if.end.3
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or16, ptr %arrayidx18, align 4
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw1, align 8
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %if.end22.cleanup_crit_edge, label %do.body32, !prof !37

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !38
  tail call void @arm_heavy_mb() #19
  %15 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %add36 = add nuw nsw i32 %i.064, 4096
  %arrayidx37 = getelementptr i32, ptr %14, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 %15) #19, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end22.cleanup_crit_edge, %if.end.3.cleanup_crit_edge
  %inc43 = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc43, 32
  br i1 %exitcond.not, label %for.end44, label %cleanup.for.cond2.preheader_crit_edge

cleanup.for.cond2.preheader_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond2.preheader

for.end44:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fm10k_set_ethtool_ops(ptr nocapture noundef writeonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fm10k_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fm10k_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call ptr @strncpy(ptr noundef %driver, ptr noundef nonnull @fm10k_driver_name, i32 noundef 31)
  %pdev = getelementptr i8, ptr %dev, i32 2824
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call ptr @strncpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 31)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_regs_len(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %netdev, i32 15636
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 2
  %switch.select = select i1 %switch.selectcmp, i32 2072, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp4 = icmp eq i32 %1, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 26676, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 15552
  %revision_id = getelementptr i8, ptr %netdev, i32 18524
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 18516
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id, align 4
  %conv2 = zext i16 %3 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or3, ptr %version, align 4
  %type = getelementptr i8, ptr %netdev, i32 15636
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb69
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call4 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 0) #19
  %incdec.ptr = getelementptr i32, ptr %p, i32 1
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %p, align 4
  %call5 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 1) #19
  %incdec.ptr6 = getelementptr i32, ptr %p, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %incdec.ptr, align 4
  %call7 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 3) #19
  %incdec.ptr8 = getelementptr i32, ptr %p, i32 3
  %10 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7, ptr %incdec.ptr6, align 4
  %call9 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 5) #19
  %incdec.ptr10 = getelementptr i32, ptr %p, i32 4
  %11 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %incdec.ptr8, align 4
  %call14 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 48) #19
  %incdec.ptr15 = getelementptr i32, ptr %p, i32 5
  %12 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call14, ptr %incdec.ptr10, align 4
  %call18 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 56) #19
  %incdec.ptr19 = getelementptr i32, ptr %p, i32 6
  %13 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call18, ptr %incdec.ptr15, align 4
  %call14.1 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 49) #19
  %incdec.ptr15.1 = getelementptr i32, ptr %p, i32 7
  %14 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call14.1, ptr %incdec.ptr19, align 4
  %call18.1 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 57) #19
  %incdec.ptr19.1 = getelementptr i32, ptr %p, i32 8
  %15 = ptrtoint ptr %incdec.ptr15.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18.1, ptr %incdec.ptr15.1, align 4
  %call14.2 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 50) #19
  %incdec.ptr15.2 = getelementptr i32, ptr %p, i32 9
  %16 = ptrtoint ptr %incdec.ptr19.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14.2, ptr %incdec.ptr19.1, align 4
  %call18.2 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 58) #19
  %incdec.ptr19.2 = getelementptr i32, ptr %p, i32 10
  %17 = ptrtoint ptr %incdec.ptr15.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call18.2, ptr %incdec.ptr15.2, align 4
  %call14.3 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 51) #19
  %incdec.ptr15.3 = getelementptr i32, ptr %p, i32 11
  %18 = ptrtoint ptr %incdec.ptr19.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call14.3, ptr %incdec.ptr19.2, align 4
  %call18.3 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 59) #19
  %incdec.ptr19.3 = getelementptr i32, ptr %p, i32 12
  %19 = ptrtoint ptr %incdec.ptr15.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call18.3, ptr %incdec.ptr15.3, align 4
  %call14.4 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 52) #19
  %incdec.ptr15.4 = getelementptr i32, ptr %p, i32 13
  %20 = ptrtoint ptr %incdec.ptr19.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call14.4, ptr %incdec.ptr19.3, align 4
  %call18.4 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 60) #19
  %incdec.ptr19.4 = getelementptr i32, ptr %p, i32 14
  %21 = ptrtoint ptr %incdec.ptr15.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call18.4, ptr %incdec.ptr15.4, align 4
  %call14.5 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 53) #19
  %incdec.ptr15.5 = getelementptr i32, ptr %p, i32 15
  %22 = ptrtoint ptr %incdec.ptr19.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call14.5, ptr %incdec.ptr19.4, align 4
  %call18.5 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 61) #19
  %incdec.ptr19.5 = getelementptr i32, ptr %p, i32 16
  %23 = ptrtoint ptr %incdec.ptr15.5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call18.5, ptr %incdec.ptr15.5, align 4
  %call14.6 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 54) #19
  %incdec.ptr15.6 = getelementptr i32, ptr %p, i32 17
  %24 = ptrtoint ptr %incdec.ptr19.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call14.6, ptr %incdec.ptr19.5, align 4
  %call18.6 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 62) #19
  %incdec.ptr19.6 = getelementptr i32, ptr %p, i32 18
  %25 = ptrtoint ptr %incdec.ptr15.6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call18.6, ptr %incdec.ptr15.6, align 4
  %call14.7 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 55) #19
  %incdec.ptr15.7 = getelementptr i32, ptr %p, i32 19
  %26 = ptrtoint ptr %incdec.ptr19.6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call14.7, ptr %incdec.ptr19.6, align 4
  %call18.7 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 63) #19
  %incdec.ptr19.7 = getelementptr i32, ptr %p, i32 20
  %27 = ptrtoint ptr %incdec.ptr15.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call18.7, ptr %incdec.ptr15.7, align 4
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %sw.bb
  %indvars.iv197 = phi i32 [ 0, %sw.bb ], [ %indvars.iv.next198, %for.body24.for.body24_crit_edge ]
  %buff.1183 = phi ptr [ %incdec.ptr19.7, %sw.bb ], [ %add.ptr, %for.body24.for.body24_crit_edge ]
  tail call fastcc void @fm10k_get_reg_vsi(ptr noundef %hw1, ptr noundef %buff.1183, i32 noundef %indvars.iv197)
  %add.ptr = getelementptr i32, ptr %buff.1183, i32 43
  %indvars.iv.next198 = add nuw nsw i32 %indvars.iv197, 1
  %exitcond199.not = icmp eq i32 %indvars.iv.next198, 65
  br i1 %exitcond199.not, label %for.end28, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body24

for.end28:                                        ; preds = %for.body24
  %call29 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 8387) #19
  %incdec.ptr30 = getelementptr i32, ptr %buff.1183, i32 44
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call29, ptr %add.ptr, align 4
  %call31 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 8388) #19
  %incdec.ptr32 = getelementptr i32, ptr %buff.1183, i32 45
  %29 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call31, ptr %incdec.ptr30, align 4
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end28
  %indvars.iv200 = phi i32 [ 0, %for.end28 ], [ %indvars.iv.next201, %for.body37.for.body37_crit_edge ]
  %buff.2185 = phi ptr [ %incdec.ptr32, %for.end28 ], [ %add.ptr39, %for.body37.for.body37_crit_edge ]
  tail call fastcc void @fm10k_get_reg_q(ptr noundef %hw1, ptr noundef %buff.2185, i32 noundef %indvars.iv200)
  %add.ptr39 = getelementptr i32, ptr %buff.2185, i32 29
  %indvars.iv.next201 = add nuw nsw i32 %indvars.iv200, 1
  %exitcond202.not = icmp eq i32 %indvars.iv.next201, 128
  br i1 %exitcond202.not, label %for.end42, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body37

for.end42:                                        ; preds = %for.body37
  %call43 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 8391) #19
  %30 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call43, ptr %add.ptr39, align 4
  %buff.3187 = getelementptr i32, ptr %buff.2185, i32 30
  %call52 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65664) #19
  %31 = ptrtoint ptr %buff.3187 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call52, ptr %buff.3187, align 4
  %buff.3 = getelementptr i32, ptr %buff.2185, i32 31
  %call52.1 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65665) #19
  %32 = ptrtoint ptr %buff.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call52.1, ptr %buff.3, align 4
  %buff.3.1 = getelementptr i32, ptr %buff.2185, i32 32
  %call52.2 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65666) #19
  %33 = ptrtoint ptr %buff.3.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call52.2, ptr %buff.3.1, align 4
  %buff.3.2 = getelementptr i32, ptr %buff.2185, i32 33
  %call52.3 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65667) #19
  %34 = ptrtoint ptr %buff.3.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call52.3, ptr %buff.3.2, align 4
  %buff.3.3 = getelementptr i32, ptr %buff.2185, i32 34
  %call52.4 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65668) #19
  %35 = ptrtoint ptr %buff.3.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call52.4, ptr %buff.3.3, align 4
  %buff.3.4 = getelementptr i32, ptr %buff.2185, i32 35
  %call52.5 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65669) #19
  %36 = ptrtoint ptr %buff.3.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call52.5, ptr %buff.3.4, align 4
  %buff.3.5 = getelementptr i32, ptr %buff.2185, i32 36
  %call52.6 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65670) #19
  %37 = ptrtoint ptr %buff.3.5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call52.6, ptr %buff.3.5, align 4
  %buff.3.6 = getelementptr i32, ptr %buff.2185, i32 37
  %call52.7 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 65671) #19
  %38 = ptrtoint ptr %buff.3.6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call52.7, ptr %buff.3.6, align 4
  %buff.3.7 = getelementptr i32, ptr %buff.2185, i32 38
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.end42
  %indvars.iv206 = phi i32 [ 0, %for.end42 ], [ %indvars.iv.next207, %for.body61.for.body61_crit_edge ]
  %buff.4190 = phi ptr [ %buff.3.7, %for.end42 ], [ %incdec.ptr65, %for.body61.for.body61_crit_edge ]
  %add63 = add nuw nsw i32 %indvars.iv206, 74752
  %call64 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef %add63) #19
  %incdec.ptr65 = getelementptr i32, ptr %buff.4190, i32 1
  %39 = ptrtoint ptr %buff.4190 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call64, ptr %buff.4190, align 4
  %indvars.iv.next207 = add nuw nsw i32 %indvars.iv206, 1
  %exitcond208.not = icmp eq i32 %indvars.iv.next207, 130
  br i1 %exitcond208.not, label %for.body61.cleanup_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body61

for.body61.cleanup_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  %call70 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 0) #19
  %incdec.ptr71 = getelementptr i32, ptr %p, i32 1
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call70, ptr %p, align 4
  %call72 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 48) #19
  %incdec.ptr73 = getelementptr i32, ptr %p, i32 2
  %41 = ptrtoint ptr %incdec.ptr71 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call72, ptr %incdec.ptr71, align 4
  %call74 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 64) #19
  %incdec.ptr75 = getelementptr i32, ptr %p, i32 3
  %42 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call74, ptr %incdec.ptr73, align 4
  %call83 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 96) #19
  %incdec.ptr84 = getelementptr i32, ptr %p, i32 4
  %43 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call83, ptr %incdec.ptr75, align 4
  %call83.1 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 97) #19
  %incdec.ptr84.1 = getelementptr i32, ptr %p, i32 5
  %44 = ptrtoint ptr %incdec.ptr84 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call83.1, ptr %incdec.ptr84, align 4
  %call83.2 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 98) #19
  %incdec.ptr84.2 = getelementptr i32, ptr %p, i32 6
  %45 = ptrtoint ptr %incdec.ptr84.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call83.2, ptr %incdec.ptr84.1, align 4
  %call83.3 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 99) #19
  %incdec.ptr84.3 = getelementptr i32, ptr %p, i32 7
  %46 = ptrtoint ptr %incdec.ptr84.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call83.3, ptr %incdec.ptr84.2, align 4
  %call83.4 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 100) #19
  %incdec.ptr84.4 = getelementptr i32, ptr %p, i32 8
  %47 = ptrtoint ptr %incdec.ptr84.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call83.4, ptr %incdec.ptr84.3, align 4
  %call83.5 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 101) #19
  %incdec.ptr84.5 = getelementptr i32, ptr %p, i32 9
  %48 = ptrtoint ptr %incdec.ptr84.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call83.5, ptr %incdec.ptr84.4, align 4
  %call83.6 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 102) #19
  %incdec.ptr84.6 = getelementptr i32, ptr %p, i32 10
  %49 = ptrtoint ptr %incdec.ptr84.5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call83.6, ptr %incdec.ptr84.5, align 4
  %call83.7 = tail call i32 @fm10k_read_reg(ptr noundef %hw1, i32 noundef 103) #19
  %incdec.ptr84.7 = getelementptr i32, ptr %p, i32 11
  %50 = ptrtoint ptr %incdec.ptr84.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call83.7, ptr %incdec.ptr84.6, align 4
  tail call fastcc void @fm10k_get_reg_vsi(ptr noundef %hw1, ptr noundef %incdec.ptr84.7, i32 noundef 0)
  %add.ptr88 = getelementptr i32, ptr %p, i32 54
  %max_queues = getelementptr i8, ptr %netdev, i32 15656
  br label %for.body93

for.body93:                                       ; preds = %if.end.for.body93_crit_edge, %sw.bb69
  %indvars.iv = phi i32 [ 0, %sw.bb69 ], [ %indvars.iv.next, %if.end.for.body93_crit_edge ]
  %buff.6177 = phi ptr [ %add.ptr88, %sw.bb69 ], [ %add.ptr100, %if.end.for.body93_crit_edge ]
  %51 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_queues, align 8
  %53 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %53)
  %cmp97 = icmp ult i32 %indvars.iv, %53
  br i1 %cmp97, label %if.then, label %if.else

if.then:                                          ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #21
  tail call fastcc void @fm10k_get_reg_q(ptr noundef %hw1, ptr noundef %buff.6177, i32 noundef %indvars.iv)
  br label %if.end

if.else:                                          ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #21
  %54 = call ptr @memset(ptr %buff.6177, i32 0, i32 116)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr100 = getelementptr i32, ptr %buff.6177, i32 29
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body93_crit_edge

if.end.for.body93_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body93

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body61.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_msglevel(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 18580
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 4
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fm10k_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i16
  %msg_enable = getelementptr i8, ptr %netdev, i32 18580
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_itr = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %tx_itr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_itr, align 4
  %.lobit = lshr i16 %1, 15
  %2 = zext i16 %.lobit to i32
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %3 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %use_adaptive_tx_coalesce, align 4
  %4 = load i16, ptr %tx_itr, align 4
  %5 = and i16 %4, 32767
  %and4 = zext i16 %5 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and4, ptr %tx_coalesce_usecs, align 4
  %rx_itr = getelementptr i8, ptr %dev, i32 2852
  %7 = ptrtoint ptr %rx_itr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_itr, align 4
  %.lobit21 = lshr i16 %8, 15
  %9 = zext i16 %.lobit21 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %10 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %use_adaptive_rx_coalesce, align 4
  %11 = load i16, ptr %rx_itr, align 4
  %12 = and i16 %11, 32767
  %and14 = zext i16 %12 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %13 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_coalesce(ptr nocapture noundef %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %1)
  %cmp = icmp ugt i32 %1, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp1 = icmp ugt i32 %3, 4095
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i32 %3 to i16
  %conv4 = trunc i32 %1 to i16
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 11
  %4 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i16 %conv, i16 -32743
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 10
  %6 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %rx_itr.0 = select i1 %tobool7.not, i16 %conv4, i16 -32718
  %tx_itr10 = getelementptr i8, ptr %dev, i32 2844
  %8 = ptrtoint ptr %tx_itr10 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.select, ptr %tx_itr10, align 4
  %rx_itr11 = getelementptr i8, ptr %dev, i32 2852
  %9 = ptrtoint ptr %rx_itr11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %rx_itr.0, ptr %rx_itr11, align 4
  %num_q_vectors = getelementptr i8, ptr %dev, i32 5160
  %10 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_q_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1232 = icmp sgt i32 %11, 0
  br i1 %cmp1232, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 35, i32 %i.033
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %itr = getelementptr inbounds %struct.fm10k_q_vector, ptr %13, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %itr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.select, ptr %itr, align 2
  %itr14 = getelementptr inbounds %struct.fm10k_q_vector, ptr %13, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %itr14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %rx_itr.0, ptr %itr14, align 2
  %inc = add nuw nsw i32 %i.033, 1
  %16 = ptrtoint ptr %num_q_vectors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_q_vectors, align 8
  %cmp12 = icmp slt i32 %inc, %17
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fm10k_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %3 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 18584
  %4 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_ring_count, align 8
  %conv = zext i16 %5 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 18582
  %7 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_ring_count, align 2
  %conv1 = zext i16 %8 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1, ptr %tx_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %10 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_jumbo_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %4 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pending, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 128)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %add = add nuw nsw i32 %7, 7
  %and = and i32 %add, 16376
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 128)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %add20 = add nuw nsw i32 %11, 7
  %and21 = and i32 %add20, 16376
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 18582
  %12 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tx_ring_count, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp22 = icmp eq i32 %and, %conv
  br i1 %cmp22, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 18584
  %14 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_ring_count, align 8
  %conv24 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %conv24)
  %cmp25 = icmp eq i32 %and21, %conv24
  br i1 %cmp25, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %state = getelementptr i8, ptr %netdev, i32 2828
  %call29271 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29271)
  %tobool30.not272 = icmp eq i32 %call29271, 0
  br i1 %tobool30.not272, label %if.end28.while.end_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end28.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #19
  %call29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #19
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end28.while.end_crit_edge
  %netdev31 = getelementptr i8, ptr %netdev, i32 2816
  %16 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev31, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 2840
  %20 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues, align 8
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.end51

for.cond.preheader:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34285 = icmp sgt i32 %21, 0
  br i1 %cmp34285, label %for.body.lr.ph, label %for.cond.preheader.for.cond37.preheader_crit_edge

for.cond.preheader.for.cond37.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv36 = trunc i32 %and to i16
  br label %for.body

for.cond37.preheader:                             ; preds = %for.body.for.cond37.preheader_crit_edge, %for.cond.preheader.for.cond37.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 2848
  %22 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_rx_queues, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp38287 = icmp sgt i32 %23, 0
  %conv41 = trunc i32 %and21 to i16
  br i1 %cmp38287, label %for.cond37.preheader.for.body40_crit_edge, label %for.cond37.preheader.for.end46_crit_edge

for.cond37.preheader.for.end46_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end46

for.cond37.preheader.for.body40_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.0286
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.fm10k_ring, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv36, ptr %count, align 2
  %inc = add nuw nsw i32 %i.0286, 1
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 8
  %cmp34 = icmp slt i32 %inc, %28
  br i1 %cmp34, label %for.body.for.body_crit_edge, label %for.body.for.cond37.preheader_crit_edge

for.body.for.cond37.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond37.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.cond37.preheader.for.body40_crit_edge
  %i.1288 = phi i32 [ %inc45, %for.body40.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %arrayidx42 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.1288
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx42, align 4
  %count43 = getelementptr inbounds %struct.fm10k_ring, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %count43 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv41, ptr %count43, align 2
  %inc45 = add nuw nsw i32 %i.1288, 1
  %32 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_rx_queues, align 32
  %cmp38 = icmp slt i32 %inc45, %33
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.for.end46_crit_edge

for.body40.for.end46_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end46

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body40

for.end46:                                        ; preds = %for.body40.for.end46_crit_edge, %for.cond37.preheader.for.end46_crit_edge
  %conv47 = trunc i32 %and to i16
  %34 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv47, ptr %tx_ring_count, align 2
  %rx_ring_count50 = getelementptr i8, ptr %netdev, i32 18584
  %35 = ptrtoint ptr %rx_ring_count50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv41, ptr %rx_ring_count50, align 8
  br label %clear_reset

if.end51:                                         ; preds = %while.end
  %num_rx_queues53 = getelementptr i8, ptr %netdev, i32 2848
  %36 = ptrtoint ptr %num_rx_queues53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_rx_queues53, align 32
  %38 = tail call i32 @llvm.smax.i32(i32 %21, i32 %37)
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 256) #19
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %retval.0.i = select i1 %40, i32 -1, i32 %41
  %call62 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #22
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end51.clear_reset_crit_edge, label %if.end65

if.end51.clear_reset_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #21
  br label %clear_reset

if.end65:                                         ; preds = %if.end51
  tail call void @fm10k_down(ptr noundef %add.ptr.i) #19
  %42 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_ring_count, align 2
  %conv67 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv67)
  %cmp68.not = icmp eq i32 %and, %conv67
  br i1 %cmp68.not, label %if.end65.if.end110_crit_edge, label %for.cond71.preheader

if.end65.if.end110_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end110

for.cond71.preheader:                             ; preds = %if.end65
  %44 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp73273 = icmp sgt i32 %45, 0
  br i1 %cmp73273, label %for.body75.lr.ph, label %for.cond71.preheader.for.end107_crit_edge

for.cond71.preheader.for.end107_crit_edge:        ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end107

for.body75.lr.ph:                                 ; preds = %for.cond71.preheader
  %conv79 = trunc i32 %and to i16
  br label %for.body75

for.cond95.preheader:                             ; preds = %for.inc92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp97275 = icmp sgt i32 %51, 0
  br i1 %cmp97275, label %for.cond95.preheader.for.body99_crit_edge, label %for.cond95.preheader.for.end107_crit_edge

for.cond95.preheader.for.end107_crit_edge:        ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end107

for.cond95.preheader.for.body99_crit_edge:        ; preds = %for.cond95.preheader
  br label %for.body99

for.body75:                                       ; preds = %for.inc92.for.body75_crit_edge, %for.body75.lr.ph
  %i.2274 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc93, %for.inc92.for.body75_crit_edge ]
  %arrayidx76 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.2274
  %arrayidx78 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.2274
  %46 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx78, align 4
  %48 = call ptr @memcpy(ptr %arrayidx76, ptr %47, i32 256)
  %count81 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.2274, i32 14
  %49 = ptrtoint ptr %count81 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv79, ptr %count81, align 2
  %call83 = tail call i32 @fm10k_setup_tx_resources(ptr noundef %arrayidx76) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.inc92, label %while.cond86.preheader

while.cond86.preheader:                           ; preds = %for.body75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2274)
  %tobool87.not277 = icmp eq i32 %i.2274, 0
  br i1 %tobool87.not277, label %while.cond86.preheader.err_setup_crit_edge, label %while.cond86.preheader.while.body88_crit_edge

while.cond86.preheader.while.body88_crit_edge:    ; preds = %while.cond86.preheader
  br label %while.body88

while.cond86.preheader.err_setup_crit_edge:       ; preds = %while.cond86.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

while.body88:                                     ; preds = %while.body88.while.body88_crit_edge, %while.cond86.preheader.while.body88_crit_edge
  %i.3278 = phi i32 [ %dec, %while.body88.while.body88_crit_edge ], [ %i.2274, %while.cond86.preheader.while.body88_crit_edge ]
  %dec = add nsw i32 %i.3278, -1
  %arrayidx89 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %dec
  tail call void @fm10k_free_tx_resources(ptr noundef %arrayidx89) #19
  %tobool87.not = icmp eq i32 %dec, 0
  br i1 %tobool87.not, label %while.body88.err_setup_crit_edge, label %while.body88.while.body88_crit_edge

while.body88.while.body88_crit_edge:              ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body88

while.body88.err_setup_crit_edge:                 ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.inc92:                                        ; preds = %for.body75
  %inc93 = add nuw nsw i32 %i.2274, 1
  %50 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_tx_queues, align 8
  %cmp73 = icmp slt i32 %inc93, %51
  br i1 %cmp73, label %for.inc92.for.body75_crit_edge, label %for.cond95.preheader

for.inc92.for.body75_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body75

for.body99:                                       ; preds = %for.body99.for.body99_crit_edge, %for.cond95.preheader.for.body99_crit_edge
  %i.4276 = phi i32 [ %inc106, %for.body99.for.body99_crit_edge ], [ 0, %for.cond95.preheader.for.body99_crit_edge ]
  %arrayidx101 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.4276
  %52 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx101, align 4
  tail call void @fm10k_free_tx_resources(ptr noundef %53) #19
  %54 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx101, align 4
  %arrayidx104 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.4276
  %56 = call ptr @memcpy(ptr %55, ptr %arrayidx104, i32 256)
  %inc106 = add nuw nsw i32 %i.4276, 1
  %57 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_tx_queues, align 8
  %cmp97 = icmp slt i32 %inc106, %58
  br i1 %cmp97, label %for.body99.for.body99_crit_edge, label %for.body99.for.end107_crit_edge

for.body99.for.end107_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end107

for.body99.for.body99_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body99

for.end107:                                       ; preds = %for.body99.for.end107_crit_edge, %for.cond95.preheader.for.end107_crit_edge, %for.cond71.preheader.for.end107_crit_edge
  %conv108 = trunc i32 %and to i16
  %59 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv108, ptr %tx_ring_count, align 2
  br label %if.end110

if.end110:                                        ; preds = %for.end107, %if.end65.if.end110_crit_edge
  %rx_ring_count111 = getelementptr i8, ptr %netdev, i32 18584
  %60 = ptrtoint ptr %rx_ring_count111 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rx_ring_count111, align 8
  %conv112 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %conv112)
  %cmp113.not = icmp eq i32 %and21, %conv112
  br i1 %cmp113.not, label %if.end110.err_setup_crit_edge, label %for.cond116.preheader

if.end110.err_setup_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.cond116.preheader:                            ; preds = %if.end110
  %62 = ptrtoint ptr %num_rx_queues53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_rx_queues53, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp118279 = icmp sgt i32 %63, 0
  br i1 %cmp118279, label %for.body120.lr.ph, label %for.cond116.preheader.for.end153_crit_edge

for.cond116.preheader.for.end153_crit_edge:       ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end153

for.body120.lr.ph:                                ; preds = %for.cond116.preheader
  %conv124 = trunc i32 %and21 to i16
  br label %for.body120

for.cond141.preheader:                            ; preds = %for.inc138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp143281 = icmp sgt i32 %69, 0
  br i1 %cmp143281, label %for.cond141.preheader.for.body145_crit_edge, label %for.cond141.preheader.for.end153_crit_edge

for.cond141.preheader.for.end153_crit_edge:       ; preds = %for.cond141.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end153

for.cond141.preheader.for.body145_crit_edge:      ; preds = %for.cond141.preheader
  br label %for.body145

for.body120:                                      ; preds = %for.inc138.for.body120_crit_edge, %for.body120.lr.ph
  %i.5280 = phi i32 [ 0, %for.body120.lr.ph ], [ %inc139, %for.inc138.for.body120_crit_edge ]
  %arrayidx121 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.5280
  %arrayidx123 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.5280
  %64 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx123, align 4
  %66 = call ptr @memcpy(ptr %arrayidx121, ptr %65, i32 256)
  %count126 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.5280, i32 14
  %67 = ptrtoint ptr %count126 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv124, ptr %count126, align 2
  %call128 = tail call i32 @fm10k_setup_rx_resources(ptr noundef %arrayidx121) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %for.inc138, label %while.cond131.preheader

while.cond131.preheader:                          ; preds = %for.body120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5280)
  %tobool132.not283 = icmp eq i32 %i.5280, 0
  br i1 %tobool132.not283, label %while.cond131.preheader.err_setup_crit_edge, label %while.cond131.preheader.while.body133_crit_edge

while.cond131.preheader.while.body133_crit_edge:  ; preds = %while.cond131.preheader
  br label %while.body133

while.cond131.preheader.err_setup_crit_edge:      ; preds = %while.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

while.body133:                                    ; preds = %while.body133.while.body133_crit_edge, %while.cond131.preheader.while.body133_crit_edge
  %i.6284 = phi i32 [ %dec134, %while.body133.while.body133_crit_edge ], [ %i.5280, %while.cond131.preheader.while.body133_crit_edge ]
  %dec134 = add nsw i32 %i.6284, -1
  %arrayidx135 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %dec134
  tail call void @fm10k_free_rx_resources(ptr noundef %arrayidx135) #19
  %tobool132.not = icmp eq i32 %dec134, 0
  br i1 %tobool132.not, label %while.body133.err_setup_crit_edge, label %while.body133.while.body133_crit_edge

while.body133.while.body133_crit_edge:            ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #21
  br label %while.body133

while.body133.err_setup_crit_edge:                ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_setup

for.inc138:                                       ; preds = %for.body120
  %inc139 = add nuw nsw i32 %i.5280, 1
  %68 = ptrtoint ptr %num_rx_queues53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_rx_queues53, align 32
  %cmp118 = icmp slt i32 %inc139, %69
  br i1 %cmp118, label %for.inc138.for.body120_crit_edge, label %for.cond141.preheader

for.inc138.for.body120_crit_edge:                 ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body120

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.cond141.preheader.for.body145_crit_edge
  %i.7282 = phi i32 [ %inc152, %for.body145.for.body145_crit_edge ], [ 0, %for.cond141.preheader.for.body145_crit_edge ]
  %arrayidx147 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.7282
  %70 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx147, align 4
  tail call void @fm10k_free_rx_resources(ptr noundef %71) #19
  %72 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx147, align 4
  %arrayidx150 = getelementptr %struct.fm10k_ring, ptr %call62, i32 %i.7282
  %74 = call ptr @memcpy(ptr %73, ptr %arrayidx150, i32 256)
  %inc152 = add nuw nsw i32 %i.7282, 1
  %75 = ptrtoint ptr %num_rx_queues53 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_rx_queues53, align 32
  %cmp143 = icmp slt i32 %inc152, %76
  br i1 %cmp143, label %for.body145.for.body145_crit_edge, label %for.body145.for.end153_crit_edge

for.body145.for.end153_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end153

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body145

for.end153:                                       ; preds = %for.body145.for.end153_crit_edge, %for.cond141.preheader.for.end153_crit_edge, %for.cond116.preheader.for.end153_crit_edge
  %conv154 = trunc i32 %and21 to i16
  %77 = ptrtoint ptr %rx_ring_count111 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv154, ptr %rx_ring_count111, align 8
  br label %err_setup

err_setup:                                        ; preds = %for.end153, %while.body133.err_setup_crit_edge, %while.cond131.preheader.err_setup_crit_edge, %if.end110.err_setup_crit_edge, %while.body88.err_setup_crit_edge, %while.cond86.preheader.err_setup_crit_edge
  %err.3 = phi i32 [ 0, %for.end153 ], [ 0, %if.end110.err_setup_crit_edge ], [ %call128, %while.cond131.preheader.err_setup_crit_edge ], [ %call83, %while.cond86.preheader.err_setup_crit_edge ], [ %call128, %while.body133.err_setup_crit_edge ], [ %call83, %while.body88.err_setup_crit_edge ]
  tail call void @fm10k_up(ptr noundef %add.ptr.i) #19
  tail call void @vfree(ptr noundef nonnull %call62) #19
  br label %clear_reset

clear_reset:                                      ; preds = %err_setup, %if.end51.clear_reset_crit_edge, %for.end46
  %err.4 = phi i32 [ %err.3, %err_setup ], [ 0, %for.end46 ], [ -12, %if.end51.clear_reset_crit_edge ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #19
  br label %cleanup

cleanup:                                          ; preds = %clear_reset, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %clear_reset ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fm10k_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pause) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %1 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %tx_pause, align 4
  %rx_pause = getelementptr i8, ptr %dev, i32 19029
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_pause, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %cond = zext i1 %tobool.not to i32
  %rx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %rx_pause1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_pauseparam(ptr noundef %dev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr i8, ptr %dev, i32 15636
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause, align 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp ne i32 %7, 0
  %conv = sext i1 %tobool4.not to i8
  %rx_pause5 = getelementptr i8, ptr %dev, i32 19029
  %8 = ptrtoint ptr %rx_pause5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %rx_pause5, align 1
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then3
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @fm10k_update_rx_drop_en(ptr noundef %add.ptr.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_self_test(ptr noundef %dev, ptr nocapture noundef %eth_test, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %test_msg.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %dev, i32 15552
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %1 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body, label %if.end7, !prof !37

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 18580
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %msg_enable, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str) #23
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %mbx2.i = getelementptr i8, ptr %dev, i32 15744
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_msg.i) #19
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %8 = call ptr @memset(ptr %test_msg.i, i32 255, i32 24)
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 2
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %fm10k_mbx_test.exit.thread

fm10k_mbx_test.exit.thread:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_msg.i) #19
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7
  %mbx_lock.i.i = getelementptr i8, ptr %dev, i32 18528
  %test_result.i = getelementptr i8, ptr %dev, i32 15852
  %enqueue_tx.i = getelementptr i8, ptr %dev, i32 15764
  %process.i = getelementptr i8, ptr %dev, i32 15768
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %for.cond.preheader.i
  %attr_flag.054.i = phi i32 [ 1, %for.cond.preheader.i ], [ %add17.i, %for.inc.critedge.i.for.body.i_crit_edge ]
  call void @fm10k_tlv_msg_test_create(ptr noundef nonnull %test_msg.i, i32 noundef %attr_flag.054.i) #19
  call void @_raw_spin_lock(ptr noundef %mbx_lock.i.i) #19
  %11 = ptrtoint ptr %test_result.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2147483647, ptr %test_result.i, align 4
  %12 = ptrtoint ptr %enqueue_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enqueue_tx.i, align 4
  %call.i = call i32 %13(ptr noundef %hw1, ptr noundef %mbx2.i, ptr noundef nonnull %test_msg.i) #19
  call void @_raw_spin_unlock(ptr noundef %mbx_lock.i.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %14
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %for.body.i
  %err.1.i = phi i32 [ %call.i, %for.body.i ], [ %18, %do.cond.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp5.i = icmp slt i32 %err.1.i, 0
  br i1 %cmp5.i, label %do.body.i.err_out.thread.i_crit_edge, label %if.end7.i

do.body.i.err_out.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out.thread.i

if.end7.i:                                        ; preds = %do.body.i
  call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #19
  call void @_raw_spin_lock(ptr noundef %mbx_lock.i.i) #19
  %15 = ptrtoint ptr %process.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %process.i, align 8
  %call9.i = call i32 %16(ptr noundef %hw1, ptr noundef %mbx2.i) #19
  call void @_raw_spin_unlock(ptr noundef %mbx_lock.i.i) #19
  %17 = ptrtoint ptr %test_result.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %test_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.inc.critedge.i, label %do.cond.i

do.cond.i:                                        ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %19
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %do.cond.i.do.body.i_crit_edge, label %err_out.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i

for.inc.critedge.i:                               ; preds = %if.end7.i
  %add17.i = shl i32 %attr_flag.054.i, 1
  %cmp3.i = icmp ult i32 %add17.i, 16777216
  br i1 %cmp3.i, label %for.inc.critedge.i.for.body.i_crit_edge, label %fm10k_mbx_test.exit

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

err_out.i:                                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.i = icmp slt i32 %18, 0
  br i1 %cmp18.i, label %err_out.i.err_out.thread.i_crit_edge, label %err_out.i.if.then10_crit_edge

err_out.i.if.then10_crit_edge:                    ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then10

err_out.i.err_out.thread.i_crit_edge:             ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %err_out.thread.i

err_out.thread.i:                                 ; preds = %err_out.i.err_out.thread.i_crit_edge, %do.body.i.err_out.thread.i_crit_edge
  br label %if.then10

fm10k_mbx_test.exit:                              ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #21
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %data, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_msg.i) #19
  br label %cleanup

if.then10:                                        ; preds = %err_out.thread.i, %err_out.i.if.then10_crit_edge
  %.ph = phi i32 [ 1, %err_out.i.if.then10_crit_edge ], [ %attr_flag.054.i, %err_out.thread.i ]
  %conv20.i24 = zext i32 %.ph to i64
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv20.i24, ptr %data, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_msg.i) #19
  %flags11 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %22 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags11, align 4
  %or12 = or i32 %23, 2
  store i32 %or12, ptr %flags11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %fm10k_mbx_test.exit, %fm10k_mbx_test.exit.thread, %do.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_get_strings(ptr nocapture noundef readonly %dev, i32 noundef %stringset, ptr noundef %data) #9 align 64 {
entry:
  %data.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %1 = call ptr @memcpy(ptr %data, ptr @fm10k_gstrings_test, i32 32)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data.addr.i, align 4
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_net_stats, i32 noundef 10) #19
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_global_stats, i32 noundef 17) #19
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_mbx_stats, i32 noundef 9) #19
  %type.i = getelementptr i8, ptr %dev, i32 15636
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 2
  br i1 %cmp.not.i, label %sw.bb1.if.end.i_crit_edge, label %if.then.i

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #21
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_pf_stats, i32 noundef 8) #19
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.if.end.i_crit_edge
  %max_queues.i = getelementptr i8, ptr %dev, i32 15656
  %5 = ptrtoint ptr %max_queues.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp310.not.i = icmp eq i16 %6, 0
  br i1 %cmp310.not.i, label %if.end.i.fm10k_get_stat_strings.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.fm10k_get_stat_strings.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_get_stat_strings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %i.011.i) #19
  call void (ptr, ptr, i32, ...) @__fm10k_add_stat_strings(ptr noundef nonnull %data.addr.i, ptr noundef nonnull @fm10k_gstrings_queue_stats, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %i.011.i) #19
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %7 = ptrtoint ptr %max_queues.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_queues.i, align 8
  %conv.i = zext i16 %8 to i32
  %cmp3.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fm10k_get_stat_strings.exit_crit_edge

for.body.i.fm10k_get_stat_strings.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_get_stat_strings.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

fm10k_get_stat_strings.exit:                      ; preds = %for.body.i.fm10k_get_stat_strings.exit_crit_edge, %if.end.i.fm10k_get_stat_strings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %fm10k_get_stat_strings.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  tail call void @fm10k_update_stats(ptr noundef %add.ptr.i) #19
  %tobool.not.i = icmp eq ptr %stats1, null
  br i1 %tobool.not.i, label %for.body.i.preheader, label %entry.for.body3.i_crit_edge

entry.for.body3.i_crit_edge:                      ; preds = %entry
  br label %for.body3.i

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = call ptr @memset(ptr %data, i32 0, i32 80)
  %uglygep = getelementptr i8, ptr %data, i32 80
  br label %__fm10k_add_ethtool_stats.exit

for.body3.i:                                      ; preds = %sw.epilog.i.for.body3.i_crit_edge, %entry.for.body3.i_crit_edge
  %data.addr.1 = phi ptr [ %data.addr.2, %sw.epilog.i.for.body3.i_crit_edge ], [ %data, %entry.for.body3.i_crit_edge ]
  %i.178.i = phi i32 [ %inc53.i, %sw.epilog.i.for.body3.i_crit_edge ], [ 0, %entry.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_net_stats, i32 %i.178.i
  %stat_offset.i = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_net_stats, i32 %i.178.i, i32 2
  %1 = ptrtoint ptr %stat_offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stat_offset.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %stats1, i32 %2
  %sizeof_stat.i = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_net_stats, i32 %i.178.i, i32 1
  %3 = ptrtoint ptr %sizeof_stat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sizeof_stat.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %4, label %land.end.i [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb6.i
    i32 2, label %sw.bb8.i
    i32 1, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i20, align 8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i20, align 4
  %conv.i = zext i32 %9 to i64
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  %10 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i20, align 2
  %conv9.i = zext i16 %11 to i64
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #21
  %12 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i20, align 1
  %conv12.i = zext i8 %13 to i64
  br label %sw.epilog.i

land.end.i:                                       ; preds = %for.body3.i
  %.b75.i = load i1, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  br i1 %.b75.i, label %land.end.i.sw.epilog.i_crit_edge, label %if.then20.i, !prof !40

land.end.i.sw.epilog.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

if.then20.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %arrayidx.i) #19
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then20.i, %land.end.i.sw.epilog.i_crit_edge, %sw.bb11.i, %sw.bb8.i, %sw.bb6.i, %sw.bb.i
  %.sink = phi i64 [ %conv12.i, %sw.bb11.i ], [ %conv9.i, %sw.bb8.i ], [ %conv.i, %sw.bb6.i ], [ %7, %sw.bb.i ], [ 0, %if.then20.i ], [ 0, %land.end.i.sw.epilog.i_crit_edge ]
  %14 = ptrtoint ptr %data.addr.1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %.sink, ptr %data.addr.1, align 8
  %data.addr.2 = getelementptr i64, ptr %data.addr.1, i32 1
  %inc53.i = add nuw nsw i32 %i.178.i, 1
  %exitcond.not.i = icmp eq i32 %inc53.i, 10
  br i1 %exitcond.not.i, label %sw.epilog.i.__fm10k_add_ethtool_stats.exit_crit_edge, label %sw.epilog.i.for.body3.i_crit_edge

sw.epilog.i.for.body3.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body3.i

sw.epilog.i.__fm10k_add_ethtool_stats.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %__fm10k_add_ethtool_stats.exit

__fm10k_add_ethtool_stats.exit:                   ; preds = %sw.epilog.i.__fm10k_add_ethtool_stats.exit_crit_edge, %for.body.i.preheader
  %data.addr.3 = phi ptr [ %uglygep, %for.body.i.preheader ], [ %data.addr.2, %sw.epilog.i.__fm10k_add_ethtool_stats.exit_crit_edge ]
  %tobool.not.i21 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i21, label %for.body.i28.preheader, label %__fm10k_add_ethtool_stats.exit.for.body3.i34_crit_edge

__fm10k_add_ethtool_stats.exit.for.body3.i34_crit_edge: ; preds = %__fm10k_add_ethtool_stats.exit
  br label %for.body3.i34

for.body.i28.preheader:                           ; preds = %__fm10k_add_ethtool_stats.exit
  call void @__sanitizer_cov_trace_pc() #21
  %15 = call ptr @memset(ptr %data.addr.3, i32 0, i32 136)
  %uglygep242 = getelementptr i8, ptr %data.addr.3, i32 136
  br label %__fm10k_add_ethtool_stats.exit54

for.body3.i34:                                    ; preds = %sw.epilog.i53.for.body3.i34_crit_edge, %__fm10k_add_ethtool_stats.exit.for.body3.i34_crit_edge
  %data.addr.5 = phi ptr [ %data.addr.6, %sw.epilog.i53.for.body3.i34_crit_edge ], [ %data.addr.3, %__fm10k_add_ethtool_stats.exit.for.body3.i34_crit_edge ]
  %i.178.i29 = phi i32 [ %inc53.i51, %sw.epilog.i53.for.body3.i34_crit_edge ], [ 0, %__fm10k_add_ethtool_stats.exit.for.body3.i34_crit_edge ]
  %arrayidx.i30 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_global_stats, i32 %i.178.i29
  %stat_offset.i31 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_global_stats, i32 %i.178.i29, i32 2
  %16 = ptrtoint ptr %stat_offset.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat_offset.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %add.ptr.i, i32 %17
  %sizeof_stat.i33 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_global_stats, i32 %i.178.i29, i32 1
  %18 = ptrtoint ptr %sizeof_stat.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeof_stat.i33, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %19, label %land.end.i47 [
    i32 8, label %sw.bb.i36
    i32 4, label %sw.bb6.i39
    i32 2, label %sw.bb8.i42
    i32 1, label %sw.bb11.i45
  ]

sw.bb.i36:                                        ; preds = %for.body3.i34
  call void @__sanitizer_cov_trace_pc() #21
  %21 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i32, align 8
  br label %sw.epilog.i53

sw.bb6.i39:                                       ; preds = %for.body3.i34
  call void @__sanitizer_cov_trace_pc() #21
  %23 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i32, align 4
  %conv.i37 = zext i32 %24 to i64
  br label %sw.epilog.i53

sw.bb8.i42:                                       ; preds = %for.body3.i34
  call void @__sanitizer_cov_trace_pc() #21
  %25 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i32, align 2
  %conv9.i40 = zext i16 %26 to i64
  br label %sw.epilog.i53

sw.bb11.i45:                                      ; preds = %for.body3.i34
  call void @__sanitizer_cov_trace_pc() #21
  %27 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i32, align 1
  %conv12.i43 = zext i8 %28 to i64
  br label %sw.epilog.i53

land.end.i47:                                     ; preds = %for.body3.i34
  %.b75.i46 = load i1, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  br i1 %.b75.i46, label %land.end.i47.sw.epilog.i53_crit_edge, label %if.then20.i48, !prof !40

land.end.i47.sw.epilog.i53_crit_edge:             ; preds = %land.end.i47
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i53

if.then20.i48:                                    ; preds = %land.end.i47
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %arrayidx.i30) #19
  br label %sw.epilog.i53

sw.epilog.i53:                                    ; preds = %if.then20.i48, %land.end.i47.sw.epilog.i53_crit_edge, %sw.bb11.i45, %sw.bb8.i42, %sw.bb6.i39, %sw.bb.i36
  %.sink247 = phi i64 [ %conv12.i43, %sw.bb11.i45 ], [ %conv9.i40, %sw.bb8.i42 ], [ %conv.i37, %sw.bb6.i39 ], [ %22, %sw.bb.i36 ], [ 0, %if.then20.i48 ], [ 0, %land.end.i47.sw.epilog.i53_crit_edge ]
  %29 = ptrtoint ptr %data.addr.5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %.sink247, ptr %data.addr.5, align 8
  %data.addr.6 = getelementptr i64, ptr %data.addr.5, i32 1
  %inc53.i51 = add nuw nsw i32 %i.178.i29, 1
  %exitcond.not.i52 = icmp eq i32 %inc53.i51, 17
  br i1 %exitcond.not.i52, label %sw.epilog.i53.__fm10k_add_ethtool_stats.exit54_crit_edge, label %sw.epilog.i53.for.body3.i34_crit_edge

sw.epilog.i53.for.body3.i34_crit_edge:            ; preds = %sw.epilog.i53
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body3.i34

sw.epilog.i53.__fm10k_add_ethtool_stats.exit54_crit_edge: ; preds = %sw.epilog.i53
  call void @__sanitizer_cov_trace_pc() #21
  br label %__fm10k_add_ethtool_stats.exit54

__fm10k_add_ethtool_stats.exit54:                 ; preds = %sw.epilog.i53.__fm10k_add_ethtool_stats.exit54_crit_edge, %for.body.i28.preheader
  %data.addr.7 = phi ptr [ %uglygep242, %for.body.i28.preheader ], [ %data.addr.6, %sw.epilog.i53.__fm10k_add_ethtool_stats.exit54_crit_edge ]
  %mbx = getelementptr i8, ptr %netdev, i32 15744
  %tobool.not.i55 = icmp eq ptr %mbx, null
  br i1 %tobool.not.i55, label %for.body.i62.preheader, label %__fm10k_add_ethtool_stats.exit54.for.body3.i68_crit_edge

__fm10k_add_ethtool_stats.exit54.for.body3.i68_crit_edge: ; preds = %__fm10k_add_ethtool_stats.exit54
  br label %for.body3.i68

for.body.i62.preheader:                           ; preds = %__fm10k_add_ethtool_stats.exit54
  call void @__sanitizer_cov_trace_pc() #21
  %30 = call ptr @memset(ptr %data.addr.7, i32 0, i32 72)
  %uglygep243 = getelementptr i8, ptr %data.addr.7, i32 72
  br label %__fm10k_add_ethtool_stats.exit88

for.body3.i68:                                    ; preds = %sw.epilog.i87.for.body3.i68_crit_edge, %__fm10k_add_ethtool_stats.exit54.for.body3.i68_crit_edge
  %data.addr.9 = phi ptr [ %data.addr.10, %sw.epilog.i87.for.body3.i68_crit_edge ], [ %data.addr.7, %__fm10k_add_ethtool_stats.exit54.for.body3.i68_crit_edge ]
  %i.178.i63 = phi i32 [ %inc53.i85, %sw.epilog.i87.for.body3.i68_crit_edge ], [ 0, %__fm10k_add_ethtool_stats.exit54.for.body3.i68_crit_edge ]
  %arrayidx.i64 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_mbx_stats, i32 %i.178.i63
  %stat_offset.i65 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_mbx_stats, i32 %i.178.i63, i32 2
  %31 = ptrtoint ptr %stat_offset.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stat_offset.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %mbx, i32 %32
  %sizeof_stat.i67 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_mbx_stats, i32 %i.178.i63, i32 1
  %33 = ptrtoint ptr %sizeof_stat.i67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeof_stat.i67, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %34, label %land.end.i81 [
    i32 8, label %sw.bb.i70
    i32 4, label %sw.bb6.i73
    i32 2, label %sw.bb8.i76
    i32 1, label %sw.bb11.i79
  ]

sw.bb.i70:                                        ; preds = %for.body3.i68
  call void @__sanitizer_cov_trace_pc() #21
  %36 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.i66, align 8
  br label %sw.epilog.i87

sw.bb6.i73:                                       ; preds = %for.body3.i68
  call void @__sanitizer_cov_trace_pc() #21
  %38 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i66, align 4
  %conv.i71 = zext i32 %39 to i64
  br label %sw.epilog.i87

sw.bb8.i76:                                       ; preds = %for.body3.i68
  call void @__sanitizer_cov_trace_pc() #21
  %40 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i66, align 2
  %conv9.i74 = zext i16 %41 to i64
  br label %sw.epilog.i87

sw.bb11.i79:                                      ; preds = %for.body3.i68
  call void @__sanitizer_cov_trace_pc() #21
  %42 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i66, align 1
  %conv12.i77 = zext i8 %43 to i64
  br label %sw.epilog.i87

land.end.i81:                                     ; preds = %for.body3.i68
  %.b75.i80 = load i1, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  br i1 %.b75.i80, label %land.end.i81.sw.epilog.i87_crit_edge, label %if.then20.i82, !prof !40

land.end.i81.sw.epilog.i87_crit_edge:             ; preds = %land.end.i81
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i87

if.then20.i82:                                    ; preds = %land.end.i81
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %arrayidx.i64) #19
  br label %sw.epilog.i87

sw.epilog.i87:                                    ; preds = %if.then20.i82, %land.end.i81.sw.epilog.i87_crit_edge, %sw.bb11.i79, %sw.bb8.i76, %sw.bb6.i73, %sw.bb.i70
  %.sink248 = phi i64 [ %conv12.i77, %sw.bb11.i79 ], [ %conv9.i74, %sw.bb8.i76 ], [ %conv.i71, %sw.bb6.i73 ], [ %37, %sw.bb.i70 ], [ 0, %if.then20.i82 ], [ 0, %land.end.i81.sw.epilog.i87_crit_edge ]
  %44 = ptrtoint ptr %data.addr.9 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %.sink248, ptr %data.addr.9, align 8
  %data.addr.10 = getelementptr i64, ptr %data.addr.9, i32 1
  %inc53.i85 = add nuw nsw i32 %i.178.i63, 1
  %exitcond.not.i86 = icmp eq i32 %inc53.i85, 9
  br i1 %exitcond.not.i86, label %sw.epilog.i87.__fm10k_add_ethtool_stats.exit88_crit_edge, label %sw.epilog.i87.for.body3.i68_crit_edge

sw.epilog.i87.for.body3.i68_crit_edge:            ; preds = %sw.epilog.i87
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body3.i68

sw.epilog.i87.__fm10k_add_ethtool_stats.exit88_crit_edge: ; preds = %sw.epilog.i87
  call void @__sanitizer_cov_trace_pc() #21
  br label %__fm10k_add_ethtool_stats.exit88

__fm10k_add_ethtool_stats.exit88:                 ; preds = %sw.epilog.i87.__fm10k_add_ethtool_stats.exit88_crit_edge, %for.body.i62.preheader
  %data.addr.11 = phi ptr [ %uglygep243, %for.body.i62.preheader ], [ %data.addr.10, %sw.epilog.i87.__fm10k_add_ethtool_stats.exit88_crit_edge ]
  %type = getelementptr i8, ptr %netdev, i32 15636
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.not = icmp eq i32 %46, 2
  br i1 %cmp.not, label %__fm10k_add_ethtool_stats.exit88.if.end_crit_edge, label %if.then

__fm10k_add_ethtool_stats.exit88.if.end_crit_edge: ; preds = %__fm10k_add_ethtool_stats.exit88
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %__fm10k_add_ethtool_stats.exit88
  br i1 %tobool.not.i21, label %for.body.i96.preheader, label %if.then.for.body3.i102_crit_edge

if.then.for.body3.i102_crit_edge:                 ; preds = %if.then
  br label %for.body3.i102

for.body.i96.preheader:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %47 = call ptr @memset(ptr %data.addr.11, i32 0, i32 64)
  %uglygep244 = getelementptr i8, ptr %data.addr.11, i32 64
  br label %if.end

for.body3.i102:                                   ; preds = %sw.epilog.i121.for.body3.i102_crit_edge, %if.then.for.body3.i102_crit_edge
  %data.addr.13 = phi ptr [ %data.addr.14, %sw.epilog.i121.for.body3.i102_crit_edge ], [ %data.addr.11, %if.then.for.body3.i102_crit_edge ]
  %i.178.i97 = phi i32 [ %inc53.i119, %sw.epilog.i121.for.body3.i102_crit_edge ], [ 0, %if.then.for.body3.i102_crit_edge ]
  %arrayidx.i98 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_pf_stats, i32 %i.178.i97
  %stat_offset.i99 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_pf_stats, i32 %i.178.i97, i32 2
  %48 = ptrtoint ptr %stat_offset.i99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat_offset.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %add.ptr.i, i32 %49
  %sizeof_stat.i101 = getelementptr %struct.fm10k_stats, ptr @fm10k_gstrings_pf_stats, i32 %i.178.i97, i32 1
  %50 = ptrtoint ptr %sizeof_stat.i101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sizeof_stat.i101, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %51, label %land.end.i115 [
    i32 8, label %sw.bb.i104
    i32 4, label %sw.bb6.i107
    i32 2, label %sw.bb8.i110
    i32 1, label %sw.bb11.i113
  ]

sw.bb.i104:                                       ; preds = %for.body3.i102
  call void @__sanitizer_cov_trace_pc() #21
  %53 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr.i100, align 8
  br label %sw.epilog.i121

sw.bb6.i107:                                      ; preds = %for.body3.i102
  call void @__sanitizer_cov_trace_pc() #21
  %55 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i100, align 4
  %conv.i105 = zext i32 %56 to i64
  br label %sw.epilog.i121

sw.bb8.i110:                                      ; preds = %for.body3.i102
  call void @__sanitizer_cov_trace_pc() #21
  %57 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i100, align 2
  %conv9.i108 = zext i16 %58 to i64
  br label %sw.epilog.i121

sw.bb11.i113:                                     ; preds = %for.body3.i102
  call void @__sanitizer_cov_trace_pc() #21
  %59 = ptrtoint ptr %add.ptr.i100 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i100, align 1
  %conv12.i111 = zext i8 %60 to i64
  br label %sw.epilog.i121

land.end.i115:                                    ; preds = %for.body3.i102
  %.b75.i114 = load i1, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  br i1 %.b75.i114, label %land.end.i115.sw.epilog.i121_crit_edge, label %if.then20.i116, !prof !40

land.end.i115.sw.epilog.i121_crit_edge:           ; preds = %land.end.i115
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i121

if.then20.i116:                                   ; preds = %land.end.i115
  call void @__sanitizer_cov_trace_pc() #21
  store i1 true, ptr @__fm10k_add_ethtool_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %arrayidx.i98) #19
  br label %sw.epilog.i121

sw.epilog.i121:                                   ; preds = %if.then20.i116, %land.end.i115.sw.epilog.i121_crit_edge, %sw.bb11.i113, %sw.bb8.i110, %sw.bb6.i107, %sw.bb.i104
  %.sink249 = phi i64 [ %conv12.i111, %sw.bb11.i113 ], [ %conv9.i108, %sw.bb8.i110 ], [ %conv.i105, %sw.bb6.i107 ], [ %54, %sw.bb.i104 ], [ 0, %if.then20.i116 ], [ 0, %land.end.i115.sw.epilog.i121_crit_edge ]
  %61 = ptrtoint ptr %data.addr.13 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.sink249, ptr %data.addr.13, align 8
  %data.addr.14 = getelementptr i64, ptr %data.addr.13, i32 1
  %inc53.i119 = add nuw nsw i32 %i.178.i97, 1
  %exitcond.not.i120 = icmp eq i32 %inc53.i119, 8
  br i1 %exitcond.not.i120, label %sw.epilog.i121.if.end_crit_edge, label %sw.epilog.i121.for.body3.i102_crit_edge

sw.epilog.i121.for.body3.i102_crit_edge:          ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body3.i102

sw.epilog.i121.if.end_crit_edge:                  ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i121.if.end_crit_edge, %for.body.i96.preheader, %__fm10k_add_ethtool_stats.exit88.if.end_crit_edge
  %data.addr.16 = phi ptr [ %data.addr.11, %__fm10k_add_ethtool_stats.exit88.if.end_crit_edge ], [ %uglygep244, %for.body.i96.preheader ], [ %data.addr.14, %sw.epilog.i121.if.end_crit_edge ]
  %max_queues = getelementptr i8, ptr %netdev, i32 15656
  %62 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %max_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp5233.not = icmp eq i16 %63, 0
  br i1 %cmp5233.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %__fm10k_add_ethtool_stats.exit190.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0235 = phi i32 [ %inc, %__fm10k_add_ethtool_stats.exit190.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.addr.17234 = phi ptr [ %data.addr.25, %__fm10k_add_ethtool_stats.exit190.for.body_crit_edge ], [ %data.addr.16, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 12, i32 %i.0235
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i123 = icmp eq ptr %65, null
  br i1 %tobool.not.i123, label %for.body.i130.preheader, label %sw.epilog.i155.1

for.body.i130.preheader:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %66 = call ptr @memset(ptr %data.addr.17234, i32 0, i32 16)
  %uglygep245 = getelementptr i8, ptr %data.addr.17234, i32 16
  br label %__fm10k_add_ethtool_stats.exit156

sw.epilog.i155.1:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i134 = getelementptr i8, ptr %65, i32 56
  %67 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr.i134, align 8
  %69 = ptrtoint ptr %data.addr.17234 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %data.addr.17234, align 8
  %data.addr.20 = getelementptr i64, ptr %data.addr.17234, i32 1
  %add.ptr.i134.1 = getelementptr i8, ptr %65, i32 64
  %70 = ptrtoint ptr %add.ptr.i134.1 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr.i134.1, align 8
  %72 = ptrtoint ptr %data.addr.20 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %data.addr.20, align 8
  %data.addr.20.1 = getelementptr i64, ptr %data.addr.17234, i32 2
  br label %__fm10k_add_ethtool_stats.exit156

__fm10k_add_ethtool_stats.exit156:                ; preds = %sw.epilog.i155.1, %for.body.i130.preheader
  %data.addr.21 = phi ptr [ %uglygep245, %for.body.i130.preheader ], [ %data.addr.20.1, %sw.epilog.i155.1 ]
  %arrayidx7 = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 34, i32 %i.0235
  %73 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx7, align 4
  %tobool.not.i157 = icmp eq ptr %74, null
  br i1 %tobool.not.i157, label %for.body.i164.preheader, label %sw.epilog.i189.1

for.body.i164.preheader:                          ; preds = %__fm10k_add_ethtool_stats.exit156
  call void @__sanitizer_cov_trace_pc() #21
  %75 = call ptr @memset(ptr %data.addr.21, i32 0, i32 16)
  %uglygep246 = getelementptr i8, ptr %data.addr.21, i32 16
  br label %__fm10k_add_ethtool_stats.exit190

sw.epilog.i189.1:                                 ; preds = %__fm10k_add_ethtool_stats.exit156
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr.i168 = getelementptr i8, ptr %74, i32 56
  %76 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr.i168, align 8
  %78 = ptrtoint ptr %data.addr.21 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %data.addr.21, align 8
  %data.addr.24 = getelementptr i64, ptr %data.addr.21, i32 1
  %add.ptr.i168.1 = getelementptr i8, ptr %74, i32 64
  %79 = ptrtoint ptr %add.ptr.i168.1 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr.i168.1, align 8
  %81 = ptrtoint ptr %data.addr.24 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %data.addr.24, align 8
  %data.addr.24.1 = getelementptr i64, ptr %data.addr.21, i32 2
  br label %__fm10k_add_ethtool_stats.exit190

__fm10k_add_ethtool_stats.exit190:                ; preds = %sw.epilog.i189.1, %for.body.i164.preheader
  %data.addr.25 = phi ptr [ %uglygep246, %for.body.i164.preheader ], [ %data.addr.24.1, %sw.epilog.i189.1 ]
  %inc = add nuw nsw i32 %i.0235, 1
  %82 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %max_queues, align 8
  %conv = zext i16 %83 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %__fm10k_add_ethtool_stats.exit190.for.body_crit_edge, label %__fm10k_add_ethtool_stats.exit190.for.end_crit_edge

__fm10k_add_ethtool_stats.exit190.for.end_crit_edge: ; preds = %__fm10k_add_ethtool_stats.exit190
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

__fm10k_add_ethtool_stats.exit190.for.body_crit_edge: ; preds = %__fm10k_add_ethtool_stats.exit190
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %__fm10k_add_ethtool_stats.exit190.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_priv_flags(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_set_priv_flags(ptr nocapture noundef readnone %netdev, i32 noundef %priv_flags) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priv_flags)
  %cmp.not = icmp eq i32 %priv_flags, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_sset_count(ptr nocapture noundef readonly %dev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %sset, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %max_queues = getelementptr i8, ptr %dev, i32 15656
  %1 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %max_queues, align 8
  %conv = zext i16 %2 to i32
  %mul3 = shl nuw nsw i32 %conv, 2
  %type = getelementptr i8, ptr %dev, i32 15636
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  %spec.select.v = select i1 %cmp.not, i32 36, i32 44
  %spec.select = add nuw nsw i32 %spec.select.v, %mul3
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ 0, %sw.bb7 ], [ %spec.select, %sw.bb2 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_rxnfc(ptr noundef %dev, ptr nocapture noundef %cmd, ptr nocapture noundef readnone %rule_locs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %num_rx_queues = getelementptr i8, ptr %dev, i32 2848
  %3 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_rx_queues, align 32
  %conv = sext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %8, label %sw.bb2.sw.epilog_crit_edge [
    i32 1, label %sw.bb2.sw.bb.i_crit_edge
    i32 5, label %sw.bb2.sw.bb.i_crit_edge7
    i32 2, label %sw.bb2.sw.bb2.i_crit_edge
    i32 3, label %sw.bb2.sw.epilog.i_crit_edge
    i32 7, label %sw.bb2.sw.epilog.i_crit_edge8
    i32 4, label %sw.bb2.sw.epilog.i_crit_edge9
    i32 8, label %sw.bb2.sw.epilog.i_crit_edge10
    i32 9, label %sw.bb2.sw.epilog.i_crit_edge11
    i32 11, label %sw.bb2.sw.epilog.i_crit_edge12
    i32 10, label %sw.bb2.sw.epilog.i_crit_edge13
    i32 12, label %sw.bb2.sw.epilog.i_crit_edge14
    i32 16, label %sw.bb2.sw.epilog.i_crit_edge15
    i32 17, label %sw.bb2.sw.epilog.i_crit_edge16
    i32 6, label %sw.bb8.i
  ]

sw.bb2.sw.epilog.i_crit_edge16:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge15:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge14:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge13:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge12:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge11:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge10:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge9:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge8:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.epilog.i_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.bb2.sw.bb2.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb2.i

sw.bb2.sw.bb.i_crit_edge7:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

sw.bb2.sw.bb.i_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb2.sw.bb.i_crit_edge, %sw.bb2.sw.bb.i_crit_edge7
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 192, ptr %data.i, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %sw.bb2.sw.bb2.i_crit_edge
  %flags.i = getelementptr i8, ptr %dev, i32 2832
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog.i_crit_edge, label %if.then.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data.i, align 8
  %or4.i = or i64 %15, 192
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %sw.bb2
  %flags9.i = getelementptr i8, ptr %dev, i32 2832
  %16 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags9.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not.i = icmp eq i32 %18, 0
  br i1 %tobool12.not.i, label %sw.bb8.i.sw.epilog.i_crit_edge, label %sw.bb8.i.sw.epilog.sink.split.i_crit_edge

sw.bb8.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb8.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i.sw.epilog.sink.split.i_crit_edge, %if.then.i
  %.sink.i = phi i64 [ %or4.i, %if.then.i ], [ 192, %sw.bb8.i.sw.epilog.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %.sink.i, ptr %data.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb8.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb2.sw.epilog.i_crit_edge, %sw.bb2.sw.epilog.i_crit_edge8, %sw.bb2.sw.epilog.i_crit_edge9, %sw.bb2.sw.epilog.i_crit_edge10, %sw.bb2.sw.epilog.i_crit_edge11, %sw.bb2.sw.epilog.i_crit_edge12, %sw.bb2.sw.epilog.i_crit_edge13, %sw.bb2.sw.epilog.i_crit_edge14, %sw.bb2.sw.epilog.i_crit_edge15, %sw.bb2.sw.epilog.i_crit_edge16
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %storemerge.in.i = load i64, ptr %data.i, align 8
  %storemerge.i = or i64 %storemerge.in.i, 48
  store i64 %storemerge.i, ptr %data.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.epilog.i ], [ -22, %sw.bb2.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_rxnfc(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %1)
  %cond = icmp eq i32 %1, 42
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 2832
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = load volatile i32, ptr %flags.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data.i, align 8
  %and.i = and i64 %6, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_type.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %8, label %if.end.i.sw.epilog_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 5, label %if.end.i.sw.bb.i_crit_edge4
    i32 2, label %sw.bb20.i
    i32 6, label %sw.bb38.i
    i32 4, label %if.end.i.sw.bb58.i_crit_edge
    i32 9, label %if.end.i.sw.bb58.i_crit_edge5
    i32 10, label %if.end.i.sw.bb58.i_crit_edge6
    i32 3, label %if.end.i.sw.bb58.i_crit_edge7
    i32 8, label %if.end.i.sw.bb58.i_crit_edge8
    i32 11, label %if.end.i.sw.bb58.i_crit_edge9
    i32 12, label %if.end.i.sw.bb58.i_crit_edge10
    i32 7, label %if.end.i.sw.bb58.i_crit_edge11
  ]

if.end.i.sw.bb58.i_crit_edge11:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge10:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge9:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge8:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge7:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge6:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge5:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb58.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb58.i

if.end.i.sw.bb.i_crit_edge4:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge4
  %10 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %10)
  %.not177.i = icmp eq i64 %10, 240
  br i1 %.not177.i, label %sw.bb.i.sw.epilog77.i_crit_edge, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i.sw.epilog77.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog77.i

sw.bb20.i:                                        ; preds = %if.end.i
  %11 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %11)
  %.not176.i = icmp eq i64 %11, 48
  br i1 %.not176.i, label %if.end29.i, label %sw.bb20.i.sw.epilog_crit_edge

sw.bb20.i.sw.epilog_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end29.i:                                       ; preds = %sw.bb20.i
  %12 = trunc i64 %6 to i8
  %trunc156.i = and i8 %12, -64
  %13 = zext i8 %trunc156.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc156.i, label %if.end29.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb32.i
    i8 -64, label %sw.bb35.i
  ]

if.end29.i.sw.epilog_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb32.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #19
  br label %sw.epilog77.i

sw.bb35.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #19
  br label %sw.epilog77.i

sw.bb38.i:                                        ; preds = %if.end.i
  %14 = and i64 %6, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %14)
  %.not.i = icmp eq i64 %14, 48
  br i1 %.not.i, label %if.end47.i, label %sw.bb38.i.sw.epilog_crit_edge

sw.bb38.i.sw.epilog_crit_edge:                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end47.i:                                       ; preds = %sw.bb38.i
  %15 = trunc i64 %6 to i8
  %trunc.i = and i8 %15, -64
  %16 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc.i, label %if.end47.i.sw.epilog_crit_edge [
    i8 0, label %sw.bb50.i
    i8 -64, label %sw.bb53.i
  ]

if.end47.i.sw.epilog_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb50.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #19
  br label %sw.epilog77.i

sw.bb53.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #19
  br label %sw.epilog77.i

sw.bb58.i:                                        ; preds = %if.end.i.sw.bb58.i_crit_edge, %if.end.i.sw.bb58.i_crit_edge5, %if.end.i.sw.bb58.i_crit_edge6, %if.end.i.sw.bb58.i_crit_edge7, %if.end.i.sw.bb58.i_crit_edge8, %if.end.i.sw.bb58.i_crit_edge9, %if.end.i.sw.bb58.i_crit_edge10, %if.end.i.sw.bb58.i_crit_edge11
  %17 = and i64 %6, 240
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %17)
  %18 = icmp eq i64 %17, 48
  br i1 %18, label %sw.bb58.i.sw.epilog77.i_crit_edge, label %sw.bb58.i.sw.epilog_crit_edge

sw.bb58.i.sw.epilog_crit_edge:                    ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb58.i.sw.epilog77.i_crit_edge:                ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog77.i

sw.epilog77.i:                                    ; preds = %sw.bb58.i.sw.epilog77.i_crit_edge, %sw.bb53.i, %sw.bb50.i, %sw.bb35.i, %sw.bb32.i, %sw.bb.i.sw.epilog77.i_crit_edge
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %shr.i174.i = xor i32 %20, %3
  %21 = and i32 %shr.i174.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %lor.lhs.false81.i, label %sw.epilog77.i.if.then86.i_crit_edge

sw.epilog77.i.if.then86.i_crit_edge:              ; preds = %sw.epilog77.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then86.i

lor.lhs.false81.i:                                ; preds = %sw.epilog77.i
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %shr.i164175.i = xor i32 %23, %4
  %24 = and i32 %shr.i164175.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp85.not.i = icmp eq i32 %24, 0
  br i1 %cmp85.not.i, label %lor.lhs.false81.i.sw.epilog_crit_edge, label %lor.lhs.false81.i.if.then86.i_crit_edge

lor.lhs.false81.i.if.then86.i_crit_edge:          ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then86.i

lor.lhs.false81.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then86.i:                                      ; preds = %lor.lhs.false81.i.if.then86.i_crit_edge, %sw.epilog77.i.if.then86.i_crit_edge
  %hw87.i = getelementptr i8, ptr %dev, i32 15552
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool91.not.i = icmp eq i32 %27, 0
  %spec.select.i = select i1 %tobool91.not.i, i32 855638016, i32 1929379840
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool97.not.i = icmp eq i32 %30, 0
  %31 = select i1 %tobool97.not.i, i1 %tobool91.not.i, i1 false
  %32 = shl nuw i32 %30, 29
  %33 = or i32 %32, %spec.select.i
  br i1 %31, label %if.then86.i.do.body108.i_crit_edge, label %do.body.i

if.then86.i.do.body108.i_crit_edge:               ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body108.i

do.body.i:                                        ; preds = %if.then86.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 18580
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %msg_enable.i, align 4
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool104.not.i = icmp eq i16 %36, 0
  br i1 %tobool104.not.i, label %do.body.i.do.body108.i_crit_edge, label %if.then105.i

do.body.i.do.body108.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body108.i

if.then105.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %netdev.i = getelementptr i8, ptr %dev, i32 2816
  %37 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.5) #23
  br label %do.body108.i

do.body108.i:                                     ; preds = %if.then105.i, %do.body.i.do.body108.i_crit_edge, %if.then86.i.do.body108.i_crit_edge
  %39 = ptrtoint ptr %hw87.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %hw87.i, align 8
  %tobool113.not.i = icmp eq ptr %40, null
  br i1 %tobool113.not.i, label %do.body108.i.sw.epilog_crit_edge, label %do.body118.i, !prof !37

do.body108.i.sw.epilog_crit_edge:                 ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body118.i:                                     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !41
  tail call void @arm_heavy_mb() #19
  %arrayidx.i = getelementptr i32, ptr %40, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %33) #19, !srcloc !39
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body118.i, %do.body108.i.sw.epilog_crit_edge, %lor.lhs.false81.i.sw.epilog_crit_edge, %sw.bb58.i.sw.epilog_crit_edge, %if.end47.i.sw.epilog_crit_edge, %sw.bb38.i.sw.epilog_crit_edge, %if.end29.i.sw.epilog_crit_edge, %sw.bb20.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb20.i.sw.epilog_crit_edge ], [ -22, %if.end29.i.sw.epilog_crit_edge ], [ -22, %sw.bb38.i.sw.epilog_crit_edge ], [ -22, %if.end47.i.sw.epilog_crit_edge ], [ -22, %sw.bb58.i.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ 0, %do.body108.i.sw.epilog_crit_edge ], [ 0, %do.body118.i ], [ 0, %lor.lhs.false81.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_rssrk_size(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_get_reta_size(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_get_rssh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %indir, null
  br i1 %tobool.not.i, label %if.end.fm10k_get_reta.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.fm10k_get_reta.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_get_reta.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %indir.addr.01.i = phi ptr [ %add.ptr.i15, %for.body.i.for.body.i_crit_edge ], [ %indir, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 56, i32 %i.02.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %shl.i = and i32 %2, 255
  %3 = ptrtoint ptr %indir.addr.01.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl.i, ptr %indir.addr.01.i, align 4
  %4 = lshr i32 %2, 8
  %shr4.i = and i32 %4, 255
  %arrayidx5.i = getelementptr i32, ptr %indir.addr.01.i, i32 1
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr4.i, ptr %arrayidx5.i, align 4
  %6 = lshr i32 %2, 16
  %shr7.i = and i32 %6, 255
  %arrayidx8.i = getelementptr i32, ptr %indir.addr.01.i, i32 2
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr7.i, ptr %arrayidx8.i, align 4
  %shr9.i = lshr i32 %2, 24
  %arrayidx10.i = getelementptr i32, ptr %indir.addr.01.i, i32 3
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr9.i, ptr %arrayidx10.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %add.ptr.i15 = getelementptr i32, ptr %indir.addr.01.i, i32 4
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.fm10k_get_reta.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.fm10k_get_reta.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_get_reta.exit

fm10k_get_reta.exit:                              ; preds = %for.body.i.fm10k_get_reta.exit_crit_edge, %if.end.fm10k_get_reta.exit_crit_edge
  %tobool3.not = icmp eq ptr %key, null
  br i1 %tobool3.not, label %fm10k_get_reta.exit.cleanup_crit_edge, label %for.body.preheader

fm10k_get_reta.exit.cleanup_crit_edge:            ; preds = %fm10k_get_reta.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body.preheader:                               ; preds = %fm10k_get_reta.exit
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx = getelementptr i8, ptr %netdev, i32 18828
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %key, align 4
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %arrayidx.1 = getelementptr i8, ptr %netdev, i32 18832
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr, align 4
  %add.ptr.1 = getelementptr i8, ptr %key, i32 8
  %arrayidx.2 = getelementptr i8, ptr %netdev, i32 18836
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr.1, align 4
  %add.ptr.2 = getelementptr i8, ptr %key, i32 12
  %arrayidx.3 = getelementptr i8, ptr %netdev, i32 18840
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr.2, align 4
  %add.ptr.3 = getelementptr i8, ptr %key, i32 16
  %arrayidx.4 = getelementptr i8, ptr %netdev, i32 18844
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.3, align 4
  %add.ptr.4 = getelementptr i8, ptr %key, i32 20
  %arrayidx.5 = getelementptr i8, ptr %netdev, i32 18848
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.5, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.4, align 4
  %add.ptr.5 = getelementptr i8, ptr %key, i32 24
  %arrayidx.6 = getelementptr i8, ptr %netdev, i32 18852
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.6, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %add.ptr.5, align 4
  %add.ptr.6 = getelementptr i8, ptr %key, i32 28
  %arrayidx.7 = getelementptr i8, ptr %netdev, i32 18856
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.7, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %add.ptr.6, align 4
  %add.ptr.7 = getelementptr i8, ptr %key, i32 32
  %arrayidx.8 = getelementptr i8, ptr %netdev, i32 18860
  %41 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.8, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr.7, align 4
  %add.ptr.8 = getelementptr i8, ptr %key, i32 36
  %arrayidx.9 = getelementptr i8, ptr %netdev, i32 18864
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.9, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %add.ptr.8, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %fm10k_get_reta.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_rssh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 15552
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup34_crit_edge

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup34

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %indir, null
  br i1 %tobool.not.i, label %if.end.fm10k_set_reta.exit_crit_edge, label %if.end.i

if.end.fm10k_set_reta.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_set_reta.exit

if.end.i:                                         ; preds = %if.end
  %indices.i = getelementptr i8, ptr %netdev, i32 5166
  %0 = ptrtoint ptr %indices.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %indices.i, align 2
  %conv.i = zext i16 %1 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %i.0.i = phi i32 [ 128, %if.end.i ], [ %dec.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %tobool2.not.i = icmp eq i32 %i.0.i, 0
  br i1 %tobool2.not.i, label %for.cond.i.if.end.3.i.i_crit_edge, label %for.body.i

for.cond.i.if.end.3.i.i_crit_edge:                ; preds = %for.cond.i
  br label %if.end.3.i.i

for.body.i:                                       ; preds = %for.cond.i
  %dec.i = add nsw i32 %i.0.i, -1
  %arrayidx3.i = getelementptr i32, ptr %indir, i32 %dec.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %cmp.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup34_crit_edge

for.body.i.cleanup34_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup34

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond.i

if.end.3.i.i:                                     ; preds = %cleanup.i.i.if.end.3.i.i_crit_edge, %for.cond.i.if.end.3.i.i_crit_edge
  %i.064.i.i = phi i32 [ %inc43.i.i, %cleanup.i.i.if.end.3.i.i_crit_edge ], [ 0, %for.cond.i.if.end.3.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.064.i.i, 2
  %arrayidx5.i.i = getelementptr i32, ptr %indir, i32 %mul.i.i
  %4 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i.i, align 4
  %add.1.i.i = or i32 %mul.i.i, 1
  %arrayidx5.1.i.i = getelementptr i32, ptr %indir, i32 %add.1.i.i
  %6 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.1.i.i, align 4
  %add.2.i.i = or i32 %mul.i.i, 2
  %arrayidx5.2.i.i = getelementptr i32, ptr %indir, i32 %add.2.i.i
  %8 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.2.i.i, align 4
  %add.3.i.i = or i32 %mul.i.i, 3
  %arrayidx5.3.i.i = getelementptr i32, ptr %indir, i32 %add.3.i.i
  %10 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.3.i.i, align 4
  %shl.i.i = shl i32 %7, 8
  %or.i.i = or i32 %shl.i.i, %5
  %shl12.i.i = shl i32 %9, 16
  %or13.i.i = or i32 %or.i.i, %shl12.i.i
  %shl15.i.i = shl i32 %11, 24
  %or16.i.i = or i32 %or13.i.i, %shl15.i.i
  %arrayidx18.i.i = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 56, i32 %i.064.i.i
  %12 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx18.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or16.i.i)
  %cmp19.i.i = icmp eq i32 %13, %or16.i.i
  br i1 %cmp19.i.i, label %if.end.3.i.i.cleanup.i.i_crit_edge, label %if.end22.i.i

if.end.3.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i.i

if.end22.i.i:                                     ; preds = %if.end.3.i.i
  %14 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or16.i.i, ptr %arrayidx18.i.i, align 4
  %15 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw1, align 8
  %tobool27.not.i.i = icmp eq ptr %16, null
  br i1 %tobool27.not.i.i, label %if.end22.i.i.cleanup.i.i_crit_edge, label %do.body32.i.i, !prof !37

if.end22.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup.i.i

do.body32.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !38
  tail call void @arm_heavy_mb() #19
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #19
  %add36.i.i = add nuw nsw i32 %i.064.i.i, 4096
  %arrayidx37.i.i = getelementptr i32, ptr %16, i32 %add36.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37.i.i, i32 %17) #19, !srcloc !39
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %do.body32.i.i, %if.end22.i.i.cleanup.i.i_crit_edge, %if.end.3.i.i.cleanup.i.i_crit_edge
  %inc43.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc43.i.i, 32
  br i1 %exitcond.not.i.i, label %cleanup.i.i.fm10k_set_reta.exit_crit_edge, label %cleanup.i.i.if.end.3.i.i_crit_edge

cleanup.i.i.if.end.3.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.3.i.i

cleanup.i.i.fm10k_set_reta.exit_crit_edge:        ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_set_reta.exit

fm10k_set_reta.exit:                              ; preds = %cleanup.i.i.fm10k_set_reta.exit_crit_edge, %if.end.fm10k_set_reta.exit_crit_edge
  %tobool7.not = icmp eq ptr %key, null
  br i1 %tobool7.not, label %fm10k_set_reta.exit.cleanup34_crit_edge, label %fm10k_set_reta.exit.for.body_crit_edge

fm10k_set_reta.exit.for.body_crit_edge:           ; preds = %fm10k_set_reta.exit
  br label %for.body

fm10k_set_reta.exit.cleanup34_crit_edge:          ; preds = %fm10k_set_reta.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup34

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %fm10k_set_reta.exit.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %fm10k_set_reta.exit.for.body_crit_edge ]
  %key.addr.057 = phi ptr [ %add.ptr, %cleanup.for.body_crit_edge ], [ %key, %fm10k_set_reta.exit.for.body_crit_edge ]
  %18 = ptrtoint ptr %key.addr.057 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key.addr.057, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %arrayidx = getelementptr %struct.fm10k_intfc, ptr %add.ptr.i, i32 0, i32 57, i32 %i.058
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp13 = icmp eq i32 %22, %20
  br i1 %cmp13, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw1, align 8
  %tobool21.not = icmp eq ptr %25, null
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %do.body26, !prof !37

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !42
  tail call void @arm_heavy_mb() #19
  %add29 = add nuw nsw i32 %i.058, 2048
  %arrayidx30 = getelementptr i32, ptr %25, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx30, i32 %19) #19, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %do.body26, %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %add.ptr = getelementptr i8, ptr %key.addr.057, i32 4
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %cleanup.cleanup34_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup.cleanup34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup.cleanup34_crit_edge, %fm10k_set_reta.exit.cleanup34_crit_edge, %for.body.i.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup34_crit_edge ], [ 0, %fm10k_set_reta.exit.cleanup34_crit_edge ], [ 0, %cleanup.cleanup34_crit_edge ], [ -22, %for.body.i.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fm10k_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ch) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %max_queues.i = getelementptr i8, ptr %dev, i32 15656
  %0 = ptrtoint ptr %max_queues.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_queues.i, align 8
  %conv.i = zext i16 %1 to i32
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %2 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tc.i.i, align 4
  %4 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i = icmp ugt i16 %4, 1
  br i1 %cmp.i, label %if.then.i, label %entry.fm10k_max_channels.exit_crit_edge

entry.fm10k_max_channels.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_max_channels.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %div10.i = udiv i16 %1, %4
  %div.zext.i = zext i16 %div10.i to i32
  %5 = tail call i32 @llvm.ctlz.i32(i32 %div.zext.i, i1 true) #19, !range !43
  %sub.i.op.i = xor i32 %5, 31
  %sub.i.op.op.i = shl nuw i32 1, %sub.i.op.i
  br label %fm10k_max_channels.exit

fm10k_max_channels.exit:                          ; preds = %if.then.i, %entry.fm10k_max_channels.exit_crit_edge
  %max_combined.0.i = phi i32 [ %sub.i.op.op.i, %if.then.i ], [ %conv.i, %entry.fm10k_max_channels.exit_crit_edge ]
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %6 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %max_combined.0.i, ptr %max_combined, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %7 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %8 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %other_count, align 4
  %indices = getelementptr i8, ptr %dev, i32 5166
  %9 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %indices, align 2
  %conv = zext i16 %10 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %11 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %6 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %max_queues.i = getelementptr i8, ptr %dev, i32 15656
  %8 = ptrtoint ptr %max_queues.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_queues.i, align 8
  %conv.i = zext i16 %9 to i32
  %num_tc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 140
  %10 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_tc.i.i, align 4
  %12 = and i16 %11, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.i = icmp ugt i16 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.end5.fm10k_max_channels.exit_crit_edge

if.end5.fm10k_max_channels.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %fm10k_max_channels.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %div10.i = udiv i16 %9, %12
  %div.zext.i = zext i16 %div10.i to i32
  %13 = tail call i32 @llvm.ctlz.i32(i32 %div.zext.i, i1 true) #19, !range !43
  %sub.i.op.i = xor i32 %13, 31
  %sub.i.op.op.i = shl nuw i32 1, %sub.i.op.i
  br label %fm10k_max_channels.exit

fm10k_max_channels.exit:                          ; preds = %if.then.i, %if.end5.fm10k_max_channels.exit_crit_edge
  %max_combined.0.i = phi i32 [ %sub.i.op.op.i, %if.then.i ], [ %conv.i, %if.end5.fm10k_max_channels.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_combined.0.i)
  %cmp7 = icmp ugt i32 %1, %max_combined.0.i
  br i1 %cmp7, label %fm10k_max_channels.exit.cleanup_crit_edge, label %if.end9

fm10k_max_channels.exit.cleanup_crit_edge:        ; preds = %fm10k_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end9:                                          ; preds = %fm10k_max_channels.exit
  call void @__sanitizer_cov_trace_pc() #21
  %conv = trunc i32 %1 to i16
  %ring_feature = getelementptr i8, ptr %dev, i32 5164
  %14 = ptrtoint ptr %ring_feature to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %ring_feature, align 4
  %conv11 = trunc i16 %11 to i8
  %call12 = tail call i32 @fm10k_setup_tc(ptr noundef %dev, i8 noundef zeroext %conv11) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %fm10k_max_channels.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %fm10k_max_channels.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_get_reg_vsi(ptr noundef %hw, ptr nocapture noundef writeonly %buff, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %i, 8448
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #19
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %buff, align 4
  %mul = shl i32 %i, 4
  %add1 = add i32 %mul, 2048
  %call3 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add1) #19
  %arrayidx5 = getelementptr i32, ptr %buff, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call3, ptr %arrayidx5, align 4
  %add2.1 = add i32 %mul, 2049
  %call3.1 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.1) #19
  %arrayidx5.1 = getelementptr i32, ptr %buff, i32 2
  %2 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3.1, ptr %arrayidx5.1, align 4
  %add2.2 = add i32 %mul, 2050
  %call3.2 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.2) #19
  %arrayidx5.2 = getelementptr i32, ptr %buff, i32 3
  %3 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3.2, ptr %arrayidx5.2, align 4
  %add2.3 = add i32 %mul, 2051
  %call3.3 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.3) #19
  %arrayidx5.3 = getelementptr i32, ptr %buff, i32 4
  %4 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3.3, ptr %arrayidx5.3, align 4
  %add2.4 = add i32 %mul, 2052
  %call3.4 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.4) #19
  %arrayidx5.4 = getelementptr i32, ptr %buff, i32 5
  %5 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3.4, ptr %arrayidx5.4, align 4
  %add2.5 = add i32 %mul, 2053
  %call3.5 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.5) #19
  %arrayidx5.5 = getelementptr i32, ptr %buff, i32 6
  %6 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3.5, ptr %arrayidx5.5, align 4
  %add2.6 = add i32 %mul, 2054
  %call3.6 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.6) #19
  %arrayidx5.6 = getelementptr i32, ptr %buff, i32 7
  %7 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3.6, ptr %arrayidx5.6, align 4
  %add2.7 = add i32 %mul, 2055
  %call3.7 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.7) #19
  %arrayidx5.7 = getelementptr i32, ptr %buff, i32 8
  %8 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.7, ptr %arrayidx5.7, align 4
  %add2.8 = add i32 %mul, 2056
  %call3.8 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.8) #19
  %arrayidx5.8 = getelementptr i32, ptr %buff, i32 9
  %9 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3.8, ptr %arrayidx5.8, align 4
  %add2.9 = add i32 %mul, 2057
  %call3.9 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2.9) #19
  %arrayidx5.9 = getelementptr i32, ptr %buff, i32 10
  %10 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.9, ptr %arrayidx5.9, align 4
  %mul10 = shl i32 %i, 5
  %add11 = add i32 %mul10, 4096
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %entry
  %j.144 = phi i32 [ 0, %entry ], [ %inc17, %for.body9.for.body9_crit_edge ]
  %idx.143 = phi i32 [ 11, %entry ], [ %inc14, %for.body9.for.body9_crit_edge ]
  %add12 = add nuw nsw i32 %add11, %j.144
  %call13 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add12) #19
  %inc14 = add nuw nsw i32 %idx.143, 1
  %arrayidx15 = getelementptr i32, ptr %buff, i32 %idx.143
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call13, ptr %arrayidx15, align 4
  %inc17 = add nuw nsw i32 %j.144, 1
  %exitcond.not = icmp eq i32 %inc17, 32
  br i1 %exitcond.not, label %do.end26, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body9

do.end26:                                         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_get_reg_q(ptr noundef %hw, ptr noundef writeonly %buff, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %i, 6
  %add = add i32 %mul, 16384
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #19
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %buff, align 4
  %add2 = add i32 %mul, 16385
  %call3 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add2) #19
  %arrayidx5 = getelementptr i32, ptr %buff, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call3, ptr %arrayidx5, align 4
  %add7 = add i32 %mul, 16386
  %call8 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add7) #19
  %arrayidx10 = getelementptr i32, ptr %buff, i32 2
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call8, ptr %arrayidx10, align 4
  %add12 = add i32 %mul, 16387
  %call13 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add12) #19
  %arrayidx15 = getelementptr i32, ptr %buff, i32 3
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call13, ptr %arrayidx15, align 4
  %add17 = add i32 %mul, 16388
  %call18 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add17) #19
  %arrayidx20 = getelementptr i32, ptr %buff, i32 4
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call18, ptr %arrayidx20, align 4
  %add22 = add i32 %mul, 16389
  %call23 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add22) #19
  %arrayidx25 = getelementptr i32, ptr %buff, i32 5
  %5 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call23, ptr %arrayidx25, align 4
  %add27 = add i32 %mul, 16390
  %call28 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add27) #19
  %arrayidx30 = getelementptr i32, ptr %buff, i32 6
  %6 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call28, ptr %arrayidx30, align 4
  %add32 = add i32 %mul, 16391
  %call33 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add32) #19
  %arrayidx35 = getelementptr i32, ptr %buff, i32 7
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call33, ptr %arrayidx35, align 4
  %add37 = add i32 %mul, 16392
  %call38 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add37) #19
  %arrayidx40 = getelementptr i32, ptr %buff, i32 8
  %8 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call38, ptr %arrayidx40, align 4
  %add42 = add i32 %mul, 16393
  %call43 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add42) #19
  %arrayidx45 = getelementptr i32, ptr %buff, i32 9
  %9 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call43, ptr %arrayidx45, align 4
  %add47 = add i32 %mul, 16394
  %call48 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add47) #19
  %arrayidx50 = getelementptr i32, ptr %buff, i32 10
  %10 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call48, ptr %arrayidx50, align 4
  %add52 = add i32 %mul, 16395
  %call53 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add52) #19
  %arrayidx55 = getelementptr i32, ptr %buff, i32 11
  %11 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call53, ptr %arrayidx55, align 4
  %add57 = add i32 %mul, 16396
  %call58 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add57) #19
  %arrayidx60 = getelementptr i32, ptr %buff, i32 12
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call58, ptr %arrayidx60, align 4
  %add62 = add i32 %mul, 16397
  %call63 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add62) #19
  %arrayidx65 = getelementptr i32, ptr %buff, i32 13
  %13 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call63, ptr %arrayidx65, align 4
  %add67 = add i32 %mul, 32768
  %call68 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add67) #19
  %arrayidx70 = getelementptr i32, ptr %buff, i32 14
  %14 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call68, ptr %arrayidx70, align 4
  %add72 = add i32 %mul, 32769
  %call73 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add72) #19
  %arrayidx75 = getelementptr i32, ptr %buff, i32 15
  %15 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call73, ptr %arrayidx75, align 4
  %add77 = add i32 %mul, 32770
  %call78 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add77) #19
  %arrayidx80 = getelementptr i32, ptr %buff, i32 16
  %16 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call78, ptr %arrayidx80, align 4
  %add82 = add i32 %mul, 32771
  %call83 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add82) #19
  %arrayidx85 = getelementptr i32, ptr %buff, i32 17
  %17 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call83, ptr %arrayidx85, align 4
  %add87 = add i32 %mul, 32772
  %call88 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add87) #19
  %arrayidx90 = getelementptr i32, ptr %buff, i32 18
  %18 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call88, ptr %arrayidx90, align 4
  %add92 = add i32 %mul, 32773
  %call93 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add92) #19
  %arrayidx95 = getelementptr i32, ptr %buff, i32 19
  %19 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call93, ptr %arrayidx95, align 4
  %add97 = add i32 %mul, 32774
  %call98 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add97) #19
  %arrayidx100 = getelementptr i32, ptr %buff, i32 20
  %20 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call98, ptr %arrayidx100, align 4
  %add102 = add i32 %mul, 32775
  %call103 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add102) #19
  %arrayidx105 = getelementptr i32, ptr %buff, i32 21
  %21 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call103, ptr %arrayidx105, align 4
  %add107 = add i32 %mul, 32776
  %call108 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add107) #19
  %arrayidx110 = getelementptr i32, ptr %buff, i32 22
  %22 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call108, ptr %arrayidx110, align 4
  %add112 = add i32 %mul, 32777
  %call113 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add112) #19
  %arrayidx115 = getelementptr i32, ptr %buff, i32 23
  %23 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call113, ptr %arrayidx115, align 4
  %add117 = add i32 %mul, 32778
  %call118 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add117) #19
  %arrayidx120 = getelementptr i32, ptr %buff, i32 24
  %24 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call118, ptr %arrayidx120, align 4
  %add122 = add i32 %mul, 32779
  %call123 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add122) #19
  %arrayidx125 = getelementptr i32, ptr %buff, i32 25
  %25 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call123, ptr %arrayidx125, align 4
  %add127 = add i32 %mul, 32780
  %call128 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add127) #19
  %arrayidx130 = getelementptr i32, ptr %buff, i32 26
  %26 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call128, ptr %arrayidx130, align 4
  %add132 = add i32 %mul, 32781
  %call133 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add132) #19
  %arrayidx135 = getelementptr i32, ptr %buff, i32 27
  %27 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call133, ptr %arrayidx135, align 4
  %add137 = add i32 %mul, 32782
  %call138 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add137) #19
  %arrayidx140 = getelementptr i32, ptr %buff, i32 28
  %28 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call138, ptr %arrayidx140, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_setup_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_free_tx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_setup_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_free_rx_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_update_rx_drop_en(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_tlv_msg_test_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__fm10k_add_stat_strings(ptr nocapture noundef %p, ptr nocapture noundef readonly %stats, i32 noundef %size, ...) unnamed_addr #9 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4.not = icmp eq i32 %size, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #19
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !44
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr %struct.fm10k_stats, ptr %stats, i32 %i.05
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %2, i32 noundef 32, ptr noundef %arrayidx, [1 x i32] %.fca.0.insert)
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  store ptr %add.ptr, ptr %p, align 4
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #19
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_setup_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @fm10k_ethtool_ops, !1, !"fm10k_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 1160, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 950, i32 3}
!4 = !{ptr @fm10k_gstrings_test, !5, !"fm10k_gstrings_test", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 121, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 172, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 175, i32 3}
!10 = !{ptr @fm10k_gstrings_net_stats, !11, !"fm10k_gstrings_net_stats", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 31, i32 33}
!12 = !{ptr @fm10k_gstrings_global_stats, !13, !"fm10k_gstrings_global_stats", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 52, i32 33}
!14 = !{ptr @fm10k_gstrings_mbx_stats, !15, !"fm10k_gstrings_mbx_stats", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 91, i32 33}
!16 = !{ptr @fm10k_gstrings_pf_stats, !17, !"fm10k_gstrings_pf_stats", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 76, i32 33}
!18 = !{ptr @fm10k_gstrings_queue_stats, !19, !"fm10k_gstrings_queue_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 107, i32 33}
!20 = distinct !{null, !21, !"fm10k_prv_flags", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 136, i32 19}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 251, i32 4}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c", i32 865, i32 4}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2156745184}
!39 = !{i64 6201784}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2156740187}
!42 = !{i64 2156749428}
!43 = !{i32 0, i32 33}
!44 = !{!"auto-init"}
