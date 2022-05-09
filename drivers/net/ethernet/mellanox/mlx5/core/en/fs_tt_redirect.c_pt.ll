; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.219, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.219 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.181, %struct.anon.195, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.181 = type { %struct.anon.188 }
%struct.anon.188 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.190 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.189, i64, i32, [28 x i8] }
%union.anon.189 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { %struct.anon.192, [0 x %struct.mlx5_mtt] }
%struct.anon.192 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.195 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.178, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.178 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.184, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.187, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i8, i8, i16, i32 }
%union.anon.187 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.196, i32 }
%union.anon.196 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.179, i32, i32 }
%union.anon.179 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.183 }
%union.anon.183 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.210, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.210 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.211 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.211 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.212 }
%struct.anon.212 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_fs_udp = type { [2 x %struct.mlx5e_flow_table], [2 x ptr], i32 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.243 }
%struct.anon.243 = type { i32, i32 }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.mlx5e_fs_any = type { %struct.mlx5e_flow_table, ptr, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: add %s rule failed, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.mlx5e_fs_tt_redirect_udp_add_rule = private unnamed_addr constant [34 x i8] c"mlx5e_fs_tt_redirect_udp_add_rule\00", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: add ANY rule failed, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mlx5e_fs_tt_redirect_any_add_rule = private unnamed_addr constant [34 x i8] c"mlx5e_fs_tt_redirect_any_add_rule\00", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UDP v4\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UDP v6\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: modify ttc[%d] default destination failed, err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.fs_udp_disable = private unnamed_addr constant [15 x i8] c"fs_udp_disable\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fs_udp_create_table.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs_udp_create_table\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Created fs %s table id %u level %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: add default rule failed, fs type=%d, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.fs_udp_add_default_rule = private unnamed_addr constant [24 x i8] c"fs_udp_add_default_rule\00", align 1
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: modify ttc[%d] destination to accel failed, err(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.fs_udp_enable = private unnamed_addr constant [14 x i8] c"fs_udp_enable\00", align 1
@__func__.fs_any_disable = private unnamed_addr constant [15 x i8] c"fs_any_disable\00", align 1
@fs_any_create_table.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs_any_create_table\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Created fs ANY table id %u level %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: add default rule failed, fs type=ANY, err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.fs_any_add_default_rule = private unnamed_addr constant [24 x i8] c"fs_any_add_default_rule\00", align 1
@__func__.fs_any_enable = private unnamed_addr constant [14 x i8] c"fs_any_enable\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 109, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 386, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 30, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 32, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 265, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 228, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 132, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 287, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 494, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [63 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 409, i32 7 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_del_flow_rules(ptr noundef %rule) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_fs_tt_redirect_udp_add_rule(ptr nocapture noundef readonly %priv, i32 noundef %ttc_type, i32 noundef %tir_num, i16 noundef zeroext %d_port) local_unnamed_addr #0 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ttc_type)
  %switch.selectcmp.i = icmp eq i32 %ttc_type, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ttc_type)
  %switch.selectcmp2.i = icmp eq i32 %ttc_type, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #6
  %0 = getelementptr inbounds i8, ptr %dest, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %2 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %flow_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %switch.select3.i)
  %cmp = icmp eq i32 %switch.select3.i, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %udp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 11
  %5 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udp, align 4
  %t = getelementptr [2 x %struct.mlx5e_flow_table], ptr %6, i32 0, i32 %switch.select3.i, i32 1
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call.i.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %add.ptr10.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr10.i, align 4
  %or27.i = or i32 %11, -16769536
  store i32 %or27.i, ptr %add.ptr.i, align 4
  %or13.i = and i32 %13, 16769535
  %and41.i = select i1 %switch.selectcmp2.i, i32 285214720, i32 285215744
  %or44.i = or i32 %and41.i, %or13.i
  store i32 %or44.i, ptr %add.ptr10.i, align 4
  %add.ptr56.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr56.i, align 4
  %or58.i = or i32 %15, 65535
  store i32 %or58.i, ptr %add.ptr56.i, align 4
  %conv.i = zext i16 %d_port to i32
  %add.ptr71.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr71.i, align 4
  %and72.i = and i32 %17, -65536
  %or75.i = or i32 %and72.i, %conv.i
  store i32 %or75.i, ptr %add.ptr71.i, align 4
  %18 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %dest, align 4
  %19 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tir_num, ptr %19, align 4
  %call7 = call ptr @mlx5_add_flow_rules(ptr noundef %8, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #6
  call void @kvfree(ptr noundef nonnull %call.i.i) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call7 to i32
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %.str.2..str.3.i = select i1 %switch.selectcmp2.i, ptr @.str.2, ptr @.str.3
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_fs_tt_redirect_udp_add_rule, ptr noundef nonnull %.str.2..str.3.i, i32 noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then9 ], [ %call7, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_fs_tt_redirect_udp_destroy(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 11
  %0 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_cnt = getelementptr inbounds %struct.mlx5e_fs_udp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttc.i, align 4
  %call1.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %5, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end3.if.then.i_crit_edge

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.cond.i:                                       ; preds = %if.end3
  %6 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ttc.i, align 4
  %call1.1.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %7, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.fs_udp_disable.exit_crit_edge, label %for.cond.i.if.then.i_crit_edge

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.cond.i.fs_udp_disable.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_disable.exit

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %if.end3.if.then.i_crit_edge
  %..i.lcssa.i = phi i32 [ 2, %if.end3.if.then.i_crit_edge ], [ 3, %for.cond.i.if.then.i_crit_edge ]
  %call1.lcssa.i = phi i32 [ %call1.i, %if.end3.if.then.i_crit_edge ], [ %call1.1.i, %for.cond.i.if.then.i_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %8 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fs_udp_disable, i32 noundef %..i.lcssa.i, i32 noundef %call1.lcssa.i) #10
  br label %fs_udp_disable.exit

fs_udp_disable.exit:                              ; preds = %if.then.i, %for.cond.i.fs_udp_disable.exit_crit_edge
  %t.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %fs_udp_disable.exit.fs_udp_destroy_table.exit_crit_edge, label %if.end.i

fs_udp_disable.exit.fs_udp_destroy_table.exit_crit_edge: ; preds = %fs_udp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_destroy_table.exit

if.end.i:                                         ; preds = %fs_udp_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i = getelementptr %struct.mlx5e_fs_udp, ptr %1, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %13) #6
  tail call void @mlx5e_destroy_flow_table(ptr noundef nonnull %1) #6
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %t.i, align 4
  br label %fs_udp_destroy_table.exit

fs_udp_destroy_table.exit:                        ; preds = %if.end.i, %fs_udp_disable.exit.fs_udp_destroy_table.exit_crit_edge
  %t.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %t.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %16, null
  %cmp.i.i.1 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i.i.1, %cmp.i.i.1
  br i1 %spec.select.i.i.1, label %fs_udp_destroy_table.exit.fs_udp_destroy_table.exit.1_crit_edge, label %if.end.i.1

fs_udp_destroy_table.exit.fs_udp_destroy_table.exit.1_crit_edge: ; preds = %fs_udp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_destroy_table.exit.1

if.end.i.1:                                       ; preds = %fs_udp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 1
  %arrayidx1.i.1 = getelementptr %struct.mlx5e_fs_udp, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.i.1, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %18) #6
  tail call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i.1) #6
  %19 = ptrtoint ptr %t.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %t.i.1, align 4
  br label %fs_udp_destroy_table.exit.1

