; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.113 = type { ptr }
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
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.137 }
%union.anon.137 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_macsec_cfg = type { i32, i32, [32 x %struct.aq_macsec_txsc], i32, [32 x %struct.aq_macsec_rxsc], %struct.aq_macsec_common_stats }
%struct.aq_macsec_txsc = type { i32, i32, ptr, [4 x [128 x i8]], %struct.aq_macsec_tx_sc_stats, [4 x %struct.aq_macsec_tx_sa_stats] }
%struct.aq_macsec_tx_sc_stats = type { i64, i64, i64, i64 }
%struct.aq_macsec_tx_sa_stats = type { i64, i64, i64, i64 }
%struct.aq_macsec_rxsc = type { i32, i32, ptr, ptr, [4 x [128 x i8]], [4 x %struct.aq_macsec_rx_sa_stats] }
%struct.aq_macsec_rx_sa_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.aq_macsec_common_stats = type { %struct.anon.142, %struct.anon.143 }
%struct.anon.142 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.143 = type { i64, i64, i64, i64, i64, i64 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.123, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.123 = type { i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@aq_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @aq_ethtool_get_drvinfo, ptr @aq_ethtool_get_regs_len, ptr @aq_ethtool_get_regs, ptr @aq_ethtool_get_wol, ptr @aq_ethtool_set_wol, ptr @aq_get_msg_level, ptr @aq_set_msg_level, ptr @aq_ethtool_nway_reset, ptr @aq_ethtool_get_link, ptr null, ptr null, ptr null, ptr null, ptr @aq_ethtool_get_coalesce, ptr @aq_ethtool_set_coalesce, ptr @aq_get_ringparam, ptr @aq_set_ringparam, ptr null, ptr @aq_ethtool_get_pauseparam, ptr @aq_ethtool_set_pauseparam, ptr null, ptr @aq_ethtool_get_strings, ptr @aq_ethtool_set_phys_id, ptr @aq_ethtool_stats, ptr null, ptr null, ptr @aq_ethtool_get_priv_flags, ptr @aq_ethtool_set_priv_flags, ptr @aq_ethtool_get_sset_count, ptr @aq_ethtool_get_rxnfc, ptr @aq_ethtool_set_rxnfc, ptr null, ptr null, ptr @aq_ethtool_get_rss_key_size, ptr @aq_ethtool_get_rss_indir_size, ptr @aq_ethtool_get_rss, ptr @aq_ethtool_set_rss, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_ethtool_get_ts_info, ptr null, ptr null, ptr @aq_ethtool_get_eee, ptr @aq_ethtool_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @aq_ethtool_get_link_ksettings, ptr @aq_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr @aq_ethtool_get_phy_tunable, ptr @aq_ethtool_set_phy_tunable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atlantic\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@aq_ethtool_stat_names = internal constant { [22 x [32 x i8]], [160 x i8] } { [22 x [32 x i8]] [[32 x i8] c"InPackets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InUCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InMCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InBCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutPackets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutUCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutMCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutBCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InUCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutUCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InMCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutMCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InBCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutBCastOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InPacketsDma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutPacketsDma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InOctetsDma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutOctetsDma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InDroppedDma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TC%d \00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PTP \00", [27 x i8] zeroinitializer }, align 32
@aq_macsec_stat_names = internal constant { [22 x [32 x i8]], [160 x i8] } { [22 x [32 x i8]] [[32 x i8] c"MACSec InCtlPackets\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InTaggedMissPackets\00\00\00\00\00\00", [32 x i8] c"MACSec InUntaggedMissPackets\00\00\00\00", [32 x i8] c"MACSec InNotagPackets\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InUntaggedPackets\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InBadTagPackets\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InNoSciPackets\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InUnknownSciPackets\00\00\00\00\00\00", [32 x i8] c"MACSec InCtrlPortPassPackets\00\00\00\00", [32 x i8] c"MACSec InUnctrlPortPassPackets\00\00", [32 x i8] c"MACSec InCtrlPortFailPackets\00\00\00\00", [32 x i8] c"MACSec InUnctrlPortFailPackets\00\00", [32 x i8] c"MACSec InTooLongPackets\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InIgpocCtlPackets\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InEccErrorPackets\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec InUnctrlHitDropRedir\00\00\00\00\00", [32 x i8] c"MACSec OutCtlPackets\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec OutUnknownSaPackets\00\00\00\00\00\00", [32 x i8] c"MACSec OutUntaggedPackets\00\00\00\00\00\00\00", [32 x i8] c"MACSec OutTooLong\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MACSec OutEccErrorPackets\00\00\00\00\00\00\00", [32 x i8] c"MACSec OutUnctrlHitDropRedir\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@aq_ethtool_priv_flag_names = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"DMASystemLoopback\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"PKTSystemLoopback\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"DMANetworkLoopback\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"PHYInternalLoopback\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"PHYExternalLoopback\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sQueue[%d] InPackets\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sQueue[%d] InJumboPackets\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%sQueue[%d] InLroPackets\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sQueue[%d] InErrors\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%sQueue[%d] AllocFails\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%sQueue[%d] SkbAllocFails\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sQueue[%d] Polls\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%sQueue[%d] OutPackets\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sQueue[%d] Restarts\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MACSecTXSC%d ProtectedPkts\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MACSecTXSC%d EncryptedPkts\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MACSecTXSC%d ProtectedOctets\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MACSecTXSC%d EncryptedOctets\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MACSecTXSC%dSA%d HitDropRedirect\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MACSecTXSC%dSA%d Protected2Pkts\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MACSecTXSC%dSA%d ProtectedPkts\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MACSecTXSC%dSA%d EncryptedPkts\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MACSecRXSC%dSA%d UntaggedHitPkts\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MACSecRXSC%dSA%d CtrlHitDrpRedir\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MACSecRXSC%dSA%d NotUsingSa\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MACSecRXSC%dSA%d UnusedSa\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MACSecRXSC%dSA%d NotValidPkts\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MACSecRXSC%dSA%d InvalidPkts\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MACSecRXSC%dSA%d OkPkts\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MACSecRXSC%dSA%d LatePkts\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MACSecRXSC%dSA%d DelayedPkts\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MACSecRXSC%dSA%d UncheckedPkts\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MACSecRXSC%dSA%d ValidatedOctets\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MACSecRXSC%dSA%d DecryptedOctets\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Can't enable more than one loopback simultaneously\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 65535]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"aq_ethtool_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 979, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 226, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 229, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 232, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"aq_ethtool_stat_names\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 67, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 267, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 293, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"aq_macsec_stat_names\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 108, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"aq_ethtool_priv_flag_names\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 163, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 93, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 94, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 95, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 96, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 97, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 98, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 99, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 103, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 104, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 134, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 135, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 136, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 137, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 141, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 142, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 143, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 144, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 148, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 149, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 150, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 151, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 152, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 153, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 154, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 155, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 156, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 157, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 158, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 159, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [55 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 909, i32 21 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @aq_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aq_ethtool_stat_names, ptr @.str.3, ptr @.str.4, ptr @aq_macsec_stat_names, ptr @aq_ethtool_priv_flag_names, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ethtool_stat_names to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_macsec_stat_names to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_ethtool_priv_flag_names to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ethtool_get_drvinfo(ptr noundef %ndev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_get_fw_version(ptr noundef %add.ptr.i) #11
  %call2 = tail call i32 @aq_nic_get_regs_count(ptr noundef %add.ptr.i) #11
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call3 = tail call i32 @strlcat(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %shr = lshr i32 %call1, 24
  %shr5 = lshr i32 %call1, 16
  %and = and i32 %shr5, 255
  %and6 = and i32 %call1, 65535
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %and, i32 noundef %and6)
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  %init_name.i.i = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str.2, %entry.cond.end_crit_edge ], [ %5, %if.end.i.i ], [ %3, %cond.true.cond.end_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call10 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %cond, i32 noundef 32) #11
  %call11 = tail call fastcc i32 @aq_ethtool_n_stats(ptr noundef %ndev)
  %n_stats = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 8
  %6 = ptrtoint ptr %n_stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %n_stats, align 4
  %testinfo_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 9
  %7 = ptrtoint ptr %testinfo_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %testinfo_len, align 4
  %regdump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 11
  %8 = ptrtoint ptr %regdump_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %regdump_len, align 4
  %eedump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 10
  %9 = ptrtoint ptr %eedump_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %eedump_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_regs_len(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_get_regs_count(ptr noundef %add.ptr.i) #11
  %mul = shl i32 %call1, 2
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ethtool_get_regs(ptr noundef %ndev, ptr noundef %regs, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_get_regs_count(ptr noundef %add.ptr.i) #11
  %mul = shl i32 %call1, 2
  %0 = call ptr @memset(ptr %p, i32 0, i32 %mul)
  %call2 = tail call i32 @aq_nic_get_regs(ptr noundef %add.ptr.i, ptr noundef %regs, ptr noundef %p) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ethtool_get_wol(ptr noundef %ndev, ptr nocapture noundef writeonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wol2 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 15
  %1 = ptrtoint ptr %wol2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wol2, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_wol(ptr noundef %ndev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and = and i32 %3, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wol3 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 15
  %4 = ptrtoint ptr %wol3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %wol3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6 = icmp ne i32 %3, 0
  %call8 = tail call i32 @device_set_wakeup_enable(ptr noundef %1, i1 noundef zeroext %tobool6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq_get_msg_level(ptr nocapture noundef readonly %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @aq_set_msg_level(ptr nocapture noundef writeonly %ndev, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_nway_reset(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr i8, ptr %ndev, i32 2500
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %renegotiate = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %renegotiate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %renegotiate, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !97

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fwreq_mutex = getelementptr i8, ptr %ndev, i32 3676
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %renegotiate7 = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %renegotiate7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %renegotiate7, align 4
  %aq_hw = getelementptr i8, ptr %ndev, i32 2472
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  %call8 = tail call i32 %9(ptr noundef %11) #11
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call8, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_link(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ethtool_op_get_link(ptr noundef %ndev) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_coalesce(ptr noundef %ndev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 7
  %0 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %itr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 1, label %entry.if.then_crit_edge
    i32 65535, label %entry.if.then_crit_edge21
  ]

entry.if.then_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge21
  %rx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 8
  %3 = ptrtoint ptr %rx_itr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rx_itr, align 8
  %conv = zext i16 %4 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %rx_coalesce_usecs, align 4
  %tx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %tx_itr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_itr, align 2
  %conv4 = zext i16 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_coalesce_usecs5 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_coalesce_usecs5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink20 = phi i32 [ 0, %if.else ], [ %conv4, %if.then ]
  %.sink19 = phi i32 [ 1, %if.else ], [ 0, %if.then ]
  %tx_coalesce_usecs6 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %9 = ptrtoint ptr %tx_coalesce_usecs6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink20, ptr %tx_coalesce_usecs6, align 4
  %rx_max_coalesced_frames7 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %10 = ptrtoint ptr %rx_max_coalesced_frames7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink19, ptr %rx_max_coalesced_frames7, align 4
  %tx_max_coalesced_frames8 = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %11 = ptrtoint ptr %tx_max_coalesced_frames8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink19, ptr %tx_max_coalesced_frames8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_coalesce(ptr noundef %ndev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %0 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %2 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp ugt i32 %3, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %lnot.ext)
  %cmp4 = icmp eq i32 %1, %lnot.ext
  br i1 %cmp4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  %lnot.ext10 = zext i1 %tobool8.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lnot.ext10)
  %cmp11 = icmp eq i32 %3, %lnot.ext10
  br i1 %cmp11, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %5)
  %cmp15 = icmp ugt i32 %5, 1022
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %7)
  %cmp18 = icmp ugt i32 %7, 1022
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp18
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 7
  %8 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %itr, align 4
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv = trunc i32 %10 to i16
  %rx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 8
  %11 = ptrtoint ptr %rx_itr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %rx_itr, align 8
  %12 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv23 = trunc i32 %13 to i16
  %tx_itr = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 9
  %14 = ptrtoint ptr %tx_itr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv23, ptr %tx_itr, align 2
  %call24 = tail call i32 @aq_nic_update_interrupt_moderation_settings(ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end20 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_get_ringparam(ptr noundef %ndev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %rxds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %rxds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxds, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_pending, align 4
  %txds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %txds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txds, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %5 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_pending, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1, align 8
  %rxds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %rxds_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxds_max, align 8
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %10 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_max_pending, align 4
  %11 = load ptr, ptr %call1, align 8
  %txds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %txds_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txds_max, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %14 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_max_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_set_ringparam(ptr noundef %ndev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 8
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.err_exit_crit_edge

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_exit

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.err_exit_crit_edge

lor.lhs.false.err_exit_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_exit

if.end:                                           ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_close(ptr noundef %ndev) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %rxds_min = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rxds_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxds_min, align 8
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11)
  %rxds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 2
  %13 = ptrtoint ptr %rxds to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rxds, align 8
  %rxds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %rxds_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxds_max, align 8
  %16 = tail call i32 @llvm.umin.i32(i32 %12, i32 %15)
  %add = add i32 %16, 7
  %and = and i32 %add, -8
  %17 = ptrtoint ptr %rxds to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %rxds, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %18 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_pending, align 4
  %txds_min = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %txds_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txds_min, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21)
  %txds = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 3
  %23 = ptrtoint ptr %txds to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %txds, align 4
  %txds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %txds_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txds_max, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %22, i32 %25)
  %add31 = add i32 %26, 7
  %and32 = and i32 %add31, -8
  %27 = ptrtoint ptr %txds to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and32, ptr %txds, align 4
  %call34 = tail call i32 @aq_nic_realloc_vectors(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp ne i32 %call34, 0
  %brmerge = select i1 %tobool35.not, i1 true, i1 %tobool.i.not
  br i1 %brmerge, label %if.end5.err_exit_crit_edge, label %if.then39

if.end5.err_exit_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_exit

if.then39:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 @dev_open(ptr noundef %ndev, ptr noundef null) #11
  br label %err_exit

err_exit:                                         ; preds = %if.then39, %if.end5.err_exit_crit_edge, %lor.lhs.false.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call34, %if.end5.err_exit_crit_edge ], [ %call40, %if.then39 ], [ -95, %lor.lhs.false.err_exit_crit_edge ], [ -95, %entry.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @aq_ethtool_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fc1 = getelementptr i8, ptr %ndev, i32 2560
  %0 = ptrtoint ptr %fc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc1, align 8
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %autoneg, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %rx_pause, align 4
  %and3 = and i32 %1, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and3, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_pauseparam(ptr noundef %ndev, ptr nocapture noundef readonly %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr i8, ptr %ndev, i32 2500
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %set_flow_control = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %set_flow_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_flow_control, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %aq_hw5 = getelementptr i8, ptr %ndev, i32 2472
  %8 = ptrtoint ptr %aq_hw5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw5, align 8
  %aq_nic_cfg6 = getelementptr inbounds %struct.aq_hw_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aq_nic_cfg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_nic_cfg6, align 8
  %fc7 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %fc7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc7, align 8
  %and = and i32 %13, -3
  %masksel = select i1 %tobool3.not, i32 0, i32 2
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %fc7, align 8
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %14 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp ne i32 %15, 0
  %aq_hw18 = getelementptr i8, ptr %ndev, i32 2472
  %16 = ptrtoint ptr %aq_hw18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw18, align 8
  %aq_nic_cfg19 = getelementptr inbounds %struct.aq_hw_s, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %aq_nic_cfg19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_nic_cfg19, align 8
  %fc20 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %fc20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc20, align 8
  %and22 = and i32 %21, -2
  %masksel40 = zext i1 %tobool10.not to i32
  %and22.sink = or i32 %and22, %masksel40
  store i32 %and22.sink, ptr %fc20, align 8
  %fwreq_mutex = getelementptr i8, ptr %ndev, i32 3676
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %22 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_fw_ops, align 4
  %set_flow_control25 = getelementptr inbounds %struct.aq_fw_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %set_flow_control25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_flow_control25, align 4
  %aq_hw26 = getelementptr i8, ptr %ndev, i32 2472
  %26 = ptrtoint ptr %aq_hw26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aq_hw26, align 8
  %call27 = tail call i32 %25(ptr noundef %27) #11
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end2 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ethtool_get_strings(ptr noundef %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %tc_string = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb189
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc_string) #11
  %1 = ptrtoint ptr %tc_string to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %tc_string, align 8
  %2 = call ptr @memcpy(ptr %data, ptr @aq_ethtool_stat_names, i32 704)
  %add.ptr = getelementptr i8, ptr %data, i32 704
  %tcs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 31
  %3 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp299.not = icmp eq i8 %4, 0
  br i1 %cmp299.not, label %sw.bb.for.end40_crit_edge, label %for.body.lr.ph

sw.bb.for.end40_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.body.lr.ph:                                   ; preds = %sw.bb
  %is_qos = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 25
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 4
  %tc_mode = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %for.body.lr.ph
  %tc.0301 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %p.0300 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %p.1.lcssa, %for.inc38.for.body_crit_edge ]
  %5 = ptrtoint ptr %is_qos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_qos, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tc_string, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %tc.0301)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6295.not = icmp eq i32 %8, 0
  br i1 %cmp6295.not, label %if.end.for.inc38_crit_edge, label %if.end.for.cond9.preheader_crit_edge

if.end.for.cond9.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond9.preheader

if.end.for.inc38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

for.cond9.preheader:                              ; preds = %for.cond9.preheader.for.cond9.preheader_crit_edge, %if.end.for.cond9.preheader_crit_edge
  %p.1297 = phi ptr [ %add.ptr31.1, %for.cond9.preheader.for.cond9.preheader_crit_edge ], [ %p.0300, %if.end.for.cond9.preheader_crit_edge ]
  %i.0296 = phi i32 [ %inc36, %for.cond9.preheader.for.cond9.preheader_crit_edge ], [ 0, %if.end.for.cond9.preheader_crit_edge ]
  %9 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp eq i32 %10, 1
  %cond = select i1 %cmp14, i32 8, i32 4
  %mul = mul i32 %cond, %tc.0301
  %add = add i32 %mul, %i.0296
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.1297, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %tc_string, i32 noundef %add)
  %add.ptr17 = getelementptr i8, ptr %p.1297, i32 32
  %11 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14.1 = icmp eq i32 %12, 1
  %cond.1 = select i1 %cmp14.1, i32 8, i32 4
  %mul.1 = mul i32 %cond.1, %tc.0301
  %add.1 = add i32 %mul.1, %i.0296
  %call16.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull %tc_string, i32 noundef %add.1)
  %add.ptr17.1 = getelementptr i8, ptr %p.1297, i32 64
  %13 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14.2 = icmp eq i32 %14, 1
  %cond.2 = select i1 %cmp14.2, i32 8, i32 4
  %mul.2 = mul i32 %cond.2, %tc.0301
  %add.2 = add i32 %mul.2, %i.0296
  %call16.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.1, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %tc_string, i32 noundef %add.2)
  %add.ptr17.2 = getelementptr i8, ptr %p.1297, i32 96
  %15 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14.3 = icmp eq i32 %16, 1
  %cond.3 = select i1 %cmp14.3, i32 8, i32 4
  %mul.3 = mul i32 %cond.3, %tc.0301
  %add.3 = add i32 %mul.3, %i.0296
  %call16.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.2, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %tc_string, i32 noundef %add.3)
  %add.ptr17.3 = getelementptr i8, ptr %p.1297, i32 128
  %17 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp14.4 = icmp eq i32 %18, 1
  %cond.4 = select i1 %cmp14.4, i32 8, i32 4
  %mul.4 = mul i32 %cond.4, %tc.0301
  %add.4 = add i32 %mul.4, %i.0296
  %call16.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.3, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull %tc_string, i32 noundef %add.4)
  %add.ptr17.4 = getelementptr i8, ptr %p.1297, i32 160
  %19 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp14.5 = icmp eq i32 %20, 1
  %cond.5 = select i1 %cmp14.5, i32 8, i32 4
  %mul.5 = mul i32 %cond.5, %tc.0301
  %add.5 = add i32 %mul.5, %i.0296
  %call16.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.4, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %tc_string, i32 noundef %add.5)
  %add.ptr17.5 = getelementptr i8, ptr %p.1297, i32 192
  %21 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14.6 = icmp eq i32 %22, 1
  %cond.6 = select i1 %cmp14.6, i32 8, i32 4
  %mul.6 = mul i32 %cond.6, %tc.0301
  %add.6 = add i32 %mul.6, %i.0296
  %call16.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.5, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %tc_string, i32 noundef %add.6)
  %add.ptr17.6 = getelementptr i8, ptr %p.1297, i32 224
  %23 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp25 = icmp eq i32 %24, 1
  %cond27 = select i1 %cmp25, i32 8, i32 4
  %mul28 = mul i32 %cond27, %tc.0301
  %add29 = add i32 %mul28, %i.0296
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.6, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %tc_string, i32 noundef %add29)
  %add.ptr31 = getelementptr i8, ptr %p.1297, i32 256
  %25 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp25.1 = icmp eq i32 %26, 1
  %cond27.1 = select i1 %cmp25.1, i32 8, i32 4
  %mul28.1 = mul i32 %cond27.1, %tc.0301
  %add29.1 = add i32 %mul28.1, %i.0296
  %call30.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr31, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %tc_string, i32 noundef %add29.1)
  %add.ptr31.1 = getelementptr i8, ptr %p.1297, i32 288
  %inc36 = add nuw i32 %i.0296, 1
  %27 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vecs, align 8
  %cmp6 = icmp ult i32 %inc36, %28
  br i1 %cmp6, label %for.cond9.preheader.for.cond9.preheader_crit_edge, label %for.cond9.preheader.for.inc38_crit_edge

for.cond9.preheader.for.inc38_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

for.cond9.preheader.for.cond9.preheader_crit_edge: ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.inc38:                                        ; preds = %for.cond9.preheader.for.inc38_crit_edge, %if.end.for.inc38_crit_edge
  %p.1.lcssa = phi ptr [ %p.0300, %if.end.for.inc38_crit_edge ], [ %add.ptr31.1, %for.cond9.preheader.for.inc38_crit_edge ]
  %inc39 = add nuw nsw i32 %tc.0301, 1
  %29 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tcs, align 4
  %conv = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc39, %conv
  br i1 %cmp, label %for.inc38.for.body_crit_edge, label %for.inc38.for.end40_crit_edge

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end40

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %sw.bb.for.end40_crit_edge
  %p.0.lcssa = phi ptr [ %add.ptr, %sw.bb.for.end40_crit_edge ], [ %p.1.lcssa, %for.inc38.for.end40_crit_edge ]
  %aq_ptp = getelementptr i8, ptr %ndev, i32 3772
  %31 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aq_ptp, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %for.end40.if.end95_crit_edge, label %if.then42

for.end40.if.end95_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then42:                                        ; preds = %for.end40
  %call43 = call i32 @aq_ptp_get_ring_cnt(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %call44 = call i32 @aq_ptp_get_ring_cnt(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %tc_mode45 = getelementptr i8, ptr %ndev, i32 2596
  %33 = ptrtoint ptr %tc_mode45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tc_mode45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  %..i = select i1 %cmp.i, i32 8, i32 16
  %35 = call ptr @memcpy(ptr %tc_string, ptr @.str.4, i32 5)
  %36 = call i32 @llvm.smax.i32(i32 %call43, i32 %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp53309 = icmp sgt i32 %36, 0
  br i1 %cmp53309, label %if.then42.for.cond56.preheader_crit_edge, label %if.then42.if.end95_crit_edge

if.then42.if.end95_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then42.for.cond56.preheader_crit_edge:         ; preds = %if.then42
  br label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.inc92.for.cond56.preheader_crit_edge, %if.then42.for.cond56.preheader_crit_edge
  %p.4312 = phi ptr [ %p.7, %for.inc92.for.cond56.preheader_crit_edge ], [ %p.0.lcssa, %if.then42.for.cond56.preheader_crit_edge ]
  %i.1310 = phi i32 [ %inc93, %for.inc92.for.cond56.preheader_crit_edge ], [ 0, %if.then42.for.cond56.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1310)
  %tobool62.not = icmp eq i32 %i.1310, 0
  %spec.select = select i1 %tobool62.not, i32 %..i, i32 31
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.4312, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68 = getelementptr i8, ptr %p.4312, i32 32
  %call67.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.1 = getelementptr i8, ptr %p.4312, i32 64
  %call67.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.1, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.2 = getelementptr i8, ptr %p.4312, i32 96
  %call67.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.2, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.3 = getelementptr i8, ptr %p.4312, i32 128
  %call67.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.3, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.4 = getelementptr i8, ptr %p.4312, i32 160
  %call67.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.4, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.5 = getelementptr i8, ptr %p.4312, i32 192
  %call67.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.5, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr68.6 = getelementptr i8, ptr %p.4312, i32 224
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1310, i32 %call44)
  %cmp72.not = icmp slt i32 %i.1310, %call44
  br i1 %cmp72.not, label %for.cond76.preheader, label %for.cond56.preheader.for.inc92_crit_edge

for.cond56.preheader.for.inc92_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc92

for.cond76.preheader:                             ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr68.6, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr88 = getelementptr i8, ptr %p.4312, i32 256
  %call87.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr88, i32 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %tc_string, i32 noundef %spec.select)
  %add.ptr88.1 = getelementptr i8, ptr %p.4312, i32 288
  br label %for.inc92

for.inc92:                                        ; preds = %for.cond76.preheader, %for.cond56.preheader.for.inc92_crit_edge
  %p.7 = phi ptr [ %add.ptr68.6, %for.cond56.preheader.for.inc92_crit_edge ], [ %add.ptr88.1, %for.cond76.preheader ]
  %inc93 = add nuw nsw i32 %i.1310, 1
  %exitcond.not = icmp eq i32 %inc93, %36
  br i1 %exitcond.not, label %for.inc92.if.end95_crit_edge, label %for.inc92.for.cond56.preheader_crit_edge

for.inc92.for.cond56.preheader_crit_edge:         ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond56.preheader

for.inc92.if.end95_crit_edge:                     ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.end95:                                         ; preds = %for.inc92.if.end95_crit_edge, %if.then42.if.end95_crit_edge, %for.end40.if.end95_crit_edge
  %p.8 = phi ptr [ %p.0.lcssa, %for.end40.if.end95_crit_edge ], [ %p.0.lcssa, %if.then42.if.end95_crit_edge ], [ %p.7, %for.inc92.if.end95_crit_edge ]
  %macsec_cfg = getelementptr i8, ptr %ndev, i32 3768
  %37 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %macsec_cfg, align 8
  %tobool96.not = icmp eq ptr %38, null
  br i1 %tobool96.not, label %if.end95.cleanup185_crit_edge, label %if.end98

if.end95.cleanup185_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

if.end98:                                         ; preds = %if.end95
  %39 = call ptr @memcpy(ptr %p.8, ptr @aq_macsec_stat_names, i32 704)
  %add.ptr99 = getelementptr i8, ptr %p.8, i32 704
  br label %for.body103

for.body103:                                      ; preds = %cleanup.for.body103_crit_edge, %if.end98
  %p.9323 = phi ptr [ %add.ptr99, %if.end98 ], [ %p.14, %cleanup.for.body103_crit_edge ]
  %i.2321 = phi i32 [ 0, %if.end98 ], [ %inc144, %cleanup.for.body103_crit_edge ]
  %40 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %macsec_cfg, align 8
  %txsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %41, i32 0, i32 1
  %div3.i = lshr i32 %i.2321, 5
  %arrayidx.i = getelementptr i32, ptr %txsc_idx_busy, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %44 = shl nuw i32 1, %i.2321
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool106.not = icmp eq i32 %45, 0
  br i1 %tobool106.not, label %for.body103.cleanup_crit_edge, label %for.body112.preheader

for.body103.cleanup_crit_edge:                    ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body112.preheader:                            ; preds = %for.body103
  %call114 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.9323, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %i.2321)
  %add.ptr115 = getelementptr i8, ptr %p.9323, i32 32
  %call114.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr115, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %i.2321)
  %add.ptr115.1 = getelementptr i8, ptr %p.9323, i32 64
  %call114.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr115.1, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %i.2321)
  %add.ptr115.2 = getelementptr i8, ptr %p.9323, i32 96
  %call114.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr115.2, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.2321)
  %add.ptr115.3 = getelementptr i8, ptr %p.9323, i32 128
  %46 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %macsec_cfg, align 8
  %tx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %47, i32 0, i32 2, i32 %i.2321, i32 1
  %48 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool127.not = icmp eq i32 %50, 0
  br i1 %tobool127.not, label %for.body112.preheader.for.inc140_crit_edge, label %for.body133.preheader

