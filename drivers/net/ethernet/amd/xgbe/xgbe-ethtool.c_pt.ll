; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_stats = type { [32 x i8], i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.116, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.116 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.127, i32 }
%union.anon.127 = type { ptr }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.115, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.115 = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@xgbe_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 35, i32 0, ptr @xgbe_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_get_msglevel, ptr @xgbe_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_get_coalesce, ptr @xgbe_set_coalesce, ptr @xgbe_get_ringparam, ptr @xgbe_set_ringparam, ptr null, ptr @xgbe_get_pauseparam, ptr @xgbe_set_pauseparam, ptr null, ptr @xgbe_get_strings, ptr null, ptr @xgbe_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_get_sset_count, ptr @xgbe_get_rxnfc, ptr null, ptr null, ptr null, ptr @xgbe_get_rxfh_key_size, ptr @xgbe_get_rxfh_indir_size, ptr @xgbe_get_rxfh, ptr @xgbe_set_rxfh, ptr null, ptr null, ptr @xgbe_get_channels, ptr @xgbe_set_channels, ptr null, ptr null, ptr null, ptr @xgbe_get_ts_info, ptr @xgbe_get_module_info, ptr @xgbe_get_module_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgbe_get_link_ksettings, ptr @xgbe_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd-xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx-usec is limited to %d usecs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rx-frames is limited to %d frames\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tx-frames is limited to %d frames\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported ring parameter\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rx ring parameter must be between %u and %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tx ring parameter must be between %u and %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rx ring parameter rounded to power of two: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tx ring parameter rounded to power of two: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"autoneg disabled, pause autoneg not available\0A\00", [49 x i8] zeroinitializer }, align 32
@xgbe_gstring_stats = internal constant { [43 x %struct.xgbe_stats], [424 x i8] } { [43 x %struct.xgbe_stats] [%struct.xgbe_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2688 }, %struct.xgbe_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2696 }, %struct.xgbe_stats { [32 x i8] c"tx_unicast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2768 }, %struct.xgbe_stats { [32 x i8] c"tx_broadcast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2784 }, %struct.xgbe_stats { [32 x i8] c"tx_multicast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2776 }, %struct.xgbe_stats { [32 x i8] c"tx_vlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2824 }, %struct.xgbe_stats { [32 x i8] c"tx_vxlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3552 }, %struct.xgbe_stats { [32 x i8] c"tx_tso_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3016 }, %struct.xgbe_stats { [32 x i8] c"tx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2720 }, %struct.xgbe_stats { [32 x i8] c"tx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 8, i32 2728 }, %struct.xgbe_stats { [32 x i8] c"tx_128_to_255_byte_packets\00\00\00\00\00\00", i32 8, i32 2736 }, %struct.xgbe_stats { [32 x i8] c"tx_256_to_511_byte_packets\00\00\00\00\00\00", i32 8, i32 2744 }, %struct.xgbe_stats { [32 x i8] c"tx_512_to_1023_byte_packets\00\00\00\00\00", i32 8, i32 2752 }, %struct.xgbe_stats { [32 x i8] c"tx_1024_to_max_byte_packets\00\00\00\00\00", i32 8, i32 2760 }, %struct.xgbe_stats { [32 x i8] c"tx_underflow_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2792 }, %struct.xgbe_stats { [32 x i8] c"tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2816 }, %struct.xgbe_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2840 }, %struct.xgbe_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2832 }, %struct.xgbe_stats { [32 x i8] c"rx_unicast_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2960 }, %struct.xgbe_stats { [32 x i8] c"rx_broadcast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2856 }, %struct.xgbe_stats { [32 x i8] c"rx_multicast_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2864 }, %struct.xgbe_stats { [32 x i8] c"rx_vlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3000 }, %struct.xgbe_stats { [32 x i8] c"rx_vxlan_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3560 }, %struct.xgbe_stats { [32 x i8] c"rx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2912 }, %struct.xgbe_stats { [32 x i8] c"rx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 8, i32 2920 }, %struct.xgbe_stats { [32 x i8] c"rx_128_to_255_byte_packets\00\00\00\00\00\00", i32 8, i32 2928 }, %struct.xgbe_stats { [32 x i8] c"rx_256_to_511_byte_packets\00\00\00\00\00\00", i32 8, i32 2936 }, %struct.xgbe_stats { [32 x i8] c"rx_512_to_1023_byte_packets\00\00\00\00\00", i32 8, i32 2944 }, %struct.xgbe_stats { [32 x i8] c"rx_1024_to_max_byte_packets\00\00\00\00\00", i32 8, i32 2952 }, %struct.xgbe_stats { [32 x i8] c"rx_undersize_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2896 }, %struct.xgbe_stats { [32 x i8] c"rx_oversize_packets\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2904 }, %struct.xgbe_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2872 }, %struct.xgbe_stats { [32 x i8] c"rx_crc_errors_small_packets\00\00\00\00\00", i32 8, i32 2880 }, %struct.xgbe_stats { [32 x i8] c"rx_crc_errors_giant_packets\00\00\00\00\00", i32 8, i32 2888 }, %struct.xgbe_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2968 }, %struct.xgbe_stats { [32 x i8] c"rx_out_of_range_errors\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2976 }, %struct.xgbe_stats { [32 x i8] c"rx_fifo_overflow_errors\00\00\00\00\00\00\00\00\00", i32 8, i32 2992 }, %struct.xgbe_stats { [32 x i8] c"rx_watchdog_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3008 }, %struct.xgbe_stats { [32 x i8] c"rx_csum_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3568 }, %struct.xgbe_stats { [32 x i8] c"rx_vxlan_csum_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3576 }, %struct.xgbe_stats { [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 2984 }, %struct.xgbe_stats { [32 x i8] c"rx_split_header_packets\00\00\00\00\00\00\00\00\00", i32 8, i32 3024 }, %struct.xgbe_stats { [32 x i8] c"rx_buffer_unavailable\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 3032 }], [424 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txq_%u_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"txq_%u_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxq_%u_packets\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxq_%u_bytes\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported hash function\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"other channel count must be zero\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"at least one combined Rx/Tx channel is required\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"combined channel count cannot exceed %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cannot specify both Rx-only and Tx-only channels\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"total Rx channels (%u) requested exceeds maximum available (%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"total Tx channels (%u) requested exceeds maximum available (%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"channel inputs: combined=%u, rx-only=%u, tx-only=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid phy address %hhu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported autoneg %hhu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported speed %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported duplex %hhu\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_set_link_ksettings.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgbe_set_link_ksettings\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"requested advertisement 0x%*pb, phy supported 0x%*pb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported requested advertisement\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"xgbe_ethtool_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 822, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 405, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 408, i32 61 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 465, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 470, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 479, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 645, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 652, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 660, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 668, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 674, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 279, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"xgbe_gstring_stats\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 142, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 204, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 206, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 210, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 212, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 554, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 758, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 765, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 773, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 782, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 790, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 798, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 730, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 342, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 349, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 356, i32 23 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 361, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 367, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [48 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 378, i32 7 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @xgbe_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xgbe_gstring_stats, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_gstring_stats to i32), i32 1720, i32 2144, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @xgbe_get_ethtool_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @xgbe_ethtool_ops
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %dev = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %hw_feat1 = getelementptr i8, ptr %netdev, i32 6888
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %6 = ptrtoint ptr %hw_feat1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_feat1, align 4
  %shr = lshr i32 %7, 16
  %and = and i32 %shr, 255
  %shr8 = lshr i32 %7, 8
  %and9 = and i32 %shr8, 255
  %and12 = and i32 %7, 255
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %and9, i32 noundef %and12)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_msglevel(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @xgbe_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %msglevel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msglevel, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ec, i32 0, i32 92)
  %rx_usecs = getelementptr i8, ptr %netdev, i32 3528
  %1 = ptrtoint ptr %rx_usecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_usecs, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %3 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_coalesce_usecs, align 4
  %rx_frames = getelementptr i8, ptr %netdev, i32 3532
  %4 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_frames, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_max_coalesced_frames, align 4
  %tx_frames = getelementptr i8, ptr %netdev, i32 3520
  %7 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_frames, align 8
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %usec_to_riwt = getelementptr i8, ptr %netdev, i32 2952
  %0 = ptrtoint ptr %usec_to_riwt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usec_to_riwt, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %call2 = tail call i32 %1(ptr noundef %add.ptr.i, i32 noundef %3) #14
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.store.select = select i1 %tobool4.not, i32 1, i32 %call2
  %rx_riwt.0 = select i1 %tobool.not, i32 %call2, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %rx_riwt.0)
  %cmp = icmp ugt i32 %rx_riwt.0, 255
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %riwt_to_usec = getelementptr i8, ptr %netdev, i32 2956
  %8 = ptrtoint ptr %riwt_to_usec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %riwt_to_usec, align 4
  %call6 = tail call i32 %9(ptr noundef %add.ptr.i, i32 noundef 255) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.2, i32 noundef %call6) #17
  br label %cleanup