fs_udp_destroy_table.exit.1:                      ; preds = %if.end.i.1, %fs_udp_destroy_table.exit.fs_udp_destroy_table.exit.1_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  %20 = ptrtoint ptr %udp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %udp, align 4
  br label %cleanup

cleanup:                                          ; preds = %fs_udp_destroy_table.exit.1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_fs_tt_redirect_udp_create(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 11
  %0 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ref_cnt = getelementptr inbounds %struct.mlx5e_fs_udp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ref_cnt, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #11
  %5 = ptrtoint ptr %udp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %udp, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %call10 = tail call fastcc i32 @fs_udp_create_table(ptr noundef %priv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.inc, label %for.body.preheader.while.end_crit_edge

for.body.preheader.while.end_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.inc:                                          ; preds = %for.body.preheader
  %call10.1 = tail call fastcc i32 @fs_udp_create_table(ptr noundef %priv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %tobool11.not.1 = icmp eq i32 %call10.1, 0
  br i1 %tobool11.not.1, label %for.inc.1, label %for.inc.while.body_crit_edge

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %6 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dest.i, align 4
  %9 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %10 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp, align 4
  %t.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %11, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %9, align 4
  %15 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ttc.i, align 4
  %call2.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %dest.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.inc.1.fs_udp_enable.exit_crit_edge

for.inc.1.fs_udp_enable.exit_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_enable.exit

for.cond.i:                                       ; preds = %for.inc.1
  %17 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udp, align 4
  %t.1.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %t.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.1.i, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %9, align 4
  %22 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ttc.i, align 4
  %call2.1.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %23, i32 noundef 3, ptr noundef nonnull %dest.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool.not.1.i, label %if.end18, label %for.cond.i.fs_udp_enable.exit_crit_edge

for.cond.i.fs_udp_enable.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_enable.exit

fs_udp_enable.exit:                               ; preds = %for.cond.i.fs_udp_enable.exit_crit_edge, %for.inc.1.fs_udp_enable.exit_crit_edge
  %..i.lcssa.i = phi i32 [ 2, %for.inc.1.fs_udp_enable.exit_crit_edge ], [ 3, %for.cond.i.fs_udp_enable.exit_crit_edge ]
  %call2.lcssa.i = phi i32 [ %call2.i, %for.inc.1.fs_udp_enable.exit_crit_edge ], [ %call2.1.i, %for.cond.i.fs_udp_enable.exit_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.fs_udp_enable, i32 noundef %..i.lcssa.i, i32 noundef %call2.lcssa.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %while.body

if.end18:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  %26 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udp, align 4
  %ref_cnt21 = getelementptr inbounds %struct.mlx5e_fs_udp, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ref_cnt21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %ref_cnt21, align 4
  br label %cleanup

while.body:                                       ; preds = %fs_udp_enable.exit, %for.inc.while.body_crit_edge
  %i.049.ph = phi i32 [ 1, %for.inc.while.body_crit_edge ], [ 2, %fs_udp_enable.exit ]
  %err.0.ph = phi i32 [ %call10.1, %for.inc.while.body_crit_edge ], [ %call2.lcssa.i, %fs_udp_enable.exit ]
  %dec53 = add nsw i32 %i.049.ph, -1
  %29 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udp, align 4
  %t.i45 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %30, i32 0, i32 %dec53, i32 1
  %31 = ptrtoint ptr %t.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t.i45, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  %cmp.i.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %while.body.fs_udp_destroy_table.exit_crit_edge, label %if.end.i

while.body.fs_udp_destroy_table.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_destroy_table.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %30, i32 0, i32 %dec53
  %arrayidx1.i = getelementptr %struct.mlx5e_fs_udp, ptr %30, i32 0, i32 1, i32 %dec53
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %34) #6
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i) #6
  %35 = ptrtoint ptr %t.i45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %t.i45, align 4
  br label %fs_udp_destroy_table.exit

fs_udp_destroy_table.exit:                        ; preds = %if.end.i, %while.body.fs_udp_destroy_table.exit_crit_edge
  br i1 %tobool11.not.1, label %while.body.1, label %fs_udp_destroy_table.exit.while.end_crit_edge

fs_udp_destroy_table.exit.while.end_crit_edge:    ; preds = %fs_udp_destroy_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %fs_udp_destroy_table.exit
  %dec53.1 = add nsw i32 %i.049.ph, -2
  %36 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udp, align 4
  %t.i45.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %37, i32 0, i32 %dec53.1, i32 1
  %38 = ptrtoint ptr %t.i45.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t.i45.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %39, null
  %cmp.i.i.1 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i.i.1, %cmp.i.i.1
  br i1 %spec.select.i.i.1, label %while.body.1.while.end_crit_edge, label %if.end.i.1

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.1 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %37, i32 0, i32 %dec53.1
  %arrayidx1.i.1 = getelementptr %struct.mlx5e_fs_udp, ptr %37, i32 0, i32 1, i32 %dec53.1
  %40 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx1.i.1, align 4
  call void @mlx5_del_flow_rules(ptr noundef %41) #6
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx.i.1) #6
  %42 = ptrtoint ptr %t.i45.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %t.i45.1, align 4
  br label %while.end

while.end:                                        ; preds = %if.end.i.1, %while.body.1.while.end_crit_edge, %fs_udp_destroy_table.exit.while.end_crit_edge, %for.body.preheader.while.end_crit_edge
  %err.060 = phi i32 [ %call10, %for.body.preheader.while.end_crit_edge ], [ %err.0.ph, %while.body.1.while.end_crit_edge ], [ %err.0.ph, %if.end.i.1 ], [ %err.0.ph, %fs_udp_destroy_table.exit.while.end_crit_edge ]
  %43 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udp, align 4
  call void @kfree(ptr noundef %44) #6
  %45 = ptrtoint ptr %udp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %udp, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end18, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.060, %while.end ], [ 0, %if.end18 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fs_udp_create_table(ptr nocapture noundef readonly %priv, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %udp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 11
  %0 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp, align 4
  %arrayidx = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #6
  %2 = getelementptr inbounds i8, ptr %ft_attr, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %5 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65537, ptr %max_fte, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %6 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %level, align 4
  %7 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ft_attr, align 4
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs, align 4
  %call = call ptr @mlx5_create_flow_table(ptr noundef %9, ptr noundef nonnull %ft_attr) #6
  %t = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type, i32 1
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %t, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call to i32
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %t, align 4
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fs_udp_create_table.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fs_udp_create_table, %if.then11)) #6
          to label %do.end18 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond.i = icmp eq i32 %type, 0
  %.str.2..str.3.i = select i1 %cond.i, ptr @.str.2, ptr @.str.3
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %level15 = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %level15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level15, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fs_udp_create_table.__UNIQUE_ID_ddebug648, ptr noundef %14, ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.2..str.3.i, i32 noundef %18, i32 noundef %20) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then11, %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #11
  %g.i = getelementptr [2 x %struct.mlx5e_flow_table], ptr %1, i32 0, i32 %type, i32 2
  %22 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end18.fs_udp_create_groups.exit.thread56_crit_edge, label %lor.lhs.false.i

