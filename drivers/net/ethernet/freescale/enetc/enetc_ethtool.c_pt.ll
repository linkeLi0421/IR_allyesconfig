; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.126 = type { i32, [32 x i8] }
%struct.anon.127 = type { i32, [32 x i8] }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
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
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.enetc_int_vector = type { ptr, ptr, ptr, i32, i32, i32, i16, i8, i8, [100 x i8], %struct.napi_struct, [32 x i8], %struct.dim, [24 x i8], [104 x i8], %struct.enetc_bdr, [0 x %struct.enetc_bdr] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.enetc_bdr = type { ptr, ptr, ptr, %union.anon.122, i16, i32, i32, i32, %union.anon.123, %union.anon.125, ptr, i32, [80 x i8], %struct.enetc_xdp_data, %struct.enetc_ring_stats, i32, i8, i8, ptr, i32, [68 x i8] }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%union.anon.125 = type { ptr }
%struct.enetc_xdp_data = type { %struct.xdp_rxq_info, ptr, i32, [120 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.enetc_ring_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.enetc_ndev_priv = type { ptr, ptr, ptr, i32, [2 x ptr], i16, i16, i16, i16, i16, i32, i32, ptr, [16 x ptr], [16 x ptr], ptr, %struct.psfp_cap, ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.sk_buff_head }
%struct.psfp_cap = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.114, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.114 = type { i32 }
%struct.enetc_cls_rule = type { %struct.ethtool_rx_flow_spec, i32 }
%struct.enetc_cmd_rfse = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@enetc_pf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 563, i32 0, ptr null, ptr @enetc_get_reglen, ptr @enetc_get_regs, ptr @enetc_get_wol, ptr @enetc_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_coalesce, ptr @enetc_set_coalesce, ptr @enetc_get_ringparam, ptr null, ptr null, ptr @enetc_get_pauseparam, ptr @enetc_set_pauseparam, ptr null, ptr @enetc_get_strings, ptr null, ptr @enetc_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_sset_count, ptr @enetc_get_rxnfc, ptr @enetc_set_rxnfc, ptr null, ptr null, ptr @enetc_get_rxfh_key_size, ptr @enetc_get_rxfh_indir_size, ptr @enetc_get_rxfh, ptr @enetc_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_link_ksettings, ptr @enetc_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@enetc_vf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 563, i32 0, ptr null, ptr @enetc_get_reglen, ptr @enetc_get_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_coalesce, ptr @enetc_set_coalesce, ptr @enetc_get_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_strings, ptr null, ptr @enetc_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_sset_count, ptr @enetc_get_rxnfc, ptr @enetc_set_rxnfc, ptr null, ptr null, ptr null, ptr @enetc_get_rxfh_indir_size, ptr @enetc_get_rxfh, ptr @enetc_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@enetc_si_regs = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 128, i32 132, i32 2048, i32 2052, i32 2064, i32 2068, i32 2072, i32 2076, i32 2080, i32 2304, i32 2308, i32 3624], [44 x i8] zeroinitializer }, align 32
@enetc_txbdr_regs = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 16, i32 20, i32 24, i32 28, i32 32, i32 160, i32 168, i32 172], [56 x i8] zeroinitializer }, align 32
@enetc_rxbdr_regs = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 32, i32 160, i32 168, i32 172], [52 x i8] zeroinitializer }, align 32
@enetc_port_regs = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 4, i32 24, i32 256, i32 260, i32 1544, i32 2304, i32 2308, i32 2368, i32 6148, i32 8224, i32 32776, i32 32788, i32 33536], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RxBDR[RBLENR] = %d!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TxBDR[TBLENR] = %d!\0A\00", [43 x i8] zeroinitializer }, align 32
@enetc_si_counters = internal constant { [24 x %struct.anon.126], [192 x i8] } { [24 x %struct.anon.126] [%struct.anon.126 { i32 768, [32 x i8] c"SI rx octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 776, [32 x i8] c"SI rx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 784, [32 x i8] c"SI rx u-cast frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 792, [32 x i8] c"SI rx m-cast frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 800, [32 x i8] c"SI tx octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 808, [32 x i8] c"SI tx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 816, [32 x i8] c"SI tx u-cast frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 824, [32 x i8] c"SI tx m-cast frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { i32 33152, [32 x i8] c"Rx ring  0 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 33664, [32 x i8] c"Rx ring  1 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 34176, [32 x i8] c"Rx ring  2 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 34688, [32 x i8] c"Rx ring  3 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 35200, [32 x i8] c"Rx ring  4 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 35712, [32 x i8] c"Rx ring  5 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 36224, [32 x i8] c"Rx ring  6 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 36736, [32 x i8] c"Rx ring  7 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 37248, [32 x i8] c"Rx ring  8 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 37760, [32 x i8] c"Rx ring  9 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 38272, [32 x i8] c"Rx ring 10 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 38784, [32 x i8] c"Rx ring 11 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 39296, [32 x i8] c"Rx ring 12 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 39808, [32 x i8] c"Rx ring 13 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 40320, [32 x i8] c"Rx ring 14 discarded frames\00\00\00\00\00" }, %struct.anon.126 { i32 40832, [32 x i8] c"Rx ring 15 discarded frames\00\00\00\00\00" }], [192 x i8] zeroinitializer }, align 32
@tx_ring_stats = internal constant { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"Tx ring %2d frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Tx ring %2d XDP frames\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Tx ring %2d XDP drops\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@rx_ring_stats = internal constant { [8 x [32 x i8]], [64 x i8] } { [8 x [32 x i8]] [[32 x i8] c"Rx ring %2d frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx ring %2d alloc errors\00\00\00\00\00\00\00\00", [32 x i8] c"Rx ring %2d XDP drops\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx ring %2d recycles\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx ring %2d recycle failures\00\00\00\00", [32 x i8] c"Rx ring %2d redirects\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx ring %2d redirect failures\00\00\00", [32 x i8] c"Rx ring %2d redirect S/G\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@enetc_port_counters = internal constant { [62 x %struct.anon.127], [552 x i8] } { [62 x %struct.anon.127] [%struct.anon.127 { i32 33024, [32 x i8] c"MAC rx ethernet octets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33040, [32 x i8] c"MAC rx alignment errors\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33048, [32 x i8] c"MAC rx valid pause frames\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33056, [32 x i8] c"MAC rx valid frames\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33064, [32 x i8] c"MAC rx fcs errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33072, [32 x i8] c"MAC rx VLAN frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33080, [32 x i8] c"MAC rx frame errors\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33088, [32 x i8] c"MAC rx unicast frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33096, [32 x i8] c"MAC rx multicast frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33104, [32 x i8] c"MAC rx broadcast frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33112, [32 x i8] c"MAC rx dropped packets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33120, [32 x i8] c"MAC rx packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33128, [32 x i8] c"MAC rx undersized packets\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33136, [32 x i8] c"MAC rx 64 byte packets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33144, [32 x i8] c"MAC rx 65-127 byte packets\00\00\00\00\00\00" }, %struct.anon.127 { i32 33152, [32 x i8] c"MAC rx 128-255 byte packets\00\00\00\00\00" }, %struct.anon.127 { i32 33160, [32 x i8] c"MAC rx 256-511 byte packets\00\00\00\00\00" }, %struct.anon.127 { i32 33168, [32 x i8] c"MAC rx 512-1023 byte packets\00\00\00\00" }, %struct.anon.127 { i32 33176, [32 x i8] c"MAC rx 1024-1522 byte packets\00\00\00" }, %struct.anon.127 { i32 33184, [32 x i8] c"MAC rx 1523 to max-octet packets" }, %struct.anon.127 { i32 33192, [32 x i8] c"MAC rx oversized packets\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33200, [32 x i8] c"MAC rx jabber packets\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33208, [32 x i8] c"MAC rx fragment packets\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33216, [32 x i8] c"MAC rx control packets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33224, [32 x i8] c"MAC rx fifo drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33280, [32 x i8] c"MAC tx ethernet octets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33288, [32 x i8] c"MAC tx octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33296, [32 x i8] c"MAC tx carrier sense errors\00\00\00\00\00" }, %struct.anon.127 { i32 33304, [32 x i8] c"MAC tx valid pause frames\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33312, [32 x i8] c"MAC tx frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33320, [32 x i8] c"MAC tx fcs errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33328, [32 x i8] c"MAC tx VLAN frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33336, [32 x i8] c"MAC tx frame errors\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33344, [32 x i8] c"MAC tx unicast frames\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33352, [32 x i8] c"MAC tx multicast frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33360, [32 x i8] c"MAC tx broadcast frames\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33376, [32 x i8] c"MAC tx packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33384, [32 x i8] c"MAC tx undersized packets\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33392, [32 x i8] c"MAC tx 64 byte packets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33400, [32 x i8] c"MAC tx 65-127 byte packets\00\00\00\00\00\00" }, %struct.anon.127 { i32 33408, [32 x i8] c"MAC tx 128-255 byte packets\00\00\00\00\00" }, %struct.anon.127 { i32 33416, [32 x i8] c"MAC tx 256-511 byte packets\00\00\00\00\00" }, %struct.anon.127 { i32 33424, [32 x i8] c"MAC tx 512-1023 byte packets\00\00\00\00" }, %struct.anon.127 { i32 33432, [32 x i8] c"MAC tx 1024-1522 byte packets\00\00\00" }, %struct.anon.127 { i32 33440, [32 x i8] c"MAC tx 1523 to max-octet packets" }, %struct.anon.127 { i32 33472, [32 x i8] c"MAC tx control packets\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33488, [32 x i8] c"MAC tx deferred packets\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33496, [32 x i8] c"MAC tx multiple collisions\00\00\00\00\00\00" }, %struct.anon.127 { i32 33504, [32 x i8] c"MAC tx single collisions\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33512, [32 x i8] c"MAC tx late collisions\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 33520, [32 x i8] c"MAC tx excessive collisions\00\00\00\00\00" }, %struct.anon.127 { i32 5760, [32 x i8] c"SI MAC nomatch u-cast discards\00\00" }, %struct.anon.127 { i32 5764, [32 x i8] c"SI MAC nomatch m-cast discards\00\00" }, %struct.anon.127 { i32 2064, [32 x i8] c"SI MAC nomatch b-cast discards\00\00" }, %struct.anon.127 { i32 6016, [32 x i8] c"SI VLAN nomatch u-cast discards\00" }, %struct.anon.127 { i32 6020, [32 x i8] c"SI VLAN nomatch m-cast discards\00" }, %struct.anon.127 { i32 6024, [32 x i8] c"SI VLAN nomatch b-cast discards\00" }, %struct.anon.127 { i32 2068, [32 x i8] c"SI pruning discarded frames\00\00\00\00\00" }, %struct.anon.127 { i32 1792, [32 x i8] c"ICM DR0 discarded frames\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 1800, [32 x i8] c"ICM DR1 discarded frames\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 1808, [32 x i8] c"ICM DR2 discarded frames\00\00\00\00\00\00\00\00" }, %struct.anon.127 { i32 1816, [32 x i8] c"ICM DR3 discarded frames\00\00\00\00\00\00\00\00" }], [552 x i8] zeroinitializer }, align 32
@enetc_get_rsshash.rsshash = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 254, i32 254, i32 254, i32 62, i32 254, i32 254, i32 254, i32 62, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 62, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ToS field is not supported and was ignored\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enetc_phc_index\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 49, i64 50]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 13, i64 18]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"enetc_pf_ethtool_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 755, i32 33 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"enetc_vf_ethtool_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 783, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"enetc_si_regs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 8, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"enetc_txbdr_regs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 15, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"enetc_rxbdr_regs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 21, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"enetc_port_regs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 27, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 580, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 585, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"enetc_si_counters\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 97, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"tx_ring_stats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 203, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"rx_ring_stats\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 192, i32 19 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"enetc_port_counters\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 127, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"rsshash\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 307, i32 19 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 371, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [56 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 666, i32 12 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @enetc_pf_ethtool_ops, ptr @enetc_vf_ethtool_ops, ptr @enetc_si_regs, ptr @enetc_txbdr_regs, ptr @enetc_rxbdr_regs, ptr @enetc_port_regs, ptr @.str, ptr @.str.1, ptr @enetc_si_counters, ptr @tx_ring_stats, ptr @rx_ring_stats, ptr @enetc_port_counters, ptr @enetc_get_rsshash.rsshash, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_pf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_si_regs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_txbdr_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_rxbdr_regs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_port_regs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_si_counters to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_ring_stats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ring_stats to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_port_counters to i32), i32 2232, i32 2784, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_get_rsshash.rsshash to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_set_rss_key(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.enetc_hw, ptr %hw, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %mul = shl i32 %i.04, 2
  %add = add nuw nsw i32 %mul, 5136
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %arrayidx = getelementptr i32, ptr %bytes, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !40
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @enetc_set_ethtool_ops(ptr nocapture noundef %ndev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.i.not, ptr @enetc_vf_ethtool_ops, ptr @enetc_pf_ethtool_ops
  %4 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enetc_get_reglen(ptr nocapture noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %2 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %3 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %add = add nuw nsw i32 %mul, 13
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %4 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_rx_rings, align 4
  %conv2 = zext i16 %5 to i32
  %mul3 = mul nuw nsw i32 %conv2, 11
  %add4 = add nuw nsw i32 %add, %mul3
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %7, null
  %8 = shl nuw nsw i32 %add4, 3
  %9 = add nuw nsw i32 %8, 112
  %mul6 = select i1 %tobool.not, i32 %8, i32 %9
  ret i32 %mul6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %regbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %hw1 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %2 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6109.not = icmp eq i16 %3, 0
  br i1 %cmp6109.not, label %for.cond5.preheader.for.cond26.preheader_crit_edge, label %for.cond5.preheader.for.cond9.preheader_crit_edge

for.cond5.preheader.for.cond9.preheader_crit_edge: ; preds = %for.cond5.preheader
  br label %for.cond9.preheader

for.cond5.preheader.for.cond26.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0105 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %buf.0104 = phi ptr [ %regbuf, %entry ], [ %incdec.ptr4, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x i32], ptr @enetc_si_regs, i32 0, i32 %i.0105
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.0104, i32 1
  %6 = ptrtoint ptr %buf.0104 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buf.0104, align 4
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %5
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !41
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %incdec.ptr4 = getelementptr i32, ptr %buf.0104, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr, align 4
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond9.preheader:                              ; preds = %for.inc23.for.cond9.preheader_crit_edge, %for.cond5.preheader.for.cond9.preheader_crit_edge
  %i.1111 = phi i32 [ %inc24, %for.inc23.for.cond9.preheader_crit_edge ], [ 0, %for.cond5.preheader.for.cond9.preheader_crit_edge ]
  %buf.1110 = phi ptr [ %incdec.ptr19, %for.inc23.for.cond9.preheader_crit_edge ], [ %incdec.ptr4, %for.cond5.preheader.for.cond9.preheader_crit_edge ]
  %mul = shl i32 %i.1111, 9
  %add = add nuw nsw i32 %mul, 32768
  br label %for.body12

for.cond26.preheader:                             ; preds = %for.inc23.for.cond26.preheader_crit_edge, %for.cond5.preheader.for.cond26.preheader_crit_edge
  %buf.1.lcssa = phi ptr [ %incdec.ptr4, %for.cond5.preheader.for.cond26.preheader_crit_edge ], [ %incdec.ptr19, %for.inc23.for.cond26.preheader_crit_edge ]
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %12 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp28115.not = icmp eq i16 %13, 0
  br i1 %cmp28115.not, label %for.cond26.preheader.for.end49_crit_edge, label %for.cond26.preheader.for.cond31.preheader_crit_edge

for.cond26.preheader.for.cond31.preheader_crit_edge: ; preds = %for.cond26.preheader
  br label %for.cond31.preheader

for.cond26.preheader.for.end49_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end49

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond9.preheader
  %j.0107 = phi i32 [ 0, %for.cond9.preheader ], [ %inc21, %for.body12.for.body12_crit_edge ]
  %buf.2106 = phi ptr [ %buf.1110, %for.cond9.preheader ], [ %incdec.ptr19, %for.body12.for.body12_crit_edge ]
  %arrayidx13 = getelementptr [10 x i32], ptr @enetc_txbdr_regs, i32 0, i32 %j.0107
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %add, %15
  %incdec.ptr15 = getelementptr i32, ptr %buf.2106, i32 1
  %16 = ptrtoint ptr %buf.2106 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add14, ptr %buf.2106, align 4
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 %add14
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #11, !srcloc !41
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %incdec.ptr19 = getelementptr i32, ptr %buf.2106, i32 2
  %21 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %incdec.ptr15, align 4
  %inc21 = add nuw nsw i32 %j.0107, 1
  %exitcond121.not = icmp eq i32 %inc21, 10
  br i1 %exitcond121.not, label %for.inc23, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.inc23:                                        ; preds = %for.body12
  %inc24 = add nuw nsw i32 %i.1111, 1
  %22 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %23 to i32
  %cmp6 = icmp ult i32 %inc24, %conv
  br i1 %cmp6, label %for.inc23.for.cond9.preheader_crit_edge, label %for.inc23.for.cond26.preheader_crit_edge

for.inc23.for.cond26.preheader_crit_edge:         ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond26.preheader

for.inc23.for.cond9.preheader_crit_edge:          ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond9.preheader

for.cond31.preheader:                             ; preds = %for.inc47.for.cond31.preheader_crit_edge, %for.cond26.preheader.for.cond31.preheader_crit_edge
  %i.2117 = phi i32 [ %inc48, %for.inc47.for.cond31.preheader_crit_edge ], [ 0, %for.cond26.preheader.for.cond31.preheader_crit_edge ]
  %buf.3116 = phi ptr [ %incdec.ptr43, %for.inc47.for.cond31.preheader_crit_edge ], [ %buf.1.lcssa, %for.cond26.preheader.for.cond31.preheader_crit_edge ]
  %mul35 = shl i32 %i.2117, 9
  %add36 = add nuw nsw i32 %mul35, 33024
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.cond31.preheader
  %j.1113 = phi i32 [ 0, %for.cond31.preheader ], [ %inc45, %for.body34.for.body34_crit_edge ]
  %buf.4112 = phi ptr [ %buf.3116, %for.cond31.preheader ], [ %incdec.ptr43, %for.body34.for.body34_crit_edge ]
  %arrayidx37 = getelementptr [11 x i32], ptr @enetc_rxbdr_regs, i32 0, i32 %j.1113
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %add36, %25
  %incdec.ptr39 = getelementptr i32, ptr %buf.4112, i32 1
  %26 = ptrtoint ptr %buf.4112 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add38, ptr %buf.4112, align 4
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 4
  %add.ptr41 = getelementptr i8, ptr %28, i32 %add38
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #11, !srcloc !41
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %incdec.ptr43 = getelementptr i32, ptr %buf.4112, i32 2
  %31 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %incdec.ptr39, align 4
  %inc45 = add nuw nsw i32 %j.1113, 1
  %exitcond122.not = icmp eq i32 %inc45, 11
  br i1 %exitcond122.not, label %for.inc47, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.inc47:                                        ; preds = %for.body34
  %inc48 = add nuw nsw i32 %i.2117, 1
  %32 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_rx_rings, align 4
  %conv27 = zext i16 %33 to i32
  %cmp28 = icmp ult i32 %inc48, %conv27
  br i1 %cmp28, label %for.inc47.for.cond31.preheader_crit_edge, label %for.inc47.for.end49_crit_edge

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end49

for.inc47.for.cond31.preheader_crit_edge:         ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond31.preheader

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %for.cond26.preheader.for.end49_crit_edge
  %buf.3.lcssa = phi ptr [ %buf.1.lcssa, %for.cond26.preheader.for.end49_crit_edge ], [ %incdec.ptr43, %for.inc47.for.end49_crit_edge ]
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %for.end49.cleanup_crit_edge, label %for.end49.for.body53_crit_edge

for.end49.for.body53_crit_edge:                   ; preds = %for.end49
  br label %for.body53

for.end49.cleanup_crit_edge:                      ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.end49.for.body53_crit_edge
  %i.3120 = phi i32 [ %inc62, %for.body53.for.body53_crit_edge ], [ 0, %for.end49.for.body53_crit_edge ]
  %buf.5119 = phi ptr [ %incdec.ptr60, %for.body53.for.body53_crit_edge ], [ %buf.3.lcssa, %for.end49.for.body53_crit_edge ]
  %arrayidx54 = getelementptr [14 x i32], ptr @enetc_port_regs, i32 0, i32 %i.3120
  %36 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %37, 65536
  %incdec.ptr56 = getelementptr i32, ptr %buf.5119, i32 1
  %38 = ptrtoint ptr %buf.5119 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add55, ptr %buf.5119, align 4
  %39 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1, align 4
  %add.ptr58 = getelementptr i8, ptr %40, i32 %add55
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #11, !srcloc !41
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %incdec.ptr60 = getelementptr i32, ptr %buf.5119, i32 2
  %43 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %incdec.ptr56, align 4
  %inc62 = add nuw nsw i32 %i.3120, 1
  %exitcond123.not = icmp eq i32 %inc62, 14
  br i1 %exitcond123.not, label %for.body53.cleanup_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body53

for.body53.cleanup_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body53.cleanup_crit_edge, %for.end49.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_wol(ptr nocapture noundef readonly %dev, ptr noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %3, ptr noundef %wol) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_wol(ptr noundef %dev, ptr noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %1, ptr noundef %wol) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5 = icmp ne i32 %3, 0
  %call6 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev4, i1 noundef zeroext %tobool5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ic, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %int_vector = getelementptr i8, ptr %ndev, i32 2320
  %0 = ptrtoint ptr %int_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_vector, align 4
  %tx_ictt = getelementptr i8, ptr %ndev, i32 2512
  %2 = ptrtoint ptr %tx_ictt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ictt, align 4
  %conv.i = zext i32 %3 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %mul.i) #14, !srcloc !43
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %mul.i, i64 %4, i32 0) #14, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div158.i.i2.i = lshr i64 %asmresult10.i.i.i.i, 28
  %conv1.i = trunc i64 %div158.i.i2.i to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 5
  %6 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1.i, ptr %tx_coalesce_usecs, align 4
  %rx_ictt = getelementptr inbounds %struct.enetc_int_vector, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %rx_ictt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_ictt, align 4
  %conv.i9 = zext i32 %8 to i64
  %mul.i10 = mul nuw nsw i64 %conv.i9, 1000000
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6067343680855748867, i64 %mul.i10) #14, !srcloc !43
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6067343680855748867, i64 %mul.i10, i64 %9, i32 0) #14, !srcloc !44
  %asmresult10.i.i.i.i11 = extractvalue { i64, i32 } %10, 0
  %div158.i.i2.i12 = lshr i64 %asmresult10.i.i.i.i11, 28
  %conv1.i13 = trunc i64 %div158.i.i2.i12 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 1
  %11 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1.i13, ptr %rx_coalesce_usecs, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 6
  %12 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %tx_max_coalesced_frames, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 2
  %13 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %rx_max_coalesced_frames, align 4
  %ic_mode = getelementptr i8, ptr %ndev, i32 2508
  %14 = ptrtoint ptr %ic_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ic_mode, align 4
  %and = and i32 %15, 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 10
  %16 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %use_adaptive_rx_coalesce, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_coalesce(ptr noundef %ndev, ptr nocapture noundef readonly %ic, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 5
  %0 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv.i = zext i32 %1 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 400000000
  %2 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i) #14, !srcloc !43
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i, i64 %2, i32 0) #14, !srcloc !44
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %div158.i.i2.i = lshr i64 %asmresult10.i.i.i.i, 18
  %conv1.i = trunc i64 %div158.i.i2.i to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv.i56 = zext i32 %5 to i64
  %mul.i57 = mul nuw nsw i64 %conv.i56, 400000000
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul.i57) #14, !srcloc !43
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul.i57, i64 %6, i32 0) #14, !srcloc !44
  %asmresult10.i.i.i.i58 = extractvalue { i64, i32 } %7, 0
  %div158.i.i2.i59 = lshr i64 %asmresult10.i.i.i.i58, 18
  %conv1.i60 = trunc i64 %div158.i.i2.i59 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 2
  %8 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp.not = icmp eq i32 %9, 256
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %cmp3.not = icmp eq i32 %11, 128
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %ic, i32 0, i32 10
  %12 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i60)
  %tobool7.not = icmp ne i32 %conv1.i60, 0
  %cond = zext i1 %tobool7.not to i32
  %rx_ictt.0 = select i1 %tobool.not, i32 %conv1.i60, i32 1
  %ic_mode.0 = select i1 %tobool.not, i32 %cond, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool10.not = icmp eq i32 %conv1.i, 0
  %cond11 = select i1 %tobool10.not, i32 0, i32 2
  %or12 = or i32 %ic_mode.0, %cond11
  %ic_mode13 = getelementptr i8, ptr %ndev, i32 2508
  %14 = ptrtoint ptr %ic_mode13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ic_mode13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or12, i32 %15)
  %cmp14.not = icmp eq i32 %or12, %15
  br i1 %cmp14.not, label %lor.rhs, label %if.end5.lor.end_crit_edge

