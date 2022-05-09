; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.enic_stat = type { [32 x i8], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.enic_msix_entry = type { i32, [24 x i8], ptr, ptr, ptr }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vxlan_offload = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32, i32, %struct.vnic_rx_bytes_counter, i32, i32, i64 }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rfs_flw_tbl = type { i16, i32, i16, [1024 x %struct.hlist_head], %struct.spinlock, %struct.timer_list }
%struct.vnic_gen_stats = type { i64 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_stats = type { %struct.vnic_tx_stats, %struct.vnic_rx_stats }
%struct.vnic_tx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.vnic_rx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.enic_rfs_fltr_node = type { %struct.flow_keys, i32, i16, i16, %struct.hlist_node }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.122, i16 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.124 }
%union.anon.124 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.126, i16 }
%struct.anon.126 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.127 }
%union.anon.127 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.anon.125 = type { i16, i16 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }

@enic_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 135697, i32 0, ptr @enic_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_msglevel, ptr @enic_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_coalesce, ptr @enic_set_coalesce, ptr @enic_get_ringparam, ptr @enic_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_strings, ptr null, ptr @enic_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_sset_count, ptr @enic_get_rxnfc, ptr null, ptr null, ptr null, ptr @enic_get_rxfh_key_size, ptr null, ptr @enic_get_rxfh, ptr @enic_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr @enic_get_tunable, ptr @enic_set_tunable, ptr null, ptr null, ptr @enic_get_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enic\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"ethtool_set_coalesce: adaptor supports max coalesce value of %d. Setting max value.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"modifying mini ring params is not supported\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"modifying jumbo ring params is not supported\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx pending (%u) not in range [%u,%u]\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tx pending (%u) not in range [%u,%u]\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to alloc vNIC resources, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@enic_tx_stats = internal constant { [11 x %struct.enic_stat], [116 x i8] } { [11 x %struct.enic_stat] [%struct.enic_stat { [32 x i8] c"tx_frames_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.enic_stat { [32 x i8] c"tx_unicast_frames_ok\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.enic_stat { [32 x i8] c"tx_multicast_frames_ok\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.enic_stat { [32 x i8] c"tx_broadcast_frames_ok\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.enic_stat { [32 x i8] c"tx_bytes_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.enic_stat { [32 x i8] c"tx_unicast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.enic_stat { [32 x i8] c"tx_multicast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.enic_stat { [32 x i8] c"tx_broadcast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.enic_stat { [32 x i8] c"tx_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.enic_stat { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.enic_stat { [32 x i8] c"tx_tso\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }], [116 x i8] zeroinitializer }, align 32
@enic_rx_stats = internal constant { [21 x %struct.enic_stat], [172 x i8] } { [21 x %struct.enic_stat] [%struct.enic_stat { [32 x i8] c"rx_frames_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.enic_stat { [32 x i8] c"rx_frames_total\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.enic_stat { [32 x i8] c"rx_unicast_frames_ok\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.enic_stat { [32 x i8] c"rx_multicast_frames_ok\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.enic_stat { [32 x i8] c"rx_broadcast_frames_ok\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.enic_stat { [32 x i8] c"rx_bytes_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.enic_stat { [32 x i8] c"rx_unicast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.enic_stat { [32 x i8] c"rx_multicast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.enic_stat { [32 x i8] c"rx_broadcast_bytes_ok\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.enic_stat { [32 x i8] c"rx_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.enic_stat { [32 x i8] c"rx_no_bufs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.enic_stat { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.enic_stat { [32 x i8] c"rx_rss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.enic_stat { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.enic_stat { [32 x i8] c"rx_frames_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.enic_stat { [32 x i8] c"rx_frames_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.enic_stat { [32 x i8] c"rx_frames_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.enic_stat { [32 x i8] c"rx_frames_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.enic_stat { [32 x i8] c"rx_frames_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.enic_stat { [32 x i8] c"rx_frames_1518\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.enic_stat { [32 x i8] c"rx_frames_to_max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20 }], [172 x i8] zeroinitializer }, align 32
@enic_gen_stats = internal constant { [1 x %struct.enic_stat], [60 x i8] } { [1 x %struct.enic_stat] [%struct.enic_stat { [32 x i8] c"dma_map_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.8 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"enic_ethtool_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 625, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 149, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 340, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 207, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 212, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 219, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 226, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 241, i32 7 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"enic_tx_stats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 50, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"enic_rx_stats\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 64, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"enic_gen_stats\00", align 1
@___asan_gen_.40 = private constant [50 x i8] c"../drivers/net/ethernet/cisco/enic/enic_ethtool.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 88, i32 31 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @enic_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @enic_tx_stats, ptr @enic_rx_stats, ptr @enic_gen_stats], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_tx_stats to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_rx_stats to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_gen_stats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @enic_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @enic_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_get_drvinfo(ptr noundef %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  %fw_info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_info) #12
  %0 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_info, align 4, !annotation !31
  %call1 = call i32 @enic_dev_fw_info(ptr noundef %add.ptr.i, ptr noundef nonnull %fw_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call1)
  %cmp = icmp eq i32 %call1, -12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %1 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_info, align 4
  %call6 = call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %2, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end.pci_name.exit_crit_edge ]
  %call9 = call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_info) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_get_msglevel(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3480
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @enic_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3480
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 128
  %call1 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_coalesce_usecs = getelementptr i8, ptr %netdev, i32 3576
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 8
  %tx_coalesce_usecs2 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %4 = ptrtoint ptr %tx_coalesce_usecs2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx_coalesce_usecs2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_coalesce_usecs = getelementptr i8, ptr %netdev, i32 3572
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_coalesce_usecs3 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %7 = ptrtoint ptr %rx_coalesce_usecs3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_coalesce_usecs3, align 4
  %use_adaptive_rx_coalesce = getelementptr i8, ptr %netdev, i32 3568
  %8 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %use_adaptive_rx_coalesce5 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 10
  %10 = ptrtoint ptr %use_adaptive_rx_coalesce5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %use_adaptive_rx_coalesce5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %rx_coalesce_setting = getelementptr i8, ptr %netdev, i32 3556
  %11 = ptrtoint ptr %rx_coalesce_setting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_coalesce_setting, align 4
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 13
  %13 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_coalesce_usecs_low, align 4
  %range_end = getelementptr i8, ptr %netdev, i32 3564
  %14 = ptrtoint ptr %range_end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %range_end, align 4
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 18
  %16 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_coalesce_usecs_high, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_coalesce_setting = getelementptr i8, ptr %netdev, i32 3556
  %vdev.i = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev.i, align 128
  %call.i = tail call i32 @vnic_dev_get_intr_coal_timer_max(ptr noundef %1) #12
  %rx_coalesce_usecs_high1.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 18
  %2 = ptrtoint ptr %rx_coalesce_usecs_high1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs_high1.i, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %3) #12
  %rx_coalesce_usecs_low2.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 13
  %5 = ptrtoint ptr %rx_coalesce_usecs_low2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_coalesce_usecs_low2.i, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %6) #12
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev.i, align 128
  %call10.i = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 3
  br i1 %cmp11.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %10 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_coalesce_usecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tx_coalesce_usecs12.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %12 = ptrtoint ptr %tx_coalesce_usecs12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_coalesce_usecs12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call.i)
  %cmp13.i = icmp ugt i32 %13, %call.i
  br i1 %cmp13.i, label %if.end.i.if.then21.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %14 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_coalesce_usecs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call.i)
  %cmp14.i = icmp ugt i32 %15, %call.i
  br i1 %cmp14.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %rx_coalesce_usecs_low2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_coalesce_usecs_low2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call.i)
  %cmp17.i = icmp ugt i32 %17, %call.i
  br i1 %cmp17.i, label %lor.lhs.false15.i.if.then21.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false15.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %18 = ptrtoint ptr %rx_coalesce_usecs_high1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_coalesce_usecs_high1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call.i)
  %cmp20.i = icmp ugt i32 %19, %call.i
  br i1 %cmp20.i, label %lor.lhs.false18.i.if.then21.i_crit_edge, label %lor.lhs.false18.i.if.end22.i_crit_edge

lor.lhs.false18.i.if.end22.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

lor.lhs.false18.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false18.i.if.then21.i_crit_edge, %lor.lhs.false15.i.if.then21.i_crit_edge, %lor.lhs.false.i.if.then21.i_crit_edge, %if.end.i.if.then21.i_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %call.i) #15
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %lor.lhs.false18.i.if.end22.i_crit_edge
  %22 = ptrtoint ptr %rx_coalesce_usecs_high1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_coalesce_usecs_high1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not.i = icmp ne i32 %23, 0
  %add.i = add i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp26.i = icmp ult i32 %4, %add.i
  %or.cond.i = select i1 %tobool24.not.i, i1 %cmp26.i, i1 false
  br i1 %or.cond.i, label %if.end22.i.cleanup_crit_edge, label %if.end

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end22.i
  %24 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev.i, align 128
  %call2 = tail call i32 @vnic_dev_get_intr_coal_timer_max(ptr noundef %25) #12
  %26 = ptrtoint ptr %tx_coalesce_usecs12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_coalesce_usecs12.i, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %call2)
  %rx_coalesce_usecs4 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %29 = ptrtoint ptr %rx_coalesce_usecs4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_coalesce_usecs4, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %call2)
  %32 = ptrtoint ptr %rx_coalesce_usecs_low2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_coalesce_usecs_low2.i, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %call2)
  %35 = ptrtoint ptr %rx_coalesce_usecs_high1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_coalesce_usecs_high1.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %call2)
  %38 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev.i, align 128
  %call26 = tail call i32 @vnic_dev_get_intr_mode(ptr noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 3
  br i1 %cmp27, label %for.cond.preheader, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

for.cond.preheader:                               ; preds = %if.end
  %wq_count = getelementptr i8, ptr %netdev, i32 6624
  %40 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wq_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2996.not = icmp eq i32 %41, 0
  br i1 %cmp2996.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rq_count.i.i = getelementptr i8, ptr %netdev, i32 9248
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %42 = ptrtoint ptr %rq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rq_count.i.i, align 32
  %add.i.i = add i32 %43, %i.097
  %interrupt_offset.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %add.i.i, i32 6
  %44 = ptrtoint ptr %interrupt_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %interrupt_offset.i, align 4
  %arrayidx = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %45
  tail call void @vnic_intr_coalescing_timer_set(ptr noundef %arrayidx, i32 noundef %28) #12
  %inc = add nuw i32 %i.097, 1
  %46 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wq_count, align 32
  %cmp29 = icmp ult i32 %inc, %47
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tx_coalesce_usecs32 = getelementptr i8, ptr %netdev, i32 3576
  %48 = ptrtoint ptr %tx_coalesce_usecs32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %28, ptr %tx_coalesce_usecs32, align 8
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.end.if.end33_crit_edge
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 10
  %49 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool34 = icmp ne i32 %50, 0
  %lnot.ext = zext i1 %tobool34 to i32
  %use_adaptive_rx_coalesce36 = getelementptr i8, ptr %netdev, i32 3568
  %51 = ptrtoint ptr %use_adaptive_rx_coalesce36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %lnot.ext, ptr %use_adaptive_rx_coalesce36, align 4
  br i1 %tobool34, label %if.end33.if.end40_crit_edge, label %if.then39

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end33
  %rq_count.i = getelementptr i8, ptr %netdev, i32 9248
  %52 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rq_count.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp6.not.i = icmp eq i32 %53, 0
  br i1 %cmp6.not.i, label %if.then39.if.end40_crit_edge, label %if.then39.for.body.i_crit_edge

if.then39.for.body.i_crit_edge:                   ; preds = %if.then39
  br label %for.body.i

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then39.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then39.for.body.i_crit_edge ]
  %interrupt_offset.i.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 44, i32 %i.07.i, i32 6
  %54 = ptrtoint ptr %interrupt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %interrupt_offset.i.i, align 4
  %arrayidx.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 40, i32 %55
  tail call void @vnic_intr_coalescing_timer_set(ptr noundef %arrayidx.i, i32 noundef %31) #12
  %inc.i = add nuw i32 %i.07.i, 1
  %56 = ptrtoint ptr %rq_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rq_count.i, align 32
  %cmp.i = icmp ult i32 %inc.i, %57
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end40_crit_edge

for.body.i.if.end40_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end40:                                         ; preds = %for.body.i.if.end40_crit_edge, %if.then39.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %58 = ptrtoint ptr %rx_coalesce_usecs_high1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_coalesce_usecs_high1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool42.not = icmp eq i32 %59, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %range_end = getelementptr i8, ptr %netdev, i32 3564
  %60 = ptrtoint ptr %range_end to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %37, ptr %range_end, align 4
  %61 = ptrtoint ptr %rx_coalesce_setting to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %34, ptr %rx_coalesce_setting, align 4
  %add = add i32 %34, 3
  %large_pkt_range_start = getelementptr i8, ptr %netdev, i32 3560
  %62 = ptrtoint ptr %large_pkt_range_start to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add, ptr %large_pkt_range_start, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %rx_coalesce_usecs45 = getelementptr i8, ptr %netdev, i32 3572
  %63 = ptrtoint ptr %rx_coalesce_usecs45 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %31, ptr %rx_coalesce_usecs45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end22.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end22.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @enic_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %rq_desc_count = getelementptr i8, ptr %netdev, i32 2320
  %1 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rq_desc_count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %3 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %4 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %tx_max_pending, align 4
  %wq_desc_count = getelementptr i8, ptr %netdev, i32 2316
  %5 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wq_desc_count, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %6 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_jumbo_max_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

lor.lhs.false4:                                   ; preds = %if.end
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false4.if.then6_crit_edge

lor.lhs.false4.if.then6_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false4.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %rq_desc_count = getelementptr i8, ptr %netdev, i32 2320
  %10 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_desc_count, align 4
  %wq_desc_count = getelementptr i8, ptr %netdev, i32 2316
  %12 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wq_desc_count, align 4
  %rx_pending8 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %14 = ptrtoint ptr %rx_pending8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_pending8, align 4
  %16 = add i32 %15, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %16)
  %17 = icmp ult i32 %16, -4033
  br i1 %17, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef 64, i32 noundef 4096) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %tx_pending17 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %18 = ptrtoint ptr %tx_pending17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pending17, align 4
  %20 = add i32 %19, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %20)
  %21 = icmp ult i32 %20, -4033
  br i1 %21, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef 64, i32 noundef 4096) #15
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  br i1 %tobool.i.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_close(ptr noundef %netdev) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %22 = ptrtoint ptr %rx_pending8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pending8, align 4
  %and = and i32 %23, -32
  %24 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %rq_desc_count, align 4
  %25 = ptrtoint ptr %tx_pending17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_pending17, align 4
  %and33 = and i32 %26, -32
  %27 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and33, ptr %wq_desc_count, align 4
  tail call void @enic_free_vnic_resources(ptr noundef %add.ptr.i) #12
  %call35 = tail call i32 @enic_alloc_vnic_resources(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6) #15
  tail call void @enic_free_vnic_resources(ptr noundef %add.ptr.i) #12
  br label %err_out

if.end38:                                         ; preds = %if.end29
  tail call void @enic_init_vnic_resources(ptr noundef %add.ptr.i) #12
  br i1 %tobool.i.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i32 @dev_open(ptr noundef %netdev, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.cleanup_crit_edge, label %if.then40.err_out_crit_edge

if.then40.err_out_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_out:                                          ; preds = %if.then40.err_out_crit_edge, %if.then37
  %err.0 = phi i32 [ %call35, %if.then37 ], [ %call41, %if.then40.err_out_crit_edge ]
  %28 = ptrtoint ptr %rq_desc_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %11, ptr %rq_desc_count, align 4
  %29 = ptrtoint ptr %wq_desc_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %wq_desc_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then40.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then24, %if.then14, %if.then6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then6 ], [ -22, %if.then14 ], [ -22, %if.then24 ], [ %err.0, %err_out ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %data, ptr @enic_tx_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([11 x %struct.enic_stat], ptr @enic_tx_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.10, ptr @enic_rx_stats, i32 32)
  %add.ptr7 = getelementptr i8, ptr %data, i32 384
  %12 = call ptr @memcpy(ptr %add.ptr7, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 1), i32 32)
  %add.ptr7.1 = getelementptr i8, ptr %data, i32 416
  %13 = call ptr @memcpy(ptr %add.ptr7.1, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 2), i32 32)
  %add.ptr7.2 = getelementptr i8, ptr %data, i32 448
  %14 = call ptr @memcpy(ptr %add.ptr7.2, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 3), i32 32)
  %add.ptr7.3 = getelementptr i8, ptr %data, i32 480
  %15 = call ptr @memcpy(ptr %add.ptr7.3, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 4), i32 32)
  %add.ptr7.4 = getelementptr i8, ptr %data, i32 512
  %16 = call ptr @memcpy(ptr %add.ptr7.4, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 5), i32 32)
  %add.ptr7.5 = getelementptr i8, ptr %data, i32 544
  %17 = call ptr @memcpy(ptr %add.ptr7.5, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 6), i32 32)
  %add.ptr7.6 = getelementptr i8, ptr %data, i32 576
  %18 = call ptr @memcpy(ptr %add.ptr7.6, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 7), i32 32)
  %add.ptr7.7 = getelementptr i8, ptr %data, i32 608
  %19 = call ptr @memcpy(ptr %add.ptr7.7, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 8), i32 32)
  %add.ptr7.8 = getelementptr i8, ptr %data, i32 640
  %20 = call ptr @memcpy(ptr %add.ptr7.8, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 9), i32 32)
  %add.ptr7.9 = getelementptr i8, ptr %data, i32 672
  %21 = call ptr @memcpy(ptr %add.ptr7.9, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 10), i32 32)
  %add.ptr7.10 = getelementptr i8, ptr %data, i32 704
  %22 = call ptr @memcpy(ptr %add.ptr7.10, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 11), i32 32)
  %add.ptr7.11 = getelementptr i8, ptr %data, i32 736
  %23 = call ptr @memcpy(ptr %add.ptr7.11, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 12), i32 32)
  %add.ptr7.12 = getelementptr i8, ptr %data, i32 768
  %24 = call ptr @memcpy(ptr %add.ptr7.12, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 13), i32 32)
  %add.ptr7.13 = getelementptr i8, ptr %data, i32 800
  %25 = call ptr @memcpy(ptr %add.ptr7.13, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 14), i32 32)
  %add.ptr7.14 = getelementptr i8, ptr %data, i32 832
  %26 = call ptr @memcpy(ptr %add.ptr7.14, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 15), i32 32)
  %add.ptr7.15 = getelementptr i8, ptr %data, i32 864
  %27 = call ptr @memcpy(ptr %add.ptr7.15, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 16), i32 32)
  %add.ptr7.16 = getelementptr i8, ptr %data, i32 896
  %28 = call ptr @memcpy(ptr %add.ptr7.16, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 17), i32 32)
  %add.ptr7.17 = getelementptr i8, ptr %data, i32 928
  %29 = call ptr @memcpy(ptr %add.ptr7.17, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 18), i32 32)
  %add.ptr7.18 = getelementptr i8, ptr %data, i32 960
  %30 = call ptr @memcpy(ptr %add.ptr7.18, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 19), i32 32)
  %add.ptr7.19 = getelementptr i8, ptr %data, i32 992
  %31 = call ptr @memcpy(ptr %add.ptr7.19, ptr getelementptr inbounds ([21 x %struct.enic_stat], ptr @enic_rx_stats, i32 0, i32 20), i32 32)
  %add.ptr7.20 = getelementptr i8, ptr %data, i32 1024
  %32 = call ptr @memcpy(ptr %add.ptr7.20, ptr @enic_gen_stats, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enic_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  %vstats = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vstats) #12
  %0 = ptrtoint ptr %vstats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vstats, align 4, !annotation !31
  %call1 = call i32 @enic_dev_stats_dump(ptr noundef %add.ptr.i, ptr noundef nonnull %vstats) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call1)
  %cmp = icmp eq i32 %call1, -12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %vstats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vstats, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %data, align 8
  %arrayidx3.1 = getelementptr i64, ptr %2, i32 1
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx3.1, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %incdec.ptr, align 8
  %arrayidx3.2 = getelementptr i64, ptr %2, i32 2
  %9 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx3.2, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr.1, align 8
  %arrayidx3.3 = getelementptr i64, ptr %2, i32 3
  %12 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx3.3, align 8
  %incdec.ptr.3 = getelementptr i64, ptr %data, i32 4
  %14 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %incdec.ptr.2, align 8
  %arrayidx3.4 = getelementptr i64, ptr %2, i32 4
  %15 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx3.4, align 8
  %incdec.ptr.4 = getelementptr i64, ptr %data, i32 5
  %17 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %incdec.ptr.3, align 8
  %arrayidx3.5 = getelementptr i64, ptr %2, i32 5
  %18 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx3.5, align 8
  %incdec.ptr.5 = getelementptr i64, ptr %data, i32 6
  %20 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %incdec.ptr.4, align 8
  %arrayidx3.6 = getelementptr i64, ptr %2, i32 6
  %21 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx3.6, align 8
  %incdec.ptr.6 = getelementptr i64, ptr %data, i32 7
  %23 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %incdec.ptr.5, align 8
  %arrayidx3.7 = getelementptr i64, ptr %2, i32 7
  %24 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx3.7, align 8
  %incdec.ptr.7 = getelementptr i64, ptr %data, i32 8
  %26 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %incdec.ptr.6, align 8
  %arrayidx3.8 = getelementptr i64, ptr %2, i32 8
  %27 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx3.8, align 8
  %incdec.ptr.8 = getelementptr i64, ptr %data, i32 9
  %29 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %incdec.ptr.7, align 8
  %arrayidx3.9 = getelementptr i64, ptr %2, i32 9
  %30 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx3.9, align 8
  %incdec.ptr.9 = getelementptr i64, ptr %data, i32 10
  %32 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %incdec.ptr.8, align 8
  %arrayidx3.10 = getelementptr i64, ptr %2, i32 10
  %33 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx3.10, align 8
  %incdec.ptr.10 = getelementptr i64, ptr %data, i32 11
  %35 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %incdec.ptr.9, align 8
  %rx = getelementptr inbounds %struct.vnic_stats, ptr %2, i32 0, i32 1
  %36 = ptrtoint ptr %rx to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rx, align 8
  %incdec.ptr10 = getelementptr i64, ptr %data, i32 12
  %38 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %incdec.ptr.10, align 8
  %arrayidx9.1 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx9.1, align 8
  %incdec.ptr10.1 = getelementptr i64, ptr %data, i32 13
  %41 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %incdec.ptr10, align 8
  %arrayidx9.2 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx9.2, align 8
  %incdec.ptr10.2 = getelementptr i64, ptr %data, i32 14
  %44 = ptrtoint ptr %incdec.ptr10.1 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %incdec.ptr10.1, align 8
  %arrayidx9.3 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx9.3, align 8
  %incdec.ptr10.3 = getelementptr i64, ptr %data, i32 15
  %47 = ptrtoint ptr %incdec.ptr10.2 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %incdec.ptr10.2, align 8
  %arrayidx9.4 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx9.4, align 8
  %incdec.ptr10.4 = getelementptr i64, ptr %data, i32 16
  %50 = ptrtoint ptr %incdec.ptr10.3 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %incdec.ptr10.3, align 8
  %arrayidx9.5 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx9.5, align 8
  %incdec.ptr10.5 = getelementptr i64, ptr %data, i32 17
  %53 = ptrtoint ptr %incdec.ptr10.4 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %incdec.ptr10.4, align 8
  %arrayidx9.6 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 6
  %54 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx9.6, align 8
  %incdec.ptr10.6 = getelementptr i64, ptr %data, i32 18
  %56 = ptrtoint ptr %incdec.ptr10.5 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %incdec.ptr10.5, align 8
  %arrayidx9.7 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 7
  %57 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx9.7, align 8
  %incdec.ptr10.7 = getelementptr i64, ptr %data, i32 19
  %59 = ptrtoint ptr %incdec.ptr10.6 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %incdec.ptr10.6, align 8
  %arrayidx9.8 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 8
  %60 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx9.8, align 8
  %incdec.ptr10.8 = getelementptr i64, ptr %data, i32 20
  %62 = ptrtoint ptr %incdec.ptr10.7 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %incdec.ptr10.7, align 8
  %arrayidx9.9 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 9
  %63 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx9.9, align 8
  %incdec.ptr10.9 = getelementptr i64, ptr %data, i32 21
  %65 = ptrtoint ptr %incdec.ptr10.8 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %incdec.ptr10.8, align 8
  %arrayidx9.10 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 10
  %66 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx9.10, align 8
  %incdec.ptr10.10 = getelementptr i64, ptr %data, i32 22
  %68 = ptrtoint ptr %incdec.ptr10.9 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %incdec.ptr10.9, align 8
  %arrayidx9.11 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 11
  %69 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx9.11, align 8
  %incdec.ptr10.11 = getelementptr i64, ptr %data, i32 23
  %71 = ptrtoint ptr %incdec.ptr10.10 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %incdec.ptr10.10, align 8
  %arrayidx9.12 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 12
  %72 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx9.12, align 8
  %incdec.ptr10.12 = getelementptr i64, ptr %data, i32 24
  %74 = ptrtoint ptr %incdec.ptr10.11 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %incdec.ptr10.11, align 8
  %arrayidx9.13 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 13
  %75 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx9.13, align 8
  %incdec.ptr10.13 = getelementptr i64, ptr %data, i32 25
  %77 = ptrtoint ptr %incdec.ptr10.12 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %incdec.ptr10.12, align 8
  %arrayidx9.14 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 14
  %78 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx9.14, align 8
  %incdec.ptr10.14 = getelementptr i64, ptr %data, i32 26
  %80 = ptrtoint ptr %incdec.ptr10.13 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %incdec.ptr10.13, align 8
  %arrayidx9.15 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 15
  %81 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx9.15, align 8
  %incdec.ptr10.15 = getelementptr i64, ptr %data, i32 27
  %83 = ptrtoint ptr %incdec.ptr10.14 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %incdec.ptr10.14, align 8
  %arrayidx9.16 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 16
  %84 = ptrtoint ptr %arrayidx9.16 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx9.16, align 8
  %incdec.ptr10.16 = getelementptr i64, ptr %data, i32 28
  %86 = ptrtoint ptr %incdec.ptr10.15 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %incdec.ptr10.15, align 8
  %arrayidx9.17 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 17
  %87 = ptrtoint ptr %arrayidx9.17 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx9.17, align 8
  %incdec.ptr10.17 = getelementptr i64, ptr %data, i32 29
  %89 = ptrtoint ptr %incdec.ptr10.16 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %incdec.ptr10.16, align 8
  %arrayidx9.18 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 18
  %90 = ptrtoint ptr %arrayidx9.18 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx9.18, align 8
  %incdec.ptr10.18 = getelementptr i64, ptr %data, i32 30
  %92 = ptrtoint ptr %incdec.ptr10.17 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %incdec.ptr10.17, align 8
  %arrayidx9.19 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 19
  %93 = ptrtoint ptr %arrayidx9.19 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx9.19, align 8
  %incdec.ptr10.19 = getelementptr i64, ptr %data, i32 31
  %95 = ptrtoint ptr %incdec.ptr10.18 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %incdec.ptr10.18, align 8
  %arrayidx9.20 = getelementptr %struct.vnic_stats, ptr %2, i32 0, i32 1, i32 20
  %96 = ptrtoint ptr %arrayidx9.20 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx9.20, align 8
  %incdec.ptr10.20 = getelementptr i64, ptr %data, i32 32
  %98 = ptrtoint ptr %incdec.ptr10.19 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %incdec.ptr10.19, align 8
  %gen_stats = getelementptr i8, ptr %netdev, i32 18840
  %99 = ptrtoint ptr %gen_stats to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %gen_stats, align 8
  %101 = ptrtoint ptr %incdec.ptr10.20 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %incdec.ptr10.20, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vstats) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 33, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_get_rxnfc(ptr noundef %dev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %rule_locs) #1 align 64 {
