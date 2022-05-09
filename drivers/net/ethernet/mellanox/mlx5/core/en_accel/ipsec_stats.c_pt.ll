; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_stats_grp = type { i16, ptr, ptr, ptr, ptr }
%struct.counter_desc = type { [32 x i8], i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.217, %struct.anon.231, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.217 = type { %struct.anon.224 }
%struct.anon.224 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.226 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.225, i64, i32, [28 x i8] }
%union.anon.225 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.226 = type { %struct.anon.227 }
%struct.anon.227 = type { %struct.anon.228, [0 x %struct.mlx5_mtt] }
%struct.anon.228 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.231 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.214, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.214 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.220, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.223, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.220 = type { %struct.anon.221 }
%struct.anon.221 = type { i8, i8, i16, i32 }
%union.anon.223 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.232, i32 }
%union.anon.232 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.215, i32, i32 }
%union.anon.215 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.219 }
%union.anon.219 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.246, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.246 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.247 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.247 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.248 }
%struct.anon.248 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5e_stats = type { %struct.mlx5e_sw_stats, %struct.mlx5e_qcounter_stats, %struct.mlx5e_vnic_env_stats, %struct.mlx5e_vport_stats, %struct.mlx5e_pport_stats, %struct.rtnl_link_stats64, %struct.mlx5e_pcie_stats }
%struct.mlx5e_sw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_qcounter_stats = type { i32, i32 }
%struct.mlx5e_vnic_env_stats = type { [66 x i64] }
%struct.mlx5e_vport_stats = type { [66 x i64] }
%struct.mlx5e_pport_stats = type { [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [8 x [32 x i64]] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_pcie_stats = type { [32 x i64] }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, [48 x i8], %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.mlx5e_ptp_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], [8 x %struct.mlx5e_ptp_cq_stats], %struct.mlx5e_rq_stats, [24 x i8] }
%struct.mlx5e_ptp_cq_stats = type { i64, i64, i64, i64 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.mlx5e_ipsec = type { ptr, [1024 x %struct.hlist_head], i8, %struct.spinlock, %struct.ida, %struct.mlx5e_ipsec_sw_stats, %struct.mlx5e_ipsec_stats, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5e_ipsec_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.mlx5e_ipsec_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@mlx5e_stats_grp_ipsec_sw = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_ipsec_sw_num_stats, ptr @mlx5e_stats_grp_ipsec_sw_fill_strings, ptr @mlx5e_stats_grp_ipsec_sw_fill_stats, ptr @mlx5e_stats_grp_ipsec_sw_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_ipsec_hw = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_ipsec_hw_num_stats, ptr @mlx5e_stats_grp_ipsec_hw_fill_strings, ptr @mlx5e_stats_grp_ipsec_hw_fill_stats, ptr @mlx5e_stats_grp_ipsec_hw_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_sw_stats_desc = internal constant { [8 x %struct.counter_desc], [64 x i8] } { [8 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ipsec_rx_drop_sp_alloc\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ipsec_rx_drop_sadb_miss\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ipsec_rx_drop_syndrome\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ipsec_tx_drop_bundle\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"ipsec_tx_drop_no_state\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"ipsec_tx_drop_not_ip\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"ipsec_tx_drop_trailer\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"ipsec_tx_drop_metadata\00\00\00\00\00\00\00\00\00\00", i32 56 }], [64 x i8] zeroinitializer }, align 32
@mlx5e_ipsec_hw_stats_desc = internal constant { [14 x %struct.counter_desc], [104 x i8] } { [14 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ipsec_dec_in_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ipsec_dec_out_packets\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ipsec_dec_bypass_packets\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ipsec_enc_in_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"ipsec_enc_out_packets\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"ipsec_enc_bypass_packets\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"ipsec_dec_drop_packets\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"ipsec_dec_auth_fail_packets\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"ipsec_enc_drop_packets\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"ipsec_add_sa_success\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"ipsec_add_sa_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"ipsec_del_sa_success\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"ipsec_del_sa_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"ipsec_cmd_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }], [104 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"mlx5e_stats_grp_ipsec_sw\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 146, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"mlx5e_stats_grp_ipsec_hw\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 147, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"mlx5e_ipsec_sw_stats_desc\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 60, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"mlx5e_ipsec_hw_stats_desc\00", align 1
@___asan_gen_.11 = private constant [66 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 43, i32 34 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mlx5e_stats_grp_ipsec_sw, ptr @mlx5e_stats_grp_ipsec_hw, ptr @mlx5e_ipsec_sw_stats_desc, ptr @mlx5e_ipsec_hw_stats_desc], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_ipsec_sw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_ipsec_hw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_sw_stats_desc to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ipsec_hw_stats_desc to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_sw_num_stats(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 0, i32 8
  ret i32 %cond
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_sw_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @mlx5e_ipsec_sw_stats_desc) #9
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 1)) #9
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 2)) #9
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 3)) #9
  %inc.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 4)) #9
  %inc.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 5)) #9
  %inc.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc.5, 192
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 6)) #9
  %inc.7 = add i32 %idx, 8
  %inc.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc.6, 224
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([8 x %struct.counter_desc], ptr @mlx5e_ipsec_sw_stats_desc, i32 0, i32 7)) #9
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc.7, %for.body.preheader ]
  ret i32 %idx.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_sw_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec, align 4
  %sw_stats = getelementptr inbounds %struct.mlx5e_ipsec, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sw_stats, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %sw_stats) #6
  %inc = add i32 %idx, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %idx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %arrayidx2, align 8
  %5 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipsec, align 4
  %add.ptr.1 = getelementptr %struct.mlx5e_ipsec, ptr %6, i32 0, i32 5, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.1, i32 noundef 8) #6
  %call.i.1 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.1) #6
  %inc.1 = add i32 %idx, 2
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 %inc
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call.i.1, ptr %arrayidx2.1, align 8
  %8 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipsec, align 4
  %add.ptr.2 = getelementptr %struct.mlx5e_ipsec, ptr %9, i32 0, i32 5, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.2, i32 noundef 8) #6
  %call.i.2 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.2) #6
  %inc.2 = add i32 %idx, 3
  %arrayidx2.2 = getelementptr i64, ptr %data, i32 %inc.1
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i.2, ptr %arrayidx2.2, align 8
  %11 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipsec, align 4
  %add.ptr.3 = getelementptr %struct.mlx5e_ipsec, ptr %12, i32 0, i32 5, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.3, i32 noundef 8) #6
  %call.i.3 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.3) #6
  %inc.3 = add i32 %idx, 4
  %arrayidx2.3 = getelementptr i64, ptr %data, i32 %inc.2
  %13 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.3, ptr %arrayidx2.3, align 8
  %14 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipsec, align 4
  %add.ptr.4 = getelementptr %struct.mlx5e_ipsec, ptr %15, i32 0, i32 5, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.4, i32 noundef 8) #6
  %call.i.4 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.4) #6
  %inc.4 = add i32 %idx, 5
  %arrayidx2.4 = getelementptr i64, ptr %data, i32 %inc.3
  %16 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i.4, ptr %arrayidx2.4, align 8
  %17 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipsec, align 4
  %add.ptr.5 = getelementptr %struct.mlx5e_ipsec, ptr %18, i32 0, i32 5, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.5, i32 noundef 8) #6
  %call.i.5 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.5) #6
  %inc.5 = add i32 %idx, 6
  %arrayidx2.5 = getelementptr i64, ptr %data, i32 %inc.4
  %19 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.5, ptr %arrayidx2.5, align 8
  %20 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipsec, align 4
  %add.ptr.6 = getelementptr %struct.mlx5e_ipsec, ptr %21, i32 0, i32 5, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.6, i32 noundef 8) #6
  %call.i.6 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.6) #6
  %inc.6 = add i32 %idx, 7
  %arrayidx2.6 = getelementptr i64, ptr %data, i32 %inc.5
  %22 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call.i.6, ptr %arrayidx2.6, align 8
  %23 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipsec, align 4
  %add.ptr.7 = getelementptr %struct.mlx5e_ipsec, ptr %24, i32 0, i32 5, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.7, i32 noundef 8) #6
  %call.i.7 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.7) #6
  %inc.7 = add i32 %idx, 8
  %arrayidx2.7 = getelementptr i64, ptr %data, i32 %inc.6
  %25 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %call.i.7, ptr %arrayidx2.7, align 8
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc.7, %for.body.preheader ]
  ret i32 %idx.addr.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_ipsec_sw_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_hw_num_stats(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_fpga_ipsec_device_caps(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %phi.sel = select i1 %tobool1.not, i32 0, i32 14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_hw_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_fpga_ipsec_device_caps(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %for.body.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call2 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @mlx5e_ipsec_hw_stats_desc) #9
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call2.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 1)) #9
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call2.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 2)) #9
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call2.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 3)) #9
  %inc.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call2.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 4)) #9
  %inc.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call2.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 5)) #9
  %inc.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc.5, 192
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call2.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 6)) #9
  %inc.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc.6, 224
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call2.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 7)) #9
  %inc.7 = shl i32 %idx, 5
  %mul.8 = add i32 %inc.7, 256
  %add.ptr.8 = getelementptr i8, ptr %data, i32 %mul.8
  %call2.8 = tail call ptr @strcpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 8)) #9
  %inc.8 = shl i32 %idx, 5
  %mul.9 = add i32 %inc.8, 288
  %add.ptr.9 = getelementptr i8, ptr %data, i32 %mul.9
  %call2.9 = tail call ptr @strcpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 9)) #9
  %inc.9 = shl i32 %idx, 5
  %mul.10 = add i32 %inc.9, 320
  %add.ptr.10 = getelementptr i8, ptr %data, i32 %mul.10
  %call2.10 = tail call ptr @strcpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 10)) #9
  %inc.10 = shl i32 %idx, 5
  %mul.11 = add i32 %inc.10, 352
  %add.ptr.11 = getelementptr i8, ptr %data, i32 %mul.11
  %call2.11 = tail call ptr @strcpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 11)) #9
  %inc.11 = shl i32 %idx, 5
  %mul.12 = add i32 %inc.11, 384
  %add.ptr.12 = getelementptr i8, ptr %data, i32 %mul.12
  %call2.12 = tail call ptr @strcpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 12)) #9
  %inc.13 = add i32 %idx, 14
  %inc.12 = shl i32 %idx, 5
  %mul.13 = add i32 %inc.12, 416
  %add.ptr.13 = getelementptr i8, ptr %data, i32 %mul.13
  %call2.13 = tail call ptr @strcpy(ptr noundef %add.ptr.13, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @mlx5e_ipsec_hw_stats_desc, i32 0, i32 13)) #9
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %land.lhs.true.if.end_crit_edge ], [ %idx, %entry.if.end_crit_edge ], [ %inc.13, %for.body.preheader ]
  ret i32 %idx.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ipsec_hw_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %call = tail call i32 @mlx5_fpga_ipsec_device_caps(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %for.body.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec, align 4
  %stats = getelementptr inbounds %struct.mlx5e_ipsec, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stats, align 8
  %inc = add i32 %idx, 1
  %arrayidx3 = getelementptr i64, ptr %data, i32 %idx
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx3, align 8
  %9 = load ptr, ptr %ipsec, align 4
  %add.ptr.1 = getelementptr %struct.mlx5e_ipsec, ptr %9, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx3.1 = getelementptr i64, ptr %data, i32 %inc
  %12 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx3.1, align 8
  %13 = load ptr, ptr %ipsec, align 4
  %add.ptr.2 = getelementptr %struct.mlx5e_ipsec, ptr %13, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx3.2 = getelementptr i64, ptr %data, i32 %inc.1
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx3.2, align 8
  %17 = load ptr, ptr %ipsec, align 4
  %add.ptr.3 = getelementptr %struct.mlx5e_ipsec, ptr %17, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx3.3 = getelementptr i64, ptr %data, i32 %inc.2
  %20 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx3.3, align 8
  %21 = load ptr, ptr %ipsec, align 4
  %add.ptr.4 = getelementptr %struct.mlx5e_ipsec, ptr %21, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.4, align 8
  %inc.4 = add i32 %idx, 5
  %arrayidx3.4 = getelementptr i64, ptr %data, i32 %inc.3
  %24 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx3.4, align 8
  %25 = load ptr, ptr %ipsec, align 4
  %add.ptr.5 = getelementptr %struct.mlx5e_ipsec, ptr %25, i32 0, i32 6, i32 5
  %26 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.5, align 8
  %inc.5 = add i32 %idx, 6
  %arrayidx3.5 = getelementptr i64, ptr %data, i32 %inc.4
  %28 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx3.5, align 8
  %29 = load ptr, ptr %ipsec, align 4
  %add.ptr.6 = getelementptr %struct.mlx5e_ipsec, ptr %29, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.6, align 8
  %inc.6 = add i32 %idx, 7
  %arrayidx3.6 = getelementptr i64, ptr %data, i32 %inc.5
  %32 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx3.6, align 8
  %33 = load ptr, ptr %ipsec, align 4
  %add.ptr.7 = getelementptr %struct.mlx5e_ipsec, ptr %33, i32 0, i32 6, i32 7
  %34 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.7, align 8
  %inc.7 = add i32 %idx, 8
  %arrayidx3.7 = getelementptr i64, ptr %data, i32 %inc.6
  %36 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx3.7, align 8
  %37 = load ptr, ptr %ipsec, align 4
  %add.ptr.8 = getelementptr %struct.mlx5e_ipsec, ptr %37, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.8, align 8
  %inc.8 = add i32 %idx, 9
  %arrayidx3.8 = getelementptr i64, ptr %data, i32 %inc.7
  %40 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx3.8, align 8
  %41 = load ptr, ptr %ipsec, align 4
  %add.ptr.9 = getelementptr %struct.mlx5e_ipsec, ptr %41, i32 0, i32 6, i32 9
  %42 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.9, align 8
  %inc.9 = add i32 %idx, 10
  %arrayidx3.9 = getelementptr i64, ptr %data, i32 %inc.8
  %44 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx3.9, align 8
  %45 = load ptr, ptr %ipsec, align 4
  %add.ptr.10 = getelementptr %struct.mlx5e_ipsec, ptr %45, i32 0, i32 6, i32 10
  %46 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.10, align 8
  %inc.10 = add i32 %idx, 11
  %arrayidx3.10 = getelementptr i64, ptr %data, i32 %inc.9
  %48 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx3.10, align 8
  %49 = load ptr, ptr %ipsec, align 4
  %add.ptr.11 = getelementptr %struct.mlx5e_ipsec, ptr %49, i32 0, i32 6, i32 11
  %50 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.11, align 8
  %inc.11 = add i32 %idx, 12
  %arrayidx3.11 = getelementptr i64, ptr %data, i32 %inc.10
  %52 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx3.11, align 8
  %53 = load ptr, ptr %ipsec, align 4
  %add.ptr.12 = getelementptr %struct.mlx5e_ipsec, ptr %53, i32 0, i32 6, i32 12
  %54 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.12, align 8
  %inc.12 = add i32 %idx, 13
  %arrayidx3.12 = getelementptr i64, ptr %data, i32 %inc.11
  %56 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx3.12, align 8
  %57 = load ptr, ptr %ipsec, align 4
  %add.ptr.13 = getelementptr %struct.mlx5e_ipsec, ptr %57, i32 0, i32 6, i32 13
  %58 = ptrtoint ptr %add.ptr.13 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr.13, align 8
  %inc.13 = add i32 %idx, 14
  %arrayidx3.13 = getelementptr i64, ptr %data, i32 %inc.12
  %60 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx3.13, align 8
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %land.lhs.true.if.end_crit_edge ], [ %idx, %entry.if.end_crit_edge ], [ %inc.13, %for.body.preheader ]
  ret i32 %idx.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_ipsec_hw_update_stats(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %stats = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 6
  %call = tail call i32 @mlx5_accel_ipsec_counters_read(ptr noundef %3, ptr noundef %stats, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec, align 4
  %stats5 = getelementptr inbounds %struct.mlx5e_ipsec, ptr %5, i32 0, i32 6
  %6 = call ptr @memset(ptr %stats5, i32 0, i32 112)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_ipsec_device_caps(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_ipsec_counters_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @mlx5e_stats_grp_ipsec_sw, !1, !"mlx5e_stats_grp_ipsec_sw", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c", i32 146, i32 1}
!2 = !{ptr @mlx5e_stats_grp_ipsec_hw, !3, !"mlx5e_stats_grp_ipsec_hw", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c", i32 147, i32 1}
!4 = !{ptr @mlx5e_ipsec_sw_stats_desc, !5, !"mlx5e_ipsec_sw_stats_desc", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c", i32 60, i32 34}
!6 = !{ptr @mlx5e_ipsec_hw_stats_desc, !7, !"mlx5e_ipsec_hw_stats_desc", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_stats.c", i32 43, i32 34}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