if.end5.lor.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ictt15 = getelementptr i8, ptr %ndev, i32 2512
  %16 = ptrtoint ptr %tx_ictt15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ictt15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv1.i)
  %cmp16 = icmp eq i32 %17, %conv1.i
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end5.lor.end_crit_edge
  %18 = phi i1 [ false, %if.end5.lor.end_crit_edge ], [ %cmp16, %lor.rhs ]
  %19 = ptrtoint ptr %ic_mode13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or12, ptr %ic_mode13, align 4
  %tx_ictt18 = getelementptr i8, ptr %ndev, i32 2512
  %20 = ptrtoint ptr %tx_ictt18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv1.i, ptr %tx_ictt18, align 4
  %bdr_int_num = getelementptr i8, ptr %ndev, i32 2316
  %21 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bdr_int_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1961 = icmp sgt i32 %22, 0
  br i1 %cmp1961, label %for.body.lr.ph, label %lor.end.for.end_crit_edge

lor.end.for.end_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %lor.end
  %and.lobit = lshr i32 %ic_mode.0, 2
  %23 = trunc i32 %and.lobit to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.062
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %rx_ictt20 = getelementptr inbounds %struct.enetc_int_vector, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %rx_ictt20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rx_ictt.0, ptr %rx_ictt20, align 4
  %rx_dim_en = getelementptr inbounds %struct.enetc_int_vector, ptr %25, i32 0, i32 7
  %27 = ptrtoint ptr %rx_dim_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %23, ptr %rx_dim_en, align 2
  %inc = add nuw nsw i32 %i.062, 1
  %28 = ptrtoint ptr %bdr_int_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bdr_int_num, align 4
  %cmp19 = icmp slt i32 %inc, %29
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %lor.end.for.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %brmerge = select i1 %tobool.i.not, i1 true, i1 %18
  br i1 %brmerge, label %for.end.cleanup_crit_edge, label %if.then26

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @enetc_stop(ptr noundef %ndev) #11
  tail call void @enetc_start(ptr noundef %ndev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_ringparam(ptr noundef %ndev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_bd_count = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %rx_bd_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rx_bd_count, align 4
  %conv = zext i16 %1 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_bd_count = getelementptr i8, ptr %ndev, i32 2334
  %3 = ptrtoint ptr %tx_bd_count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_bd_count, align 2
  %conv1 = zext i16 %4 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %5 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %tx_pending, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then:                                          ; preds = %entry
  %si = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si, align 4
  %hw3 = getelementptr inbounds %struct.enetc_si, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw3, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 33056
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !41
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %14 = ptrtoint ptr %rx_bd_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_bd_count, align 4
  %conv6 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv6)
  %cmp.not = icmp eq i32 %13, %conv6
  br i1 %cmp.not, label %if.then.if.end11_crit_edge, label %do.body

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %ndev, i32 2336
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg_enable, align 4
  %18 = and i16 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %do.body.if.end11_crit_edge, label %if.then10

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str, i32 noundef %13) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %19 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw3, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 32800
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !41
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %23 = ptrtoint ptr %tx_bd_count to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tx_bd_count, align 2
  %conv16 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv16)
  %cmp17.not = icmp eq i32 %22, %conv16
  br i1 %cmp17.not, label %if.end11.if.end30_crit_edge, label %do.body20

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.body20:                                        ; preds = %if.end11
  %msg_enable21 = getelementptr i8, ptr %ndev, i32 2336
  %25 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msg_enable21, align 4
  %27 = and i16 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool24.not = icmp eq i16 %27, 0
  br i1 %tobool24.not, label %do.body20.if.end30_crit_edge, label %if.then25

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.1, i32 noundef %22) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.body20.if.end30_crit_edge, %if.end11.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  tail call void @phylink_ethtool_get_pauseparam(ptr noundef %1, ptr noundef %pause) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_pauseparam(ptr nocapture noundef readonly %dev, ptr noundef %pause) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %call1 = tail call i32 @phylink_ethtool_set_pauseparam(ptr noundef %1, ptr noundef %pause) #11
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_strings(ptr nocapture noundef readonly %ndev, i32 noundef %stringset, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %call1 = tail call i32 @strlcpy(ptr noundef %data, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 0, i32 1), i32 noundef 32) #11
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %call1.1 = tail call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 1, i32 1), i32 noundef 32) #11
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %call1.2 = tail call i32 @strlcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 2, i32 1), i32 noundef 32) #11
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %call1.3 = tail call i32 @strlcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 3, i32 1), i32 noundef 32) #11
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %call1.4 = tail call i32 @strlcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 4, i32 1), i32 noundef 32) #11
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %call1.5 = tail call i32 @strlcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 5, i32 1), i32 noundef 32) #11
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %call1.6 = tail call i32 @strlcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 6, i32 1), i32 noundef 32) #11
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %call1.7 = tail call i32 @strlcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 7, i32 1), i32 noundef 32) #11
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %call1.8 = tail call i32 @strlcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 8, i32 1), i32 noundef 32) #11
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %call1.9 = tail call i32 @strlcpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 9, i32 1), i32 noundef 32) #11
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %call1.10 = tail call i32 @strlcpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 10, i32 1), i32 noundef 32) #11
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %call1.11 = tail call i32 @strlcpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 11, i32 1), i32 noundef 32) #11
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  %call1.12 = tail call i32 @strlcpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 12, i32 1), i32 noundef 32) #11
  %add.ptr.12 = getelementptr i8, ptr %data, i32 416
  %call1.13 = tail call i32 @strlcpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 13, i32 1), i32 noundef 32) #11
  %add.ptr.13 = getelementptr i8, ptr %data, i32 448
  %call1.14 = tail call i32 @strlcpy(ptr noundef %add.ptr.13, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 14, i32 1), i32 noundef 32) #11
  %add.ptr.14 = getelementptr i8, ptr %data, i32 480
  %call1.15 = tail call i32 @strlcpy(ptr noundef %add.ptr.14, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 15, i32 1), i32 noundef 32) #11
  %add.ptr.15 = getelementptr i8, ptr %data, i32 512
  %call1.16 = tail call i32 @strlcpy(ptr noundef %add.ptr.15, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 16, i32 1), i32 noundef 32) #11
  %add.ptr.16 = getelementptr i8, ptr %data, i32 544
  %call1.17 = tail call i32 @strlcpy(ptr noundef %add.ptr.16, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 17, i32 1), i32 noundef 32) #11
  %add.ptr.17 = getelementptr i8, ptr %data, i32 576
  %call1.18 = tail call i32 @strlcpy(ptr noundef %add.ptr.17, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 18, i32 1), i32 noundef 32) #11
  %add.ptr.18 = getelementptr i8, ptr %data, i32 608
  %call1.19 = tail call i32 @strlcpy(ptr noundef %add.ptr.18, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 19, i32 1), i32 noundef 32) #11
  %add.ptr.19 = getelementptr i8, ptr %data, i32 640
  %call1.20 = tail call i32 @strlcpy(ptr noundef %add.ptr.19, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 20, i32 1), i32 noundef 32) #11
  %add.ptr.20 = getelementptr i8, ptr %data, i32 672
  %call1.21 = tail call i32 @strlcpy(ptr noundef %add.ptr.20, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 21, i32 1), i32 noundef 32) #11
  %add.ptr.21 = getelementptr i8, ptr %data, i32 704
  %call1.22 = tail call i32 @strlcpy(ptr noundef %add.ptr.21, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 22, i32 1), i32 noundef 32) #11
  %add.ptr.22 = getelementptr i8, ptr %data, i32 736
  %call1.23 = tail call i32 @strlcpy(ptr noundef %add.ptr.22, ptr noundef getelementptr inbounds ([24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 23, i32 1), i32 noundef 32) #11
  %add.ptr.23 = getelementptr i8, ptr %data, i32 768
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %0 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp382.not = icmp eq i16 %1, 0
  br i1 %cmp382.not, label %for.body.preheader.for.cond20.preheader_crit_edge, label %for.body.preheader.for.cond6.preheader_crit_edge

for.body.preheader.for.cond6.preheader_crit_edge: ; preds = %for.body.preheader
  br label %for.cond6.preheader

for.body.preheader.for.cond20.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

for.cond6.preheader:                              ; preds = %for.cond6.preheader.for.cond6.preheader_crit_edge, %for.body.preheader.for.cond6.preheader_crit_edge
  %i.184 = phi i32 [ %inc18, %for.cond6.preheader.for.cond6.preheader_crit_edge ], [ 0, %for.body.preheader.for.cond6.preheader_crit_edge ]
  %p.183 = phi ptr [ %add.ptr13.2, %for.cond6.preheader.for.cond6.preheader_crit_edge ], [ %add.ptr.23, %for.body.preheader.for.cond6.preheader_crit_edge ]
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.183, i32 noundef 32, ptr noundef nonnull @tx_ring_stats, i32 noundef %i.184)
  %add.ptr13 = getelementptr i8, ptr %p.183, i32 32
  %call12.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr13, i32 noundef 32, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @tx_ring_stats, i32 0, i32 1), i32 noundef %i.184)
  %add.ptr13.1 = getelementptr i8, ptr %p.183, i32 64
  %call12.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr13.1, i32 noundef 32, ptr noundef getelementptr inbounds ([3 x [32 x i8]], ptr @tx_ring_stats, i32 0, i32 2), i32 noundef %i.184)
  %add.ptr13.2 = getelementptr i8, ptr %p.183, i32 96
  %inc18 = add nuw nsw i32 %i.184, 1
  %2 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %3 to i32
  %cmp3 = icmp ult i32 %inc18, %conv
  br i1 %cmp3, label %for.cond6.preheader.for.cond6.preheader_crit_edge, label %for.cond6.preheader.for.cond20.preheader_crit_edge

