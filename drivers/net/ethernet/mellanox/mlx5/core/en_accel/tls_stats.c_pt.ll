; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mlx5e_rq = type { %union.anon.221, %struct.anon.235, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.221 = type { %struct.anon.228 }
%struct.anon.228 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.230 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.229, i64, i32, [28 x i8] }
%union.anon.229 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.230 = type { %struct.anon.231 }
%struct.anon.231 = type { %struct.anon.232, [0 x %struct.mlx5_mtt] }
%struct.anon.232 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.235 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.218, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.218 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.224, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.227, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.224 = type { %struct.anon.225 }
%struct.anon.225 = type { i8, i8, i16, i32 }
%union.anon.227 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.236, i32 }
%union.anon.236 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.219, i32, i32 }
%union.anon.219 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.223 }
%union.anon.223 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.250, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.250 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.251 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.251 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.252 }
%struct.anon.252 = type { i8, i8 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.206, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.208, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.206 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.207] }
%struct.anon.207 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.188 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.188 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.208 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@mlx5e_ktls_sw_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx_tls_ctx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"tx_tls_del\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx_tls_ctx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"rx_tls_del\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }], [48 x i8] zeroinitializer }, align 32
@mlx5e_tls_sw_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx_tls_drop_metadata\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx_tls_drop_resync_alloc\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx_tls_drop_no_sync_data\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"tx_tls_drop_bypass_required\00\00\00\00\00", i32 40 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"mlx5e_ktls_sw_stats_desc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 48, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"mlx5e_tls_sw_stats_desc\00", align 1
@___asan_gen_.5 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_stats.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 41, i32 34 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @mlx5e_ktls_sw_stats_desc, ptr @mlx5e_tls_sw_stats_desc], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ktls_sw_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tls_sw_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_tls_get_count(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tls = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 45
  %0 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls, align 8
  %tobool.not = icmp eq ptr %1, null
  %retval.0 = select i1 %tobool.not, i32 0, i32 4
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tls_get_strings(ptr nocapture noundef readonly %priv, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tls.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 45
  %0 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %if.end.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i:                                         ; preds = %entry
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 64
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %4 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.i.not.i.i = icmp eq i64 %4, -1
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i, label %if.end.i.for.body_crit_edge

if.end.i.for.body_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

land.rhs.i.i:                                     ; preds = %if.end.i
  %caps.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %6, i32 36
  %7 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %9 = and i32 %8, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not.i.i.i = icmp eq i32 %9, 0
  br i1 %.not.i.i.i, label %land.rhs.i.i.for.body_crit_edge, label %if.end.i.i.i

land.rhs.i.i.for.body_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %6, i32 45
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %12 = and i32 %11, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.for.body_crit_edge, label %mlx5e_accel_is_ktls_device.exit.i

if.end.i.i.i.for.body_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

mlx5e_accel_is_ktls_device.exit.i:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 17
  %13 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i = icmp slt i32 %16, 0
  %spec.select.i = select i1 %tobool12.i.i.i, ptr @mlx5e_ktls_sw_stats_desc, ptr @mlx5e_tls_sw_stats_desc
  br label %for.body

for.body:                                         ; preds = %mlx5e_accel_is_ktls_device.exit.i, %if.end.i.i.i.for.body_crit_edge, %land.rhs.i.i.for.body_crit_edge, %if.end.i.for.body_crit_edge
  %retval.0.i.ph = phi ptr [ %spec.select.i, %mlx5e_accel_is_ktls_device.exit.i ], [ @mlx5e_tls_sw_stats_desc, %if.end.i.i.i.for.body_crit_edge ], [ @mlx5e_tls_sw_stats_desc, %land.rhs.i.i.for.body_crit_edge ], [ @mlx5e_tls_sw_stats_desc, %if.end.i.for.body_crit_edge ]
  %call2 = tail call ptr @strcpy(ptr noundef %data, ptr noundef nonnull %retval.0.i.ph) #8
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %arrayidx.1 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 1
  %call2.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef %arrayidx.1) #8
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %arrayidx.2 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 2
  %call2.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef %arrayidx.2) #8
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %arrayidx.3 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 3
  %call2.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef %arrayidx.3) #8
  br label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %retval.0.i1017 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 4, %for.body ]
  ret i32 %retval.0.i1017
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tls_get_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tls.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 45
  %0 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %if.end.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i:                                         ; preds = %entry
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 64
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %4 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.i.not.i.i = icmp eq i64 %4, -1
  br i1 %cmp.i.not.i.i, label %land.rhs.i.i, label %if.end.i.for.body_crit_edge