for.body112.preheader.for.inc140_crit_edge:       ; preds = %for.body112.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc140

for.body133.preheader:                            ; preds = %for.body112.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr115.3, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.2321, i32 noundef 0)
  %add.ptr136 = getelementptr i8, ptr %p.9323, i32 160
  %call135.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.2321, i32 noundef 0)
  %add.ptr136.1 = getelementptr i8, ptr %p.9323, i32 192
  %call135.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.1, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.2321, i32 noundef 0)
  %add.ptr136.2 = getelementptr i8, ptr %p.9323, i32 224
  %call135.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.2, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %i.2321, i32 noundef 0)
  %add.ptr136.3 = getelementptr i8, ptr %p.9323, i32 256
  br label %for.inc140

for.inc140:                                       ; preds = %for.body133.preheader, %for.body112.preheader.for.inc140_crit_edge
  %p.13 = phi ptr [ %add.ptr115.3, %for.body112.preheader.for.inc140_crit_edge ], [ %add.ptr136.3, %for.body133.preheader ]
  %51 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool127.not.1 = icmp eq i32 %53, 0
  br i1 %tobool127.not.1, label %for.inc140.for.inc140.1_crit_edge, label %for.body133.preheader.1

for.inc140.for.inc140.1_crit_edge:                ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc140.1