for.cond6.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

for.cond6.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond6.preheader

for.cond20.preheader:                             ; preds = %for.cond6.preheader.for.cond20.preheader_crit_edge, %for.body.preheader.for.cond20.preheader_crit_edge
  %p.1.lcssa = phi ptr [ %add.ptr.23, %for.body.preheader.for.cond20.preheader_crit_edge ], [ %add.ptr13.2, %for.cond6.preheader.for.cond20.preheader_crit_edge ]
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %4 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2288.not = icmp eq i16 %5, 0
  br i1 %cmp2288.not, label %for.cond20.preheader.for.end38_crit_edge, label %for.cond20.preheader.for.cond25.preheader_crit_edge

for.cond20.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond20.preheader
  br label %for.cond25.preheader

for.cond20.preheader.for.end38_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.cond25.preheader:                             ; preds = %for.cond25.preheader.for.cond25.preheader_crit_edge, %for.cond20.preheader.for.cond25.preheader_crit_edge
  %i.290 = phi i32 [ %inc37, %for.cond25.preheader.for.cond25.preheader_crit_edge ], [ 0, %for.cond20.preheader.for.cond25.preheader_crit_edge ]
  %p.389 = phi ptr [ %add.ptr32.7, %for.cond25.preheader.for.cond25.preheader_crit_edge ], [ %p.1.lcssa, %for.cond20.preheader.for.cond25.preheader_crit_edge ]
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.389, i32 noundef 32, ptr noundef nonnull @rx_ring_stats, i32 noundef %i.290)
  %add.ptr32 = getelementptr i8, ptr %p.389, i32 32
  %call31.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 1), i32 noundef %i.290)
  %add.ptr32.1 = getelementptr i8, ptr %p.389, i32 64
  %call31.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.1, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 2), i32 noundef %i.290)
  %add.ptr32.2 = getelementptr i8, ptr %p.389, i32 96
  %call31.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.2, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 3), i32 noundef %i.290)
  %add.ptr32.3 = getelementptr i8, ptr %p.389, i32 128
  %call31.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.3, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 4), i32 noundef %i.290)
  %add.ptr32.4 = getelementptr i8, ptr %p.389, i32 160
  %call31.5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.4, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 5), i32 noundef %i.290)
  %add.ptr32.5 = getelementptr i8, ptr %p.389, i32 192
  %call31.6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.5, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 6), i32 noundef %i.290)
  %add.ptr32.6 = getelementptr i8, ptr %p.389, i32 224
  %call31.7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.6, i32 noundef 32, ptr noundef getelementptr inbounds ([8 x [32 x i8]], ptr @rx_ring_stats, i32 0, i32 7), i32 noundef %i.290)
  %add.ptr32.7 = getelementptr i8, ptr %p.389, i32 256
  %inc37 = add nuw nsw i32 %i.290, 1
  %6 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_rx_rings, align 4
  %conv21 = zext i16 %7 to i32
  %cmp22 = icmp ult i32 %inc37, %conv21
  br i1 %cmp22, label %for.cond25.preheader.for.cond25.preheader_crit_edge, label %for.cond25.preheader.for.end38_crit_edge