entry:
  %rss_hash_type.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb2
    i32 48, label %sw.bb12
    i32 47, label %sw.bb18
    i32 41, label %sw.bb24
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rq_count = getelementptr i8, ptr %dev, i32 9248
  %3 = ptrtoint ptr %rq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_count, align 32
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rfs_h = getelementptr i8, ptr %dev, i32 14596
  %lock = getelementptr i8, ptr %dev, i32 18704
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %6 = ptrtoint ptr %rfs_h to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rfs_h, align 4
  %conv4 = zext i16 %7 to i32
  %free = getelementptr i8, ptr %dev, i32 14600
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %free, align 4
  %sub = sub i32 %conv4, %9
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %10, align 8
  %12 = load i16, ptr %rfs_h, align 4
  %conv8 = zext i16 %12 to i64
  %data9 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %data9 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv8, ptr %data9, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %lock14 = getelementptr i8, ptr %dev, i32 18704
  tail call void @_raw_spin_lock_bh(ptr noundef %lock14) #12
  %rfs_h.i = getelementptr i8, ptr %dev, i32 14596
  %14 = ptrtoint ptr %rfs_h.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rfs_h.i, align 4
  %conv.i = zext i16 %15 to i32
  %free.i = getelementptr i8, ptr %dev, i32 14600
  %16 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free.i, align 4
  %sub.i = sub i32 %conv.i, %17
  %conv2.i = sext i32 %sub.i to i64
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv2.i, ptr %data.i, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc28.critedge.i.for.body.i_crit_edge, %sw.bb12
  %j.058.i = phi i32 [ 0, %sw.bb12 ], [ %inc29.i, %for.inc28.critedge.i.for.body.i_crit_edge ]
  %cnt.057.i = phi i32 [ 0, %sw.bb12 ], [ %cnt.1.lcssa.i, %for.inc28.critedge.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.enic, ptr %add.ptr.i, i32 0, i32 46, i32 3, i32 %j.058.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %add.ptr.i44 = getelementptr i8, ptr %21, i32 -80
  %tobool8.not5459.i = icmp eq ptr %add.ptr.i44, null
  %tobool8.not54.i = or i1 %tobool.not.i, %tobool8.not5459.i
  br i1 %tobool8.not54.i, label %for.body.i.for.inc28.critedge.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc28.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.critedge.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %cnt.156.i = phi i32 [ %inc.i, %if.end.i.land.rhs.i_crit_edge ], [ %cnt.057.i, %for.body.i.land.rhs.i_crit_edge ]
  %n.055.i = phi ptr [ %add.ptr22.i, %if.end.i.land.rhs.i_crit_edge ], [ %add.ptr.i44, %for.body.i.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.156.i, i32 %23)
  %cmp12.i = icmp eq i32 %cnt.156.i, %23
  br i1 %cmp12.i, label %land.rhs.i.enic_grxclsrlall.exit_crit_edge, label %if.end.i

land.rhs.i.enic_grxclsrlall.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_grxclsrlall.exit

if.end.i:                                         ; preds = %land.rhs.i
  %node.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.055.i, i32 0, i32 4
  %24 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node.i, align 8
  %fltr_id.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %n.055.i, i32 0, i32 2
  %26 = ptrtoint ptr %fltr_id.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fltr_id.i, align 4
  %conv14.i = zext i16 %27 to i32
  %arrayidx15.i = getelementptr i32, ptr %rule_locs, i32 %cnt.156.i
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv14.i, ptr %arrayidx15.i, align 4
  %inc.i = add i32 %cnt.156.i, 1
  %tobool18.not.i = icmp eq ptr %25, null
  %add.ptr22.i = getelementptr i8, ptr %25, i32 -80
  %tobool8.not60.i = icmp eq ptr %add.ptr22.i, null
  %tobool8.not.i = or i1 %tobool18.not.i, %tobool8.not60.i
  br i1 %tobool8.not.i, label %if.end.i.for.inc28.critedge.i_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.for.inc28.critedge.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.critedge.i

for.inc28.critedge.i:                             ; preds = %if.end.i.for.inc28.critedge.i_crit_edge, %for.body.i.for.inc28.critedge.i_crit_edge
  %cnt.1.lcssa.i = phi i32 [ %cnt.057.i, %for.body.i.for.inc28.critedge.i_crit_edge ], [ %inc.i, %if.end.i.for.inc28.critedge.i_crit_edge ]
  %inc29.i = add nuw nsw i32 %j.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc29.i, 1024
  br i1 %exitcond.not.i, label %for.end30.i, label %for.inc28.critedge.i.for.body.i_crit_edge

for.inc28.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc28.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end30.i:                                      ; preds = %for.inc28.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cnt.1.lcssa.i, ptr %19, align 8
  br label %enic_grxclsrlall.exit

enic_grxclsrlall.exit:                            ; preds = %for.end30.i, %land.rhs.i.enic_grxclsrlall.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %for.end30.i ], [ -90, %land.rhs.i.enic_grxclsrlall.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock14) #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %lock20 = getelementptr i8, ptr %dev, i32 18704
  tail call void @_raw_spin_lock_bh(ptr noundef %lock20) #12
  %fs.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %location.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %location.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %location.i, align 8
  %conv.i45 = trunc i32 %31 to i16
  %call.i = tail call ptr @htbl_fltr_search(ptr noundef %add.ptr.i, i16 noundef zeroext %conv.i45) #12
  %tobool.not.i46 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i46, label %sw.bb18.enic_grxclsrule.exit_crit_edge, label %if.end.i47