if.end7:                                          ; preds = %entry
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 3440
  %10 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp8 = icmp ugt i32 %7, %11
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.3, i32 noundef %11) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %12 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_max_coalesced_frames, align 4
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 3432
  %14 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp12 = icmp ugt i32 %13, %15
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.4, i32 noundef %15) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %rx_riwt16 = getelementptr i8, ptr %netdev, i32 3524
  %16 = ptrtoint ptr %rx_riwt16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rx_riwt.0, ptr %rx_riwt16, align 4
  %rx_usecs17 = getelementptr i8, ptr %netdev, i32 3528
  %17 = ptrtoint ptr %rx_usecs17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %5, ptr %rx_usecs17, align 8
  %rx_frames18 = getelementptr i8, ptr %netdev, i32 3532
  %18 = ptrtoint ptr %rx_frames18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %rx_frames18, align 4
  %config_rx_coalesce = getelementptr i8, ptr %netdev, i32 2944
  %19 = ptrtoint ptr %config_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config_rx_coalesce, align 4
  %call19 = tail call i32 %20(ptr noundef %add.ptr.i) #14
  %tx_frames20 = getelementptr i8, ptr %netdev, i32 3520
  %21 = ptrtoint ptr %tx_frames20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %tx_frames20, align 8
  %config_tx_coalesce = getelementptr i8, ptr %netdev, i32 2948
  %22 = ptrtoint ptr %config_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config_tx_coalesce, align 4
  %call21 = tail call i32 %23(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then9, %if.then5
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ringparam, ptr nocapture noundef readnone %kernel_ringparam, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 3440
  %2 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_desc_count, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 3432
  %5 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_desc_count, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ringparam, ptr nocapture noundef readnone %kernel_ringparam, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.5) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = add i32 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %6)
  %7 = icmp ult i32 %6, -4033
  br i1 %7, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.6, i32 noundef 64, i32 noundef 4096) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ringparam, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  %10 = add i32 %9, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4033, i32 %10)
  %11 = icmp ult i32 %10, -4033
  br i1 %11, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef 64, i32 noundef 4096) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %12 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #14, !range !75
  %sub.i.i.op.i = xor i32 %12, 31
  %sub.i.i.op.op.i = shl nuw i32 1, %sub.i.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.op.op.i, i32 %5)
  %cmp16.not = icmp eq i32 %sub.i.i.op.op.i, %5
  br i1 %cmp16.not, label %if.end12.if.end18_crit_edge, label %if.then17

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.8, i32 noundef %sub.i.i.op.op.i) #17
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pending, align 4
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #14, !range !75
  %sub.i.i.op.i59 = xor i32 %15, 31
  %sub.i.i.op.op.i60 = shl nuw i32 1, %sub.i.i.op.i59
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.op.op.i60, i32 %14)
  %cmp22.not = icmp eq i32 %sub.i.i.op.op.i60, %14
  br i1 %cmp22.not, label %if.end18.if.end24_crit_edge, label %if.then23

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %netdev, ptr noundef nonnull @.str.9, i32 noundef %sub.i.i.op.op.i60) #17
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.if.end24_crit_edge
  %rx_desc_count = getelementptr i8, ptr %netdev, i32 3440
  %16 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.op.op.i, i32 %17)
  %cmp25 = icmp eq i32 %sub.i.i.op.op.i, %17
  br i1 %cmp25, label %land.lhs.true, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end24
  %tx_desc_count = getelementptr i8, ptr %netdev, i32 3432
  %18 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.op.op.i60, i32 %19)
  %cmp26 = icmp eq i32 %sub.i.i.op.op.i60, %19
  br i1 %cmp26, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %20 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i.i.op.op.i, ptr %rx_desc_count, align 8
  %tx_desc_count30 = getelementptr i8, ptr %netdev, i32 3432
  %21 = ptrtoint ptr %tx_desc_count30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i.i.op.op.i60, ptr %tx_desc_count30, align 8
  tail call void @xgbe_restart_dev(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true.cleanup_crit_edge, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then5 ], [ -22, %if.then11 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pause_autoneg = getelementptr i8, ptr %netdev, i32 7248
  %0 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pause_autoneg, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %autoneg, align 4
  %tx_pause = getelementptr i8, ptr %netdev, i32 7252
  %3 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_pause, align 4
  %tx_pause2 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_pause2, align 4
  %rx_pause = getelementptr i8, ptr %netdev, i32 7256
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause, align 4
  %rx_pause4 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pause4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %autoneg3 = getelementptr i8, ptr %netdev, i32 7232
  %2 = ptrtoint ptr %autoneg3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autoneg3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pause_autoneg = getelementptr i8, ptr %netdev, i32 7248
  %4 = ptrtoint ptr %pause_autoneg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %pause_autoneg, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause, align 4
  %tx_pause7 = getelementptr i8, ptr %netdev, i32 7252
  %7 = ptrtoint ptr %tx_pause7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pause7, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pause, align 4
  %rx_pause9 = getelementptr i8, ptr %netdev, i32 7256
  %10 = ptrtoint ptr %rx_pause9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_pause9, align 4
  %advertising = getelementptr i8, ptr %netdev, i32 7200
  %11 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertising, align 4
  %and.i65 = and i32 %12, -24577
  store i32 %and.i65, ptr %advertising, align 4
  %13 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.end.if.end22_crit_edge, label %if.then15

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or.i66 = or i32 %12, 24576
  %14 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i66, ptr %advertising, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end.if.end22_crit_edge
  %15 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %if.end22.if.end39_crit_edge, label %if.then25

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %advertising, align 4
  %and.i67.sink = xor i32 %18, 16384
  store i32 %and.i67.sink, ptr %advertising, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then25, %if.end22.if.end39_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %phy_config_aneg = getelementptr i8, ptr %netdev, i32 3084
  %21 = ptrtoint ptr %phy_config_aneg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_config_aneg, align 4
  %call42 = tail call i32 %22(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call42, %if.then41 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_get_strings(ptr nocapture noundef readonly %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3428
  %0 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp243.not = icmp eq i32 %1, 0
  br i1 %cmp243.not, label %for.cond1.preheader.for.cond11.preheader_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data.addr.041 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [43 x %struct.xgbe_stats], ptr @xgbe_gstring_stats, i32 0, i32 %i.042
  %2 = call ptr @memcpy(ptr %data.addr.041, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %data.addr.041, i32 32
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond11.preheader:                             ; preds = %for.body3.for.cond11.preheader_crit_edge, %for.cond1.preheader.for.cond11.preheader_crit_edge
  %data.addr.1.lcssa = phi ptr [ %add.ptr, %for.cond1.preheader.for.cond11.preheader_crit_edge ], [ %add.ptr7, %for.body3.for.cond11.preheader_crit_edge ]
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %3 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1246.not = icmp eq i32 %4, 0
  br i1 %cmp1246.not, label %for.cond11.preheader.sw.epilog_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.sw.epilog_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.145 = phi i32 [ %inc9, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %data.addr.144 = phi ptr [ %add.ptr7, %for.body3.for.body3_crit_edge ], [ %add.ptr, %for.cond1.preheader.for.body3_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.addr.144, ptr noundef nonnull @.str.11, i32 noundef %i.145)
  %add.ptr5 = getelementptr i8, ptr %data.addr.144, i32 32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.12, i32 noundef %i.145)
  %add.ptr7 = getelementptr i8, ptr %data.addr.144, i32 64
  %inc9 = add nuw i32 %i.145, 1
  %5 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ring_count, align 4
  %cmp2 = icmp ult i32 %inc9, %6
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond11.preheader_crit_edge

for.body3.for.cond11.preheader_crit_edge:         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.preheader

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %i.248 = phi i32 [ %inc19, %for.body13.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %data.addr.247 = phi ptr [ %add.ptr17, %for.body13.for.body13_crit_edge ], [ %data.addr.1.lcssa, %for.cond11.preheader.for.body13_crit_edge ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data.addr.247, ptr noundef nonnull @.str.13, i32 noundef %i.248)
  %add.ptr15 = getelementptr i8, ptr %data.addr.247, i32 32
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15, ptr noundef nonnull @.str.14, i32 noundef %i.248)
  %add.ptr17 = getelementptr i8, ptr %data.addr.247, i32 64
  %inc19 = add nuw i32 %i.248, 1
  %7 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_ring_count, align 4
  %cmp12 = icmp ult i32 %inc19, %8
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.sw.epilog_crit_edge

for.body13.sw.epilog_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

sw.epilog:                                        ; preds = %for.body13.sw.epilog_crit_edge, %for.cond11.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %read_mmc_stats = getelementptr i8, ptr %netdev, i32 2988
  %0 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_mmc_stats, align 4
  tail call void %1(ptr noundef %add.ptr.i) #14
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3428
  %2 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp248.not = icmp eq i32 %3, 0
  br i1 %cmp248.not, label %for.cond1.preheader.for.cond12.preheader_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond12.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.046 = phi ptr [ %data, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %stat_offset = getelementptr [43 x %struct.xgbe_stats], ptr @xgbe_gstring_stats, i32 0, i32 %i.047, i32 2
  %4 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr, align 8
  %incdec.ptr = getelementptr i64, ptr %data.addr.046, i32 1
  %8 = ptrtoint ptr %data.addr.046 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %data.addr.046, align 8
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 43
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond12.preheader:                             ; preds = %for.body3.for.cond12.preheader_crit_edge, %for.cond1.preheader.for.cond12.preheader_crit_edge
  %data.addr.1.lcssa = phi ptr [ %incdec.ptr, %for.cond1.preheader.for.cond12.preheader_crit_edge ], [ %incdec.ptr8, %for.body3.for.cond12.preheader_crit_edge ]
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %9 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1351.not = icmp eq i32 %10, 0
  br i1 %cmp1351.not, label %for.cond12.preheader.for.end23_crit_edge, label %for.cond12.preheader.for.body14_crit_edge

for.cond12.preheader.for.body14_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body14

for.cond12.preheader.for.end23_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.150 = phi i32 [ %inc10, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %data.addr.149 = phi ptr [ %incdec.ptr8, %for.body3.for.body3_crit_edge ], [ %incdec.ptr, %for.cond1.preheader.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 107, i32 3, i32 %i.150
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx4, align 8
  %incdec.ptr5 = getelementptr i64, ptr %data.addr.149, i32 1
  %13 = ptrtoint ptr %data.addr.149 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %data.addr.149, align 8
  %arrayidx7 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 107, i32 4, i32 %i.150
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx7, align 8
  %incdec.ptr8 = getelementptr i64, ptr %data.addr.149, i32 2
  %16 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %incdec.ptr5, align 8
  %inc10 = add nuw i32 %i.150, 1
  %17 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_ring_count, align 4
  %cmp2 = icmp ult i32 %inc10, %18
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond12.preheader_crit_edge

for.body3.for.cond12.preheader_crit_edge:         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond12.preheader

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond12.preheader.for.body14_crit_edge
  %i.253 = phi i32 [ %inc22, %for.body14.for.body14_crit_edge ], [ 0, %for.cond12.preheader.for.body14_crit_edge ]
  %data.addr.252 = phi ptr [ %incdec.ptr20, %for.body14.for.body14_crit_edge ], [ %data.addr.1.lcssa, %for.cond12.preheader.for.body14_crit_edge ]
  %arrayidx16 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 107, i32 5, i32 %i.253
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx16, align 8
  %incdec.ptr17 = getelementptr i64, ptr %data.addr.252, i32 1
  %21 = ptrtoint ptr %data.addr.252 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %data.addr.252, align 8
  %arrayidx19 = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 107, i32 6, i32 %i.253
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx19, align 8
  %incdec.ptr20 = getelementptr i64, ptr %data.addr.252, i32 2
  %24 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %incdec.ptr17, align 8
  %inc22 = add nuw i32 %i.253, 1
  %25 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_ring_count, align 4
  %cmp13 = icmp ult i32 %inc22, %26
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.end23_crit_edge

for.body14.for.end23_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end23

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

for.end23:                                        ; preds = %for.body14.for.end23_crit_edge, %for.cond12.preheader.for.end23_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %stringset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3428
  %0 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_count, align 4
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_count, align 4
  %reass.add = add i32 %3, %1
  %reass.mul = shl i32 %reass.add, 1
  %add2 = add i32 %reass.mul, 43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %add2, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_rxnfc(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %rxnfc, ptr nocapture noundef readnone %rule_locs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cond = icmp eq i32 %1, 45
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %2 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_count, align 4
  %conv = zext i32 %3 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_get_rxfh(ptr nocapture noundef readonly %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %add.ptr.i, i32 0, i32 100, i32 %i.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 15
  %arrayidx1 = getelementptr i32, ptr %indir, i32 %i.015
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rss_key = getelementptr i8, ptr %netdev, i32 3680
  %3 = call ptr @memcpy(ptr %key, ptr %rss_key, i32 40)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %hfunc, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %hfunc, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_rxfh(ptr noundef %netdev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.15) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %set_rss_lookup_table = getelementptr i8, ptr %netdev, i32 3036
  %0 = ptrtoint ptr %set_rss_lookup_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_rss_lookup_table, align 4
  %call7 = tail call i32 %1(ptr noundef %add.ptr.i, ptr noundef nonnull %indir) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %key, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %set_rss_hash_key = getelementptr i8, ptr %netdev, i32 3032
  %2 = ptrtoint ptr %set_rss_hash_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_rss_hash_key, align 4
  %call14 = tail call i32 %3(ptr noundef %add.ptr.i, ptr noundef nonnull %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %if.end18 ], [ %call7, %if.then6.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgbe_get_channels(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %channels) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ch_cnt = getelementptr i8, ptr %netdev, i32 7008
  %0 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ch_cnt, align 8
  %rx_max_channel_count = getelementptr i8, ptr %netdev, i32 3420
  %2 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_channel_count, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %channel_irq_count = getelementptr i8, ptr %netdev, i32 2724
  %5 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_irq_count, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %tx_ch_cnt = getelementptr i8, ptr %netdev, i32 7012
  %8 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ch_cnt, align 4
  %tx_max_channel_count = getelementptr i8, ptr %netdev, i32 3416
  %10 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_channel_count, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %6)
  %tx_max_q_count = getelementptr i8, ptr %netdev, i32 3452
  %14 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_max_q_count, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = tail call i32 @llvm.umin.i32(i32 %7, i32 %16)
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 4
  %18 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_combined, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %sub = add i32 %7, -1
  %cond36 = select i1 %tobool.not, i32 0, i32 %sub
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 1
  %19 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond36, ptr %max_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  %sub39 = add i32 %16, -1
  %cond42 = select i1 %tobool37.not, i32 0, i32 %sub39
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 2
  %20 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond42, ptr %max_tx, align 4
  %new_rx_ring_count = getelementptr i8, ptr %netdev, i32 3448
  %21 = ptrtoint ptr %new_rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_rx_ring_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  br i1 %tobool43.not, label %cond.false45, label %entry.cond.end46_crit_edge

entry.cond.end46_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end46

cond.false45:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %23 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ring_count, align 4
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %entry.cond.end46_crit_edge
  %cond47 = phi i32 [ %24, %cond.false45 ], [ %22, %entry.cond.end46_crit_edge ]
  %new_tx_ring_count = getelementptr i8, ptr %netdev, i32 3444
  %25 = ptrtoint ptr %new_tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %new_tx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool48.not = icmp eq i32 %26, 0
  br i1 %tobool48.not, label %cond.false50, label %cond.end46.cond.end51_crit_edge

cond.end46.cond.end51_crit_edge:                  ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end51

cond.false50:                                     ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #16
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3428
  %27 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_ring_count, align 4
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.end46.cond.end51_crit_edge
  %cond52 = phi i32 [ %28, %cond.false50 ], [ %26, %cond.end46.cond.end51_crit_edge ]
  %29 = tail call i32 @llvm.umin.i32(i32 %cond47, i32 %cond52)
  %sub59 = sub i32 %cond47, %29
  %sub60 = sub i32 %cond52, %29
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %30 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %combined_count, align 4
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %31 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub59, ptr %rx_count, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %32 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub60, ptr %tx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_channels(ptr noundef %netdev, ptr nocapture noundef readonly %channels) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_ch_cnt = getelementptr i8, ptr %netdev, i32 7008
  %0 = ptrtoint ptr %rx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ch_cnt, align 8
  %rx_max_channel_count = getelementptr i8, ptr %netdev, i32 3420
  %2 = ptrtoint ptr %rx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_channel_count, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %channel_irq_count = getelementptr i8, ptr %netdev, i32 2724
  %5 = ptrtoint ptr %channel_irq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_irq_count, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %tx_ch_cnt = getelementptr i8, ptr %netdev, i32 7012
  %8 = ptrtoint ptr %tx_ch_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ch_cnt, align 4
  %tx_max_channel_count = getelementptr i8, ptr %netdev, i32 3416
  %10 = ptrtoint ptr %tx_max_channel_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_channel_count, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %tx_max_q_count = getelementptr i8, ptr %netdev, i32 3452
  %13 = ptrtoint ptr %tx_max_q_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_max_q_count, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %6)
  %17 = tail call i32 @llvm.umin.i32(i32 %7, i32 %16)
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 7
  %18 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %other_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.16) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %20 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %combined_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not = icmp eq i32 %21, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.17) #17
  %22 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %combined_count, align 4
  %rx_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %24 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_count.i, align 4
  %tx_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %26 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_count.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %23, i32 noundef %25, i32 noundef %27) #17
  br label %cleanup

if.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp37 = icmp ugt i32 %21, %17
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.18, i32 noundef %17) #17
  %28 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %combined_count, align 4
  %rx_count.i168 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %30 = ptrtoint ptr %rx_count.i168 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_count.i168, align 4
  %tx_count.i169 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %32 = ptrtoint ptr %tx_count.i169 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_count.i169, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %29, i32 noundef %31, i32 noundef %33) #17
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %34 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool40.not = icmp eq i32 %35, 0
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %land.lhs.true

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end39
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %36 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool41.not = icmp eq i32 %37, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end43_crit_edge, label %if.then42

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.19) #17
  %38 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %combined_count, align 4
  %40 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_count, align 4
  %42 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_count, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %39, i32 noundef %41, i32 noundef %43) #17
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end39.if.end43_crit_edge
  %add = add i32 %35, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp46 = icmp ugt i32 %add, %7
  br i1 %cmp46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.20, i32 noundef %add, i32 noundef %7) #17
  %44 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %combined_count, align 4
  %46 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_count, align 4
  %tx_count.i175 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %48 = ptrtoint ptr %tx_count.i175 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_count.i175, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %45, i32 noundef %47, i32 noundef %49) #17
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %tx_count53 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %50 = ptrtoint ptr %tx_count53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_count53, align 4
  %add54 = add i32 %51, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %16)
  %cmp55 = icmp ugt i32 %add54, %16
  br i1 %cmp55, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.21, i32 noundef %add54, i32 noundef %16) #17
  %52 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %combined_count, align 4
  %54 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_count, align 4
  %56 = ptrtoint ptr %tx_count53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_count53, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.22, i32 noundef %53, i32 noundef %55, i32 noundef %57) #17
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %new_rx_ring_count = getelementptr i8, ptr %netdev, i32 3448
  %58 = ptrtoint ptr %new_rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %new_rx_ring_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool67.not = icmp eq i32 %59, 0
  br i1 %tobool67.not, label %cond.false69, label %if.end60.cond.end70_crit_edge