if.end.i.for.body_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

land.rhs.i.i:                                     ; preds = %if.end.i
  %caps.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %6, i32 36
  %7 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %9 = and i32 %8, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not.i.i.i = icmp eq i32 %9, 0
  br i1 %.not.i.i.i, label %land.rhs.i.i.for.body_crit_edge, label %if.end.i.i.i

land.rhs.i.i.for.body_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %6, i32 45
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %12 = and i32 %11, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.for.body_crit_edge, label %mlx5e_accel_is_ktls_device.exit.i

if.end.i.i.i.for.body_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

mlx5e_accel_is_ktls_device.exit.i:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 17
  %13 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i = icmp slt i32 %16, 0
  %spec.select.i = select i1 %tobool12.i.i.i, ptr @mlx5e_ktls_sw_stats_desc, ptr @mlx5e_tls_sw_stats_desc
  br label %for.body

for.body:                                         ; preds = %mlx5e_accel_is_ktls_device.exit.i, %if.end.i.i.i.for.body_crit_edge, %land.rhs.i.i.for.body_crit_edge, %if.end.i.for.body_crit_edge
  %retval.0.i.ph = phi ptr [ %spec.select.i, %mlx5e_accel_is_ktls_device.exit.i ], [ @mlx5e_tls_sw_stats_desc, %if.end.i.i.i.for.body_crit_edge ], [ @mlx5e_tls_sw_stats_desc, %land.rhs.i.i.for.body_crit_edge ], [ @mlx5e_tls_sw_stats_desc, %if.end.i.for.body_crit_edge ]
  %17 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tls.i, align 8
  %offset = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 0, i32 1
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 8) #5
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr) #5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i, ptr %data, align 8
  %22 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tls.i, align 8
  %offset.1 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 1, i32 1
  %24 = ptrtoint ptr %offset.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %23, i32 %25
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.1, i32 noundef 8) #5
  %call.i.1 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.1) #5
  %arrayidx3.1 = getelementptr i64, ptr %data, i32 1
  %26 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i.1, ptr %arrayidx3.1, align 8
  %27 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tls.i, align 8
  %offset.2 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 2, i32 1
  %29 = ptrtoint ptr %offset.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.2, align 4
  %add.ptr.2 = getelementptr i8, ptr %28, i32 %30
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.2, i32 noundef 8) #5
  %call.i.2 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.2) #5
  %arrayidx3.2 = getelementptr i64, ptr %data, i32 2
  %31 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call.i.2, ptr %arrayidx3.2, align 8
  %32 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tls.i, align 8
  %offset.3 = getelementptr %struct.counter_desc, ptr %retval.0.i.ph, i32 3, i32 1
  %34 = ptrtoint ptr %offset.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.3, align 4
  %add.ptr.3 = getelementptr i8, ptr %33, i32 %35
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.3, i32 noundef 8) #5
  %call.i.3 = tail call i64 @generic_atomic64_read(ptr noundef %add.ptr.3) #5
  %arrayidx3.3 = getelementptr i64, ptr %data, i32 3
  %36 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i.3, ptr %arrayidx3.3, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %retval.0.i1219 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 4, %for.body ]
  ret i32 %retval.0.i1219
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @mlx5e_ktls_sw_stats_desc, !1, !"mlx5e_ktls_sw_stats_desc", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_stats.c", i32 48, i32 34}
!2 = !{ptr @mlx5e_tls_sw_stats_desc, !3, !"mlx5e_tls_sw_stats_desc", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/tls_stats.c", i32 41, i32 34}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
