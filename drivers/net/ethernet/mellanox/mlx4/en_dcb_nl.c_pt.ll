; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx4_cmd_mailbox = type { ptr, i32 }
%struct.mlx4_congestion_control_mb_prio_802_1_qau_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, [39 x i32] }
%struct.ieee_qcn = type { [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.126, i32, i32, i32 }
%union.anon.126 = type { ptr }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ieee_qcn_stats = type { [8 x i64], [8 x i32] }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.dcb_app = type { i8, i8, i16 }

@mlx4_en_dcbnl_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @mlx4_en_dcbnl_ieee_getets, ptr @mlx4_en_dcbnl_ieee_setets, ptr @mlx4_en_dcbnl_ieee_getmaxrate, ptr @mlx4_en_dcbnl_ieee_setmaxrate, ptr @mlx4_en_dcbnl_ieee_getqcn, ptr @mlx4_en_dcbnl_ieee_setqcn, ptr @mlx4_en_dcbnl_ieee_getqcnstats, ptr @mlx4_en_dcbnl_ieee_getpfc, ptr @mlx4_en_dcbnl_ieee_setpfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_get_state, ptr @mlx4_en_dcbnl_set_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_set_pfc_cfg, ptr @mlx4_en_dcbnl_get_pfc_cfg, ptr @mlx4_en_dcbnl_set_all, ptr @mlx4_en_dcbnl_getcap, ptr @mlx4_en_dcbnl_getnumtcs, ptr null, ptr @mlx4_en_dcbnl_getpfcstate, ptr @mlx4_en_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_setapp, ptr @mlx4_en_dcbnl_getapp, ptr null, ptr null, ptr @mlx4_en_dcbnl_getdcbx, ptr @mlx4_en_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mlx4_en_dcbnl_pfc_ops = dso_local constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_ieee_getpfc, ptr @mlx4_en_dcbnl_ieee_setpfc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_set_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_set_pfc_cfg, ptr @mlx4_en_dcbnl_get_pfc_cfg, ptr @mlx4_en_dcbnl_set_all, ptr null, ptr @mlx4_en_dcbnl_getnumtcs, ptr null, ptr @mlx4_en_dcbnl_getpfcstate, ptr @mlx4_en_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_dcbnl_setapp, ptr @mlx4_en_dcbnl_getapp, ptr null, ptr null, ptr @mlx4_en_dcbnl_getdcbx, ptr @mlx4_en_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Bad priority in UP <=> TC mapping. TC: %d, UP: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TC[%d]: Not supported TSA: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bad ETS BW sum: %d. Should be exactly 100%%\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed setting pause params\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"mlx4_en_dcbnl_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 710, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"mlx4_en_dcbnl_pfc_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 737, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 313, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 327, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 334, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 420, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [50 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 435, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mlx4_en_dcbnl_ops, ptr @mlx4_en_dcbnl_pfc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_dcbnl_pfc_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_getets(ptr noundef readonly %dev, ptr nocapture noundef writeonly %ets) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ets1 = getelementptr i8, ptr %dev, i32 68344
  %tobool.not = icmp eq ptr %ets1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %0 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %ets_cap, align 1
  %cbs = getelementptr i8, ptr %dev, i32 68346
  %1 = ptrtoint ptr %cbs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cbs, align 1
  %cbs2 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 2
  %3 = ptrtoint ptr %cbs2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %cbs2, align 1
  %tc_tx_bw = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 3
  %tc_tx_bw3 = getelementptr i8, ptr %dev, i32 68347
  %4 = ptrtoint ptr %tc_tx_bw3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %tc_tx_bw3, align 1
  %6 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %tc_tx_bw, align 1
  %tc_tsa = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tc_tsa6 = getelementptr i8, ptr %dev, i32 68363
  %7 = ptrtoint ptr %tc_tsa6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %tc_tsa6, align 1
  %9 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %tc_tsa, align 1
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %prio_tc9 = getelementptr i8, ptr %dev, i32 68371
  %10 = ptrtoint ptr %prio_tc9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %prio_tc9, align 1
  %12 = ptrtoint ptr %prio_tc to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %prio_tc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef %ets) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp1.i = icmp ugt i8 %3, 7
  br i1 %cmp1.i, label %entry.if.then.i_crit_edge, label %if.end.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.044.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i8 [ %3, %entry.if.then.i_crit_edge ], [ %10, %for.inc.i.if.then.i_crit_edge ], [ %17, %for.inc.1.i.if.then.i_crit_edge ], [ %24, %for.inc.2.i.if.then.i_crit_edge ], [ %31, %for.inc.3.i.if.then.i_crit_edge ], [ %38, %for.inc.4.i.if.then.i_crit_edge ], [ %45, %for.inc.5.i.if.then.i_crit_edge ], [ %52, %for.inc.6.i.if.then.i_crit_edge ]
  %conv.i = zext i8 %.lcssa.i to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1, i32 noundef %i.044.lcssa.i, i32 noundef %conv.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %arrayidx6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.i.for.inc.i_crit_edge
    i8 0, label %if.end.i.for.inc.i_crit_edge29
    i8 2, label %sw.bb8.i
  ]

if.end.i.for.inc.i_crit_edge29:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %8 to i32
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.7.i.sw.default.i_crit_edge, %if.end.6.i.sw.default.i_crit_edge, %if.end.5.i.sw.default.i_crit_edge, %if.end.4.i.sw.default.i_crit_edge, %if.end.3.i.sw.default.i_crit_edge, %if.end.2.i.sw.default.i_crit_edge, %if.end.1.i.sw.default.i_crit_edge, %if.end.i.sw.default.i_crit_edge
  %.lcssa52.i = phi i8 [ %5, %if.end.i.sw.default.i_crit_edge ], [ %12, %if.end.1.i.sw.default.i_crit_edge ], [ %19, %if.end.2.i.sw.default.i_crit_edge ], [ %26, %if.end.3.i.sw.default.i_crit_edge ], [ %33, %if.end.4.i.sw.default.i_crit_edge ], [ %40, %if.end.5.i.sw.default.i_crit_edge ], [ %47, %if.end.6.i.sw.default.i_crit_edge ], [ %54, %if.end.7.i.sw.default.i_crit_edge ]
  %i.044.lcssa50.i = phi i32 [ 0, %if.end.i.sw.default.i_crit_edge ], [ 1, %if.end.1.i.sw.default.i_crit_edge ], [ 2, %if.end.2.i.sw.default.i_crit_edge ], [ 3, %if.end.3.i.sw.default.i_crit_edge ], [ 4, %if.end.4.i.sw.default.i_crit_edge ], [ 5, %if.end.5.i.sw.default.i_crit_edge ], [ 6, %if.end.6.i.sw.default.i_crit_edge ], [ 7, %if.end.7.i.sw.default.i_crit_edge ]
  %conv7.i = zext i8 %.lcssa52.i to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.2, i32 noundef %i.044.lcssa50.i, i32 noundef %conv7.i) #8
  br label %cleanup

for.inc.i:                                        ; preds = %sw.bb8.i, %if.end.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge29
  %total_ets_bw.1.i = phi i32 [ %conv10.i, %sw.bb8.i ], [ 0, %if.end.i.for.inc.i_crit_edge ], [ 0, %if.end.i.for.inc.i_crit_edge29 ]
  %has_ets_tc.1.i = phi i32 [ 1, %sw.bb8.i ], [ 0, %if.end.i.for.inc.i_crit_edge ], [ 0, %if.end.i.for.inc.i_crit_edge29 ]
  %arrayidx.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %10)
  %cmp1.1.i = icmp ugt i8 %10, 7
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %if.end.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.1.i:                                       ; preds = %for.inc.i
  %arrayidx6.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.1.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %12, label %if.end.1.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.1.i.for.inc.1.i_crit_edge
    i8 0, label %if.end.1.i.for.inc.1.i_crit_edge30
    i8 2, label %sw.bb8.1.i
  ]

if.end.1.i.for.inc.1.i_crit_edge30:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.end.1.i.sw.default.i_crit_edge:                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.1.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.1.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.1.i, align 1
  %conv10.1.i = zext i8 %15 to i32
  %add.1.i = add nuw nsw i32 %total_ets_bw.1.i, %conv10.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb8.1.i, %if.end.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge30
  %total_ets_bw.1.1.i = phi i32 [ %add.1.i, %sw.bb8.1.i ], [ %total_ets_bw.1.i, %if.end.1.i.for.inc.1.i_crit_edge ], [ %total_ets_bw.1.i, %if.end.1.i.for.inc.1.i_crit_edge30 ]
  %has_ets_tc.1.1.i = phi i32 [ 1, %sw.bb8.1.i ], [ %has_ets_tc.1.i, %if.end.1.i.for.inc.1.i_crit_edge ], [ %has_ets_tc.1.i, %if.end.1.i.for.inc.1.i_crit_edge30 ]
  %arrayidx.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp1.2.i = icmp ugt i8 %17, 7
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %if.end.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %arrayidx6.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6.2.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %19, label %if.end.2.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.2.i.for.inc.2.i_crit_edge
    i8 0, label %if.end.2.i.for.inc.2.i_crit_edge31
    i8 2, label %sw.bb8.2.i
  ]