for.body133.preheader.1:                          ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #13
  %call135.1335 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.13, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.2321, i32 noundef 1)
  %add.ptr136.1336 = getelementptr i8, ptr %p.13, i32 32
  %call135.1.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.1336, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.2321, i32 noundef 1)
  %add.ptr136.1.1 = getelementptr i8, ptr %p.13, i32 64
  %call135.2.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.1.1, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.2321, i32 noundef 1)
  %add.ptr136.2.1 = getelementptr i8, ptr %p.13, i32 96
  %call135.3.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.2.1, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %i.2321, i32 noundef 1)
  %add.ptr136.3.1 = getelementptr i8, ptr %p.13, i32 128
  br label %for.inc140.1

for.inc140.1:                                     ; preds = %for.body133.preheader.1, %for.inc140.for.inc140.1_crit_edge
  %p.13.1 = phi ptr [ %p.13, %for.inc140.for.inc140.1_crit_edge ], [ %add.ptr136.3.1, %for.body133.preheader.1 ]
  %54 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool127.not.2 = icmp eq i32 %56, 0
  br i1 %tobool127.not.2, label %for.inc140.1.for.inc140.2_crit_edge, label %for.body133.preheader.2

for.inc140.1.for.inc140.2_crit_edge:              ; preds = %for.inc140.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc140.2