sw.bb18.enic_grxclsrule.exit_crit_edge:           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_grxclsrule.exit

if.end.i47:                                       ; preds = %sw.bb18
  %ip_proto.i = getelementptr inbounds %struct.flow_keys, ptr %call.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip_proto.i, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %33, label %if.end.i47.enic_grxclsrule.exit_crit_edge [
    i8 6, label %if.end.i47.sw.epilog.i_crit_edge
    i8 17, label %sw.bb2.i
  ]

if.end.i47.sw.epilog.i_crit_edge:                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end.i47.enic_grxclsrule.exit_crit_edge:        ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_grxclsrule.exit

sw.bb2.i:                                         ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i47.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 2, %sw.bb2.i ], [ 1, %if.end.i47.sw.epilog.i_crit_edge ]
  %35 = ptrtoint ptr %fs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge.i, ptr %fs.i, align 8
  %call5.i = tail call i32 @flow_get_u32_src(ptr noundef nonnull %call.i) #12
  %h_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %h_u.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call5.i, ptr %h_u.i, align 4
  %m_u.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %m_u.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %m_u.i, align 4
  %call8.i = tail call i32 @flow_get_u32_dst(ptr noundef nonnull %call.i) #12
  %ip4dst.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %ip4dst.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call8.i, ptr %ip4dst.i, align 4
  %ip4dst11.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %ip4dst11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %ip4dst11.i, align 4
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ports.i, align 4
  %psrc.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %psrc.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %psrc.i, align 4
  %psrc15.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %psrc15.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %psrc15.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.125, ptr %ports.i, i32 0, i32 1
  %44 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dst.i, align 2
  %pdst.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i, i32 0, i32 3
  %46 = ptrtoint ptr %pdst.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %pdst.i, align 2
  %pdst20.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i, i32 0, i32 3
  %47 = ptrtoint ptr %pdst20.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %pdst20.i, align 2
  %rq_id.i = getelementptr inbounds %struct.enic_rfs_fltr_node, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %rq_id.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rq_id.i, align 2
  %conv21.i = zext i16 %49 to i64
  %ring_cookie.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %ring_cookie.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv21.i, ptr %ring_cookie.i, align 8
  br label %enic_grxclsrule.exit