do.end18.fs_udp_create_groups.exit.thread56_crit_edge: ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_create_groups.exit.thread56

lor.lhs.false.i:                                  ; preds = %do.end18
  %23 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %g.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.fs_udp_create_groups.exit.thread56_crit_edge, label %if.end.i

lor.lhs.false.i.fs_udp_create_groups.exit.thread56_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_create_groups.exit.thread56

fs_udp_create_groups.exit.thread56:               ; preds = %lor.lhs.false.i.fs_udp_create_groups.exit.thread56_crit_edge, %do.end18.fs_udp_create_groups.exit.thread56_crit_edge
  %25 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %g.i, align 4
  call void @kfree(ptr noundef %26) #6
  call void @kvfree(ptr noundef %call.i.i.i) #6
  br label %err27

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr7.i = getelementptr i8, ptr %call.i.i.i, i32 80
  %27 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr7.i, align 4
  %or17.i = or i32 %28, -16769536
  store i32 %or17.i, ptr %add.ptr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch.i = icmp ult i32 %type, 2
  br i1 %switch.i, label %do.end24.i, label %fs_udp_create_groups.exit.thread59

fs_udp_create_groups.exit.thread59:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %err27

do.end24.i:                                       ; preds = %if.end.i
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i, i32 92
  %29 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr25.i, align 4
  %or27.i = or i32 %30, 65535
  store i32 %or27.i, ptr %add.ptr25.i, align 4
  %add.ptr35.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %31 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr35.i, align 4
  %and36.i = and i32 %32, -256
  %or38.i = or i32 %and36.i, 1
  store i32 %or38.i, ptr %add.ptr35.i, align 4
  %add.ptr47.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %33 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %add.ptr47.i, align 4
  %add.ptr60.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %34 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %add.ptr60.i, align 4
  %35 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t, align 4
  %call68.i = call ptr @mlx5_create_flow_group(ptr noundef %36, ptr noundef nonnull %call.i.i.i) #6
  %37 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %g.i, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call68.i, ptr %arrayidx.i, align 4
  %42 = load ptr, ptr %g.i, align 4
  %43 = load i32, ptr %arrayidx, align 4
  %arrayidx72.i = getelementptr ptr, ptr %42, i32 %43
  %44 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx72.i, align 4
  %cmp.i.i = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end24.i.fs_udp_create_groups.exit_crit_edge, label %if.end75.i