for.body133.preheader.2:                          ; preds = %for.inc140.1
  call void @__sanitizer_cov_trace_pc() #13
  %call135.2337 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.13.1, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.2321, i32 noundef 2)
  %add.ptr136.2338 = getelementptr i8, ptr %p.13.1, i32 32
  %call135.1.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.2338, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.2321, i32 noundef 2)
  %add.ptr136.1.2 = getelementptr i8, ptr %p.13.1, i32 64
  %call135.2.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.1.2, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.2321, i32 noundef 2)
  %add.ptr136.2.2 = getelementptr i8, ptr %p.13.1, i32 96
  %call135.3.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.2.2, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %i.2321, i32 noundef 2)
  %add.ptr136.3.2 = getelementptr i8, ptr %p.13.1, i32 128
  br label %for.inc140.2

for.inc140.2:                                     ; preds = %for.body133.preheader.2, %for.inc140.1.for.inc140.2_crit_edge
  %p.13.2 = phi ptr [ %p.13.1, %for.inc140.1.for.inc140.2_crit_edge ], [ %add.ptr136.3.2, %for.body133.preheader.2 ]
  %57 = ptrtoint ptr %tx_sa_idx_busy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %tx_sa_idx_busy, align 4
  %59 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool127.not.3 = icmp eq i32 %59, 0
  br i1 %tobool127.not.3, label %for.inc140.2.cleanup_crit_edge, label %for.body133.preheader.3