if.end.2.i.for.inc.2.i_crit_edge31:               ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.end.2.i.sw.default.i_crit_edge:                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.2.i:                                       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.2.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.2.i, align 1
  %conv10.2.i = zext i8 %22 to i32
  %add.2.i = add nuw nsw i32 %total_ets_bw.1.1.i, %conv10.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.bb8.2.i, %if.end.2.i.for.inc.2.i_crit_edge, %if.end.2.i.for.inc.2.i_crit_edge31
  %total_ets_bw.1.2.i = phi i32 [ %add.2.i, %sw.bb8.2.i ], [ %total_ets_bw.1.1.i, %if.end.2.i.for.inc.2.i_crit_edge ], [ %total_ets_bw.1.1.i, %if.end.2.i.for.inc.2.i_crit_edge31 ]
  %has_ets_tc.1.2.i = phi i32 [ 1, %sw.bb8.2.i ], [ %has_ets_tc.1.1.i, %if.end.2.i.for.inc.2.i_crit_edge ], [ %has_ets_tc.1.1.i, %if.end.2.i.for.inc.2.i_crit_edge31 ]
  %arrayidx.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %24)
  %cmp1.3.i = icmp ugt i8 %24, 7
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %if.end.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %arrayidx6.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx6.3.i, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %26, label %if.end.3.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.3.i.for.inc.3.i_crit_edge
    i8 0, label %if.end.3.i.for.inc.3.i_crit_edge32
    i8 2, label %sw.bb8.3.i
  ]

if.end.3.i.for.inc.3.i_crit_edge32:               ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.end.3.i.sw.default.i_crit_edge:                ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.3.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9.3.i, align 1
  %conv10.3.i = zext i8 %29 to i32
  %add.3.i = add nuw nsw i32 %total_ets_bw.1.2.i, %conv10.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.bb8.3.i, %if.end.3.i.for.inc.3.i_crit_edge, %if.end.3.i.for.inc.3.i_crit_edge32
  %total_ets_bw.1.3.i = phi i32 [ %add.3.i, %sw.bb8.3.i ], [ %total_ets_bw.1.2.i, %if.end.3.i.for.inc.3.i_crit_edge ], [ %total_ets_bw.1.2.i, %if.end.3.i.for.inc.3.i_crit_edge32 ]
  %has_ets_tc.1.3.i = phi i32 [ 1, %sw.bb8.3.i ], [ %has_ets_tc.1.2.i, %if.end.3.i.for.inc.3.i_crit_edge ], [ %has_ets_tc.1.2.i, %if.end.3.i.for.inc.3.i_crit_edge32 ]
  %arrayidx.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %30 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %31)
  %cmp1.4.i = icmp ugt i8 %31, 7
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %if.end.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  %arrayidx6.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.4.i, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %33, label %if.end.4.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.4.i.for.inc.4.i_crit_edge
    i8 0, label %if.end.4.i.for.inc.4.i_crit_edge33
    i8 2, label %sw.bb8.4.i
  ]

if.end.4.i.for.inc.4.i_crit_edge33:               ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.end.4.i.for.inc.4.i_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.end.4.i.sw.default.i_crit_edge:                ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.4.i:                                       ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9.4.i, align 1
  %conv10.4.i = zext i8 %36 to i32
  %add.4.i = add nuw nsw i32 %total_ets_bw.1.3.i, %conv10.4.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %sw.bb8.4.i, %if.end.4.i.for.inc.4.i_crit_edge, %if.end.4.i.for.inc.4.i_crit_edge33
  %total_ets_bw.1.4.i = phi i32 [ %add.4.i, %sw.bb8.4.i ], [ %total_ets_bw.1.3.i, %if.end.4.i.for.inc.4.i_crit_edge ], [ %total_ets_bw.1.3.i, %if.end.4.i.for.inc.4.i_crit_edge33 ]
  %has_ets_tc.1.4.i = phi i32 [ 1, %sw.bb8.4.i ], [ %has_ets_tc.1.3.i, %if.end.4.i.for.inc.4.i_crit_edge ], [ %has_ets_tc.1.3.i, %if.end.4.i.for.inc.4.i_crit_edge33 ]
  %arrayidx.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp1.5.i = icmp ugt i8 %38, 7
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %if.end.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.5.i:                                       ; preds = %for.inc.4.i
  %arrayidx6.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %39 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx6.5.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %40, label %if.end.5.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.5.i.for.inc.5.i_crit_edge
    i8 0, label %if.end.5.i.for.inc.5.i_crit_edge34
    i8 2, label %sw.bb8.5.i
  ]

if.end.5.i.for.inc.5.i_crit_edge34:               ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

if.end.5.i.for.inc.5.i_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i

if.end.5.i.sw.default.i_crit_edge:                ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.5.i:                                       ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.5.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx9.5.i, align 1
  %conv10.5.i = zext i8 %43 to i32
  %add.5.i = add nuw nsw i32 %total_ets_bw.1.4.i, %conv10.5.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %sw.bb8.5.i, %if.end.5.i.for.inc.5.i_crit_edge, %if.end.5.i.for.inc.5.i_crit_edge34
  %total_ets_bw.1.5.i = phi i32 [ %add.5.i, %sw.bb8.5.i ], [ %total_ets_bw.1.4.i, %if.end.5.i.for.inc.5.i_crit_edge ], [ %total_ets_bw.1.4.i, %if.end.5.i.for.inc.5.i_crit_edge34 ]
  %has_ets_tc.1.5.i = phi i32 [ 1, %sw.bb8.5.i ], [ %has_ets_tc.1.4.i, %if.end.5.i.for.inc.5.i_crit_edge ], [ %has_ets_tc.1.4.i, %if.end.5.i.for.inc.5.i_crit_edge34 ]
  %arrayidx.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %44 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %cmp1.6.i = icmp ugt i8 %45, 7
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %if.end.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.6.i:                                       ; preds = %for.inc.5.i
  %arrayidx6.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx6.6.i, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %47, label %if.end.6.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.6.i.for.inc.6.i_crit_edge
    i8 0, label %if.end.6.i.for.inc.6.i_crit_edge35
    i8 2, label %sw.bb8.6.i
  ]

if.end.6.i.for.inc.6.i_crit_edge35:               ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

if.end.6.i.for.inc.6.i_crit_edge:                 ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i

if.end.6.i.sw.default.i_crit_edge:                ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.6.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.6.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %49 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx9.6.i, align 1
  %conv10.6.i = zext i8 %50 to i32
  %add.6.i = add nuw nsw i32 %total_ets_bw.1.5.i, %conv10.6.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %sw.bb8.6.i, %if.end.6.i.for.inc.6.i_crit_edge, %if.end.6.i.for.inc.6.i_crit_edge35
  %total_ets_bw.1.6.i = phi i32 [ %add.6.i, %sw.bb8.6.i ], [ %total_ets_bw.1.5.i, %if.end.6.i.for.inc.6.i_crit_edge ], [ %total_ets_bw.1.5.i, %if.end.6.i.for.inc.6.i_crit_edge35 ]
  %has_ets_tc.1.6.i = phi i32 [ 1, %sw.bb8.6.i ], [ %has_ets_tc.1.5.i, %if.end.6.i.for.inc.6.i_crit_edge ], [ %has_ets_tc.1.5.i, %if.end.6.i.for.inc.6.i_crit_edge35 ]
  %arrayidx.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %51 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %52)
  %cmp1.7.i = icmp ugt i8 %52, 7
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %if.end.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.7.i:                                       ; preds = %for.inc.6.i
  %arrayidx6.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %53 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6.7.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %54, label %if.end.7.i.sw.default.i_crit_edge [
    i8 -1, label %if.end.7.i.for.inc.7.i_crit_edge
    i8 0, label %if.end.7.i.for.inc.7.i_crit_edge36
    i8 2, label %sw.bb8.7.i
  ]

if.end.7.i.for.inc.7.i_crit_edge36:               ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.i

if.end.7.i.for.inc.7.i_crit_edge:                 ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7.i

if.end.7.i.sw.default.i_crit_edge:                ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb8.7.i:                                       ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.7.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %56 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx9.7.i, align 1
  %conv10.7.i = zext i8 %57 to i32
  %add.7.i = add nuw nsw i32 %total_ets_bw.1.6.i, %conv10.7.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %sw.bb8.7.i, %if.end.7.i.for.inc.7.i_crit_edge, %if.end.7.i.for.inc.7.i_crit_edge36
  %total_ets_bw.1.7.i = phi i32 [ %add.7.i, %sw.bb8.7.i ], [ %total_ets_bw.1.6.i, %if.end.7.i.for.inc.7.i_crit_edge ], [ %total_ets_bw.1.6.i, %if.end.7.i.for.inc.7.i_crit_edge36 ]
  %has_ets_tc.1.7.i = phi i32 [ 1, %sw.bb8.7.i ], [ %has_ets_tc.1.6.i, %if.end.7.i.for.inc.7.i_crit_edge ], [ %has_ets_tc.1.6.i, %if.end.7.i.for.inc.7.i_crit_edge36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_ets_tc.1.7.i)
  %tobool.not.i = icmp eq i32 %has_ets_tc.1.7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %total_ets_bw.1.7.i)
  %cmp14.not.i = icmp eq i32 %total_ets_bw.1.7.i, 100
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %if.end, label %if.then16.i