if.end60.cond.end70_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end70

cond.false69:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring_count = getelementptr i8, ptr %netdev, i32 3436
  %60 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_count, align 4
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %if.end60.cond.end70_crit_edge
  %cond71 = phi i32 [ %61, %cond.false69 ], [ %59, %if.end60.cond.end70_crit_edge ]
  %new_tx_ring_count = getelementptr i8, ptr %netdev, i32 3444
  %62 = ptrtoint ptr %new_tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %new_tx_ring_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool72.not = icmp eq i32 %63, 0
  br i1 %tobool72.not, label %cond.false74, label %cond.end70.cond.end75_crit_edge

cond.end70.cond.end75_crit_edge:                  ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end75

cond.false74:                                     ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #16
  %tx_ring_count = getelementptr i8, ptr %netdev, i32 3428
  %64 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_ring_count, align 4
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.end70.cond.end75_crit_edge
  %cond76 = phi i32 [ %65, %cond.false74 ], [ %63, %cond.end70.cond.end75_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %cond71)
  %cmp77 = icmp eq i32 %add, %cond71
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %cond76)
  %cmp79 = icmp eq i32 %add54, %cond76
  %or.cond = select i1 %cmp77, i1 %cmp79, i1 false
  br i1 %or.cond, label %cond.end75.cleanup_crit_edge, label %if.end81