enic_grxclsrule.exit:                             ; preds = %sw.epilog.i, %if.end.i47.enic_grxclsrule.exit_crit_edge, %sw.bb18.enic_grxclsrule.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %sw.bb18.enic_grxclsrule.exit_crit_edge ], [ -22, %if.end.i47.enic_grxclsrule.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock20) #12
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rss_hash_type.i) #12
  %51 = ptrtoint ptr %rss_hash_type.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %rss_hash_type.i, align 1
  %data.i48 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %52 = ptrtoint ptr %data.i48 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %data.i48, align 8
  %devcmd_lock.i = getelementptr i8, ptr %dev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #12
  %vdev.i = getelementptr i8, ptr %dev, i32 2432
  %53 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vdev.i, align 128
  %call.i49 = call i32 @vnic_dev_capable_rss_hash_type(ptr noundef %54, ptr noundef nonnull %rss_hash_type.i) #12
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #12
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %55 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flow_type.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %56, label %sw.bb24.enic_get_rx_flow_hash.exit_crit_edge [
    i32 5, label %sw.bb24.sw.bb.i_crit_edge
    i32 1, label %sw.bb24.sw.bb.i_crit_edge52
    i32 6, label %sw.bb3.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb24.sw.bb18.i_crit_edge
    i32 4, label %sw.bb24.sw.bb18.i_crit_edge53
    i32 9, label %sw.bb24.sw.bb18.i_crit_edge54
    i32 10, label %sw.bb24.sw.bb18.i_crit_edge55
    i32 7, label %sw.bb24.sw.bb18.i_crit_edge56
    i32 8, label %sw.bb24.sw.bb18.i_crit_edge57
    i32 11, label %sw.bb24.sw.bb18.i_crit_edge58
    i32 12, label %sw.bb24.sw.bb18.i_crit_edge59
    i32 16, label %sw.bb24.sw.bb18.i_crit_edge60
    i32 17, label %sw.bb24.sw.bb18.i_crit_edge61
  ]