if.then16.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.3, i32 noundef %total_ets_bw.1.7.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.inc.7.i
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %conv = trunc i32 %61 to i8
  %call4 = tail call i32 @mlx4_SET_PORT_PRIO2TC(ptr noundef %59, i8 noundef zeroext %conv, ptr noundef %arrayidx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @mlx4_en_config_port_scheduler(ptr noundef %add.ptr.i, ptr noundef %ets, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ets12 = getelementptr i8, ptr %dev, i32 68344
  %62 = call ptr @memcpy(ptr %ets12, ptr %ets, i32 59)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then16.i, %sw.default.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %if.then16.i ], [ -95, %sw.default.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_getmaxrate(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %maxrate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 68404
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %mul = mul i32 %conv, 100000
  %conv2 = sext i32 %mul to i64
  %2 = ptrtoint ptr %maxrate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv2, ptr %maxrate, align 8
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 68406
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %4 to i32
  %mul.1 = mul i32 %conv.1, 100000
  %conv2.1 = sext i32 %mul.1 to i64
  %arrayidx3.1 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv2.1, ptr %arrayidx3.1, align 8
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 68408
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %7 to i32
  %mul.2 = mul i32 %conv.2, 100000
  %conv2.2 = sext i32 %mul.2 to i64
  %arrayidx3.2 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2.2, ptr %arrayidx3.2, align 8
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 68410
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %10 to i32
  %mul.3 = mul i32 %conv.3, 100000
  %conv2.3 = sext i32 %mul.3 to i64
  %arrayidx3.3 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv2.3, ptr %arrayidx3.3, align 8
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 68412
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %13 to i32
  %mul.4 = mul i32 %conv.4, 100000
  %conv2.4 = sext i32 %mul.4 to i64
  %arrayidx3.4 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv2.4, ptr %arrayidx3.4, align 8
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 68414
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %16 to i32
  %mul.5 = mul i32 %conv.5, 100000
  %conv2.5 = sext i32 %mul.5 to i64
  %arrayidx3.5 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2.5, ptr %arrayidx3.5, align 8
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 68416
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %19 to i32
  %mul.6 = mul i32 %conv.6, 100000
  %conv2.6 = sext i32 %mul.6 to i64
  %arrayidx3.6 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv2.6, ptr %arrayidx3.6, align 8
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 68418
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %22 to i32
  %mul.7 = mul i32 %conv.7, 100000
  %conv2.7 = sext i32 %mul.7 to i64
  %arrayidx3.7 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv2.7, ptr %arrayidx3.7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_setmaxrate(ptr noundef %dev, ptr nocapture noundef readonly %maxrate) #1 align 64 {
entry:
  %tmp = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i16], ptr %tmp, i32 0, i32 7
  %7 = ptrtoint ptr %maxrate to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %maxrate, align 8
  %sub = add i64 %8, 99999
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub, i32 0) #11, !srcloc !25
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !26
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 16
  %conv = trunc i64 %div1581.i.i to i16
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %tmp, align 2
  %arrayidx.1 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  %sub.1 = add i64 %13, 99999
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.1, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.1 = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i.1 = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.1, i64 %asmresult.i.i.i.1, i32 %asmresult4.i.i.i.1) #11, !srcloc !26
  %asmresult10.i.i.i.1 = extractvalue { i64, i32 } %15, 0
  %div1581.i.i.1 = lshr i64 %asmresult10.i.i.i.1, 16
  %conv.1 = trunc i64 %div1581.i.i.1 to i16
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.1, ptr %0, align 2
  %arrayidx.2 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.2, align 8
  %sub.2 = add i64 %18, 99999
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.2, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.2 = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i.2 = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.2, i64 %asmresult.i.i.i.2, i32 %asmresult4.i.i.i.2) #11, !srcloc !26
  %asmresult10.i.i.i.2 = extractvalue { i64, i32 } %20, 0
  %div1581.i.i.2 = lshr i64 %asmresult10.i.i.i.2, 16
  %conv.2 = trunc i64 %div1581.i.i.2 to i16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.2, ptr %1, align 2
  %arrayidx.3 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.3, align 8
  %sub.3 = add i64 %23, 99999
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.3, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.3 = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.3 = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.3, i64 %asmresult.i.i.i.3, i32 %asmresult4.i.i.i.3) #11, !srcloc !26
  %asmresult10.i.i.i.3 = extractvalue { i64, i32 } %25, 0
  %div1581.i.i.3 = lshr i64 %asmresult10.i.i.i.3, 16
  %conv.3 = trunc i64 %div1581.i.i.3 to i16
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.3, ptr %2, align 2
  %arrayidx.4 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.4, align 8
  %sub.4 = add i64 %28, 99999
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.4, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.4 = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i.i.4 = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.4, i64 %asmresult.i.i.i.4, i32 %asmresult4.i.i.i.4) #11, !srcloc !26
  %asmresult10.i.i.i.4 = extractvalue { i64, i32 } %30, 0
  %div1581.i.i.4 = lshr i64 %asmresult10.i.i.i.4, 16
  %conv.4 = trunc i64 %div1581.i.i.4 to i16
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.4, ptr %3, align 2
  %arrayidx.5 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.5, align 8
  %sub.5 = add i64 %33, 99999
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.5, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.5 = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i.5 = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.5, i64 %asmresult.i.i.i.5, i32 %asmresult4.i.i.i.5) #11, !srcloc !26
  %asmresult10.i.i.i.5 = extractvalue { i64, i32 } %35, 0
  %div1581.i.i.5 = lshr i64 %asmresult10.i.i.i.5, 16
  %conv.5 = trunc i64 %div1581.i.i.5 to i16
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.5, ptr %4, align 2
  %arrayidx.6 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.6, align 8
  %sub.6 = add i64 %38, 99999
  %39 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.6, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.6 = extractvalue { i64, i32 } %39, 0
  %asmresult4.i.i.i.6 = extractvalue { i64, i32 } %39, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.6, i64 %asmresult.i.i.i.6, i32 %asmresult4.i.i.i.6) #11, !srcloc !26
  %asmresult10.i.i.i.6 = extractvalue { i64, i32 } %40, 0
  %div1581.i.i.6 = lshr i64 %asmresult10.i.i.i.6, 16
  %conv.6 = trunc i64 %div1581.i.i.6 to i16
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.6, ptr %5, align 2
  %arrayidx.7 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.7, align 8
  %sub.7 = add i64 %43, 99999
  %44 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %sub.7, i32 0) #11, !srcloc !25
  %asmresult.i.i.i.7 = extractvalue { i64, i32 } %44, 0
  %asmresult4.i.i.i.7 = extractvalue { i64, i32 } %44, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %sub.7, i64 %asmresult.i.i.i.7, i32 %asmresult4.i.i.i.7) #11, !srcloc !26
  %asmresult10.i.i.i.7 = extractvalue { i64, i32 } %45, 0
  %div1581.i.i.7 = lshr i64 %asmresult10.i.i.i.7, 16
  %conv.7 = trunc i64 %div1581.i.i.7 to i16
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.7, ptr %6, align 2
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call3 = call fastcc i32 @mlx4_en_config_port_scheduler(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %maxrate4 = getelementptr i8, ptr %dev, i32 68404
  %47 = call ptr @memcpy(ptr %maxrate4, ptr %tmp, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_getqcn(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %qcn) #1 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %3) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call4, align 4
  %port = getelementptr i8, ptr %dev, i32 51652
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call4, i32 0, i32 1
  %extended_enable = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 3
  %rppp_max_rps = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 4
  %rpg_time_reset = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 5
  %rpg_byte_reset = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 6
  %rpg_threshold = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 7
  %rpg_max_rate = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 8
  %rpg_ai_rate = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 9
  %rpg_hai_rate = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 10
  %rpg_gd = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 11
  %rpg_min_dec_fac = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 12
  %rpg_min_rate = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %7, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end7
  %i.096 = phi i32 [ 0, %if.end7 ], [ %inc, %if.end17.for.body_crit_edge ]
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %shl8 = shl nuw nsw i32 256, %i.096
  %or = or i32 %9, %shl8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma, align 4
  %conv = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %16 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %call.i = call i32 @__mlx4_cmd(ptr noundef %13, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 104, i32 noundef 60000, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end17, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %for.body
  %17 = ptrtoint ptr %extended_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extended_enable, align 4
  %shr = lshr i32 %18, 31
  %conv18 = trunc i32 %shr to i8
  %arrayidx = getelementptr [8 x i8], ptr %qcn, i32 0, i32 %i.096
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %rppp_max_rps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rppp_max_rps, align 4
  %arrayidx20 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 1, i32 %i.096
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx20, align 4
  %23 = ptrtoint ptr %rpg_time_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rpg_time_reset, align 4
  %arrayidx22 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 2, i32 %i.096
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx22, align 4
  %26 = ptrtoint ptr %rpg_byte_reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rpg_byte_reset, align 4
  %arrayidx24 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 3, i32 %i.096
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx24, align 4
  %29 = ptrtoint ptr %rpg_threshold to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rpg_threshold, align 4
  %arrayidx26 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 4, i32 %i.096
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx26, align 4
  %32 = ptrtoint ptr %rpg_max_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rpg_max_rate, align 4
  %arrayidx28 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 5, i32 %i.096
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx28, align 4
  %35 = ptrtoint ptr %rpg_ai_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rpg_ai_rate, align 4
  %arrayidx30 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 6, i32 %i.096
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx30, align 4
  %38 = ptrtoint ptr %rpg_hai_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rpg_hai_rate, align 4
  %arrayidx32 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 7, i32 %i.096
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx32, align 4
  %41 = ptrtoint ptr %rpg_gd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rpg_gd, align 4
  %arrayidx34 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 8, i32 %i.096
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx34, align 4
  %44 = ptrtoint ptr %rpg_min_dec_fac to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rpg_min_dec_fac, align 4
  %arrayidx36 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 9, i32 %i.096
  %46 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx36, align 4
  %47 = ptrtoint ptr %rpg_min_rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rpg_min_rate, align 4
  %arrayidx38 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 10, i32 %i.096
  %49 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 84, i32 %i.096
  %50 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 11, i32 %i.096
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx40, align 4
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end17.cleanup.sink.split_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %for.body.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ]
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %56, ptr noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_setqcn(ptr nocapture noundef %dev, ptr nocapture noundef readonly %qcn) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %3) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call4, i32 0, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call4, align 4
  %port = getelementptr i8, ptr %dev, i32 51652
  %modify_enable_low = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 1
  %extended_enable = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 3
  %rppp_max_rps14 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 4
  %rpg_time_reset16 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 5
  %rpg_byte_reset18 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 6
  %rpg_threshold20 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 7
  %rpg_max_rate22 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 8
  %rpg_ai_rate24 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 9
  %rpg_hai_rate26 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 10
  %rpg_gd28 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 11
  %rpg_min_dec_fac30 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 12
  %rpg_min_rate32 = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_params, ptr %9, i32 0, i32 13
  br label %for.body

for.cond:                                         ; preds = %if.end42
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end7
  %i.0111 = phi i32 [ 0, %if.end7 ], [ %inc, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %shl9 = shl nuw nsw i32 256, %i.0111
  %or = or i32 %11, %shl9
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1073741824, ptr %9, align 4
  %13 = ptrtoint ptr %modify_enable_low to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -4194304, ptr %modify_enable_low, align 4
  %arrayidx = getelementptr [8 x i8], ptr %qcn, i32 0, i32 %i.0111
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %15 to i32
  %shl12 = shl i32 %conv11, 31
  %16 = ptrtoint ptr %extended_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl12, ptr %extended_enable, align 4
  %arrayidx13 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 1, i32 %i.0111
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  %19 = ptrtoint ptr %rppp_max_rps14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rppp_max_rps14, align 4
  %arrayidx15 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 2, i32 %i.0111
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %22 = ptrtoint ptr %rpg_time_reset16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rpg_time_reset16, align 4
  %arrayidx17 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 3, i32 %i.0111
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17, align 4
  %25 = ptrtoint ptr %rpg_byte_reset18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rpg_byte_reset18, align 4
  %arrayidx19 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 4, i32 %i.0111
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %28 = ptrtoint ptr %rpg_threshold20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rpg_threshold20, align 4
  %arrayidx21 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 5, i32 %i.0111
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx21, align 4
  %31 = ptrtoint ptr %rpg_max_rate22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rpg_max_rate22, align 4
  %arrayidx23 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 6, i32 %i.0111
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx23, align 4
  %34 = ptrtoint ptr %rpg_ai_rate24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rpg_ai_rate24, align 4
  %arrayidx25 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 7, i32 %i.0111
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx25, align 4
  %37 = ptrtoint ptr %rpg_hai_rate26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rpg_hai_rate26, align 4
  %arrayidx27 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 8, i32 %i.0111
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx27, align 4
  %40 = ptrtoint ptr %rpg_gd28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rpg_gd28, align 4
  %arrayidx29 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 9, i32 %i.0111
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx29, align 4
  %43 = ptrtoint ptr %rpg_min_dec_fac30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rpg_min_dec_fac30, align 4
  %arrayidx31 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 10, i32 %i.0111
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx31, align 4
  %46 = ptrtoint ptr %rpg_min_rate32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %rpg_min_rate32, align 4
  %arrayidx33 = getelementptr %struct.ieee_qcn, ptr %qcn, i32 0, i32 11, i32 %i.0111
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 84, i32 %i.0111
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx34, align 4
  %50 = load i32, ptr %arrayidx33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp37 = icmp eq i32 %50, 3
  br i1 %cmp37, label %if.then39, label %for.body.if.end42_crit_edge

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %extended_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %extended_enable, align 4
  %or41 = or i32 %52, 1073741824
  store i32 %or41, ptr %extended_enable, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %for.body.if.end42_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %56, i64 noundef %conv, ptr noundef null, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 4, i16 noundef zeroext 104, i32 noundef 60000, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %for.cond, label %if.end42.cleanup.sink.split_crit_edge

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end42.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %if.end42.cleanup.sink.split_crit_edge ], [ 0, %for.cond.cleanup.sink.split_crit_edge ]
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %60, ptr noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_getqcnstats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %qcn_stats) #1 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %3) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call4, align 4
  %port = getelementptr i8, ptr %dev, i32 51652
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call4, i32 0, i32 1
  %rppp_created_rps = getelementptr inbounds %struct.mlx4_congestion_control_mb_prio_802_1_qau_statistics, ptr %7, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end7
  %i.045 = phi i32 [ 0, %if.end7 ], [ %inc, %if.end17.for.body_crit_edge ]
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %shl8 = shl nuw nsw i32 256, %i.045
  %or = or i32 %9, %shl8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma, align 4
  %conv = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %16 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %call.i = call i32 @__mlx4_cmd(ptr noundef %13, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 1, i16 noundef zeroext 104, i32 noundef 60000, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end17, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %for.body
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %7, align 8
  %arrayidx = getelementptr [8 x i64], ptr %qcn_stats, i32 0, i32 %i.045
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx, align 8
  %20 = ptrtoint ptr %rppp_created_rps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rppp_created_rps, align 8
  %arrayidx20 = getelementptr %struct.ieee_qcn_stats, ptr %qcn_stats, i32 0, i32 1, i32 %i.045
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx20, align 4
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end17.cleanup.sink.split_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %for.body.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ]
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %26, ptr noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %pfc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %pfc, align 8
  %prof = getelementptr i8, ptr %dev, i32 2308
  %1 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prof, align 4
  %tx_ppp = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %tx_ppp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_ppp, align 4
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %5 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pfc_en, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %prof1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %prof1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prof1, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pfc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc, align 8
  %conv = zext i8 %7 to i32
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %8 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pfc_en, align 1
  %conv3 = zext i8 %9 to i32
  %mbc = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 2
  %10 = ptrtoint ptr %mbc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mbc, align 2
  %conv4 = zext i8 %11 to i32
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %delay, align 4
  %conv5 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.4, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %rx_pause6 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %rx_pause6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_pause6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %do.end.land.end_crit_edge, label %land.rhs