do.end24.i.fs_udp_create_groups.exit_crit_edge:   ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_create_groups.exit

if.end75.i:                                       ; preds = %do.end24.i
  %inc.i = add i32 %43, 1
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i, ptr %arrayidx, align 4
  %47 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %48 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65536, ptr %add.ptr47.i, align 4
  %49 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65536, ptr %add.ptr60.i, align 4
  %50 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t, align 4
  %call106.i = call ptr @mlx5_create_flow_group(ptr noundef %51, ptr noundef nonnull %call.i.i.i) #6
  %52 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %g.i, align 4
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %arrayidx109.i = getelementptr ptr, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call106.i, ptr %arrayidx109.i, align 4
  %57 = load ptr, ptr %g.i, align 4
  %58 = load i32, ptr %arrayidx, align 4
  %arrayidx112.i = getelementptr ptr, ptr %57, i32 %58
  %59 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx112.i, align 4
  %cmp.i177.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.end75.i.fs_udp_create_groups.exit_crit_edge, label %fs_udp_create_groups.exit.thread

if.end75.i.fs_udp_create_groups.exit_crit_edge:   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_udp_create_groups.exit

fs_udp_create_groups.exit.thread:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc117.i = add i32 %58, 1
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc117.i, ptr %arrayidx, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %if.end22