for.cond25.preheader.for.end38_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end38

for.cond25.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond25.preheader

for.end38:                                        ; preds = %for.cond25.preheader.for.end38_crit_edge, %for.cond20.preheader.for.end38_crit_edge
  %p.3.lcssa = phi ptr [ %p.1.lcssa, %for.cond20.preheader.for.end38_crit_edge ], [ %add.ptr32.7, %for.cond25.preheader.for.end38_crit_edge ]
  %si = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %si, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %for.end38.sw.epilog_crit_edge, label %for.end38.for.body43_crit_edge

for.end38.for.body43_crit_edge:                   ; preds = %for.end38
  br label %for.body43

for.end38.sw.epilog_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.end38.for.body43_crit_edge
  %i.393 = phi i32 [ %inc50, %for.body43.for.body43_crit_edge ], [ 0, %for.end38.for.body43_crit_edge ]
  %p.592 = phi ptr [ %add.ptr48, %for.body43.for.body43_crit_edge ], [ %p.3.lcssa, %for.end38.for.body43_crit_edge ]
  %name45 = getelementptr [62 x %struct.anon.127], ptr @enetc_port_counters, i32 0, i32 %i.393, i32 1
  %call47 = tail call i32 @strlcpy(ptr noundef %p.592, ptr noundef %name45, i32 noundef 32) #11
  %add.ptr48 = getelementptr i8, ptr %p.592, i32 32
  %inc50 = add nuw nsw i32 %i.393, 1
  %exitcond.not = icmp eq i32 %inc50, 62
  br i1 %exitcond.not, label %for.body43.sw.epilog_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.body43.sw.epilog_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body43.sw.epilog_crit_edge, %for.end38.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_get_ethtool_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %hw1 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  br label %for.body