for.inc140.2.cleanup_crit_edge:                   ; preds = %for.inc140.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body133.preheader.3:                          ; preds = %for.inc140.2
  call void @__sanitizer_cov_trace_pc() #13
  %call135.3339 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.13.2, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %i.2321, i32 noundef 3)
  %add.ptr136.3340 = getelementptr i8, ptr %p.13.2, i32 32
  %call135.1.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.3340, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.2321, i32 noundef 3)
  %add.ptr136.1.3 = getelementptr i8, ptr %p.13.2, i32 64
  %call135.2.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.1.3, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %i.2321, i32 noundef 3)
  %add.ptr136.2.3 = getelementptr i8, ptr %p.13.2, i32 96
  %call135.3.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.2.3, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %i.2321, i32 noundef 3)
  %add.ptr136.3.3 = getelementptr i8, ptr %p.13.2, i32 128
  br label %cleanup

cleanup:                                          ; preds = %for.body133.preheader.3, %for.inc140.2.cleanup_crit_edge, %for.body103.cleanup_crit_edge
  %p.14 = phi ptr [ %p.9323, %for.body103.cleanup_crit_edge ], [ %p.13.2, %for.inc140.2.cleanup_crit_edge ], [ %add.ptr136.3.3, %for.body133.preheader.3 ]
  %inc144 = add nuw nsw i32 %i.2321, 1
  %exitcond341.not = icmp eq i32 %inc144, 32
  br i1 %exitcond341.not, label %cleanup.for.body149_crit_edge, label %cleanup.for.body103_crit_edge

cleanup.for.body103_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body103