fs_udp_create_groups.exit:                        ; preds = %if.end75.i.fs_udp_create_groups.exit_crit_edge, %do.end24.i.fs_udp_create_groups.exit_crit_edge
  %62 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %g.i, align 4
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %arrayidx121.i = getelementptr ptr, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx121.i, align 4
  %68 = ptrtoint ptr %67 to i32
  store ptr null, ptr %arrayidx121.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  %tobool20.not = icmp eq ptr %67, null
  br i1 %tobool20.not, label %fs_udp_create_groups.exit.if.end22_crit_edge, label %fs_udp_create_groups.exit.err27_crit_edge

fs_udp_create_groups.exit.err27_crit_edge:        ; preds = %fs_udp_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err27

fs_udp_create_groups.exit.if.end22_crit_edge:     ; preds = %fs_udp_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %fs_udp_create_groups.exit.if.end22_crit_edge, %fs_udp_create_groups.exit.thread
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %69 = call ptr @memset(ptr %dest.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %70 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 32)
  %72 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %flow_act.i, align 4
  %73 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udp, align 4
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %75 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ttc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond.i.i = icmp eq i32 %type, 0
  %..i.i = select i1 %cond.i.i, i32 2, i32 3
  call void @mlx5_ttc_get_default_dest(ptr nonnull sret(%struct.mlx5_flow_destination) align 4 %dest.i, ptr noundef %76, i32 noundef %..i.i) #6
  %t.i48 = getelementptr [2 x %struct.mlx5e_flow_table], ptr %74, i32 0, i32 %type, i32 1
  %77 = ptrtoint ptr %t.i48 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %t.i48, align 4
  %call2.i = call ptr @mlx5_add_flow_rules(ptr noundef %78, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #6
  %cmp.i.i49 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i49, label %fs_udp_add_default_rule.exit, label %fs_udp_add_default_rule.exit.thread

fs_udp_add_default_rule.exit.thread:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr %struct.mlx5e_fs_udp, ptr %74, i32 0, i32 1, i32 %type
  %79 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call2.i, ptr %arrayidx5.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %cleanup

fs_udp_add_default_rule.exit:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %call2.i to i32
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %81 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.fs_udp_add_default_rule, i32 noundef %type, i32 noundef %80) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %err27