sw.bb24.sw.bb18.i_crit_edge61:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge60:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge59:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge58:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge57:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge56:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge55:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge54:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge53:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb18.i_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18.i

sw.bb24.sw.bb.i_crit_edge52:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb24.sw.bb.i_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb24.enic_get_rx_flow_hash.exit_crit_edge:     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_get_rx_flow_hash.exit

sw.bb.i:                                          ; preds = %sw.bb24.sw.bb.i_crit_edge, %sw.bb24.sw.bb.i_crit_edge52
  %58 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data.i48, align 8
  %or.i = or i64 %59, 240
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %sw.bb24
  %60 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %data.i48, align 8
  %or5.i = or i64 %61, 48
  store i64 %or5.i, ptr %data.i48, align 8
  %62 = ptrtoint ptr %rss_hash_type.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rss_hash_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %tobool.not.i50 = icmp sgt i8 %63, -1
  br i1 %tobool.not.i50, label %sw.bb3.i.enic_get_rx_flow_hash.exit_crit_edge, label %if.then.i

sw.bb3.i.enic_get_rx_flow_hash.exit_crit_edge:    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_get_rx_flow_hash.exit

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  %or7.i = or i64 %61, 240
  br label %cleanup.sink.split.i

sw.bb8.i:                                         ; preds = %sw.bb24
  %64 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %data.i48, align 8
  %or10.i = or i64 %65, 48
  store i64 %or10.i, ptr %data.i48, align 8
  %66 = ptrtoint ptr %rss_hash_type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rss_hash_type.i, align 1
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool13.not.i = icmp eq i8 %68, 0
  br i1 %tobool13.not.i, label %sw.bb8.i.enic_get_rx_flow_hash.exit_crit_edge, label %if.then14.i