cleanup.for.body149_crit_edge:                    ; preds = %cleanup
  br label %for.body149

for.body149:                                      ; preds = %cleanup179.for.body149_crit_edge, %cleanup.for.body149_crit_edge
  %p.15331 = phi ptr [ %p.19, %cleanup179.for.body149_crit_edge ], [ %p.14, %cleanup.for.body149_crit_edge ]
  %i.3329 = phi i32 [ %inc183, %cleanup179.for.body149_crit_edge ], [ 0, %cleanup.for.body149_crit_edge ]
  %60 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %macsec_cfg, align 8
  %rxsc_idx_busy = getelementptr inbounds %struct.aq_macsec_cfg, ptr %61, i32 0, i32 3
  %div3.i281 = lshr i32 %i.3329, 5
  %arrayidx.i282 = getelementptr i32, ptr %rxsc_idx_busy, i32 %div3.i281
  %62 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i282, align 4
  %64 = shl nuw i32 1, %i.3329
  %65 = and i32 %63, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool152.not = icmp eq i32 %65, 0
  br i1 %tobool152.not, label %for.body149.cleanup179_crit_edge, label %for.cond158.preheader

for.body149.cleanup179_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

for.cond158.preheader:                            ; preds = %for.body149
  %rx_sa_idx_busy = getelementptr %struct.aq_macsec_cfg, ptr %61, i32 0, i32 4, i32 %i.3329, i32 1
  br label %for.body161

for.body161:                                      ; preds = %for.inc176.for.body161_crit_edge, %for.cond158.preheader
  %p.16328 = phi ptr [ %p.15331, %for.cond158.preheader ], [ %p.18, %for.inc176.for.body161_crit_edge ]
  %sa.1326 = phi i32 [ 0, %for.cond158.preheader ], [ %inc177, %for.inc176.for.body161_crit_edge ]
  %div3.i286 = lshr i32 %sa.1326, 5
  %arrayidx.i287 = getelementptr i32, ptr %rx_sa_idx_busy, i32 %div3.i286
  %66 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx.i287, align 4
  %68 = shl nuw i32 1, %sa.1326
  %69 = and i32 %67, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool163.not = icmp eq i32 %69, 0
  br i1 %tobool163.not, label %for.body161.for.inc176_crit_edge, label %for.body169.preheader

for.body161.for.inc176_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc176

for.body169.preheader:                            ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #13
  %call171 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.16328, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172 = getelementptr i8, ptr %p.16328, i32 32
  %call171.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.1 = getelementptr i8, ptr %p.16328, i32 64
  %call171.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.1, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.2 = getelementptr i8, ptr %p.16328, i32 96
  %call171.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.2, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.3 = getelementptr i8, ptr %p.16328, i32 128
  %call171.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.3, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.4 = getelementptr i8, ptr %p.16328, i32 160
  %call171.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.4, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.5 = getelementptr i8, ptr %p.16328, i32 192
  %call171.6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.5, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.6 = getelementptr i8, ptr %p.16328, i32 224
  %call171.7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.6, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.7 = getelementptr i8, ptr %p.16328, i32 256
  %call171.8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.7, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.8 = getelementptr i8, ptr %p.16328, i32 288
  %call171.9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.8, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.9 = getelementptr i8, ptr %p.16328, i32 320
  %call171.10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.9, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.10 = getelementptr i8, ptr %p.16328, i32 352
  %call171.11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.10, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %i.3329, i32 noundef %sa.1326)
  %add.ptr172.11 = getelementptr i8, ptr %p.16328, i32 384
  br label %for.inc176

for.inc176:                                       ; preds = %for.body169.preheader, %for.body161.for.inc176_crit_edge
  %p.18 = phi ptr [ %p.16328, %for.body161.for.inc176_crit_edge ], [ %add.ptr172.11, %for.body169.preheader ]
  %inc177 = add nuw nsw i32 %sa.1326, 1
  %exitcond343.not = icmp eq i32 %inc177, 4
  br i1 %exitcond343.not, label %for.inc176.cleanup179_crit_edge, label %for.inc176.for.body161_crit_edge

for.inc176.for.body161_crit_edge:                 ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body161

for.inc176.cleanup179_crit_edge:                  ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179

cleanup179:                                       ; preds = %for.inc176.cleanup179_crit_edge, %for.body149.cleanup179_crit_edge
  %p.19 = phi ptr [ %p.15331, %for.body149.cleanup179_crit_edge ], [ %p.18, %for.inc176.cleanup179_crit_edge ]
  %inc183 = add nuw nsw i32 %i.3329, 1
  %exitcond344.not = icmp eq i32 %inc183, 32
  br i1 %exitcond344.not, label %cleanup179.cleanup185_crit_edge, label %cleanup179.for.body149_crit_edge

cleanup179.for.body149_crit_edge:                 ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body149

cleanup179.cleanup185_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup185

cleanup185:                                       ; preds = %cleanup179.cleanup185_crit_edge, %if.end95.cleanup185_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc_string) #11
  br label %sw.epilog