err27:                                            ; preds = %fs_udp_add_default_rule.exit, %fs_udp_create_groups.exit.err27_crit_edge, %fs_udp_create_groups.exit.thread59, %fs_udp_create_groups.exit.thread56
  %err.0 = phi i32 [ %68, %fs_udp_create_groups.exit.err27_crit_edge ], [ %80, %fs_udp_add_default_rule.exit ], [ -12, %fs_udp_create_groups.exit.thread56 ], [ -22, %fs_udp_create_groups.exit.thread59 ]
  call void @mlx5e_destroy_flow_table(ptr noundef %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %err27, %fs_udp_add_default_rule.exit.thread, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %err.0, %err27 ], [ 0, %fs_udp_add_default_rule.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_fs_tt_redirect_any_add_rule(ptr nocapture noundef readonly %priv, i32 noundef %tir_num, i16 noundef zeroext %ether_type) local_unnamed_addr #0 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #6
  %0 = getelementptr inbounds i8, ptr %dest, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %2 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %flow_act, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %any = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 12
  %5 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %any, align 4
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call.i.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %11, 65535
  store i32 %or.i, ptr %add.ptr.i, align 4
  %conv.i = zext i16 %ether_type to i32
  %add.ptr10.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr10.i, align 4
  %and11.i = and i32 %13, -65536
  %or13.i = or i32 %and11.i, %conv.i
  store i32 %or13.i, ptr %add.ptr10.i, align 4
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %dest, align 4
  %15 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tir_num, ptr %15, align 4
  %call2 = call ptr @mlx5_add_flow_rules(ptr noundef %8, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #6
  call void @kvfree(ptr noundef nonnull %call.i.i) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call2 to i32
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mlx5e_fs_tt_redirect_any_add_rule, i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_fs_tt_redirect_any_destroy(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %any = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 12
  %0 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %any, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_cnt = getelementptr inbounds %struct.mlx5e_fs_any, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttc.i, align 4
  %call.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %5, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.fs_any_disable.exit_crit_edge, label %if.then.i

if.end3.fs_any_disable.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_disable.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.fs_any_disable, i32 noundef 10, i32 noundef %call.i) #10
  br label %fs_any_disable.exit

fs_any_disable.exit:                              ; preds = %if.then.i, %if.end3.fs_any_disable.exit_crit_edge
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %cmp.i.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %fs_any_disable.exit.fs_any_destroy_table.exit_crit_edge, label %if.end.i

fs_any_disable.exit.fs_any_destroy_table.exit_crit_edge: ; preds = %fs_any_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_destroy_table.exit

if.end.i:                                         ; preds = %fs_any_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %default_rule.i = getelementptr inbounds %struct.mlx5e_fs_any, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %default_rule.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %default_rule.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %11) #6
  tail call void @mlx5e_destroy_flow_table(ptr noundef nonnull %1) #6
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %t.i, align 4
  br label %fs_any_destroy_table.exit

fs_any_destroy_table.exit:                        ; preds = %if.end.i, %fs_any_disable.exit.fs_any_destroy_table.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  %13 = ptrtoint ptr %any to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %any, align 4
  br label %cleanup

cleanup:                                          ; preds = %fs_any_destroy_table.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_fs_tt_redirect_any_create(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %any = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 12
  %0 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %any, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ref_cnt = getelementptr inbounds %struct.mlx5e_fs_any, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_cnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ref_cnt, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #11
  %5 = ptrtoint ptr %any to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %any, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @fs_any_create_table(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %6 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dest.i, align 4
  %9 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %any, align 4
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t.i, align 4
  %13 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %13, align 4
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %15 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ttc.i, align 4
  %call.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %16, i32 noundef 10, ptr noundef nonnull %dest.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end17, label %err_destroy_table

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  %17 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %any, align 4
  %ref_cnt20 = getelementptr inbounds %struct.mlx5e_fs_any, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ref_cnt20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ref_cnt20, align 4
  br label %cleanup

err_destroy_table:                                ; preds = %if.end13
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.fs_any_enable, i32 noundef 10, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  %22 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %any, align 4
  %t.i39 = getelementptr inbounds %struct.mlx5e_flow_table, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %t.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t.i39, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  %cmp.i.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %err_destroy_table.fs_any_destroy_table.exit_crit_edge, label %if.end.i

err_destroy_table.fs_any_destroy_table.exit_crit_edge: ; preds = %err_destroy_table
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_destroy_table.exit

if.end.i:                                         ; preds = %err_destroy_table
  call void @__sanitizer_cov_trace_pc() #8
  %default_rule.i = getelementptr inbounds %struct.mlx5e_fs_any, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %default_rule.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %default_rule.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %27) #6
  call void @mlx5e_destroy_flow_table(ptr noundef %23) #6
  %28 = ptrtoint ptr %t.i39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %t.i39, align 4
  br label %fs_any_destroy_table.exit

fs_any_destroy_table.exit:                        ; preds = %if.end.i, %err_destroy_table.fs_any_destroy_table.exit_crit_edge
  %29 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %any, align 4
  call void @kfree(ptr noundef %30) #6
  %31 = ptrtoint ptr %any to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %any, align 4
  br label %cleanup

cleanup:                                          ; preds = %fs_any_destroy_table.exit, %if.end17, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %fs_any_destroy_table.exit ], [ 0, %if.end17 ], [ -12, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fs_any_create_table(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %any = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 12
  %0 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %any, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #6
  %2 = getelementptr inbounds i8, ptr %ft_attr, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %5 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65537, ptr %max_fte, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %6 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %level, align 4
  %7 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ft_attr, align 4
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs, align 4
  %call = call ptr @mlx5_create_flow_table(ptr noundef %9, ptr noundef nonnull %ft_attr) #6
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %t, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call to i32
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %t, align 4
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fs_any_create_table.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fs_any_create_table, %if.then11)) #6
          to label %do.end17 [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %level14 = getelementptr inbounds %struct.mlx5_flow_table, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %level14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %level14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fs_any_create_table.__UNIQUE_ID_ddebug657, ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %18, i32 noundef %20) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 8) #11
  %g.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %do.end17.fs_any_create_groups.exit.thread52_crit_edge, label %lor.lhs.false.i