cond.end75.cleanup_crit_edge:                     ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end81:                                         ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %new_rx_ring_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %new_rx_ring_count, align 8
  %67 = ptrtoint ptr %new_tx_ring_count to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add54, ptr %new_tx_ring_count, align 4
  tail call void @xgbe_full_restart_dev(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %cond.end75.cleanup_crit_edge, %if.then56, %if.then47, %if.then42, %if.then38, %if.then34, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then38 ], [ -22, %if.then42 ], [ -22, %if.then47 ], [ -22, %if.then56 ], [ -22, %if.then34 ], [ 0, %cond.end75.cleanup_crit_edge ], [ 0, %if.end81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_get_ts_info(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ts_info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %netdev, i32 6568
  %1 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @ptp_clock_index(ptr noundef nonnull %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2.sink = phi i32 [ %call2, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2.sink, ptr %3, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 3
  %5 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 29179, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_get_module_info(ptr noundef %netdev, ptr noundef %modinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %module_info = getelementptr i8, ptr %netdev, i32 3096
  %0 = ptrtoint ptr %module_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module_info, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, ptr noundef %modinfo) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_get_module_eeprom(ptr noundef %netdev, ptr noundef %eeprom, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %module_eeprom = getelementptr i8, ptr %netdev, i32 3100
  %0 = ptrtoint ptr %module_eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module_eeprom, align 4
  %call1 = tail call i32 %1(ptr noundef %add.ptr.i, ptr noundef %eeprom, ptr noundef %data) #14
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr i8, ptr %netdev, i32 7228
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %address, align 4
  %conv = trunc i32 %1 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %phy_address, align 2
  %autoneg = getelementptr i8, ptr %netdev, i32 7232
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %autoneg, align 4
  %conv4 = trunc i32 %4 to i8
  %autoneg6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %autoneg6, align 1
  %speed = getelementptr i8, ptr %netdev, i32 7236
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %speed9 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed9, align 4
  %duplex = getelementptr i8, ptr %netdev, i32 7240
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %duplex, align 4
  %conv11 = trunc i32 %10 to i8
  %duplex13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %duplex13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %duplex13, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -17, ptr %port, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %link_modes15 = getelementptr i8, ptr %netdev, i32 7188
  %13 = call ptr @memcpy(ptr %link_modes, ptr %link_modes15, i32 12)
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %advertising21 = getelementptr i8, ptr %netdev, i32 7200
  %14 = call ptr @memcpy(ptr %advertising, ptr %advertising21, i32 12)
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2
  %lp_advertising26 = getelementptr i8, ptr %netdev, i32 7212
  %15 = call ptr @memcpy(ptr %lp_advertising, ptr %lp_advertising26, i32 12)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #6 align 64 {
entry:
  %advertising = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %advertising) #14
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !76
  %1 = getelementptr inbounds [3 x i32], ptr %advertising, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !76
  %3 = getelementptr inbounds [3 x i32], ptr %advertising, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !76
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed2, align 4
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %phy_address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_address, align 2
  %conv = zext i8 %8 to i32
  %address = getelementptr i8, ptr %netdev, i32 7228
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.not = icmp eq i32 %10, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.23, i32 noundef %conv) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp ult i8 %12, 2
  br i1 %switch, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv10 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.24, i32 noundef %conv10) #17
  br label %cleanup

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp26 = icmp eq i8 %12, 0
  br i1 %cmp26, label %if.then28, label %if.end22.do.body_crit_edge

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then28:                                        ; preds = %if.end22
  %phy_valid_speed = getelementptr i8, ptr %netdev, i32 3088
  %13 = ptrtoint ptr %phy_valid_speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_valid_speed, align 4
  %call29 = tail call zeroext i1 %14(ptr noundef %add.ptr.i, i32 noundef %6) #14
  br i1 %call29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.25, i32 noundef %6) #17
  br label %cleanup

if.end31:                                         ; preds = %if.then28
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp34.not = icmp eq i8 %16, 1
  br i1 %cmp34.not, label %if.end31.do.body_crit_edge, label %if.then36

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %conv33 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.26, i32 noundef %conv33) #17
  br label %cleanup