for.cond6.preheader:                              ; preds = %_enetc_rd_reg64_wa.exit
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %2 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_tx_rings, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp7168.not = icmp eq i16 %3, 0
  br i1 %cmp7168.not, label %for.cond6.preheader.for.cond30.preheader_crit_edge, label %for.cond6.preheader.for.body9_crit_edge

for.cond6.preheader.for.body9_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body9

for.cond6.preheader.for.cond30.preheader_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond30.preheader

for.body:                                         ; preds = %_enetc_rd_reg64_wa.exit.for.body_crit_edge, %entry
  %o.0166 = phi i32 [ 0, %entry ], [ %inc, %_enetc_rd_reg64_wa.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %arrayidx = getelementptr [24 x %struct.anon.126], ptr @enetc_si_counters, i32 0, i32 %o.0166
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.body
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  %cmp.not.i.i = icmp eq i32 %8, %10
  br i1 %cmp.not.i.i, label %_enetc_rd_reg64_wa.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

_enetc_rd_reg64_wa.exit:                          ; preds = %do.body.i.i
  %11 = zext i32 %8 to i64
  %12 = zext i32 %9 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %inc = add nuw nsw i32 %o.0166, 1
  %arrayidx4 = getelementptr i64, ptr %data, i32 %o.0166
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx4, align 8
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.cond6.preheader, label %_enetc_rd_reg64_wa.exit.for.body_crit_edge

_enetc_rd_reg64_wa.exit.for.body_crit_edge:       ; preds = %_enetc_rd_reg64_wa.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond30.preheader:                             ; preds = %for.body9.for.cond30.preheader_crit_edge, %for.cond6.preheader.for.cond30.preheader_crit_edge
  %o.1.lcssa = phi i32 [ 24, %for.cond6.preheader.for.cond30.preheader_crit_edge ], [ %inc25, %for.body9.for.cond30.preheader_crit_edge ]
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %16 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_rx_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp32172.not = icmp eq i16 %17, 0
  br i1 %cmp32172.not, label %for.cond30.preheader.for.end85_crit_edge, label %for.cond30.preheader.for.body34_crit_edge

for.cond30.preheader.for.body34_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body34

for.cond30.preheader.for.end85_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond6.preheader.for.body9_crit_edge
  %o.1170 = phi i32 [ %inc25, %for.body9.for.body9_crit_edge ], [ 24, %for.cond6.preheader.for.body9_crit_edge ]
  %i.1169 = phi i32 [ %inc28, %for.body9.for.body9_crit_edge ], [ 0, %for.cond6.preheader.for.body9_crit_edge ]
  %arrayidx10 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %i.1169
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx10, align 4
  %stats11 = getelementptr inbounds %struct.enetc_bdr, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %stats11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stats11, align 128
  %conv12 = zext i32 %21 to i64
  %inc13 = add nuw nsw i32 %o.1170, 1
  %arrayidx14 = getelementptr i64, ptr %data, i32 %o.1170
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv12, ptr %arrayidx14, align 8
  %23 = load ptr, ptr %arrayidx10, align 4
  %xdp_tx = getelementptr inbounds %struct.enetc_bdr, ptr %23, i32 0, i32 14, i32 4
  %24 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xdp_tx, align 16
  %conv18 = zext i32 %25 to i64
  %inc19 = add nuw nsw i32 %o.1170, 2
  %arrayidx20 = getelementptr i64, ptr %data, i32 %inc13
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv18, ptr %arrayidx20, align 8
  %27 = load ptr, ptr %arrayidx10, align 4
  %xdp_tx_drops = getelementptr inbounds %struct.enetc_bdr, ptr %27, i32 0, i32 14, i32 5
  %28 = ptrtoint ptr %xdp_tx_drops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xdp_tx_drops, align 4
  %conv24 = zext i32 %29 to i64
  %inc25 = add nuw nsw i32 %o.1170, 3
  %arrayidx26 = getelementptr i64, ptr %data, i32 %inc19
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv24, ptr %arrayidx26, align 8
  %inc28 = add nuw nsw i32 %i.1169, 1
  %31 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %32 to i32
  %cmp7 = icmp ult i32 %inc28, %conv
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.cond30.preheader_crit_edge

for.body9.for.cond30.preheader_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond30.preheader

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.cond30.preheader.for.body34_crit_edge
  %o.2174 = phi i32 [ %inc81, %for.body34.for.body34_crit_edge ], [ %o.1.lcssa, %for.cond30.preheader.for.body34_crit_edge ]
  %i.2173 = phi i32 [ %inc84, %for.body34.for.body34_crit_edge ], [ 0, %for.cond30.preheader.for.body34_crit_edge ]
  %arrayidx35 = getelementptr %struct.enetc_ndev_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.2173
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx35, align 4
  %stats36 = getelementptr inbounds %struct.enetc_bdr, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %stats36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats36, align 128
  %conv38 = zext i32 %36 to i64
  %inc39 = add nuw nsw i32 %o.2174, 1
  %arrayidx40 = getelementptr i64, ptr %data, i32 %o.2174
  %37 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv38, ptr %arrayidx40, align 8
  %38 = load ptr, ptr %arrayidx35, align 4
  %rx_alloc_errs = getelementptr inbounds %struct.enetc_bdr, ptr %38, i32 0, i32 14, i32 2
  %39 = ptrtoint ptr %rx_alloc_errs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_alloc_errs, align 8
  %conv44 = zext i32 %40 to i64
  %inc45 = add nuw nsw i32 %o.2174, 2
  %arrayidx46 = getelementptr i64, ptr %data, i32 %inc39
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv44, ptr %arrayidx46, align 8
  %42 = load ptr, ptr %arrayidx35, align 4
  %xdp_drops = getelementptr inbounds %struct.enetc_bdr, ptr %42, i32 0, i32 14, i32 3
  %43 = ptrtoint ptr %xdp_drops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xdp_drops, align 4
  %conv50 = zext i32 %44 to i64
  %inc51 = add nuw nsw i32 %o.2174, 3
  %arrayidx52 = getelementptr i64, ptr %data, i32 %inc45
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv50, ptr %arrayidx52, align 8
  %46 = load ptr, ptr %arrayidx35, align 4
  %recycles = getelementptr inbounds %struct.enetc_bdr, ptr %46, i32 0, i32 14, i32 9
  %47 = ptrtoint ptr %recycles to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %recycles, align 4
  %conv56 = zext i32 %48 to i64
  %inc57 = add nuw nsw i32 %o.2174, 4
  %arrayidx58 = getelementptr i64, ptr %data, i32 %inc51
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv56, ptr %arrayidx58, align 8
  %50 = load ptr, ptr %arrayidx35, align 4
  %recycle_failures = getelementptr inbounds %struct.enetc_bdr, ptr %50, i32 0, i32 14, i32 10
  %51 = ptrtoint ptr %recycle_failures to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %recycle_failures, align 8
  %conv62 = zext i32 %52 to i64
  %inc63 = add nuw nsw i32 %o.2174, 5
  %arrayidx64 = getelementptr i64, ptr %data, i32 %inc57
  %53 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv62, ptr %arrayidx64, align 8
  %54 = load ptr, ptr %arrayidx35, align 4
  %xdp_redirect = getelementptr inbounds %struct.enetc_bdr, ptr %54, i32 0, i32 14, i32 6
  %55 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xdp_redirect, align 8
  %conv68 = zext i32 %56 to i64
  %inc69 = add nuw nsw i32 %o.2174, 6
  %arrayidx70 = getelementptr i64, ptr %data, i32 %inc63
  %57 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv68, ptr %arrayidx70, align 8
  %58 = load ptr, ptr %arrayidx35, align 4
  %xdp_redirect_failures = getelementptr inbounds %struct.enetc_bdr, ptr %58, i32 0, i32 14, i32 7
  %59 = ptrtoint ptr %xdp_redirect_failures to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xdp_redirect_failures, align 4
  %conv74 = zext i32 %60 to i64
  %inc75 = add nuw nsw i32 %o.2174, 7
  %arrayidx76 = getelementptr i64, ptr %data, i32 %inc69
  %61 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv74, ptr %arrayidx76, align 8
  %62 = load ptr, ptr %arrayidx35, align 4
  %xdp_redirect_sg = getelementptr inbounds %struct.enetc_bdr, ptr %62, i32 0, i32 14, i32 8
  %63 = ptrtoint ptr %xdp_redirect_sg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xdp_redirect_sg, align 32
  %conv80 = zext i32 %64 to i64
  %inc81 = add nuw nsw i32 %o.2174, 8
  %arrayidx82 = getelementptr i64, ptr %data, i32 %inc75
  %65 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv80, ptr %arrayidx82, align 8
  %inc84 = add nuw nsw i32 %i.2173, 1
  %66 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_rx_rings, align 4
  %conv31 = zext i16 %67 to i32
  %cmp32 = icmp ult i32 %inc84, %conv31
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.for.end85_crit_edge

for.body34.for.end85_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.end85:                                        ; preds = %for.body34.for.end85_crit_edge, %for.cond30.preheader.for.end85_crit_edge
  %o.2.lcssa = phi i32 [ %o.1.lcssa, %for.cond30.preheader.for.end85_crit_edge ], [ %inc81, %for.body34.for.end85_crit_edge ]
  %68 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %si, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %69, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %port.i, align 4
  %tobool.i.not = icmp eq ptr %71, null
  br i1 %tobool.i.not, label %for.end85.cleanup_crit_edge, label %for.cond88.preheader

for.end85.cleanup_crit_edge:                      ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond88.preheader:                             ; preds = %for.end85
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  br label %for.body91

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.cond88.preheader
  %o.3177 = phi i32 [ %o.2.lcssa, %for.cond88.preheader ], [ %inc97, %for.body91.for.body91_crit_edge ]
  %i.3176 = phi i32 [ 0, %for.cond88.preheader ], [ %inc100, %for.body91.for.body91_crit_edge ]
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %port, align 4
  %arrayidx92 = getelementptr [62 x %struct.anon.127], ptr @enetc_port_counters, i32 0, i32 %i.3176
  %74 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx92, align 4
  %add.ptr94 = getelementptr i8, ptr %73, i32 %75
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #11, !srcloc !41
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %conv96 = zext i32 %77 to i64
  %inc97 = add nuw nsw i32 %o.3177, 1
  %arrayidx98 = getelementptr i64, ptr %data, i32 %o.3177
  %78 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv96, ptr %arrayidx98, align 8
  %inc100 = add nuw nsw i32 %i.3176, 1
  %exitcond179.not = icmp eq i32 %inc100, 62
  br i1 %exitcond179.not, label %for.body91.cleanup_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body91

for.body91.cleanup_crit_edge:                     ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body91.cleanup_crit_edge, %for.end85.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enetc_get_sset_count(ptr nocapture noundef readonly %ndev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %num_tx_rings = getelementptr i8, ptr %ndev, i32 2330
  %0 = ptrtoint ptr %num_tx_rings to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tx_rings, align 2
  %conv = zext i16 %1 to i32
  %mul = mul nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 24
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_rx_rings, align 4
  %conv1 = zext i16 %3 to i32
  %mul2 = shl nuw nsw i32 %conv1, 3
  %add3 = add nuw nsw i32 %add, %mul2
  %si = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %si, align 4
  %port.i = getelementptr inbounds %struct.enetc_si, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  %add7 = add nuw nsw i32 %add3, 62
  %spec.select = select i1 %tobool.i.not, i32 %add3, i32 %add7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_get_rxnfc(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %rxnfc, ptr nocapture noundef writeonly %rule_locs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 45, label %sw.bb
    i32 41, label %sw.bb1
    i32 46, label %sw.bb3
    i32 47, label %sw.bb10
    i32 48, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %3 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %4 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 1
  %6 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp.i = icmp ugt i32 %7, 18
  br i1 %cmp.i, label %sw.bb1.cleanup_crit_edge, label %if.end.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [19 x i32], ptr @enetc_get_rsshash.rsshash, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %9 to i64
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %data.i, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %si = getelementptr i8, ptr %ndev, i32 2312
  %11 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %si, align 4
  %num_fs_entries = getelementptr inbounds %struct.enetc_si, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %num_fs_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_fs_entries, align 4
  %conv4 = sext i32 %14 to i64
  %data5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %15 = ptrtoint ptr %data5 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv4, ptr %data5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 8
  %18 = load ptr, ptr %si, align 4
  %num_fs_entries785 = getelementptr inbounds %struct.enetc_si, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %num_fs_entries785 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_fs_entries785, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp86 = icmp sgt i32 %20, 0
  br i1 %cmp86, label %for.body.lr.ph, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb3
  %cls_rules = getelementptr i8, ptr %ndev, i32 2480
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cls_rules, align 4
  %used = getelementptr %struct.enetc_cls_rule, ptr %22, i32 %i.087, i32 1
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc9 = add nuw nsw i32 %i.087, 1
  %27 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %si, align 4
  %num_fs_entries7 = getelementptr inbounds %struct.enetc_si, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %num_fs_entries7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_fs_entries7, align 4
  %cmp = icmp slt i32 %inc9, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.bb10:                                          ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %location, align 8
  %si11 = getelementptr i8, ptr %ndev, i32 2312
  %33 = ptrtoint ptr %si11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %si11, align 4
  %num_fs_entries12 = getelementptr inbounds %struct.enetc_si, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %num_fs_entries12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_fs_entries12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp13.not = icmp ult i32 %32, %36
  br i1 %cmp13.not, label %if.end16, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3
  %cls_rules18 = getelementptr i8, ptr %ndev, i32 2480
  %37 = ptrtoint ptr %cls_rules18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cls_rules18, align 4
  %arrayidx21 = getelementptr %struct.enetc_cls_rule, ptr %38, i32 %32
  %39 = call ptr @memcpy(ptr %fs, ptr %arrayidx21, i32 168)
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %si24 = getelementptr i8, ptr %ndev, i32 2312
  %40 = ptrtoint ptr %si24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %si24, align 4
  %num_fs_entries25 = getelementptr inbounds %struct.enetc_si, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %num_fs_entries25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_fs_entries25, align 4
  %conv26 = sext i32 %43 to i64
  %data27 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %44 = ptrtoint ptr %data27 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv26, ptr %data27, align 8
  %45 = load ptr, ptr %si24, align 4
  %num_fs_entries3080 = getelementptr inbounds %struct.enetc_si, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %num_fs_entries3080 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_fs_entries3080, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp3181 = icmp sgt i32 %47, 0
  br i1 %cmp3181, label %for.body33.lr.ph, label %sw.bb23.for.end48_crit_edge

sw.bb23.for.end48_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body33.lr.ph:                                 ; preds = %sw.bb23
  %cls_rules34 = getelementptr i8, ptr %ndev, i32 2480
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  br label %for.body33

for.body33:                                       ; preds = %for.inc46.for.body33_crit_edge, %for.body33.lr.ph
  %j.084 = phi i32 [ 0, %for.body33.lr.ph ], [ %j.1, %for.inc46.for.body33_crit_edge ]
  %i.182 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc47, %for.inc46.for.body33_crit_edge ]
  %49 = ptrtoint ptr %cls_rules34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cls_rules34, align 4
  %used36 = getelementptr %struct.enetc_cls_rule, ptr %50, i32 %i.182, i32 1
  %51 = ptrtoint ptr %used36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not = icmp eq i32 %52, 0
  br i1 %tobool37.not, label %for.body33.for.inc46_crit_edge, label %if.end39

for.body33.for.inc46_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

if.end39:                                         ; preds = %for.body33
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.084, i32 %54)
  %cmp40 = icmp eq i32 %j.084, %54
  br i1 %cmp40, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %inc44 = add i32 %j.084, 1
  %arrayidx45 = getelementptr i32, ptr %rule_locs, i32 %j.084
  %55 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %i.182, ptr %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.end43, %for.body33.for.inc46_crit_edge
  %j.1 = phi i32 [ %inc44, %if.end43 ], [ %j.084, %for.body33.for.inc46_crit_edge ]
  %inc47 = add nuw nsw i32 %i.182, 1
  %56 = ptrtoint ptr %si24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %si24, align 4
  %num_fs_entries30 = getelementptr inbounds %struct.enetc_si, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %num_fs_entries30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_fs_entries30, align 4
  %cmp31 = icmp slt i32 %inc47, %59
  br i1 %cmp31, label %for.inc46.for.body33_crit_edge, label %for.inc46.for.end48_crit_edge

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.inc46.for.body33_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %sw.bb23.for.end48_crit_edge
  %j.0.lcssa = phi i32 [ 0, %sw.bb23.for.end48_crit_edge ], [ %j.1, %for.inc46.for.end48_crit_edge ]
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %j.0.lcssa, ptr %60, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end48, %if.end39.cleanup_crit_edge, %if.end16, %sw.bb10.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.i, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %for.end48 ], [ 0, %if.end16 ], [ 0, %sw.bb ], [ 0, %if.end.i ], [ -22, %sw.bb1.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -90, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_rxnfc(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %rxnfc) #0 align 64 {
entry:
  %rfse.i = alloca %struct.enetc_cmd_rfse, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %location, align 8
  %si = getelementptr i8, ptr %ndev, i32 2312
  %5 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %si, align 4
  %num_fs_entries = getelementptr inbounds %struct.enetc_si, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %num_fs_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_fs_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp.not = icmp ult i32 %4, %8
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %ring_cookie = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ring_cookie, align 8
  %num_rx_rings = getelementptr i8, ptr %ndev, i32 2328
  %11 = ptrtoint ptr %num_rx_rings to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_rx_rings, align 4
  %conv = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp2.not = icmp ult i64 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp6.not = icmp eq i64 %10, -1
  %or.cond = or i1 %cmp6.not, %cmp2.not
  br i1 %or.cond, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call12 = tail call fastcc i32 @enetc_set_cls_entry(ptr noundef %6, ptr noundef %fs, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %cls_rules = getelementptr i8, ptr %ndev, i32 2480
  %13 = ptrtoint ptr %cls_rules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cls_rules, align 4
  %15 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %location, align 8
  %arrayidx = getelementptr %struct.enetc_cls_rule, ptr %14, i32 %16
  %17 = call ptr @memcpy(ptr %arrayidx, ptr %fs, i32 168)
  br label %cleanup.sink.split

sw.bb23:                                          ; preds = %entry
  %location25 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %location25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %location25, align 8
  %si26 = getelementptr i8, ptr %ndev, i32 2312
  %20 = ptrtoint ptr %si26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si26, align 4
  %num_fs_entries27 = getelementptr inbounds %struct.enetc_si, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %num_fs_entries27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_fs_entries27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp28.not = icmp ult i32 %19, %23
  br i1 %cmp28.not, label %if.end31, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %sw.bb23
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %rfse.i) #11
  %24 = call ptr @memset(ptr %rfse.i, i32 0, i32 116)
  %25 = ptrtoint ptr %location25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %location25, align 8
  %call.i = call i32 @enetc_set_fs_entry(ptr noundef %21, ptr noundef nonnull %rfse.i, i32 noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %rfse.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %cls_rules38 = getelementptr i8, ptr %ndev, i32 2480
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end37, %if.end14
  %cls_rules.sink = phi ptr [ %cls_rules, %if.end14 ], [ %cls_rules38, %if.end37 ]
  %location.sink = phi ptr [ %location, %if.end14 ], [ %location25, %if.end37 ]
  %.sink = phi i32 [ 1, %if.end14 ], [ 0, %if.end37 ]
  %27 = ptrtoint ptr %cls_rules.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cls_rules.sink, align 4
  %29 = ptrtoint ptr %location.sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %location.sink, align 8
  %used = getelementptr %struct.enetc_cls_rule, ptr %28, i32 %30, i32 1
  %31 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %used, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ %call.i, %if.end31.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enetc_get_rxfh_key_size(ptr nocapture noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %3, null
  %cond = select i1 %tobool.not, i32 0, i32 40
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enetc_get_rxfh_indir_size(ptr nocapture noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rss, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_get_rxfh(ptr nocapture noundef readonly %ndev, ptr noundef %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %key, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %for.body.preheader

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 5136
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %key, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 4
  %add.ptr.1 = getelementptr i8, ptr %11, i32 5140
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #11, !srcloc !41
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.1 = getelementptr i32, ptr %key, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.1, align 4
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 4
  %add.ptr.2 = getelementptr i8, ptr %16, i32 5144
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #11, !srcloc !41
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.2 = getelementptr i32, ptr %key, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.2, align 4
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %add.ptr.3 = getelementptr i8, ptr %21, i32 5148
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #11, !srcloc !41
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.3 = getelementptr i32, ptr %key, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.3, align 4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 4
  %add.ptr.4 = getelementptr i8, ptr %26, i32 5152
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #11, !srcloc !41
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.4 = getelementptr i32, ptr %key, i32 4
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.4, align 4
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 4
  %add.ptr.5 = getelementptr i8, ptr %31, i32 5156
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #11, !srcloc !41
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.5 = getelementptr i32, ptr %key, i32 5
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.5, align 4
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 4
  %add.ptr.6 = getelementptr i8, ptr %36, i32 5160
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #11, !srcloc !41
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.6 = getelementptr i32, ptr %key, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.6, align 4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 4
  %add.ptr.7 = getelementptr i8, ptr %41, i32 5164
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #11, !srcloc !41
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.7 = getelementptr i32, ptr %key, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.7, align 4
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 4
  %add.ptr.8 = getelementptr i8, ptr %46, i32 5168
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #11, !srcloc !41
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.8 = getelementptr i32, ptr %key, i32 8
  %49 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx.8, align 4
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port, align 4
  %add.ptr.9 = getelementptr i8, ptr %51, i32 5172
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9) #11, !srcloc !41
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %arrayidx.9 = getelementptr i32, ptr %key, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx.9, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.body.preheader, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %indir, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %si, align 4
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_rss, align 4
  %call12 = tail call i32 @enetc_get_rss_table(ptr noundef %56, ptr noundef nonnull %indir, i32 noundef %58) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %err.0 = phi i32 [ %call12, %if.then9 ], [ 0, %if.end7.if.end13_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_rxfh(ptr nocapture noundef readonly %ndev, ptr noundef %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %si = getelementptr i8, ptr %ndev, i32 2312
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %port = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %mul.i = shl i32 %i.04.i, 2
  %add.i = add nuw nsw i32 %mul.i, 5136
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 %add.i
  %arrayidx.i = getelementptr i32, ptr %key, i32 %i.04.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %8) #11, !srcloc !40
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #11
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %indir, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %si, align 4
  %num_rss = getelementptr inbounds %struct.enetc_si, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %num_rss to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_rss, align 4
  %call7 = tail call i32 @enetc_set_rss_table(ptr noundef %10, ptr noundef nonnull %indir, i32 noundef %12) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %err.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_get_ts_info(ptr nocapture noundef readnone %ndev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %phc_index, align 4
  tail call void @__symbol_put(ptr noundef nonnull @.str.3) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phc_index1 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %phc_index1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phc_index1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @phylink_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_set_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phylink = getelementptr i8, ptr %dev, i32 2504
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @phylink_ethtool_ksettings_set(ptr noundef nonnull %1, ptr noundef %cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_ethtool_get_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_set_pauseparam(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enetc_set_cls_entry(ptr noundef %si, ptr nocapture noundef readonly %fs, i1 noundef zeroext %en) unnamed_addr #0 align 64 {
entry:
  %rfse = alloca %struct.enetc_cmd_rfse, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %rfse) #11
  %0 = call ptr @memset(ptr %rfse, i32 0, i32 116)
  br i1 %en, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fs, align 8
  %trunc = trunc i32 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.l4ip4_crit_edge
    i8 2, label %if.end.l4ip4_crit_edge129
    i8 3, label %if.end.l4ip4_crit_edge130
    i8 13, label %sw.bb17
    i8 18, label %sw.bb39
  ]

if.end.l4ip4_crit_edge130:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4ip4

if.end.l4ip4_crit_edge129:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4ip4

if.end.l4ip4_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4ip4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

l4ip4:                                            ; preds = %if.end.l4ip4_crit_edge, %if.end.l4ip4_crit_edge129, %if.end.l4ip4_crit_edge130
  %l4ip4_m.0 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %l4ip4_h.0 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %4 = ptrtoint ptr %l4ip4_h.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %l4ip4_h.0, align 4
  %sip_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 4
  %6 = ptrtoint ptr %sip_h to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sip_h, align 4
  %7 = ptrtoint ptr %l4ip4_m.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l4ip4_m.0, align 4
  %sip_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 5
  %9 = ptrtoint ptr %sip_m to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sip_m, align 4
  %ip4dst = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %ip4dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ip4dst, align 4
  %dip_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 6
  %12 = ptrtoint ptr %dip_h to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dip_h, align 4
  %ip4dst10 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %ip4dst10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip4dst10, align 4
  %dip_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 7
  %15 = ptrtoint ptr %dip_m to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dip_m, align 4
  %psrc = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %psrc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %psrc, align 4
  %sport_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 12
  %18 = ptrtoint ptr %sport_h to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %sport_h, align 4
  %psrc12 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %psrc12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %psrc12, align 4
  %sport_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 13
  %21 = ptrtoint ptr %sport_m to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sport_m, align 2
  %pdst = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %l4ip4_h.0, i32 0, i32 3
  %22 = ptrtoint ptr %pdst to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pdst, align 2
  %dport_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 14
  %24 = ptrtoint ptr %dport_h to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %dport_h, align 4
  %pdst13 = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %l4ip4_m.0, i32 0, i32 3
  %25 = ptrtoint ptr %pdst13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pdst13, align 2
  %dport_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 15
  %27 = ptrtoint ptr %dport_m to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %dport_m, align 2
  %tos = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not = icmp eq i8 %29, 0
  br i1 %tobool14.not, label %l4ip4.if.end16_crit_edge, label %if.then15

l4ip4.if.end16_crit_edge:                         ; preds = %l4ip4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %l4ip4
  call void @__sanitizer_cov_trace_pc() #13
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 3
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.2) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %l4ip4.if.end16_crit_edge
  %ethtype_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 8
  %32 = ptrtoint ptr %ethtype_h to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2048, ptr %ethtype_h, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %h_u18 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %m_u19 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %33 = ptrtoint ptr %h_u18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %h_u18, align 4
  %sip_h21 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 4
  %35 = ptrtoint ptr %sip_h21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sip_h21, align 4
  %36 = ptrtoint ptr %m_u19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_u19, align 4
  %sip_m24 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 5
  %38 = ptrtoint ptr %sip_m24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sip_m24, align 4
  %ip4dst26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %ip4dst26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip4dst26, align 4
  %dip_h27 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 6
  %41 = ptrtoint ptr %dip_h27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dip_h27, align 4
  %ip4dst29 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %ip4dst29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ip4dst29, align 4
  %dip_m30 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 7
  %44 = ptrtoint ptr %dip_m30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dip_m30, align 4
  %tos32 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %45 = ptrtoint ptr %tos32 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tos32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool33.not = icmp eq i8 %46, 0
  br i1 %tobool33.not, label %sw.bb17.if.end36_crit_edge, label %if.then34

sw.bb17.if.end36_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  %ndev35 = getelementptr inbounds %struct.enetc_si, ptr %si, i32 0, i32 3
  %47 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndev35, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.2) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sw.bb17.if.end36_crit_edge
  %ethtype_h37 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 8
  %49 = ptrtoint ptr %ethtype_h37 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2048, ptr %ethtype_h37, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %h_u40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1
  %m_u41 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %h_u40, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.ethhdr, ptr %h_u40, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %52 = ptrtoint ptr %rfse to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %rfse, align 4
  %arrayidx.1.i = getelementptr %struct.ethhdr, ptr %h_u40, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx2.1.i = getelementptr inbounds i8, ptr %rfse, i32 1
  %55 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx2.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.ethhdr, ptr %h_u40, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx2.2.i = getelementptr inbounds i8, ptr %rfse, i32 2
  %58 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx2.2.i, align 2
  %arrayidx.3.i = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx2.3.i = getelementptr inbounds i8, ptr %rfse, i32 3
  %61 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx2.3.i, align 1
  %arrayidx.4.i = getelementptr %struct.ethhdr, ptr %h_u40, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx2.4.i = getelementptr inbounds i8, ptr %rfse, i32 4
  %64 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx2.4.i, align 4
  %65 = ptrtoint ptr %h_source to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %h_source, align 1
  %arrayidx2.5.i = getelementptr inbounds i8, ptr %rfse, i32 5
  %67 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx2.5.i, align 1
  %smac_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1
  %h_source44 = getelementptr inbounds %struct.ethhdr, ptr %m_u41, i32 0, i32 1
  %arrayidx.i99 = getelementptr %struct.ethhdr, ptr %m_u41, i32 0, i32 1, i32 5
  %68 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i99, align 1
  %70 = ptrtoint ptr %smac_m to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %smac_m, align 2
  %arrayidx.1.i100 = getelementptr %struct.ethhdr, ptr %m_u41, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %arrayidx.1.i100 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.1.i100, align 1
  %arrayidx2.1.i101 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx2.1.i101 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx2.1.i101, align 1
  %arrayidx.2.i102 = getelementptr %struct.ethhdr, ptr %m_u41, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx.2.i102 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.2.i102, align 1
  %arrayidx2.2.i103 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %arrayidx2.2.i103 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx2.2.i103, align 4
  %arrayidx.3.i104 = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %arrayidx.3.i104 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.3.i104, align 1
  %arrayidx2.3.i105 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %arrayidx2.3.i105 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx2.3.i105, align 1
  %arrayidx.4.i106 = getelementptr %struct.ethhdr, ptr %m_u41, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx.4.i106 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.4.i106, align 1
  %arrayidx2.4.i107 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %arrayidx2.4.i107 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx2.4.i107, align 2
  %83 = ptrtoint ptr %h_source44 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %h_source44, align 1
  %arrayidx2.5.i108 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 1, i32 5
  %85 = ptrtoint ptr %arrayidx2.5.i108 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx2.5.i108, align 1
  %dmac_h = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2
  %arrayidx.i109 = getelementptr i8, ptr %h_u40, i32 5
  %86 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i109, align 1
  %88 = ptrtoint ptr %dmac_h to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %dmac_h, align 4
  %arrayidx.1.i110 = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx.1.i110 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.1.i110, align 1
  %arrayidx2.1.i111 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %arrayidx2.1.i111 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx2.1.i111, align 1
  %arrayidx.2.i112 = getelementptr i8, ptr %h_u40, i32 3
  %92 = ptrtoint ptr %arrayidx.2.i112 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.2.i112, align 1
  %arrayidx2.2.i113 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2, i32 2
  %94 = ptrtoint ptr %arrayidx2.2.i113 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx2.2.i113, align 2
  %arrayidx.3.i114 = getelementptr i8, ptr %h_u40, i32 2
  %95 = ptrtoint ptr %arrayidx.3.i114 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.3.i114, align 1
  %arrayidx2.3.i115 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2, i32 3
  %97 = ptrtoint ptr %arrayidx2.3.i115 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx2.3.i115, align 1
  %arrayidx.4.i116 = getelementptr i8, ptr %h_u40, i32 1
  %98 = ptrtoint ptr %arrayidx.4.i116 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.4.i116, align 1
  %arrayidx2.4.i117 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2, i32 4
  %100 = ptrtoint ptr %arrayidx2.4.i117 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx2.4.i117, align 4
  %101 = ptrtoint ptr %h_u40 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %h_u40, align 1
  %arrayidx2.5.i118 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 2, i32 5
  %103 = ptrtoint ptr %arrayidx2.5.i118 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx2.5.i118, align 1
  %dmac_m = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3
  %arrayidx.i119 = getelementptr i8, ptr %m_u41, i32 5
  %104 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i119, align 1
  %106 = ptrtoint ptr %dmac_m to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %dmac_m, align 2
  %arrayidx.1.i120 = getelementptr %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx.1.i120 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.1.i120, align 1
  %arrayidx2.1.i121 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %arrayidx2.1.i121 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx2.1.i121, align 1
  %arrayidx.2.i122 = getelementptr i8, ptr %m_u41, i32 3
  %110 = ptrtoint ptr %arrayidx.2.i122 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.2.i122, align 1
  %arrayidx2.2.i123 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3, i32 2
  %112 = ptrtoint ptr %arrayidx2.2.i123 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx2.2.i123, align 4
  %arrayidx.3.i124 = getelementptr i8, ptr %m_u41, i32 2
  %113 = ptrtoint ptr %arrayidx.3.i124 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.3.i124, align 1
  %arrayidx2.3.i125 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3, i32 3
  %115 = ptrtoint ptr %arrayidx2.3.i125 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx2.3.i125, align 1
  %arrayidx.4.i126 = getelementptr i8, ptr %m_u41, i32 1
  %116 = ptrtoint ptr %arrayidx.4.i126 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.4.i126, align 1
  %arrayidx2.4.i127 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3, i32 4
  %118 = ptrtoint ptr %arrayidx2.4.i127 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %arrayidx2.4.i127, align 2
  %119 = ptrtoint ptr %m_u41 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %m_u41, align 1
  %arrayidx2.5.i128 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 3, i32 5
  %121 = ptrtoint ptr %arrayidx2.5.i128 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx2.5.i128, align 1
  %h_proto = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 1, i32 0, i32 0, i32 3
  %122 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %h_proto, align 1
  %ethtype_h51 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 8
  %124 = ptrtoint ptr %ethtype_h51 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %ethtype_h51, align 4
  %h_proto52 = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 3, i32 0, i32 0, i32 3
  %125 = ptrtoint ptr %h_proto52 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %h_proto52, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.end36, %if.end16
  %.sink = phi i16 [ %126, %sw.bb39 ], [ -1, %if.end36 ], [ -1, %if.end16 ]
  %ethtype_m53 = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 9
  %127 = ptrtoint ptr %ethtype_m53 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %.sink, ptr %ethtype_m53, align 2
  %mode = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 22
  %128 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %mode, align 2
  %130 = or i16 %129, -32768
  store i16 %130, ptr %mode, align 2
  %ring_cookie = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 5
  %131 = ptrtoint ptr %ring_cookie to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %ring_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %132)
  %cmp.not = icmp eq i64 %132, -1
  br i1 %cmp.not, label %sw.epilog.done_crit_edge, label %if.then56

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %133 = or i16 %129, -32766
  %134 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %mode, align 2
  %conv62 = trunc i64 %132 to i16
  %result = getelementptr inbounds %struct.enetc_cmd_rfse, ptr %rfse, i32 0, i32 21
  %135 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv62, ptr %result, align 4
  br label %done

done:                                             ; preds = %if.then56, %sw.epilog.done_crit_edge, %entry.done_crit_edge
  %location = getelementptr inbounds %struct.ethtool_rx_flow_spec, ptr %fs, i32 0, i32 6
  %136 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %location, align 8
  %call = call i32 @enetc_set_fs_entry(ptr noundef %si, ptr noundef nonnull %rfse, i32 noundef %137) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %done ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %rfse) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_fs_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_get_rss_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_rss_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @enetc_pf_ethtool_ops, !1, !"enetc_pf_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 755, i32 33}
!2 = !{ptr @enetc_si_regs, !3, !"enetc_si_regs", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 8, i32 18}
!4 = !{ptr @enetc_txbdr_regs, !5, !"enetc_txbdr_regs", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 15, i32 18}
!6 = !{ptr @enetc_rxbdr_regs, !7, !"enetc_rxbdr_regs", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 21, i32 18}
!8 = !{ptr @enetc_port_regs, !9, !"enetc_port_regs", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 27, i32 18}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 580, i32 4}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 585, i32 4}
!14 = !{ptr @enetc_si_counters, !15, !"enetc_si_counters", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 97, i32 3}
!16 = !{ptr @tx_ring_stats, !17, !"tx_ring_stats", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 203, i32 19}
!18 = !{ptr @rx_ring_stats, !19, !"rx_ring_stats", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 192, i32 19}
!20 = !{ptr @enetc_port_counters, !21, !"enetc_port_counters", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 127, i32 3}
!22 = !{ptr @enetc_get_rsshash.rsshash, !23, !"rsshash", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 307, i32 19}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 371, i32 26}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 666, i32 12}
!28 = !{ptr @enetc_vf_ethtool_ops, !29, !"enetc_vf_ethtool_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_ethtool.c", i32 783, i32 33}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2152607217}
!40 = !{i64 5065095}
!41 = !{i64 5065513}
!42 = !{i64 2152605862}
!43 = !{i64 1177849, i64 1177876}
!44 = !{i64 1178544, i64 1178571, i64 1178604, i64 1178625, i64 1178652, i64 1178678}