do.end17.fs_any_create_groups.exit.thread52_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_create_groups.exit.thread52

lor.lhs.false.i:                                  ; preds = %do.end17
  %23 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %g.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.fs_any_create_groups.exit.thread52_crit_edge, label %if.end.i

lor.lhs.false.i.fs_any_create_groups.exit.thread52_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_create_groups.exit.thread52

fs_any_create_groups.exit.thread52:               ; preds = %lor.lhs.false.i.fs_any_create_groups.exit.thread52_crit_edge, %do.end17.fs_any_create_groups.exit.thread52_crit_edge
  %25 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %g.i, align 4
  call void @kfree(ptr noundef %26) #6
  call void @kvfree(ptr noundef %call.i.i.i) #6
  br label %err26

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr7.i = getelementptr i8, ptr %call.i.i.i, i32 68
  %27 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr7.i, align 4
  %or.i = or i32 %28, 65535
  store i32 %or.i, ptr %add.ptr7.i, align 4
  %add.ptr15.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %29 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %30, -256
  %or18.i = or i32 %and16.i, 1
  store i32 %or18.i, ptr %add.ptr15.i, align 4
  %add.ptr27.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %31 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr27.i, align 4
  %add.ptr40.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %32 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %add.ptr40.i, align 4
  %33 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t, align 4
  %call48.i = call ptr @mlx5_create_flow_group(ptr noundef %34, ptr noundef nonnull %call.i.i.i) #6
  %35 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %g.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr ptr, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call48.i, ptr %arrayidx.i, align 4
  %40 = load ptr, ptr %g.i, align 4
  %41 = load i32, ptr %1, align 4
  %arrayidx52.i = getelementptr ptr, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52.i, align 4
  %cmp.i.i = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.fs_any_create_groups.exit_crit_edge, label %if.end55.i

if.end.i.fs_any_create_groups.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_create_groups.exit

if.end55.i:                                       ; preds = %if.end.i
  %inc.i = add i32 %41, 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc.i, ptr %1, align 4
  %45 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %46 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65536, ptr %add.ptr27.i, align 4
  %47 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65536, ptr %add.ptr40.i, align 4
  %48 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %t, align 4
  %call86.i = call ptr @mlx5_create_flow_group(ptr noundef %49, ptr noundef nonnull %call.i.i.i) #6
  %50 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %g.i, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 4
  %arrayidx89.i = getelementptr ptr, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call86.i, ptr %arrayidx89.i, align 4
  %55 = load ptr, ptr %g.i, align 4
  %56 = load i32, ptr %1, align 4
  %arrayidx92.i = getelementptr ptr, ptr %55, i32 %56
  %57 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx92.i, align 4
  %cmp.i153.i = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153.i, label %if.end55.i.fs_any_create_groups.exit_crit_edge, label %fs_any_create_groups.exit.thread

if.end55.i.fs_any_create_groups.exit_crit_edge:   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_any_create_groups.exit