sw.bb8.i.enic_get_rx_flow_hash.exit_crit_edge:    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %enic_get_rx_flow_hash.exit

if.then14.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  %or16.i = or i64 %65, 240
  br label %cleanup.sink.split.i

sw.bb18.i:                                        ; preds = %sw.bb24.sw.bb18.i_crit_edge, %sw.bb24.sw.bb18.i_crit_edge53, %sw.bb24.sw.bb18.i_crit_edge54, %sw.bb24.sw.bb18.i_crit_edge55, %sw.bb24.sw.bb18.i_crit_edge56, %sw.bb24.sw.bb18.i_crit_edge57, %sw.bb24.sw.bb18.i_crit_edge58, %sw.bb24.sw.bb18.i_crit_edge59, %sw.bb24.sw.bb18.i_crit_edge60, %sw.bb24.sw.bb18.i_crit_edge61
  %69 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %data.i48, align 8
  %or20.i = or i64 %70, 48
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb18.i, %if.then14.i, %if.then.i, %sw.bb.i
  %or.sink.i = phi i64 [ %or.i, %sw.bb.i ], [ %or20.i, %sw.bb18.i ], [ %or7.i, %if.then.i ], [ %or16.i, %if.then14.i ]
  %71 = ptrtoint ptr %data.i48 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %or.sink.i, ptr %data.i48, align 8
  br label %enic_get_rx_flow_hash.exit