do.body:                                          ; preds = %if.end31.do.body_crit_edge, %if.end22.do.body_crit_edge
  %msg_enable = getelementptr i8, ptr %netdev, i32 7116
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end55_crit_edge, label %do.body43

do.body.do.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end55

do.body43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_link_ksettings.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_link_ksettings, %if.then48)) #14
          to label %do.end55 [label %if.then48], !srcloc !77

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #16
  %advertising49 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %link_modes50 = getelementptr i8, ptr %netdev, i32 7188
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_link_ksettings.__UNIQUE_ID_ddebug351, ptr noundef %netdev, ptr noundef nonnull @.str.30, i32 noundef 92, ptr noundef %advertising49, i32 noundef 92, ptr noundef %link_modes50) #14
  br label %do.end55

do.end55:                                         ; preds = %if.then48, %do.body43, %do.body.do.end55_crit_edge
  %advertising58 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %link_modes60 = getelementptr i8, ptr %netdev, i32 7188
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %advertising, ptr noundef %advertising58, ptr noundef %link_modes60, i32 noundef 92) #14
  %19 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp66 = icmp eq i8 %20, 1
  br i1 %cmp66, label %land.lhs.true68, label %do.end55.if.end73_crit_edge

do.end55.if.end73_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

land.lhs.true68:                                  ; preds = %do.end55
  %call.i = call i32 @_find_first_bit_be(ptr noundef nonnull %advertising, i32 noundef 92) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 92
  br i1 %cmp4.i, label %if.then72, label %land.lhs.true68.if.end73_crit_edge