do.end.land.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pfc_en9 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %16 = ptrtoint ptr %pfc_en9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pfc_en9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end.land.end_crit_edge
  %18 = phi i1 [ false, %do.end.land.end_crit_edge ], [ %tobool10.not, %land.rhs ]
  %tx_pause11 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %tx_pause11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_pause11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %land.end.land.end18_crit_edge, label %land.rhs14

land.end.land.end18_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end18

land.rhs14:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %pfc_en15 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %21 = ptrtoint ptr %pfc_en15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pfc_en15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool16.not = icmp eq i8 %22, 0
  br label %land.end18

land.end18:                                       ; preds = %land.rhs14, %land.end.land.end18_crit_edge
  %23 = phi i1 [ false, %land.end.land.end18_crit_edge ], [ %tobool16.not, %land.rhs14 ]
  %pfc_en20 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %24 = ptrtoint ptr %pfc_en20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pfc_en20, align 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %conv25 = trunc i32 %29 to i8
  %rx_skb_size = getelementptr i8, ptr %dev, i32 61464
  %30 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_skb_size, align 8
  %add = add i32 %31, 4
  %conv26 = zext i1 %23 to i8
  %conv28 = zext i1 %18 to i8
  %call30 = tail call i32 @mlx4_SET_PORT_general(ptr noundef %27, i8 noundef zeroext %conv25, i32 noundef %add, i8 noundef zeroext %conv26, i8 noundef zeroext %25, i8 noundef zeroext %conv28, i8 noundef zeroext %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end33:                                         ; preds = %land.end18
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %stats_bitmap = getelementptr i8, ptr %dev, i32 63652
  tail call void @mlx4_en_update_pfc_stats_bitmap(ptr noundef %33, ptr noundef %stats_bitmap, i8 noundef zeroext %25, i8 noundef zeroext %conv28, i8 noundef zeroext %25, i8 noundef zeroext %conv26) #8
  %tx_ppp40 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %tx_ppp40 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %25, ptr %tx_ppp40, align 4
  %rx_ppp42 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %rx_ppp42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %25, ptr %rx_ppp42, align 2
  %36 = ptrtoint ptr %rx_pause6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv28, ptr %rx_pause6, align 1
  %37 = ptrtoint ptr %tx_pause11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv26, ptr %tx_pause11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32
  ret i32 %call30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_get_state(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 61440
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 6
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_set_state(ptr noundef %dev, i8 noundef zeroext %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 68488
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool1 = icmp ne i8 %state, 0
  %flags = getelementptr i8, ptr %dev, i32 61440
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %cmp = xor i1 %tobool1, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %4, -65
  %masksel = select i1 %tobool1, i32 64, i32 0
  %storemerge = or i32 %and16, %masksel
  %num_tcs.0 = select i1 %tobool1, i8 8, i8 0
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %flags, align 8
  %call19 = tail call i32 @mlx4_en_alloc_tx_queue_per_tc(ptr noundef %dev, i8 noundef zeroext %num_tcs.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end11 ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx4_en_dcbnl_set_pfc_cfg(ptr nocapture noundef writeonly %netdev, i32 noundef %priority, i8 noundef zeroext %setting) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i8 %setting to i32
  %cee_config = getelementptr i8, ptr %netdev, i32 68452
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 85, i32 1, i32 %priority
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %cee_config to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %cee_config, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx4_en_dcbnl_get_pfc_cfg(ptr nocapture noundef readonly %netdev, i32 noundef %priority, ptr nocapture noundef writeonly %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 85, i32 1, i32 %priority
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %setting, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_set_all(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %prof1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %prof1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prof1, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 68488
  %4 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dcbx_cap, align 8
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cee_config = getelementptr i8, ptr %netdev, i32 68452
  %7 = ptrtoint ptr %cee_config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cee_config, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %rx_ppp5 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %rx_ppp5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_ppp5, align 2
  %tx_ppp6 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %tx_ppp6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_ppp6, align 4
  %arrayidx = getelementptr i8, ptr %netdev, i32 68456
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %14, label %if.then4.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb27
    i32 3, label %sw.bb37
  ]

if.then4.sw.epilog_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = and i8 %12, -2
  %conv18 = and i8 %10, -2
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = or i8 %12, 1
  %conv26 = or i8 %10, 1
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = or i8 %12, 1
  %conv36 = and i8 %10, -2
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv42 = and i8 %12, -2
  %conv46 = or i8 %10, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb27, %sw.bb19, %sw.bb, %if.then4.sw.epilog_crit_edge
  %tx_ppp.1 = phi i8 [ %12, %if.then4.sw.epilog_crit_edge ], [ %conv42, %sw.bb37 ], [ %conv31, %sw.bb27 ], [ %conv22, %sw.bb19 ], [ %conv13, %sw.bb ]
  %rx_ppp.1 = phi i8 [ %10, %if.then4.sw.epilog_crit_edge ], [ %conv46, %sw.bb37 ], [ %conv36, %sw.bb27 ], [ %conv26, %sw.bb19 ], [ %conv18, %sw.bb ]
  %arrayidx.1 = getelementptr i8, ptr %netdev, i32 68460
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %17, label %sw.epilog.sw.epilog.1_crit_edge [
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb19.1
    i32 2, label %sw.bb27.1
    i32 3, label %sw.bb37.1
  ]

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.1

sw.bb37.1:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.1 = and i8 %tx_ppp.1, -3
  %conv46.1 = or i8 %rx_ppp.1, 2
  br label %sw.epilog.1

sw.bb27.1:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.1 = or i8 %tx_ppp.1, 2
  %conv36.1 = and i8 %rx_ppp.1, -3
  br label %sw.epilog.1

sw.bb19.1:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.1 = or i8 %tx_ppp.1, 2
  %conv26.1 = or i8 %rx_ppp.1, 2
  br label %sw.epilog.1

sw.bb.1:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.1 = and i8 %tx_ppp.1, -3
  %conv18.1 = and i8 %rx_ppp.1, -3
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %sw.bb19.1, %sw.bb27.1, %sw.bb37.1, %sw.epilog.sw.epilog.1_crit_edge
  %tx_ppp.1.1 = phi i8 [ %tx_ppp.1, %sw.epilog.sw.epilog.1_crit_edge ], [ %conv42.1, %sw.bb37.1 ], [ %conv31.1, %sw.bb27.1 ], [ %conv22.1, %sw.bb19.1 ], [ %conv13.1, %sw.bb.1 ]
  %rx_ppp.1.1 = phi i8 [ %rx_ppp.1, %sw.epilog.sw.epilog.1_crit_edge ], [ %conv46.1, %sw.bb37.1 ], [ %conv36.1, %sw.bb27.1 ], [ %conv26.1, %sw.bb19.1 ], [ %conv18.1, %sw.bb.1 ]
  %arrayidx.2 = getelementptr i8, ptr %netdev, i32 68464
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %20, label %sw.epilog.1.sw.epilog.2_crit_edge [
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb19.2
    i32 2, label %sw.bb27.2
    i32 3, label %sw.bb37.2
  ]

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.2

sw.bb37.2:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.2 = and i8 %tx_ppp.1.1, -5
  %conv46.2 = or i8 %rx_ppp.1.1, 4
  br label %sw.epilog.2

sw.bb27.2:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.2 = or i8 %tx_ppp.1.1, 4
  %conv36.2 = and i8 %rx_ppp.1.1, -5
  br label %sw.epilog.2

sw.bb19.2:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.2 = or i8 %tx_ppp.1.1, 4
  %conv26.2 = or i8 %rx_ppp.1.1, 4
  br label %sw.epilog.2

sw.bb.2:                                          ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.2 = and i8 %tx_ppp.1.1, -5
  %conv18.2 = and i8 %rx_ppp.1.1, -5
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb.2, %sw.bb19.2, %sw.bb27.2, %sw.bb37.2, %sw.epilog.1.sw.epilog.2_crit_edge
  %tx_ppp.1.2 = phi i8 [ %tx_ppp.1.1, %sw.epilog.1.sw.epilog.2_crit_edge ], [ %conv42.2, %sw.bb37.2 ], [ %conv31.2, %sw.bb27.2 ], [ %conv22.2, %sw.bb19.2 ], [ %conv13.2, %sw.bb.2 ]
  %rx_ppp.1.2 = phi i8 [ %rx_ppp.1.1, %sw.epilog.1.sw.epilog.2_crit_edge ], [ %conv46.2, %sw.bb37.2 ], [ %conv36.2, %sw.bb27.2 ], [ %conv26.2, %sw.bb19.2 ], [ %conv18.2, %sw.bb.2 ]
  %arrayidx.3 = getelementptr i8, ptr %netdev, i32 68468
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %23, label %sw.epilog.2.sw.epilog.3_crit_edge [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb19.3
    i32 2, label %sw.bb27.3
    i32 3, label %sw.bb37.3
  ]

sw.epilog.2.sw.epilog.3_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.3

sw.bb37.3:                                        ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.3 = and i8 %tx_ppp.1.2, -9
  %conv46.3 = or i8 %rx_ppp.1.2, 8
  br label %sw.epilog.3

sw.bb27.3:                                        ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.3 = or i8 %tx_ppp.1.2, 8
  %conv36.3 = and i8 %rx_ppp.1.2, -9
  br label %sw.epilog.3

sw.bb19.3:                                        ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.3 = or i8 %tx_ppp.1.2, 8
  %conv26.3 = or i8 %rx_ppp.1.2, 8
  br label %sw.epilog.3

sw.bb.3:                                          ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.3 = and i8 %tx_ppp.1.2, -9
  %conv18.3 = and i8 %rx_ppp.1.2, -9
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb.3, %sw.bb19.3, %sw.bb27.3, %sw.bb37.3, %sw.epilog.2.sw.epilog.3_crit_edge
  %tx_ppp.1.3 = phi i8 [ %tx_ppp.1.2, %sw.epilog.2.sw.epilog.3_crit_edge ], [ %conv42.3, %sw.bb37.3 ], [ %conv31.3, %sw.bb27.3 ], [ %conv22.3, %sw.bb19.3 ], [ %conv13.3, %sw.bb.3 ]
  %rx_ppp.1.3 = phi i8 [ %rx_ppp.1.2, %sw.epilog.2.sw.epilog.3_crit_edge ], [ %conv46.3, %sw.bb37.3 ], [ %conv36.3, %sw.bb27.3 ], [ %conv26.3, %sw.bb19.3 ], [ %conv18.3, %sw.bb.3 ]
  %arrayidx.4 = getelementptr i8, ptr %netdev, i32 68472
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %26, label %sw.epilog.3.sw.epilog.4_crit_edge [
    i32 0, label %sw.bb.4
    i32 1, label %sw.bb19.4
    i32 2, label %sw.bb27.4
    i32 3, label %sw.bb37.4
  ]

sw.epilog.3.sw.epilog.4_crit_edge:                ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.4

sw.bb37.4:                                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.4 = and i8 %tx_ppp.1.3, -17
  %conv46.4 = or i8 %rx_ppp.1.3, 16
  br label %sw.epilog.4

sw.bb27.4:                                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.4 = or i8 %tx_ppp.1.3, 16
  %conv36.4 = and i8 %rx_ppp.1.3, -17
  br label %sw.epilog.4

sw.bb19.4:                                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.4 = or i8 %tx_ppp.1.3, 16
  %conv26.4 = or i8 %rx_ppp.1.3, 16
  br label %sw.epilog.4

sw.bb.4:                                          ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.4 = and i8 %tx_ppp.1.3, -17
  %conv18.4 = and i8 %rx_ppp.1.3, -17
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.bb.4, %sw.bb19.4, %sw.bb27.4, %sw.bb37.4, %sw.epilog.3.sw.epilog.4_crit_edge
  %tx_ppp.1.4 = phi i8 [ %tx_ppp.1.3, %sw.epilog.3.sw.epilog.4_crit_edge ], [ %conv42.4, %sw.bb37.4 ], [ %conv31.4, %sw.bb27.4 ], [ %conv22.4, %sw.bb19.4 ], [ %conv13.4, %sw.bb.4 ]
  %rx_ppp.1.4 = phi i8 [ %rx_ppp.1.3, %sw.epilog.3.sw.epilog.4_crit_edge ], [ %conv46.4, %sw.bb37.4 ], [ %conv36.4, %sw.bb27.4 ], [ %conv26.4, %sw.bb19.4 ], [ %conv18.4, %sw.bb.4 ]
  %arrayidx.5 = getelementptr i8, ptr %netdev, i32 68476
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.5, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %29, label %sw.epilog.4.sw.epilog.5_crit_edge [
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb19.5
    i32 2, label %sw.bb27.5
    i32 3, label %sw.bb37.5
  ]

sw.epilog.4.sw.epilog.5_crit_edge:                ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.5

sw.bb37.5:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.5 = and i8 %tx_ppp.1.4, -33
  %conv46.5 = or i8 %rx_ppp.1.4, 32
  br label %sw.epilog.5

sw.bb27.5:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.5 = or i8 %tx_ppp.1.4, 32
  %conv36.5 = and i8 %rx_ppp.1.4, -33
  br label %sw.epilog.5

sw.bb19.5:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.5 = or i8 %tx_ppp.1.4, 32
  %conv26.5 = or i8 %rx_ppp.1.4, 32
  br label %sw.epilog.5

sw.bb.5:                                          ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.5 = and i8 %tx_ppp.1.4, -33
  %conv18.5 = and i8 %rx_ppp.1.4, -33
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.bb.5, %sw.bb19.5, %sw.bb27.5, %sw.bb37.5, %sw.epilog.4.sw.epilog.5_crit_edge
  %tx_ppp.1.5 = phi i8 [ %tx_ppp.1.4, %sw.epilog.4.sw.epilog.5_crit_edge ], [ %conv42.5, %sw.bb37.5 ], [ %conv31.5, %sw.bb27.5 ], [ %conv22.5, %sw.bb19.5 ], [ %conv13.5, %sw.bb.5 ]
  %rx_ppp.1.5 = phi i8 [ %rx_ppp.1.4, %sw.epilog.4.sw.epilog.5_crit_edge ], [ %conv46.5, %sw.bb37.5 ], [ %conv36.5, %sw.bb27.5 ], [ %conv26.5, %sw.bb19.5 ], [ %conv18.5, %sw.bb.5 ]
  %arrayidx.6 = getelementptr i8, ptr %netdev, i32 68480
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.6, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %32, label %sw.epilog.5.sw.epilog.6_crit_edge [
    i32 0, label %sw.bb.6
    i32 1, label %sw.bb19.6
    i32 2, label %sw.bb27.6
    i32 3, label %sw.bb37.6
  ]

sw.epilog.5.sw.epilog.6_crit_edge:                ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.6

sw.bb37.6:                                        ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.6 = and i8 %tx_ppp.1.5, -65
  %conv46.6 = or i8 %rx_ppp.1.5, 64
  br label %sw.epilog.6

sw.bb27.6:                                        ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.6 = or i8 %tx_ppp.1.5, 64
  %conv36.6 = and i8 %rx_ppp.1.5, -65
  br label %sw.epilog.6

sw.bb19.6:                                        ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.6 = or i8 %tx_ppp.1.5, 64
  %conv26.6 = or i8 %rx_ppp.1.5, 64
  br label %sw.epilog.6

sw.bb.6:                                          ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.6 = and i8 %tx_ppp.1.5, -65
  %conv18.6 = and i8 %rx_ppp.1.5, -65
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.bb.6, %sw.bb19.6, %sw.bb27.6, %sw.bb37.6, %sw.epilog.5.sw.epilog.6_crit_edge
  %tx_ppp.1.6 = phi i8 [ %tx_ppp.1.5, %sw.epilog.5.sw.epilog.6_crit_edge ], [ %conv42.6, %sw.bb37.6 ], [ %conv31.6, %sw.bb27.6 ], [ %conv22.6, %sw.bb19.6 ], [ %conv13.6, %sw.bb.6 ]
  %rx_ppp.1.6 = phi i8 [ %rx_ppp.1.5, %sw.epilog.5.sw.epilog.6_crit_edge ], [ %conv46.6, %sw.bb37.6 ], [ %conv36.6, %sw.bb27.6 ], [ %conv26.6, %sw.bb19.6 ], [ %conv18.6, %sw.bb.6 ]
  %arrayidx.7 = getelementptr i8, ptr %netdev, i32 68484
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.7, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %35, label %sw.epilog.6.sw.epilog.7_crit_edge [
    i32 0, label %sw.bb.7
    i32 1, label %sw.bb19.7
    i32 2, label %sw.bb27.7
    i32 3, label %sw.bb37.7
  ]

sw.epilog.6.sw.epilog.7_crit_edge:                ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.7

sw.bb37.7:                                        ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #10
  %conv42.7 = and i8 %tx_ppp.1.6, 127
  %conv46.7 = or i8 %rx_ppp.1.6, -128
  br label %if.end68

sw.bb27.7:                                        ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.7 = or i8 %tx_ppp.1.6, -128
  %conv36.7 = and i8 %rx_ppp.1.6, 127
  br label %if.end68

sw.bb19.7:                                        ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #10
  %conv22.7 = or i8 %tx_ppp.1.6, -128
  %conv26.7 = or i8 %rx_ppp.1.6, -128
  br label %if.end68

sw.bb.7:                                          ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.7 = and i8 %tx_ppp.1.6, 127
  %conv18.7 = and i8 %rx_ppp.1.6, 127
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.bb.7, %sw.epilog.6.sw.epilog.7_crit_edge
  %tx_ppp.1.7 = phi i8 [ %tx_ppp.1.6, %sw.epilog.6.sw.epilog.7_crit_edge ], [ %conv13.7, %sw.bb.7 ]
  %rx_ppp.1.7 = phi i8 [ %rx_ppp.1.6, %sw.epilog.6.sw.epilog.7_crit_edge ], [ %conv18.7, %sw.bb.7 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_ppp.1.7)
  %tobool48.not = icmp eq i8 %rx_ppp.1.7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_ppp.1.7)
  %tobool50.not = icmp eq i8 %tx_ppp.1.7, 0
  %or.cond = select i1 %tobool48.not, i1 %tobool50.not, i1 false
  br i1 %or.cond, label %cond.false60, label %sw.epilog.7.if.end68_crit_edge

sw.epilog.7.if.end68_crit_edge:                   ; preds = %sw.epilog.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

cond.false60:                                     ; preds = %sw.epilog.7
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pause51 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %rx_pause51 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rx_pause51, align 1
  %tx_pause61 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %tx_pause61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_pause61, align 1
  br label %if.end68

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pause66 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %rx_pause66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_pause66, align 1
  %tx_pause67 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %tx_pause67 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_pause67, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.else, %cond.false60, %sw.epilog.7.if.end68_crit_edge, %sw.bb19.7, %sw.bb27.7, %sw.bb37.7
  %tx_pause.0 = phi i8 [ %44, %if.else ], [ %40, %cond.false60 ], [ 0, %sw.epilog.7.if.end68_crit_edge ], [ 0, %sw.bb37.7 ], [ 0, %sw.bb19.7 ], [ 0, %sw.bb27.7 ]
  %tx_ppp.2 = phi i8 [ 0, %if.else ], [ 0, %cond.false60 ], [ %tx_ppp.1.7, %sw.epilog.7.if.end68_crit_edge ], [ %conv42.7, %sw.bb37.7 ], [ %conv22.7, %sw.bb19.7 ], [ %conv31.7, %sw.bb27.7 ]
  %rx_pause.0 = phi i8 [ %42, %if.else ], [ %38, %cond.false60 ], [ 0, %sw.epilog.7.if.end68_crit_edge ], [ 0, %sw.bb37.7 ], [ 0, %sw.bb19.7 ], [ 0, %sw.bb27.7 ]
  %rx_ppp.2 = phi i8 [ 0, %if.else ], [ 0, %cond.false60 ], [ %rx_ppp.1.7, %sw.epilog.7.if.end68_crit_edge ], [ %conv46.7, %sw.bb37.7 ], [ %conv26.7, %sw.bb19.7 ], [ %conv36.7, %sw.bb27.7 ]
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 8
  %port = getelementptr i8, ptr %netdev, i32 51652
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %conv69 = trunc i32 %48 to i8
  %rx_skb_size = getelementptr i8, ptr %netdev, i32 61464
  %49 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_skb_size, align 8
  %add = add i32 %50, 4
  %call70 = tail call i32 @mlx4_SET_PORT_general(ptr noundef %46, i8 noundef zeroext %conv69, i32 noundef %add, i8 noundef zeroext %tx_pause.0, i8 noundef zeroext %tx_ppp.2, i8 noundef zeroext %rx_pause.0, i8 noundef zeroext %rx_ppp.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ppp74 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %tx_ppp74 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %tx_ppp.2, ptr %tx_ppp74, align 4
  %rx_ppp75 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %rx_ppp75 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %rx_ppp.2, ptr %rx_ppp75, align 2
  %tx_pause76 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %tx_pause76 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %tx_pause.0, ptr %tx_pause76, align 1
  %rx_pause77 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %rx_pause77 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %rx_pause.0, ptr %rx_pause77, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then72, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.then72 ], [ 0, %if.end73 ], [ 1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_getcap(ptr nocapture noundef readonly %dev, i32 noundef %capid, ptr nocapture noundef writeonly %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %capid, label %sw.default [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 9, label %sw.bb1
    i32 6, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dcbx_cap = getelementptr i8, ptr %dev, i32 68488
  %1 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dcbx_cap, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call4 = tail call i32 @mlx4_max_tc(ptr noundef %6) #8
  %shl = shl nuw i32 1, %call4
  %conv = trunc i32 %shl to i8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.default ], [ %conv, %sw.bb2 ], [ %2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %cap, align 1
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_getnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcid, ptr nocapture noundef writeonly %num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 61440
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tcid)
  %cmp = icmp eq i32 %tcid, 3
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @mlx4_max_tc(ptr noundef %5) #8
  %conv = trunc i32 %call2 to i8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %storemerge = phi i8 [ %conv, %if.then1 ], [ 0, %if.end.if.end3_crit_edge ]
  %6 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cee_config = getelementptr i8, ptr %netdev, i32 68452
  %0 = ptrtoint ptr %cee_config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cee_config, align 4, !range !27
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx4_en_dcbnl_setpfcstate(ptr nocapture noundef writeonly %netdev, i8 noundef zeroext %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool = icmp ne i8 %state, 0
  %cee_config = getelementptr i8, ptr %netdev, i32 68452
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %cee_config to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %cee_config, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_setapp(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id, i8 noundef zeroext %up) #1 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #8
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 68488
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %5 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %idtype, ptr %app, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %id, ptr %3, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %up, ptr %4, align 1
  %call1 = call i32 @dcb_setapp(ptr noundef %netdev, ptr noundef nonnull %app) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_dcbnl_getapp(ptr noundef %netdev, i8 noundef zeroext %idtype, i16 noundef zeroext %id) #1 align 64 {
entry:
  %app = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %app) #8
  %0 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %2 = ptrtoint ptr %app to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %idtype, ptr %app, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %id, ptr %1, align 2
  %dcbx_cap = getelementptr i8, ptr %netdev, i32 68488
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dcbx_cap, align 8
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call zeroext i8 @dcb_getapp(ptr noundef %netdev, ptr noundef nonnull %app) #8
  %conv2 = zext i8 %call1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %app) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_getdcbx(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx_cap = getelementptr i8, ptr %dev, i32 68488
  %0 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dcbx_cap, align 8
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx4_en_dcbnl_setdcbx(ptr noundef %dev, i8 noundef zeroext %mode) #1 align 64 {
entry:
  %ets = alloca %struct.ieee_ets, align 1
  %pfc = alloca %struct.ieee_pfc, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %ets) #8
  %0 = call ptr @memset(ptr %ets, i32 0, i32 59)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pfc) #8
  %1 = call ptr @memset(ptr %pfc, i32 0, i32 136)
  %conv = zext i8 %mode to i32
  %dcbx_cap = getelementptr i8, ptr %dev, i32 68488
  %2 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcbx_cap, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %mode)
  %cmp = icmp eq i8 %3, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

lor.lhs.false:                                    ; preds = %if.end
  %and8 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %4 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %.not = icmp eq i32 %4, 12
  %and12 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond68 = or i1 %.not, %tobool13.not
  br i1 %or.cond68, label %lor.lhs.false.err_crit_edge, label %if.end15

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end15:                                         ; preds = %lor.lhs.false
  %and5 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %5 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %mode, ptr %dcbx_cap, align 8
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %6 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %ets_cap, align 1
  %7 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %pfc, align 8
  br i1 %tobool6.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %call21 = call i32 @mlx4_en_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef nonnull %ets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.err_crit_edge

if.then20.err_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end24:                                         ; preds = %if.then20
  %call25 = call i32 @mlx4_en_dcbnl_ieee_setpfc(ptr noundef %dev, ptr noundef nonnull %pfc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end24.err_crit_edge

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end15
  br i1 %tobool9.not, label %if.else37, label %if.then32

if.then32:                                        ; preds = %if.else
  %call33 = tail call zeroext i8 @mlx4_en_dcbnl_set_all(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %tobool34.not = icmp eq i8 %call33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %if.then32.err_crit_edge

if.then32.err_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else37:                                        ; preds = %if.else
  %call38 = call i32 @mlx4_en_dcbnl_ieee_setets(ptr noundef %dev, ptr noundef nonnull %ets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.else37.err_crit_edge

if.else37.err_crit_edge:                          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end41:                                         ; preds = %if.else37
  %call42 = call i32 @mlx4_en_dcbnl_ieee_setpfc(ptr noundef %dev, ptr noundef nonnull %pfc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end45:                                         ; preds = %if.end41
  %call46 = call i32 @mlx4_en_alloc_tx_queue_per_tc(ptr noundef %dev, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end45.err_crit_edge

if.end45.err_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %if.end45.err_crit_edge, %if.end41.err_crit_edge, %if.else37.err_crit_edge, %if.then32.err_crit_edge, %if.end24.err_crit_edge, %if.then20.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end.err_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end45.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %err ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then32.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pfc) #8
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %ets) #8
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_PRIO2TC(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_config_port_scheduler(ptr noundef %priv, ptr noundef readonly %ets, ptr noundef %ratelimit) unnamed_addr #1 align 64 {
entry:
  %tc_tx_bw = alloca [8 x i8], align 8
  %pg = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc_tx_bw) #8
  %2 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %tc_tx_bw, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pg) #8
  %3 = ptrtoint ptr %pg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pg, align 8
  %tobool.not = icmp eq ptr %ets, null
  %ets2 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 82
  %spec.select = select i1 %tobool.not, ptr %ets2, ptr %ets
  %arrayidx = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %5, label %entry.for.inc_crit_edge [
    i8 -1, label %sw.bb
    i8 0, label %sw.bb10
    i8 2, label %sw.bb14
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx8, align 1
  br label %for.inc.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx12, align 1
  br label %for.inc.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  %narrow = select i1 %tobool19.not, i8 1, i8 %11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb14, %sw.bb10, %sw.bb
  %.sink = phi i8 [ 100, %sw.bb ], [ 100, %sw.bb10 ], [ %narrow, %sw.bb14 ]
  %num_strict.1.ph = phi i32 [ 0, %sw.bb ], [ 1, %sw.bb10 ], [ 0, %sw.bb14 ]
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %entry.for.inc_crit_edge
  %num_strict.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ %num_strict.1.ph, %for.inc.sink.split ]
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 6
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %14, label %for.inc.for.inc.1_crit_edge [
    i8 -1, label %sw.bb.1
    i8 0, label %sw.bb10.1
    i8 2, label %sw.bb14.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb14.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.1 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %arrayidx15.1, align 2
  %arrayidx17.1 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not.1 = icmp eq i8 %18, 0
  %narrow.1 = select i1 %tobool19.not.1, i8 1, i8 %18
  br label %for.inc.1.sink.split

sw.bb10.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nuw nsw i32 %num_strict.1, 1
  %conv11.1 = trunc i32 %num_strict.1 to i8
  %arrayidx12.1 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 6
  %19 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11.1, ptr %arrayidx12.1, align 2
  br label %for.inc.1.sink.split

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.1 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx8.1, align 2
  br label %for.inc.1.sink.split

for.inc.1.sink.split:                             ; preds = %sw.bb.1, %sw.bb10.1, %sw.bb14.1
  %.sink47 = phi i8 [ 100, %sw.bb.1 ], [ 100, %sw.bb10.1 ], [ %narrow.1, %sw.bb14.1 ]
  %num_strict.1.1.ph = phi i32 [ %num_strict.1, %sw.bb.1 ], [ %inc.1, %sw.bb10.1 ], [ %num_strict.1, %sw.bb14.1 ]
  %arrayidx9.1 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink47, ptr %arrayidx9.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1.sink.split, %for.inc.for.inc.1_crit_edge
  %num_strict.1.1 = phi i32 [ %num_strict.1, %for.inc.for.inc.1_crit_edge ], [ %num_strict.1.1.ph, %for.inc.1.sink.split ]
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 5
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %23, label %for.inc.1.for.inc.2_crit_edge [
    i8 -1, label %sw.bb.2
    i8 0, label %sw.bb10.2
    i8 2, label %sw.bb14.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

sw.bb14.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.2 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %arrayidx15.2, align 1
  %arrayidx17.2 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not.2 = icmp eq i8 %27, 0
  %narrow.2 = select i1 %tobool19.not.2, i8 1, i8 %27
  br label %for.inc.2.sink.split

sw.bb10.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc.2 = add nuw nsw i32 %num_strict.1.1, 1
  %conv11.2 = trunc i32 %num_strict.1.1 to i8
  %arrayidx12.2 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv11.2, ptr %arrayidx12.2, align 1
  br label %for.inc.2.sink.split

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.2 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx8.2, align 1
  br label %for.inc.2.sink.split

for.inc.2.sink.split:                             ; preds = %sw.bb.2, %sw.bb10.2, %sw.bb14.2
  %.sink48 = phi i8 [ 100, %sw.bb.2 ], [ 100, %sw.bb10.2 ], [ %narrow.2, %sw.bb14.2 ]
  %num_strict.1.2.ph = phi i32 [ %num_strict.1.1, %sw.bb.2 ], [ %inc.2, %sw.bb10.2 ], [ %num_strict.1.1, %sw.bb14.2 ]
  %arrayidx9.2 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink48, ptr %arrayidx9.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.2.sink.split, %for.inc.1.for.inc.2_crit_edge
  %num_strict.1.2 = phi i32 [ %num_strict.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %num_strict.1.2.ph, %for.inc.2.sink.split ]
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 4
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.3, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %32, label %for.inc.2.for.inc.3_crit_edge [
    i8 -1, label %sw.bb.3
    i8 0, label %sw.bb10.3
    i8 2, label %sw.bb14.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

sw.bb14.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.3 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %arrayidx15.3, align 4
  %arrayidx17.3 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx17.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool19.not.3 = icmp eq i8 %36, 0
  %narrow.3 = select i1 %tobool19.not.3, i8 1, i8 %36
  br label %for.inc.3.sink.split

sw.bb10.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %inc.3 = add nuw nsw i32 %num_strict.1.2, 1
  %conv11.3 = trunc i32 %num_strict.1.2 to i8
  %arrayidx12.3 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv11.3, ptr %arrayidx12.3, align 4
  br label %for.inc.3.sink.split

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.3 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx8.3, align 4
  br label %for.inc.3.sink.split

for.inc.3.sink.split:                             ; preds = %sw.bb.3, %sw.bb10.3, %sw.bb14.3
  %.sink49 = phi i8 [ 100, %sw.bb.3 ], [ 100, %sw.bb10.3 ], [ %narrow.3, %sw.bb14.3 ]
  %num_strict.1.3.ph = phi i32 [ %num_strict.1.2, %sw.bb.3 ], [ %inc.3, %sw.bb10.3 ], [ %num_strict.1.2, %sw.bb14.3 ]
  %arrayidx9.3 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink49, ptr %arrayidx9.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.3.sink.split, %for.inc.2.for.inc.3_crit_edge
  %num_strict.1.3 = phi i32 [ %num_strict.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %num_strict.1.3.ph, %for.inc.3.sink.split ]
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.4, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %41, label %for.inc.3.for.inc.4_crit_edge [
    i8 -1, label %sw.bb.4
    i8 0, label %sw.bb10.4
    i8 2, label %sw.bb14.4
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

sw.bb14.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.4 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 7, ptr %arrayidx15.4, align 1
  %arrayidx17.4 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx17.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool19.not.4 = icmp eq i8 %45, 0
  %narrow.4 = select i1 %tobool19.not.4, i8 1, i8 %45
  br label %for.inc.4.sink.split

sw.bb10.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %inc.4 = add nuw nsw i32 %num_strict.1.3, 1
  %conv11.4 = trunc i32 %num_strict.1.3 to i8
  %arrayidx12.4 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv11.4, ptr %arrayidx12.4, align 1
  br label %for.inc.4.sink.split

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.4 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx8.4, align 1
  br label %for.inc.4.sink.split

for.inc.4.sink.split:                             ; preds = %sw.bb.4, %sw.bb10.4, %sw.bb14.4
  %.sink50 = phi i8 [ 100, %sw.bb.4 ], [ 100, %sw.bb10.4 ], [ %narrow.4, %sw.bb14.4 ]
  %num_strict.1.4.ph = phi i32 [ %num_strict.1.3, %sw.bb.4 ], [ %inc.4, %sw.bb10.4 ], [ %num_strict.1.3, %sw.bb14.4 ]
  %arrayidx9.4 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink50, ptr %arrayidx9.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.4.sink.split, %for.inc.3.for.inc.4_crit_edge
  %num_strict.1.4 = phi i32 [ %num_strict.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %num_strict.1.4.ph, %for.inc.4.sink.split ]
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 2
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.5, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %50, label %for.inc.4.for.inc.5_crit_edge [
    i8 -1, label %sw.bb.5
    i8 0, label %sw.bb10.5
    i8 2, label %sw.bb14.5
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

sw.bb14.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.5 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 7, ptr %arrayidx15.5, align 2
  %arrayidx17.5 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx17.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool19.not.5 = icmp eq i8 %54, 0
  %narrow.5 = select i1 %tobool19.not.5, i8 1, i8 %54
  br label %for.inc.5.sink.split

sw.bb10.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %inc.5 = add nuw nsw i32 %num_strict.1.4, 1
  %conv11.5 = trunc i32 %num_strict.1.4 to i8
  %arrayidx12.5 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv11.5, ptr %arrayidx12.5, align 2
  br label %for.inc.5.sink.split

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.5 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx8.5, align 2
  br label %for.inc.5.sink.split

for.inc.5.sink.split:                             ; preds = %sw.bb.5, %sw.bb10.5, %sw.bb14.5
  %.sink51 = phi i8 [ 100, %sw.bb.5 ], [ 100, %sw.bb10.5 ], [ %narrow.5, %sw.bb14.5 ]
  %num_strict.1.5.ph = phi i32 [ %num_strict.1.4, %sw.bb.5 ], [ %inc.5, %sw.bb10.5 ], [ %num_strict.1.4, %sw.bb14.5 ]
  %arrayidx9.5 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink51, ptr %arrayidx9.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.5.sink.split, %for.inc.4.for.inc.5_crit_edge
  %num_strict.1.5 = phi i32 [ %num_strict.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %num_strict.1.5.ph, %for.inc.5.sink.split ]
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.6, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %59, label %for.inc.5.for.inc.6_crit_edge [
    i8 -1, label %sw.bb.6
    i8 0, label %sw.bb10.6
    i8 2, label %sw.bb14.6
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

sw.bb14.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.6 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 7, ptr %arrayidx15.6, align 1
  %arrayidx17.6 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx17.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool19.not.6 = icmp eq i8 %63, 0
  %narrow.6 = select i1 %tobool19.not.6, i8 1, i8 %63
  br label %for.inc.6.sink.split

sw.bb10.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %inc.6 = add nuw nsw i32 %num_strict.1.5, 1
  %conv11.6 = trunc i32 %num_strict.1.5 to i8
  %arrayidx12.6 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv11.6, ptr %arrayidx12.6, align 1
  br label %for.inc.6.sink.split

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.6 = getelementptr inbounds [8 x i8], ptr %pg, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx8.6, align 1
  br label %for.inc.6.sink.split

for.inc.6.sink.split:                             ; preds = %sw.bb.6, %sw.bb10.6, %sw.bb14.6
  %.sink52 = phi i8 [ 100, %sw.bb.6 ], [ 100, %sw.bb10.6 ], [ %narrow.6, %sw.bb14.6 ]
  %num_strict.1.6.ph = phi i32 [ %num_strict.1.5, %sw.bb.6 ], [ %inc.6, %sw.bb10.6 ], [ %num_strict.1.5, %sw.bb14.6 ]
  %arrayidx9.6 = getelementptr inbounds [8 x i8], ptr %tc_tx_bw, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink52, ptr %arrayidx9.6, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6.sink.split, %for.inc.5.for.inc.6_crit_edge
  %num_strict.1.6 = phi i32 [ %num_strict.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %num_strict.1.6.ph, %for.inc.6.sink.split ]
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 5, i32 0
  %67 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.7, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %68, label %for.inc.6.for.inc.7_crit_edge [
    i8 -1, label %sw.bb.7
    i8 0, label %sw.bb10.7
    i8 2, label %sw.bb14.7
  ]

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

sw.bb14.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 7, ptr %pg, align 8
  %arrayidx17.7 = getelementptr %struct.ieee_ets, ptr %spec.select, i32 0, i32 3, i32 0
  %71 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx17.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool19.not.7 = icmp eq i8 %72, 0
  %narrow.7 = select i1 %tobool19.not.7, i8 1, i8 %72
  %73 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %narrow.7, ptr %tc_tx_bw, align 8
  br label %for.inc.7

sw.bb10.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.7 = trunc i32 %num_strict.1.6 to i8
  %74 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv11.7, ptr %pg, align 8
  %75 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 100, ptr %tc_tx_bw, align 8
  br label %for.inc.7

sw.bb.7:                                          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %pg to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %pg, align 8
  %77 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 100, ptr %tc_tx_bw, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %sw.bb.7, %sw.bb10.7, %sw.bb14.7, %for.inc.6.for.inc.7_crit_edge
  %tobool3.not = icmp eq ptr %ratelimit, null
  %maxrate = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 83
  %cond7 = select i1 %tobool3.not, ptr %maxrate, ptr %ratelimit
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %conv26 = trunc i32 %81 to i8
  %call = call i32 @mlx4_SET_PORT_SCHEDULER(ptr noundef %79, i8 noundef zeroext %conv26, ptr noundef nonnull %tc_tx_bw, ptr noundef nonnull %pg, ptr noundef %cond7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc_tx_bw) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_SCHEDULER(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_general(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_update_pfc_stats_bitmap(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_alloc_tx_queue_per_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_max_tc(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_setapp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mlx4_en_dcbnl_ops, !1, !"mlx4_en_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 710, i32 29}
!2 = !{ptr @mlx4_en_dcbnl_pfc_ops, !3, !"mlx4_en_dcbnl_pfc_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 737, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 313, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 327, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 334, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 420, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_dcb_nl.c", i32 435, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 545382, i64 545409, i64 545431, i64 545459}
!26 = !{i64 545790, i64 545817, i64 545850, i64 545871, i64 545898, i64 545924}
!27 = !{i8 0, i8 2}