enic_get_rx_flow_hash.exit:                       ; preds = %cleanup.sink.split.i, %sw.bb8.i.enic_get_rx_flow_hash.exit_crit_edge, %sw.bb3.i.enic_get_rx_flow_hash.exit_crit_edge, %sw.bb24.enic_get_rx_flow_hash.exit_crit_edge
  %retval.0.i51 = phi i32 [ -22, %sw.bb24.enic_get_rx_flow_hash.exit_crit_edge ], [ 0, %sw.bb8.i.enic_get_rx_flow_hash.exit_crit_edge ], [ 0, %sw.bb3.i.enic_get_rx_flow_hash.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rss_hash_type.i) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %enic_get_rx_flow_hash.exit, %enic_grxclsrule.exit, %enic_grxclsrlall.exit, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i51, %enic_get_rx_flow_hash.exit ], [ %retval.0.i, %enic_grxclsrule.exit ], [ %retval.2.i, %enic_grxclsrlall.exit ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_get_rxfh(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %indir, ptr noundef writeonly %hkey, ptr noundef writeonly %hfunc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hkey, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rss_key = getelementptr i8, ptr %netdev, i32 18800
  %0 = call ptr @memcpy(ptr %hkey, ptr %rss_key, i32 40)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %hfunc, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %hfunc, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_set_rxfh(ptr noundef %netdev, ptr noundef readnone %indir, ptr noundef readonly %hkey, i8 noundef zeroext %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  %tobool.not = icmp eq ptr %indir, null
  %or.cond = and i1 %tobool.not, %switch
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %hkey, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rss_key = getelementptr i8, ptr %netdev, i32 18800
  %0 = call ptr @memcpy(ptr %rss_key, ptr %hkey, i32 40)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @__enic_set_rsskey(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @enic_get_ts_info(ptr nocapture noundef readnone %netdev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 26, ptr %so_timestamping, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_get_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rx_copybreak = getelementptr i8, ptr %dev, i32 18796
  %2 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_copybreak, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_set_tunable(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %rx_copybreak = getelementptr i8, ptr %dev, i32 18796
  %4 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_copybreak, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_get_ksettings(ptr noundef %netdev, ptr nocapture noundef %ecmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %0 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_modes, align 4
  %or.i24 = or i32 %1, 5120
  store i32 %or.i24, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %advertising, align 4
  %or.i26 = or i32 %3, 5120
  store i32 %or.i26, ptr %advertising, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %port, align 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vdev = getelementptr i8, ptr %netdev, i32 2432
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 128
  %call11 = tail call i32 @vnic_dev_port_speed(ptr noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink27 = phi i32 [ %call11, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %.sink = phi i8 [ 1, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink27, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %12, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_fw_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_get_intr_coal_timer_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_intr_coalescing_timer_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_free_vnic_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_alloc_vnic_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_init_vnic_resources(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_stats_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @htbl_fltr_search(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_get_u32_src(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_get_u32_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_capable_rss_hash_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__enic_set_rsskey(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_port_speed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @enic_ethtool_ops, !1, !"enic_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 625, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 149, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 340, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 207, i32 8}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 212, i32 8}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 219, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 226, i32 23}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 241, i32 7}
!16 = !{ptr @enic_tx_stats, !17, !"enic_tx_stats", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 50, i32 31}
!18 = !{ptr @enic_rx_stats, !19, !"enic_rx_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 64, i32 31}
!20 = !{ptr @enic_gen_stats, !21, !"enic_gen_stats", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/cisco/enic/enic_ethtool.c", i32 88, i32 31}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