land.lhs.true68.if.end73_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.31) #17
  br label %cleanup

if.end73:                                         ; preds = %land.lhs.true68.if.end73_crit_edge, %do.end55.if.end73_crit_edge
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autoneg, align 1
  %conv76 = zext i8 %22 to i32
  %autoneg78 = getelementptr i8, ptr %netdev, i32 7232
  %23 = ptrtoint ptr %autoneg78 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv76, ptr %autoneg78, align 4
  %speed80 = getelementptr i8, ptr %netdev, i32 7236
  %24 = ptrtoint ptr %speed80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %speed80, align 4
  %duplex82 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %duplex82 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %duplex82, align 4
  %conv83 = zext i8 %26 to i32
  %duplex85 = getelementptr i8, ptr %netdev, i32 7240
  %27 = ptrtoint ptr %duplex85 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv83, ptr %duplex85, align 4
  %advertising87 = getelementptr i8, ptr %netdev, i32 7200
  %28 = call ptr @memcpy(ptr %advertising87, ptr %advertising, i32 12)
  %29 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp93 = icmp eq i8 %29, 1
  %30 = ptrtoint ptr %advertising87 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %advertising87, align 4
  %and.i = and i32 %31, -65
  %masksel = select i1 %cmp93, i32 64, i32 0
  %storemerge = or i32 %and.i, %masksel
  store i32 %storemerge, ptr %advertising87, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end73.cleanup_crit_edge, label %if.then104

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then104:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %phy_config_aneg = getelementptr i8, ptr %netdev, i32 3084
  %34 = ptrtoint ptr %phy_config_aneg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_config_aneg, align 4
  %call106 = call i32 %35(ptr noundef %add.ptr.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end73.cleanup_crit_edge, %if.then72, %if.then36, %if.then30, %if.then18, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then18 ], [ -22, %if.then36 ], [ -22, %if.then72 ], [ -22, %if.then30 ], [ %call106, %if.then104 ], [ 0, %if.end73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %advertising) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_restart_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_full_restart_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @xgbe_ethtool_ops, !1, !"xgbe_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 822, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 405, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 408, i32 61}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 465, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 470, i32 22}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 479, i32 22}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 645, i32 22}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 652, i32 7}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 660, i32 7}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 668, i32 10}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 674, i32 10}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 279, i32 7}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 204, i32 18}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 206, i32 18}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 210, i32 18}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 212, i32 18}
!32 = !{ptr @xgbe_gstring_stats, !33, !"xgbe_gstring_stats", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 142, i32 32}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 554, i32 22}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 758, i32 7}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 765, i32 7}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 773, i32 7}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 782, i32 7}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 790, i32 7}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 798, i32 7}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 730, i32 21}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 342, i32 22}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 349, i32 22}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 356, i32 23}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 361, i32 23}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 367, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @xgbe_set_link_ksettings.__UNIQUE_ID_ddebug351, !59, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c", i32 378, i32 7}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i32 0, i32 33}
!76 = !{!"auto-init"}
!77 = !{i64 2148328243, i64 2148328248, i64 2148328261, i64 2148328305, i64 2148328339, i64 2148328360}