sw.bb189:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %70 = call ptr @memcpy(ptr %data, ptr @aq_ethtool_priv_flag_names, i32 160)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb189, %cleanup185, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_phys_id(ptr noundef %ndev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw, align 8
  %aq_fw_ops = getelementptr i8, ptr %ndev, i32 2500
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %led_control = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led_control, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwreq_mutex = getelementptr i8, ptr %ndev, i32 3676
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %state, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb4
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb4 ], [ 42, %if.end.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_fw_ops, align 4
  %led_control6 = getelementptr inbounds %struct.aq_fw_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %led_control6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led_control6, align 4
  %call7 = tail call i32 %10(ptr noundef %1, i32 noundef %.sink) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %call7, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_ethtool_stats(ptr noundef %ndev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @aq_ethtool_n_stats(ptr noundef %ndev)
  %mul = shl i32 %call1, 3
  %0 = call ptr @memset(ptr %data, i32 0, i32 %mul)
  %call2 = tail call ptr @aq_nic_get_stats(ptr noundef %add.ptr.i, ptr noundef %data) #11
  %call3 = tail call ptr @aq_ptp_get_stats(ptr noundef %add.ptr.i, ptr noundef %call2) #11
  %call4 = tail call ptr @aq_macsec_get_stats(ptr noundef %add.ptr.i, ptr noundef %call3) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq_ethtool_get_priv_flags(ptr nocapture noundef readonly %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr i8, ptr %ndev, i32 2600
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_priv_flags(ptr noundef %ndev, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %priv_flags2 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 30
  %0 = ptrtoint ptr %priv_flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 32
  br i1 %tobool.not, label %cond.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %entry
  %or = or i32 %1, %flags
  %and3 = and i32 %or, 31
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 1
  br i1 %cmp, label %if.then353, label %if.end354

if.then353:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.34) #14
  br label %cleanup

if.end354:                                        ; preds = %cond.false
  %2 = ptrtoint ptr %priv_flags2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %flags, ptr %priv_flags2, align 8
  %xor = xor i32 %1, %flags
  %and356 = and i32 %xor, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  br i1 %tobool357.not, label %if.else, label %if.then358

if.then358:                                       ; preds = %if.end354
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then358.cleanup_crit_edge, label %if.then360

if.then358.cleanup_crit_edge:                     ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then360:                                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_close(ptr noundef %ndev) #11
  %call361 = tail call i32 @dev_open(ptr noundef %ndev, ptr noundef null) #11
  br label %cleanup

if.else:                                          ; preds = %if.end354
  %and364 = and i32 %xor, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and364)
  %tobool365.not = icmp eq i32 %and364, 0
  br i1 %tobool365.not, label %if.else.cleanup_crit_edge, label %if.then366

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then366:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call367 = tail call i32 @aq_nic_set_loopback(ptr noundef %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then366, %if.else.cleanup_crit_edge, %if.then360, %if.then358.cleanup_crit_edge, %if.then353, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then353 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then360 ], [ 0, %if.then358.cleanup_crit_edge ], [ %call367, %if.then366 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_sset_count(ptr noundef %ndev, i32 noundef %stringset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %stringset, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @aq_ethtool_n_stats(ptr noundef %ndev)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %sw.default ], [ %call, %sw.bb ], [ 5, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_rxnfc(ptr noundef %ndev, ptr noundef %cmd, ptr noundef %rule_locs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 45, label %sw.bb
    i32 46, label %sw.bb3
    i32 47, label %sw.bb6
    i32 48, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vecs, align 8
  %conv = zext i32 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call zeroext i16 @aq_get_rxnfc_count_all_rules(ptr noundef %add.ptr.i) #11
  %conv5 = zext i16 %call4 to i32
  %6 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %6, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @aq_get_rxnfc_rule(ptr noundef %add.ptr.i, ptr noundef %cmd) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @aq_get_rxnfc_all_rules(ptr noundef %add.ptr.i, ptr noundef %cmd, ptr noundef %rule_locs) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_rxnfc(ptr noundef %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @aq_add_rxnfc_rule(ptr noundef %add.ptr.i, ptr noundef %cmd) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @aq_del_rxnfc_rule(ptr noundef %add.ptr.i, ptr noundef %cmd) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_rss_key_size(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq_ethtool_get_rss_indir_size(ptr nocapture noundef readnone %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_rss(ptr noundef %ndev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %indir, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36, i32 4, i32 %i.017
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx4 = getelementptr i32, ptr %indir, i32 %i.017
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body.if.end5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %for.body.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %key, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %hash_secret_key = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36, i32 3
  %4 = call ptr @memcpy(ptr %key, ptr %hash_secret_key, i32 40)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_rss(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %aq_rss = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36
  %indirection_table_size = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %indirection_table_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %indirection_table_size, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp ne ptr %indir, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp847 = icmp ne i16 %1, 0
  %or.cond = select i1 %tobool.not, i1 %cmp847, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv10 = trunc i32 %3 to i8
  %arrayidx12 = getelementptr %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36, i32 4, i32 %i.048
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv10, ptr %arrayidx12, align 1
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.if.end13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %for.body.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %key, null
  br i1 %tobool14.not, label %if.end13.if.end22_crit_edge, label %if.then15

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %hash_secret_key = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 36, i32 3
  %5 = call ptr @memcpy(ptr %hash_secret_key, ptr %key, i32 40)
  %aq_hw_ops = getelementptr i8, ptr %netdev, i32 2496
  %6 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw_ops, align 8
  %hw_rss_hash_set = getelementptr inbounds %struct.aq_hw_ops, ptr %7, i32 0, i32 30
  %8 = ptrtoint ptr %hw_rss_hash_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_rss_hash_set, align 4
  %aq_hw = getelementptr i8, ptr %netdev, i32 2472
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  %call18 = tail call i32 %9(ptr noundef %11, ptr noundef %aq_rss) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end22_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %aq_hw_ops23 = getelementptr i8, ptr %netdev, i32 2496
  %12 = ptrtoint ptr %aq_hw_ops23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw_ops23, align 8
  %hw_rss_set = getelementptr inbounds %struct.aq_hw_ops, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %hw_rss_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_rss_set, align 4
  %aq_hw24 = getelementptr i8, ptr %netdev, i32 2472
  %16 = ptrtoint ptr %aq_hw24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw24, align 8
  %call26 = tail call i32 %15(ptr noundef %17, ptr noundef %aq_rss) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end22 ], [ -95, %entry.cleanup_crit_edge ], [ %call18, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_ts_info(ptr noundef %ndev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @ethtool_op_get_ts_info(ptr noundef %ndev, ptr noundef %info) #11
  %aq_ptp = getelementptr i8, ptr %ndev, i32 3772
  %0 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_ptp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %so_timestamping, align 4
  %or = or i32 %3, 69
  store i32 %or, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4673, ptr %rx_filters, align 4
  %6 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_ptp, align 4
  %call5 = tail call ptr @aq_ptp_get_ptp_clock(ptr noundef %7) #11
  %call6 = tail call i32 @ptp_clock_index(ptr noundef %call5) #11
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %phc_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_eee(ptr noundef %ndev, ptr nocapture noundef %eee) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  %supported_rates = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #11
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported_rates) #11
  %1 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %supported_rates, align 4, !annotation !99
  %aq_fw_ops = getelementptr i8, ptr %ndev, i32 2500
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %get_eee_rate = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %get_eee_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eee_rate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwreq_mutex = getelementptr i8, ptr %ndev, i32 3676
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %get_eee_rate2 = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %get_eee_rate2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_eee_rate2, align 4
  %aq_hw = getelementptr i8, ptr %ndev, i32 2472
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  %call3 = call i32 %9(ptr noundef %11, ptr noundef nonnull %rate, ptr noundef nonnull %supported_rates) #11
  call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %supported_rates to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %supported_rates, align 4
  %and.i = shl i32 %13, 3
  %14 = and i32 %and.i, 4096
  %and1.i = lshr i32 %13, 7
  %15 = and i32 %and1.i, 32
  %16 = or i32 %15, %14
  %and6.i = lshr i32 %13, 10
  %17 = and i32 %and6.i, 8
  %18 = or i32 %16, %17
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 1
  %19 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %supported, align 4
  %eee_speeds = getelementptr i8, ptr %ndev, i32 2796
  %20 = ptrtoint ptr %eee_speeds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eee_speeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool8.not = icmp eq i32 %21, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 2
  %22 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %advertised, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  %and.i38 = shl i32 %24, 3
  %25 = and i32 %and.i38, 4096
  %and1.i39 = lshr i32 %24, 7
  %26 = and i32 %and1.i39, 32
  %27 = or i32 %26, %25
  %and6.i40 = lshr i32 %24, 10
  %28 = and i32 %and6.i40, 8
  %29 = or i32 %27, %28
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 3
  %30 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lp_advertised, align 4
  %advertised13 = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 2
  %31 = ptrtoint ptr %advertised13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %advertised13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool14 = icmp ne i32 %32, 0
  %lnot.ext = zext i1 %tobool14 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %33 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %lnot.ext, ptr %eee_enabled, align 4
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 6
  %34 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %lnot.ext, ptr %tx_lpi_enabled, align 4
  %and = and i32 %13, 15872
  %and17 = and i32 %and, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end11.cleanup_crit_edge, label %if.then19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 4
  %35 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %eee_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported_rates) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_eee(ptr noundef %ndev, ptr nocapture noundef readonly %eee) #0 align 64 {
entry:
  %rate = alloca i32, align 4
  %supported_rates = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #11
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported_rates) #11
  %1 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %supported_rates, align 4, !annotation !99
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %aq_fw_ops = getelementptr i8, ptr %ndev, i32 2500
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %get_eee_rate = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %get_eee_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eee_rate, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !97

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %set_eee_rate = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %set_eee_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_eee_rate, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !97

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %fwreq_mutex = getelementptr i8, ptr %ndev, i32 3676
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %8 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_fw_ops, align 4
  %get_eee_rate8 = getelementptr inbounds %struct.aq_fw_ops, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %get_eee_rate8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_eee_rate8, align 4
  %aq_hw = getelementptr i8, ptr %ndev, i32 2472
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %call9 = call i32 %11(ptr noundef %13, ptr noundef nonnull %rate, ptr noundef nonnull %supported_rates) #11
  call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %14 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %supported_rates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %supported_rates, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %storemerge = phi i32 [ %17, %if.then14 ], [ 0, %if.end12.if.end16_crit_edge ]
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %rate, align 4
  %19 = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 37
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %19, align 4
  call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #11
  %21 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aq_fw_ops, align 4
  %set_eee_rate19 = getelementptr inbounds %struct.aq_fw_ops, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %set_eee_rate19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_eee_rate19, align 4
  %25 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aq_hw, align 8
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %call21 = call i32 %24(ptr noundef %26, i32 noundef %28) #11
  call void @mutex_unlock(ptr noundef %fwreq_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end16 ], [ -95, %lor.rhs.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported_rates) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_get_link_ksettings(ptr noundef %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @aq_nic_get_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %cmd) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @aq_nic_get_link_speed(ptr noundef %add.ptr.i) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %speed, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_link_ksettings(ptr noundef %ndev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call i32 @aq_nic_set_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %cmd) #11
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq_ethtool_get_phy_tunable(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %is_media_detect = getelementptr i8, ptr %ndev, i32 2590
  %3 = ptrtoint ptr %is_media_detect to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_media_detect, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %conv = select i1 %tobool.not, i16 0, i16 6000
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %data, align 2
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %downshift_counter = getelementptr i8, ptr %ndev, i32 2592
  %6 = ptrtoint ptr %downshift_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %downshift_counter, align 8
  %conv4 = trunc i32 %7 to i8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_ethtool_set_phy_tunable(ptr noundef %ndev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %conv = zext i16 %4 to i32
  %call1 = tail call i32 @aq_nic_set_media_detect(ptr noundef %add.ptr.i, i32 noundef %conv) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %conv4 = zext i8 %6 to i32
  %call5 = tail call i32 @aq_nic_set_downshift(ptr noundef %add.ptr.i, i32 noundef %conv4) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %call5, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_get_fw_version(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_get_regs_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_ethtool_n_stats(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #11
  %vecs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 4
  %0 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vecs, align 8
  %mul = mul i32 %1, 9
  %tcs = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %call1, i32 0, i32 31
  %2 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tcs, align 4
  %conv = zext i8 %3 to i32
  %mul2 = mul i32 %mul, %conv
  %call3 = tail call i32 @aq_ptp_get_ring_cnt(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %mul4 = mul i32 %call3, 7
  %call5 = tail call i32 @aq_ptp_get_ring_cnt(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %mul6 = shl i32 %call5, 1
  %add7 = add i32 %mul2, 22
  %add = add i32 %add7, %mul4
  %add8 = add i32 %add, %mul6
  %macsec_cfg = getelementptr i8, ptr %ndev, i32 3768
  %4 = ptrtoint ptr %macsec_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %macsec_cfg, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @aq_macsec_tx_sc_cnt(ptr noundef %add.ptr.i) #11
  %call12 = tail call i32 @aq_macsec_tx_sa_cnt(ptr noundef %add.ptr.i) #11
  %call15 = tail call i32 @aq_macsec_rx_sa_cnt(ptr noundef %add.ptr.i) #11
  %mul16 = mul i32 %call15, 12
  %reass.add = add i32 %call12, %call9
  %reass.mul = shl i32 %reass.add, 2
  %add14 = add i32 %add8, 22
  %add17 = add i32 %add14, %mul16
  %add18 = add i32 %add17, %reass.mul
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n_stats.0 = phi i32 [ %add18, %if.then ], [ %add8, %entry.if.end_crit_edge ]
  ret i32 %n_stats.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_cfg(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_get_ring_cnt(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_macsec_tx_sc_cnt(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_macsec_tx_sa_cnt(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_macsec_rx_sa_cnt(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_get_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_update_interrupt_moderation_settings(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_realloc_vectors(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ptp_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_macsec_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_loopback(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @aq_get_rxnfc_count_all_rules(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_get_rxnfc_rule(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_get_rxnfc_all_rules(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_add_rxnfc_rule(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_del_rxnfc_rule(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ptp_get_ptp_clock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_get_link_speed(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_media_detect(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_set_downshift(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @aq_ethtool_ops, !1, !"aq_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 979, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 226, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 229, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 232, i32 53}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 267, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 293, i32 27}
!12 = !{ptr @aq_ethtool_stat_names, !13, !"aq_ethtool_stat_names", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 67, i32 19}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 93, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 94, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 95, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 96, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 97, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 98, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 99, i32 2}
!28 = distinct !{null, !29, !"aq_ethtool_queue_rx_stat_names", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 92, i32 27}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 103, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 104, i32 2}
!34 = distinct !{null, !35, !"aq_ethtool_queue_tx_stat_names", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 102, i32 27}
!36 = !{ptr @aq_macsec_stat_names, !37, !"aq_macsec_stat_names", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 108, i32 19}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 134, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 135, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 136, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 137, i32 2}
!46 = distinct !{null, !47, !"aq_macsec_txsc_stat_names", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 133, i32 27}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 141, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 142, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 143, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 144, i32 2}
!56 = distinct !{null, !57, !"aq_macsec_txsa_stat_names", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 140, i32 27}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 148, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 149, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 150, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 151, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 152, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 153, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 154, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 155, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 156, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 157, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 158, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 159, i32 2}
!82 = distinct !{null, !83, !"aq_macsec_rxsa_stat_names", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 147, i32 27}
!84 = !{ptr @aq_ethtool_priv_flag_names, !85, !"aq_ethtool_priv_flag_names", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 163, i32 19}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_ethtool.c", i32 909, i32 21}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i8 0, i8 2}
!99 = !{!"auto-init"}