fs_any_create_groups.exit.thread:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc97.i = add i32 %56, 1
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %inc97.i, ptr %1, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %if.end21

fs_any_create_groups.exit:                        ; preds = %if.end55.i.fs_any_create_groups.exit_crit_edge, %if.end.i.fs_any_create_groups.exit_crit_edge
  %60 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %g.i, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %arrayidx101.i = getelementptr ptr, ptr %61, i32 %63
  %64 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx101.i, align 4
  %66 = ptrtoint ptr %65 to i32
  store ptr null, ptr %arrayidx101.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  %tobool19.not = icmp eq ptr %65, null
  br i1 %tobool19.not, label %fs_any_create_groups.exit.if.end21_crit_edge, label %fs_any_create_groups.exit.err26_crit_edge

fs_any_create_groups.exit.err26_crit_edge:        ; preds = %fs_any_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err26

fs_any_create_groups.exit.if.end21_crit_edge:     ; preds = %fs_any_create_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %fs_any_create_groups.exit.if.end21_crit_edge, %fs_any_create_groups.exit.thread
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %67 = call ptr @memset(ptr %dest.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %68 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %69 = call ptr @memset(ptr %68, i32 0, i32 32)
  %70 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %flow_act.i, align 4
  %71 = ptrtoint ptr %any to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %any, align 4
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %73 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ttc.i, align 4
  call void @mlx5_ttc_get_default_dest(ptr nonnull sret(%struct.mlx5_flow_destination) align 4 %dest.i, ptr noundef %74, i32 noundef 10) #6
  %t.i44 = getelementptr inbounds %struct.mlx5e_flow_table, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %t.i44 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %t.i44, align 4
  %call.i = call ptr @mlx5_add_flow_rules(ptr noundef %76, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #6
  %cmp.i.i45 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i45, label %fs_any_add_default_rule.exit, label %fs_any_add_default_rule.exit.thread

fs_any_add_default_rule.exit.thread:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %default_rule.i = getelementptr inbounds %struct.mlx5e_fs_any, ptr %72, i32 0, i32 1
  %77 = ptrtoint ptr %default_rule.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %default_rule.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %cleanup

fs_any_add_default_rule.exit:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %call.i to i32
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %79 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.fs_any_add_default_rule, i32 noundef %78) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  br label %err26

err26:                                            ; preds = %fs_any_add_default_rule.exit, %fs_any_create_groups.exit.err26_crit_edge, %fs_any_create_groups.exit.thread52
  %err.0 = phi i32 [ %66, %fs_any_create_groups.exit.err26_crit_edge ], [ %78, %fs_any_add_default_rule.exit ], [ -12, %fs_any_create_groups.exit.thread52 ]
  call void @mlx5e_destroy_flow_table(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %err26, %fs_any_add_default_rule.exit.thread, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %err.0, %err26 ], [ 0, %fs_any_add_default_rule.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_default_dest(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_destroy_flow_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ttc_get_default_dest(ptr sret(%struct.mlx5_flow_destination) align 4, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_dest(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 109, i32 28}
!2 = !{ptr @__func__.mlx5e_fs_tt_redirect_udp_add_rule, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 110, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 386, i32 28}
!6 = !{ptr @__func__.mlx5e_fs_tt_redirect_any_add_rule, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 387, i32 7}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 30, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 32, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 265, i32 8}
!14 = !{ptr @__func__.fs_udp_disable, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 266, i32 8}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 228, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fs_udp_create_table.__UNIQUE_ID_ddebug648, !17, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 132, i32 7}
!24 = !{ptr @__func__.fs_udp_add_default_rule, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 133, i32 7}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 287, i32 8}
!28 = !{ptr @__func__.fs_udp_enable, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 288, i32 8}
!30 = !{ptr @__func__.fs_any_disable, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 521, i32 7}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 494, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fs_any_create_table.__UNIQUE_ID_ddebug657, !33, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 409, i32 7}
!38 = !{ptr @__func__.fs_any_add_default_rule, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 410, i32 7}
!40 = !{ptr @__func__.fs_any_enable, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/fs_tt_redirect.c", i32 540, i32 7}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2149051670, i64 2149051675, i64 2149051688, i64 2149051732, i64 2149051766, i64 2149051787}
