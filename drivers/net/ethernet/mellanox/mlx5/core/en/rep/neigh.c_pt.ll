; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.56, i32, %struct.spinlock }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.95 }
%union.anon.95 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.190, %struct.anon.204, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.190 = type { %struct.anon.197 }
%struct.anon.197 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.199 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.198, i64, i32, [28 x i8] }
%union.anon.198 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { %struct.anon.201, [0 x %struct.mlx5_mtt] }
%struct.anon.201 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.204 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.187, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.187 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.193, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.196, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { i8, i8, i16, i32 }
%union.anon.196 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.205, i32 }
%union.anon.205 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.188, i32, i32 }
%union.anon.188 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.192 }
%union.anon.192 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.219, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.219 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.220 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.220 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.221 }
%struct.anon.221 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
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
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.mlx5e_neigh = type { %union.anon.227, i32 }
%union.anon.227 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.neigh_update_work = type { %struct.work_struct, ptr, ptr }
%struct.mlx5e_encap_entry = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mlx5e_mpls_info, [6 x i8], ptr, i32, ptr, i32, i8, ptr, i32, %struct.refcount_struct, %struct.completion, i32, %struct.callback_head }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }

@mlx5e_neigh_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 20, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx5e_rep_neigh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&neigh_update->encap_lock\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_rep_neigh_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(work_completion)(&(&neigh_update->neigh_stats_work)->work)\00", [36 x i8] zeroinitializer }, align 32
@mlx5e_rep_neigh_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&(&neigh_update->neigh_stats_work)->timer\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to initialize neighbours handling for vport %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_rep_neigh_entry_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(*nhe)->encap_list_lock\00", [39 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@mlx5e_rep_netevent_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_alloc_neigh_update_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&update_work->work)\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_mlx5e_rep_neigh_update = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/diag/en_rep_tracepoint.h\00", [63 x i8] zeroinitializer }, align 32
@trace_mlx5e_rep_neigh_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"mlx5e_neigh_ht_params\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 269, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 286, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 287, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 302, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 385, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 248, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 194, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [68 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_rep_tracepoint.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 14, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1076, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1019, i32 12 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @mlx5e_neigh_ht_params, ptr @mlx5e_rep_neigh_init.__key, ptr @.str, ptr @mlx5e_rep_neigh_init.__key.1, ptr @.str.2, ptr @mlx5e_rep_neigh_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @mlx5e_rep_neigh_entry_create.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlx5e_alloc_neigh_update_work.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_neigh_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_neigh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_neigh_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_neigh_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_neigh_entry_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_alloc_neigh_update_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_queue_neigh_stats_work(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %neigh_stats_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 4
  %min_interval = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %min_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_interval, align 4
  tail call void @mlx5_fc_queue_stats_work(ptr noundef %3, ptr noundef %neigh_stats_work, i32 noundef %5) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_queue_stats_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_neigh_entry_release(ptr noundef %nhe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !79

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %priv.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 2
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %ppriv.i = getelementptr inbounds %struct.mlx5e_priv, ptr %2, i32 0, i32 43
  %3 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ppriv.i, align 32
  %neigh_update.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1
  %encap_lock.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 2
  tail call void @mutex_lock_nested(ptr noundef %encap_lock.i, i32 noundef 0) #10
  %neigh_list.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %neigh_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del_rcu.exit.i_crit_edge

if.then.list_del_rcu.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %neigh_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i, label %list_del_rcu.exit.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

list_del_rcu.exit.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %list_del_rcu.exit.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %list_del_rcu.exit.i.rcu_read_lock.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %neigh_update.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %neigh_update.i, align 4
  %call.i.i14.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %neigh_update.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1076, ptr noundef nonnull @.str.14) #10
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 0, i32 3, i32 3
  %uglygep.i = getelementptr i8, ptr %nhe, i32 16
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %nhe, i32 4
  br label %rht_head_hashfn.exit.i.i.i.i

rht_head_hashfn.exit.i.i.i.i:                     ; preds = %do.end33.i.i.i.rht_head_hashfn.exit.i.i.i.i_crit_edge, %do.end10.i.i.i
  %tbl.0.i.i.i = phi ptr [ %17, %do.end10.i.i.i ], [ %58, %do.end33.i.i.i.rht_head_hashfn.exit.i.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %19 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i.i
  %hash_rnd.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %hash_rnd.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hash_rnd.i.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i.i = add i32 %21, -559038717
  %22 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %add2.i.i.i.i.i.i.i.i = add i32 %23, %add1.i.i.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 1
  %24 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3.i.i.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i.i.i = add i32 %25, %add1.i.i.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i.i.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i.i.i = add i32 %27, %add1.i.i.i.i.i.i.i.i
  %sub.i.i.i.i.i.i.i.i = sub i32 %add2.i.i.i.i.i.i.i.i, %add6.i.i.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i.i.i, i32 4) #10
  %xor.i.i.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i.i.i, %or.i.i.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i.i.i, %add4.i.i.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i.i.i, %xor.i.i.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i.i.i, i32 6) #10
  %xor10.i.i.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i.i.i
  %add11.i.i.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i.i.i, %add7.i.i.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i.i.i, %xor10.i.i.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i.i.i, i32 8) #10
  %xor14.i.i.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i.i.i
  %add15.i.i.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i.i.i, %add11.i.i.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i.i.i, %xor14.i.i.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i.i.i, i32 16) #10
  %xor18.i.i.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i.i.i
  %add19.i.i.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i.i.i, %add15.i.i.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i.i.i, %xor18.i.i.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i.i.i, i32 19) #10
  %xor22.i.i.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i.i.i
  %add23.i.i.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i.i.i, %add19.i.i.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i.i.i, %xor22.i.i.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i.i.i, i32 4) #10
  %xor26.i.i.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i.i.i
  %uglygep39.i = getelementptr i8, ptr %uglygep.i, i32 %idx.neg.i.i.i.i.i.i
  %arrayidx32.i.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 4
  %28 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i.i, align 4
  %add27.i.i.i.i.i.i.i.i = add i32 %add23.i.i.i.i.i.i.i.i, %29
  %add33.i.i.i.i.i.i.i.i = add i32 %add27.i.i.i.i.i.i.i.i, %xor22.i.i.i.i.i.i.i.i
  %30 = ptrtoint ptr %uglygep39.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uglygep39.i, align 4
  %add36.i.i.i.i.i.i.i.i = add i32 %add23.i.i.i.i.i.i.i.i, %31
  %xor37.i.i.i.i.i.i.i.i = xor i32 %xor26.i.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i.i
  %32 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i.i.i = add i32 %33, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i3.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i3.i.i.i.i, label %cond.false.i5.i.i.i.i, label %cond.true.i4.i.i.i.i, !prof !79

cond.true.i4.i.i.i.i:                             ; preds = %rht_head_hashfn.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i9 = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i.i.i

cond.false.i5.i.i.i.i:                            ; preds = %rht_head_hashfn.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i.i

rht_bucket_var.exit.i.i.i.i:                      ; preds = %cond.false.i5.i.i.i.i, %cond.true.i4.i.i.i.i
  %cond.i6.i.i.i.i = phi ptr [ %call.i.i.i.i.i9, %cond.true.i4.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i5.i.i.i.i ]
  %tobool.not.i3.i.i.i = icmp eq ptr %cond.i6.i.i.i.i, null
  br i1 %tobool.not.i3.i.i.i, label %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end.i.i.i.i

rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i.i

if.end.i.i.i.i:                                   ; preds = %rht_bucket_var.exit.i.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #10
  %call.i8.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i.i)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %call.i8.i.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 377, ptr noundef nonnull @.str.18) #10
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %36 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond.i6.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i.i.i.i = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %39 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %39, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i20.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i.i)
  %tobool.i.not21.i.i.i.i = icmp eq i32 %and.i20.i.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i.i, label %for.body.preheader.i.i.i.i, label %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge:  ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %rht_ptr.exit.i.i.i.i
  %40 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %cmp.not.i20.i.i.i = icmp eq ptr %40, %nhe
  br i1 %cmp.not.i20.i.i.i, label %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  br label %do.body145.i.i.i.i

for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq ptr %45, %nhe
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i.i.i

for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i.i

do.body54.i.i.i.i:                                ; preds = %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i.i = phi ptr [ %he.022.i21.i.i.i, %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge ]
  %call55.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %call55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %land.lhs.true57.i.i.i.i, label %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge

do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge:     ; preds = %do.body54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i.i

land.lhs.true57.i.i.i.i:                          ; preds = %do.body54.i.i.i.i
  %call58.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i.i)
  %tobool59.not.i.i.i.i = icmp eq i32 %call58.i.i.i.i, 0
  br i1 %tobool59.not.i.i.i.i, label %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %land.lhs.true60.i.i.i.i

land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i.i

land.lhs.true60.i.i.i.i:                          ; preds = %land.lhs.true57.i.i.i.i
  %.b2.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  br i1 %.b2.i.i.i.i, label %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %if.then62.i.i.i.i

land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1032, ptr noundef nonnull @.str.18) #10
  br label %do.end65.i.i.i.i

do.end65.i.i.i.i:                                 ; preds = %if.then62.i.i.i.i, %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge
  %41 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nhe, align 4
  %tobool103.not.i.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i.i, null
  br i1 %tobool103.not.i.i.i.i, label %if.else142.i.i.i.i, label %do.body105.i.i.i.i

do.body105.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %43 = ptrtoint ptr %pprev.023.i.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %pprev.023.i.lcssa.i.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #10
  br label %if.then160.i.i.i.i

if.else142.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i, ptr noundef %42) #10
  br label %if.then160.i.i.i.i

do.body145.i.i.i.i:                               ; preds = %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge
  %he.022.i21.i.i.i = phi ptr [ %45, %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge ], [ %40, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge ]
  %call146.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i.i)
  %tobool147.not.i.i.i.i = icmp eq i32 %call146.i.i.i.i, 0
  br i1 %tobool147.not.i.i.i.i, label %land.lhs.true148.i.i.i.i, label %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge

do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge:   ; preds = %do.body145.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i.i

land.lhs.true148.i.i.i.i:                         ; preds = %do.body145.i.i.i.i
  %call149.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i.i)
  %tobool150.not.i.i.i.i = icmp eq i32 %call149.i.i.i.i, 0
  br i1 %tobool150.not.i.i.i.i, label %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %land.lhs.true151.i.i.i.i

land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i.i

land.lhs.true151.i.i.i.i:                         ; preds = %land.lhs.true148.i.i.i.i
  %.b2281.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2281.i.i.i.i, label %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %if.then153.i.i.i.i

land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i.i

if.then153.i.i.i.i:                               ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1004, ptr noundef nonnull @.str.18) #10
  br label %do.end156.i.i.i.i

do.end156.i.i.i.i:                                ; preds = %if.then153.i.i.i.i, %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge
  %44 = ptrtoint ptr %he.022.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %he.022.i21.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.body.i.i.i.i, label %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge

do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge:     ; preds = %do.end156.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i.i

unlocked.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #10
  br label %land.rhs.i.i.i

if.then160.i.i.i.i:                               ; preds = %if.else142.i.i.i.i, %do.body105.i.i.i.i
  %nelems.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #10, !srcloc !83
  %automatic_shrinking.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 0, i32 3, i32 6
  %48 = ptrtoint ptr %automatic_shrinking.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %automatic_shrinking.i.i.i.i, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool161.not.i.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool161.not.i.i.i.i, label %if.then160.i.i.i.i.while.end.i.i.i_crit_edge, label %land.rhs162.i.i.i.i

if.then160.i.i.i.i.while.end.i.i.i_crit_edge:     ; preds = %if.then160.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

land.rhs162.i.i.i.i:                              ; preds = %if.then160.i.i.i.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %50 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %52 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tbl.0.i.i.i, align 128
  %mul.i.i.i.i.i = mul i32 %53, 3
  %div.i.i.i.i.i = udiv i32 %mul.i.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %51, %div.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i, label %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge

land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge:    ; preds = %land.rhs162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

rht_shrink_below_30.exit.i.i.i.i:                 ; preds = %land.rhs162.i.i.i.i
  %min_size.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 0, i32 3, i32 5
  %54 = ptrtoint ptr %min_size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %min_size.i.i.i.i.i, align 4
  %conv.i11.i.i.i.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.i11.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp ugt i32 %53, %conv.i11.i.i.i.i
  br i1 %cmp2.i.i.i.i.i, label %if.then168.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, !prof !85

rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.then168.i.i.i.i:                               ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %4, i32 0, i32 1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %run_work.i.i.i.i) #10
  br label %while.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %unlocked.i.i.i.i, %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call20.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %neigh_update.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %lor.lhs.false22.i.i.i, label %land.rhs.i.i.i.do.end33.i.i.i_crit_edge

land.rhs.i.i.i.do.end33.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i.i

lor.lhs.false22.i.i.i:                            ; preds = %land.rhs.i.i.i
  %call23.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %land.lhs.true25.i.i.i, label %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge

lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %lor.lhs.false22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %lor.lhs.false22.i.i.i
  %call26.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, label %land.lhs.true28.i.i.i

land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i.i

land.lhs.true28.i.i.i:                            ; preds = %land.lhs.true25.i.i.i
  %.b401.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.17, align 1
  br i1 %.b401.i.i.i, label %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 1085, ptr noundef nonnull @.str.14) #10
  br label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %if.then30.i.i.i, %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge, %land.rhs.i.i.i.do.end33.i.i.i_crit_edge
  %tobool35.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool35.not.i.i.i, label %do.end33.i.i.i.while.end.i.i.i_crit_edge, label %do.end33.i.i.i.rht_head_hashfn.exit.i.i.i.i_crit_edge

do.end33.i.i.i.rht_head_hashfn.exit.i.i.i.i_crit_edge: ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_head_hashfn.exit.i.i.i.i

do.end33.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end33.i.i.i.while.end.i.i.i_crit_edge, %if.then168.i.i.i.i, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge
  %call.i4.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i.i.i, label %while.end.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge, label %land.lhs.true.i7.i.i.i

while.end.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rep_neigh_entry_remove.exit

land.lhs.true.i7.i.i.i:                           ; preds = %while.end.i.i.i
  %call1.i5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %call1.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %land.lhs.true.i7.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge, label %land.lhs.true2.i9.i.i.i

land.lhs.true.i7.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rep_neigh_entry_remove.exit

land.lhs.true2.i9.i.i.i:                          ; preds = %land.lhs.true.i7.i.i.i
  %.b4.i8.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i.i, label %land.lhs.true2.i9.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge, label %if.then.i10.i.i.i

land.lhs.true2.i9.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rep_neigh_entry_remove.exit

if.then.i10.i.i.i:                                ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %mlx5e_rep_neigh_entry_remove.exit

mlx5e_rep_neigh_entry_remove.exit:                ; preds = %if.then.i10.i.i.i, %land.lhs.true2.i9.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge, %land.lhs.true.i7.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge, %while.end.i.i.i.mlx5e_rep_neigh_entry_remove.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %59 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i11.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i11.i.i.i to ptr
  %preempt_count.i.i.i.i12.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @mutex_unlock(ptr noundef %encap_lock.i) #10
  %tobool.not = icmp eq ptr %nhe, null
  br i1 %tobool.not, label %mlx5e_rep_neigh_entry_remove.exit.if.end5_crit_edge, label %do.end

mlx5e_rep_neigh_entry_remove.exit.if.end5_crit_edge: ; preds = %mlx5e_rep_neigh_entry_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %mlx5e_rep_neigh_entry_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 9
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 100 to ptr)) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %mlx5e_rep_neigh_entry_remove.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_neigh_init(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %neigh_update1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1
  %call = tail call i32 @rhashtable_init(ptr noundef %neigh_update1, ptr noundef nonnull @mlx5e_neigh_ht_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_err_crit_edge

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end:                                           ; preds = %entry
  %neigh_list = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %neigh_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %neigh_list, ptr %neigh_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %neigh_list, ptr %prev.i, align 4
  %encap_lock = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 2
  tail call void @__mutex_init(ptr noundef %encap_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5e_rep_neigh_init.__key) #10
  %neigh_stats_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4
  tail call void @__init_work(ptr noundef %neigh_stats_work, i32 noundef 0) #10
  %2 = ptrtoint ptr %neigh_stats_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %neigh_stats_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5e_rep_neigh_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry10 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i47 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry10, ptr %prev.i47, align 4
  %func = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5e_rep_neigh_stats_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5e_rep_neigh_init.__key.3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 13, i32 11, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 13, i32 11, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %7 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl.i.i = getelementptr inbounds %struct.ipv6_stub, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %nd_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_tbl.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.mlx5e_rep_neigh_update_init_interval.exit_crit_edge, label %if.then.i.i

if.end.mlx5e_rep_neigh_update_init_interval.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rep_neigh_update_init_interval.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.neigh_table, ptr %9, i32 0, i32 13, i32 11, i32 6
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  br label %mlx5e_rep_neigh_update_init_interval.exit

mlx5e_rep_neigh_update_init_interval.exit:        ; preds = %if.then.i.i, %if.end.mlx5e_rep_neigh_update_init_interval.exit_crit_edge
  %retval.0.i.i = phi i32 [ %11, %if.then.i.i ], [ -1, %if.end.mlx5e_rep_neigh_update_init_interval.exit_crit_edge ]
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %12 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev1.i, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 %6) #10
  %min_interval.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %min_interval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %min_interval.i, align 4
  %mdev.i = getelementptr i8, ptr %13, i32 11328
  %16 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i, align 64
  tail call void @mlx5_fc_update_sampling_interval(ptr noundef %17, i32 noundef %14) #10
  %netevent_nb = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %netevent_nb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlx5e_rep_netevent_event, ptr %netevent_nb, align 4
  %call22 = tail call i32 @register_netevent_notifier(ptr noundef %netevent_nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %mlx5e_rep_neigh_update_init_interval.exit.cleanup_crit_edge, label %out_notifier

mlx5e_rep_neigh_update_init_interval.exit.cleanup_crit_edge: ; preds = %mlx5e_rep_neigh_update_init_interval.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_notifier:                                     ; preds = %mlx5e_rep_neigh_update_init_interval.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %netevent_nb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %netevent_nb, align 4
  tail call void @rhashtable_destroy(ptr noundef %neigh_update1) #10
  br label %out_err

out_err:                                          ; preds = %out_notifier, %entry.out_err_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_err_crit_edge ], [ %call22, %out_notifier ]
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 8
  %22 = ptrtoint ptr %rpriv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rpriv, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vport, align 4
  %conv = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %out_err, %mlx5e_rep_neigh_update_init_interval.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_err ], [ 0, %mlx5e_rep_neigh_update_init_interval.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_neigh_stats_work(ptr noundef %work) #0 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  %__next16.i = alloca ptr, align 4
  %__next49.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  tail call void @rtnl_lock() #10
  %neigh_list = getelementptr i8, ptr %work, i32 -112
  %2 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %neigh_list, align 4
  %cmp.i.not = icmp eq ptr %3, %neigh_list
  br i1 %cmp.i.not, label %entry.while.cond.preheader_crit_edge, label %if.then

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ppriv.i = getelementptr i8, ptr %1, i32 30240
  %4 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppriv.i, align 32
  %mdev.i = getelementptr i8, ptr %1, i32 11328
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 64
  %neigh_stats_work.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %5, i32 0, i32 1, i32 4
  %min_interval.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %5, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %min_interval.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_interval.i, align 4
  tail call void @mlx5_fc_queue_stats_work(ptr noundef %7, ptr noundef %neigh_stats_work.i, i32 noundef %9) #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %nhe.0 = phi ptr [ %next.0.lcssa.i, %while.body ], [ null, %while.cond.preheader ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %while.cond.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.cond.rcu_read_lock.exit.i_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.cond
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.cond.rcu_read_lock.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %nhe.0, null
  br i1 %tobool.not.i, label %cond.false12.i, label %cond.true.i

cond.true.i:                                      ; preds = %rcu_read_lock.exit.i
  %neigh_list1.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe.0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %14 = ptrtoint ptr %neigh_list1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %neigh_list1.i, align 4
  %16 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %15, %neigh_list
  br i1 %cmp.not.i, label %cond.true.i.cond.end.i_crit_edge, label %cond.true6.i, !prof !85

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true6.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.80.i = load volatile ptr, ptr %__next.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.80.i, i32 -32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true6.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %add.ptr.i7, %cond.true6.i ], [ null, %cond.true.i.cond.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %cond.end41.i

cond.false12.i:                                   ; preds = %rcu_read_lock.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next16.i)
  %18 = ptrtoint ptr %neigh_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %neigh_list, align 4
  %20 = ptrtoint ptr %__next16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %__next16.i, align 4
  %cmp23.not.i = icmp eq ptr %neigh_list, %19
  br i1 %cmp23.not.i, label %cond.false12.i.cond.end39.i_crit_edge, label %cond.true30.i, !prof !85

cond.false12.i.cond.end39.i_crit_edge:            ; preds = %cond.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39.i

cond.true30.i:                                    ; preds = %cond.false12.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %__next16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %__next16.i.0.__next16.i.0.__next16.0.__next16.0.__next16.0.78.i = load volatile ptr, ptr %__next16.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %__next16.i.0.__next16.i.0.__next16.0.__next16.0.__next16.0.78.i, i32 -32
  br label %cond.end39.i

cond.end39.i:                                     ; preds = %cond.true30.i, %cond.false12.i.cond.end39.i_crit_edge
  %cond40.i = phi ptr [ %add.ptr37.i, %cond.true30.i ], [ null, %cond.false12.i.cond.end39.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next16.i)
  br label %cond.end41.i

cond.end41.i:                                     ; preds = %cond.end39.i, %cond.end.i
  %cond42.i = phi ptr [ %cond.i, %cond.end.i ], [ %cond40.i, %cond.end39.i ]
  %tobool43.not98.i = icmp eq ptr %cond42.i, null
  br i1 %tobool43.not98.i, label %cond.end41.i.for.end.i_crit_edge, label %cond.end41.i.for.body.i_crit_edge

cond.end41.i.for.body.i_crit_edge:                ; preds = %cond.end41.i
  br label %for.body.i

cond.end41.i.for.end.i_crit_edge:                 ; preds = %cond.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %cond.end72.i.for.body.i_crit_edge, %cond.end41.i.for.body.i_crit_edge
  %next.099.i = phi ptr [ %add.ptr70.i, %cond.end72.i.for.body.i_crit_edge ], [ %cond42.i, %cond.end41.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @mlx5e_rep_neigh_entry_hold(ptr noundef nonnull %next.099.i) #10
  br i1 %call.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %neigh_list48.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %next.099.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next49.i)
  %22 = ptrtoint ptr %neigh_list48.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %neigh_list48.i, align 4
  %24 = ptrtoint ptr %__next49.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %__next49.i, align 4
  %cmp56.not.i = icmp eq ptr %23, %neigh_list
  br i1 %cmp56.not.i, label %cond.end72.thread.i, label %cond.end72.i, !prof !85

cond.end72.thread.i:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next49.i)
  br label %for.end.i

cond.end72.i:                                     ; preds = %for.inc.i
  %25 = ptrtoint ptr %__next49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %__next49.i.0.__next49.i.0.__next49.0.__next49.0.__next49.0.77.i = load volatile ptr, ptr %__next49.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %__next49.i.0.__next49.i.0.__next49.0.__next49.0.__next49.0.77.i, i32 -32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next49.i)
  %tobool43.not.i = icmp eq ptr %add.ptr70.i, null
  br i1 %tobool43.not.i, label %cond.end72.i.for.end.i_crit_edge, label %cond.end72.i.for.body.i_crit_edge

cond.end72.i.for.body.i_crit_edge:                ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cond.end72.i.for.end.i_crit_edge:                 ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %cond.end72.i.for.end.i_crit_edge, %cond.end72.thread.i, %for.body.i.for.end.i_crit_edge, %cond.end41.i.for.end.i_crit_edge
  %next.0.lcssa.i = phi ptr [ null, %cond.end41.i.for.end.i_crit_edge ], [ null, %cond.end72.thread.i ], [ null, %cond.end72.i.for.end.i_crit_edge ], [ %next.099.i, %for.body.i.for.end.i_crit_edge ]
  %call.i89.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i89.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i92.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i92.i:                              ; preds = %for.end.i
  %call1.i90.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90.i)
  %tobool.not.i91.i = icmp eq i32 %call1.i90.i, 0
  br i1 %tobool.not.i91.i, label %land.lhs.true.i92.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i94.i

land.lhs.true.i92.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i94.i:                             ; preds = %land.lhs.true.i92.i
  %.b4.i93.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i93.i, label %land.lhs.true2.i94.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i95.i

land.lhs.true2.i94.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i95.i:                                    ; preds = %land.lhs.true2.i94.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i95.i, %land.lhs.true2.i94.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i92.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i96.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i96.i to ptr
  %preempt_count.i.i.i.i97.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i97.i, align 4
  %sub.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i97.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool.not.i, label %rcu_read_unlock.exit.i.mlx5e_get_next_nhe.exit_crit_edge, label %if.then75.i

rcu_read_unlock.exit.i.mlx5e_get_next_nhe.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_get_next_nhe.exit

if.then75.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rep_neigh_entry_release(ptr noundef nonnull %nhe.0) #10
  br label %mlx5e_get_next_nhe.exit

mlx5e_get_next_nhe.exit:                          ; preds = %if.then75.i, %rcu_read_unlock.exit.i.mlx5e_get_next_nhe.exit_crit_edge
  %cmp.not = icmp eq ptr %next.0.lcssa.i, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %mlx5e_get_next_nhe.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_tc_update_neigh_used_value(ptr noundef nonnull %next.0.lcssa.i) #10
  br label %while.cond

while.end:                                        ; preds = %mlx5e_get_next_nhe.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_netevent_event(ptr noundef %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %m_neigh.i = alloca %struct.mlx5e_neigh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr i8, ptr %nb, i32 116
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tbl = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tbl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %5 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_tbl, align 4
  %cmp.not = icmp eq ptr %4, %7
  %cmp4.not = icmp eq ptr %4, @arp_tbl
  %or.cond = or i1 %cmp4.not, %cmp.not
  br i1 %or.cond, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m_neigh.i) #10
  %8 = call ptr @memset(ptr %m_neigh.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 52) #14
  %tobool.not.i94 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i94, label %do.end.i, label %if.end23.i, !prof !85

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 177, i32 noundef 9, ptr noundef null) #10
  br label %mlx5e_alloc_neigh_update_work.exit.thread

if.end23.i:                                       ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 21
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %family24.i = getelementptr inbounds %struct.mlx5e_neigh, ptr %m_neigh.i, i32 0, i32 1
  %14 = ptrtoint ptr %family24.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %family24.i, align 4
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 27
  %15 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tbl, align 4
  %key_len.i = getelementptr inbounds %struct.neigh_table, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len.i, align 4
  %19 = call ptr @memcpy(ptr %m_neigh.i, ptr %primary_key.i, i32 %18)
  %20 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end23.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end23.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end23.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end23.i.rcu_read_lock.exit.i_crit_edge
  %call25.i = call ptr @mlx5e_rep_neigh_entry_lookup(ptr noundef %add.ptr.i, ptr noundef nonnull %m_neigh.i) #10
  %call.i56.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i56.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i59.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i59.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i57.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57.i)
  %tobool.not.i58.i = icmp eq i32 %call1.i57.i, 0
  br i1 %tobool.not.i58.i, label %land.lhs.true.i59.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i61.i

land.lhs.true.i59.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i61.i:                             ; preds = %land.lhs.true.i59.i
  %.b4.i60.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60.i, label %land.lhs.true2.i61.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i62.i

land.lhs.true2.i61.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i62.i:                                    ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i62.i, %land.lhs.true2.i61.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i59.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %24 = call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i63.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i63.i to ptr
  %preempt_count.i.i.i.i64.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i64.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i64.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.then27.i, label %do.body29.i

if.then27.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %mlx5e_alloc_neigh_update_work.exit.thread

do.body29.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #10
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlx5e_alloc_neigh_update_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry33.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %entry33.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry33.i, ptr %entry33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry33.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mlx5e_rep_neigh_update, ptr %func.i, align 4
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.body29.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !85

do.body29.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.body29.i
  %add.i.i.i65.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i65.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !79

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end7_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.body29.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.body29.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end7

mlx5e_alloc_neigh_update_work.exit.thread:        ; preds = %if.then27.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m_neigh.i) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end7_crit_edge
  %n37.i = getelementptr inbounds %struct.neigh_update_work, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %n37.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ptr, ptr %n37.i, align 4
  %nhe38.i = getelementptr inbounds %struct.neigh_update_work, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %nhe38.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call25.i, ptr %nhe38.i, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m_neigh.i) #10
  %wq = getelementptr i8, ptr %1, i32 11088
  %36 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wq, align 16
  %call.i95 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.neigh_parms, ptr %ptr, i32 0, i32 1
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %39, null
  br i1 %tobool10.not, label %sw.bb9.cleanup_crit_edge, label %lor.lhs.false

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb9
  %tbl11 = getelementptr inbounds %struct.neigh_parms, ptr %ptr, i32 0, i32 5
  %40 = ptrtoint ptr %tbl11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tbl11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %42 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl12 = getelementptr inbounds %struct.ipv6_stub, ptr %42, i32 0, i32 20
  %43 = ptrtoint ptr %nd_tbl12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nd_tbl12, align 4
  %cmp13.not = icmp eq ptr %41, %44
  %cmp16.not = icmp eq ptr %41, @arp_tbl
  %or.cond93 = or i1 %cmp16.not, %cmp13.not
  br i1 %or.cond93, label %if.end18, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %45 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end18.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end18.rcu_read_lock.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end18
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end18.rcu_read_lock.exit_crit_edge
  %call19 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true21:                                  ; preds = %rcu_read_lock.exit
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.do.end_crit_edge, label %land.lhs.true24

land.lhs.true21.do.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %.b92 = load i1, ptr @mlx5e_rep_netevent_event.__warned, align 1
  br i1 %.b92, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_rep_netevent_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 249, ptr noundef nonnull @.str.11) #10
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true21.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %neigh_list = getelementptr i8, ptr %nb, i32 -100
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %neigh_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %49 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp37.not = icmp eq ptr %.pn, %neigh_list
  br i1 %cmp37.not, label %if.then56.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %neigh_dev = getelementptr i8, ptr %.pn, i32 -4
  %52 = ptrtoint ptr %neigh_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %neigh_dev, align 4
  %cmp43 = icmp eq ptr %51, %53
  br i1 %cmp43, label %if.end57.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then56.critedge:                               ; preds = %for.cond
  %call.i96 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i96, label %if.then56.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i99

if.then56.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %if.then56.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i99:                                ; preds = %if.then56.critedge
  %call1.i97 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, %if.then56.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %54 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i103 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i103 to ptr
  %preempt_count.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i104, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i104, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

if.end57.critedge:                                ; preds = %for.body
  %call.i106 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i106, label %if.end57.critedge.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true.i109

if.end57.critedge.rcu_read_unlock.exit117_crit_edge: ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit117

land.lhs.true.i109:                               ; preds = %if.end57.critedge
  %call1.i107 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i109.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true2.i111

land.lhs.true.i109.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit117

land.lhs.true2.i111:                              ; preds = %land.lhs.true.i109
  %.b4.i110 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i110, label %land.lhs.true2.i111.rcu_read_unlock.exit117_crit_edge, label %if.then.i112

land.lhs.true2.i111.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit117

if.then.i112:                                     ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit117

rcu_read_unlock.exit117:                          ; preds = %if.then.i112, %land.lhs.true2.i111.rcu_read_unlock.exit117_crit_edge, %land.lhs.true.i109.rcu_read_unlock.exit117_crit_edge, %if.end57.critedge.rcu_read_unlock.exit117_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %58 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i113 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %sub.i.i.i115 = add i32 %61, -1
  store volatile i32 %sub.i.i.i115, ptr %preempt_count.i.i.i.i114, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %arrayidx = getelementptr %struct.neigh_parms, ptr %ptr, i32 0, i32 11, i32 6
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 4
  %min_interval = getelementptr i8, ptr %nb, i32 112
  %64 = ptrtoint ptr %min_interval to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_interval, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %63, i32 %65)
  %67 = ptrtoint ptr %min_interval to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %min_interval, align 4
  %mdev = getelementptr i8, ptr %1, i32 11328
  %68 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mdev, align 64
  tail call void @mlx5_fc_update_sampling_interval(ptr noundef %69, i32 noundef %66) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit117, %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end7, %mlx5e_alloc_neigh_update_work.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_neigh_cleanup(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netevent_nb = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %netevent_nb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netevent_nb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  %neigh_update1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1
  %call4 = tail call i32 @unregister_netevent_notifier(ptr noundef %netevent_nb) #10
  %wq = getelementptr i8, ptr %3, i32 11088
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq, align 16
  tail call void @flush_workqueue(ptr noundef %5) #10
  %neigh_stats_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 4
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %neigh_stats_work) #10
  %encap_lock = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 1, i32 2
  tail call void @mutex_destroy(ptr noundef %encap_lock) #10
  tail call void @rhashtable_destroy(ptr noundef %neigh_update1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_rep_neigh_entry_lookup(ptr nocapture noundef readonly %priv, ptr noundef %m_neigh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %neigh_update1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %6 = ptrtoint ptr %neigh_update1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %neigh_update1, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %neigh_update1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 594, ptr noundef nonnull @.str.14) #10
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 3
  %key_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %uglygep = getelementptr i8, ptr %m_neigh, i32 12
  %arrayidx3.i.i.i.i.i.i = getelementptr i32, ptr %m_neigh, i32 1
  %arrayidx5.i.i.i.i.i.i = getelementptr i32, ptr %m_neigh, i32 2
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %m_neigh, i32 4
  br label %rht_key_hashfn.exit.i.i.i

rht_key_hashfn.exit.i.i.i:                        ; preds = %do.end60.i.i.i.rht_key_hashfn.exit.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %7, %do.end12.i.i.i ], [ %40, %do.end60.i.i.i.rht_key_hashfn.exit.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %9, -559038717
  %10 = ptrtoint ptr %m_neigh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_neigh, align 4
  %add2.i.i.i.i.i.i = add i32 %11, %add1.i.i.i.i.i.i
  %12 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i = add i32 %13, %add1.i.i.i.i.i.i
  %14 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i = add i32 %15, %add1.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = sub i32 %add2.i.i.i.i.i.i, %add6.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i, i32 4) #10
  %xor.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i, %or.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i, %add4.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i, %xor.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i, i32 6) #10
  %xor10.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i
  %add11.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i, %add7.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i, %xor10.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i, i32 8) #10
  %xor14.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i
  %add15.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i, %add11.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i, %xor14.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i, i32 16) #10
  %xor18.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i
  %add19.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i, %add15.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i, %xor18.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i, i32 19) #10
  %xor22.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i
  %add23.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i, %add19.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i, %xor22.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i, i32 4) #10
  %xor26.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i
  %add27.i.i.i.i.i.i = add i32 %xor22.i.i.i.i.i.i, %add23.i.i.i.i.i.i
  %16 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %17, %add27.i.i.i.i.i.i
  %18 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uglygep, align 4
  %add36.i.i.i.i.i.i = add i32 %19, %add23.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i = xor i32 %xor26.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %20 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %21, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %sub57.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !79

cond.true.i.i.i.i:                                ; preds = %rht_key_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #10
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %rht_key_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %24 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %24, 1
  %25 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %26 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 369, ptr noundef nonnull @.str.14) #10
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %28 = ptrtoint ptr %27 to i32
  %and.i.i95.i.i.i = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %29 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %30 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %31 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %32 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %35 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %37, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %29, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr %m_neigh, i32 %conv3.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %36 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %29, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %37, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %25
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %neigh_update1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.23, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 614, ptr noundef nonnull @.str.14) #10
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.rht_key_hashfn.exit.i.i.i_crit_edge, !prof !79

do.end60.i.i.i.rht_key_hashfn.exit.i.i.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_key_hashfn.exit.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select11 = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select11, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %41 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i9.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %rhashtable_lookup_fast.exit.cond.end_crit_edge, label %land.lhs.true

rhashtable_lookup_fast.exit.cond.end_crit_edge:   ; preds = %rhashtable_lookup_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.lhs.true:                                    ; preds = %rhashtable_lookup_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc zeroext i1 @mlx5e_rep_neigh_entry_hold(ptr noundef nonnull %cond.i.i)
  %spec.select = select i1 %call2, ptr %cond.i.i, ptr null
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %rhashtable_lookup_fast.exit.cond.end_crit_edge
  %cond = phi ptr [ null, %rhashtable_lookup_fast.exit.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5e_rep_neigh_entry_hold(ptr noundef %nhe) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #10, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !79

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !79

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  ret i1 %tobool12.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_neigh_entry_create(ptr noundef %priv, ptr nocapture noundef readonly %m_neigh, ptr noundef %neigh_dev, ptr nocapture noundef %nhe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #14
  %1 = ptrtoint ptr %nhe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %nhe, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %priv1, align 8
  %m_neigh2 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %call7.i.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %m_neigh2, ptr %m_neigh, i32 20)
  %encap_list_lock = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %encap_list_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mlx5e_rep_neigh_entry_create.__key, i16 noundef signext 3) #10
  %4 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhe, align 4
  %encap_list = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %encap_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %encap_list, ptr %encap_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %5, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %encap_list, ptr %prev.i, align 4
  %8 = load ptr, ptr %nhe, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %8, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcnt, align 4
  %10 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhe, align 4
  %neigh_dev9 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %neigh_dev9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %neigh_dev, ptr %neigh_dev9, align 4
  %13 = load ptr, ptr %nhe, align 4
  %ppriv.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %14 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppriv.i, align 32
  %neigh_update.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1
  %16 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i, label %if.end.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.rcu_read_lock.exit.i.i.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i.i_crit_edge
  %20 = ptrtoint ptr %neigh_update.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %neigh_update.i, align 4
  %call.i.i.i29 = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %neigh_update.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i29)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i29, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_head_hashfn.exit.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_head_hashfn.exit.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_head_hashfn.exit.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_head_hashfn.exit.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 715, ptr noundef nonnull @.str.14) #10
  br label %rht_head_hashfn.exit.i.i.i

rht_head_hashfn.exit.i.i.i:                       ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge, %lor.lhs.false.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.rht_head_hashfn.exit.i.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %23 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 %idx.neg.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 4
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %25, -559038717
  %26 = sub nsw i32 16, %conv.i.i.i.i.i
  %27 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add2.i.i.i.i.i.i.i = add i32 %28, %add1.i.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 1
  %29 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.i.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i.i = add i32 %30, %add1.i.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 2
  %31 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i.i = add i32 %32, %add1.i.i.i.i.i.i.i
  %sub.i.i.i.i.i.i.i = sub i32 %add2.i.i.i.i.i.i.i, %add6.i.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i.i, i32 4) #10
  %xor.i.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i.i, %or.i.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i.i, %add4.i.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i.i, %xor.i.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i.i, i32 6) #10
  %xor10.i.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i.i
  %add11.i.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i.i, %add7.i.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i.i, %xor10.i.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i.i, i32 8) #10
  %xor14.i.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i.i
  %add15.i.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i.i, %add11.i.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i.i, %xor14.i.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i.i, i32 16) #10
  %xor18.i.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i.i
  %add19.i.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i.i, %add15.i.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i.i, %xor18.i.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i.i, i32 19) #10
  %xor22.i.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i.i
  %add23.i.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i.i, %add19.i.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i.i, %xor22.i.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i.i, i32 4) #10
  %xor26.i.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i.i
  %uglygep.i = getelementptr i8, ptr %13, i32 %26
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 4
  %33 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add27.i.i.i.i.i.i.i = add i32 %add23.i.i.i.i.i.i.i, %34
  %add33.i.i.i.i.i.i.i = add i32 %add27.i.i.i.i.i.i.i, %xor22.i.i.i.i.i.i.i
  %35 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uglygep.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %add23.i.i.i.i.i.i.i, %36
  %xor37.i.i.i.i.i.i.i = xor i32 %xor26.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #10
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #10
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #10
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #10
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #10
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #10
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #10
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %21, align 128
  %sub.i.i.i.i.i.i = add i32 %38, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %21, i32 0, i32 1
  %39 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i4.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i4.i.i.i, label %cond.false.i7.i.i.i, label %cond.true.i6.i.i.i, !prof !79

cond.true.i6.i.i.i:                               ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i5.i.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %neigh_update.i, ptr noundef %21, i32 noundef %and.i3.i.i.i.i.i) #10
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i7.i.i.i:                              ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %21, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i7.i.i.i, %cond.true.i6.i.i.i
  %cond.i8.i.i.i = phi ptr [ %call.i5.i.i.i, %cond.true.i6.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i7.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i8.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %21, ptr noundef nonnull %cond.i8.i.i.i) #10
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %21, i32 0, i32 5
  %41 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !79

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %21, ptr noundef nonnull %cond.i8.i.i.i) #10
  %call.i10.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i10.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i13.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i13.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i11.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call1.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i

land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i15.i.i.i:                         ; preds = %land.lhs.true.i13.i.i.i
  %.b4.i14.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i, label %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i16.i.i.i

land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

if.then.i16.i.i.i:                                ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i16.i.i.i, %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %43 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i17.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i17.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  %sub.i.i.i19.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i19.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %neigh_update.i, ptr noundef null, ptr noundef %13) #10
  br label %rhashtable_insert_fast.exit.i

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i20.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %21, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %tobool.not.i21.i.i.i = icmp eq i32 %call.i20.i.i.i, 0
  br i1 %tobool.not.i21.i.i.i, label %land.lhs.true.i23.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i23.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i22.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i22.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i23.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i24.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

if.then.i24.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 377, ptr noundef nonnull @.str.18) #10
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i24.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i.i.i.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %50 = ptrtoint ptr %cond.i8.i.i.i to i32
  %or.i.i.i.i.i = or i32 %50, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i63.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i.i)
  %tobool.i.not64.i.i.i = icmp eq i32 %and.i63.i.i.i, 0
  br i1 %tobool.i.not64.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %51 = inttoptr i32 %cond.i.i.i.i.i to ptr
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end147.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %head.066.i.i.i = phi ptr [ %53, %do.end147.i.i.i.for.body.i.i.i_crit_edge ], [ %51, %for.body.preheader.i.i.i ]
  %elasticity.065.i.i.i = phi i32 [ %dec.i.i.i, %do.end147.i.i.i.for.body.i.i.i_crit_edge ], [ 16, %for.body.preheader.i.i.i ]
  %dec.i.i.i = add i32 %elasticity.065.i.i.i, -1
  %call137.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %21, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %for.body.i.i.i.do.end147.i.i.i_crit_edge

for.body.i.i.i.do.end147.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %for.body.i.i.i
  %call140.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.25, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 732, ptr noundef nonnull @.str.18) #10
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %for.body.i.i.i.do.end147.i.i.i_crit_edge
  %52 = ptrtoint ptr %head.066.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.066.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i.i.i.i = and i32 %54, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.end147.i.i.i.for.body.i.i.i_crit_edge, label %for.end.i.i.i

do.end147.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i.i.slow_path.i.i.i_crit_edge, label %for.end.i.i.i.if.end152.i.i.i_crit_edge

for.end.i.i.i.if.end152.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i.i

for.end.i.i.i.slow_path.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 8
  %call.i.i.i25.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %55 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 2
  %57 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.i.not.i.i.i = icmp ult i32 %56, %58
  br i1 %cmp.i.not.i.i.i, label %if.end162.i.i.i, label %out_unlock.i.i.i, !prof !79

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i27.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %59 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %21, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.i28.i.i.i = icmp ugt i32 %60, %62
  br i1 %cmp.i28.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 3, i32 4
  %63 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i29.i.i.i = icmp eq i32 %64, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp4.i.i.i.i = icmp ult i32 %62, %64
  %spec.select.i.i.i.i = select i1 %tobool.not.i29.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !85

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i30.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %21, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %tobool.not.i31.i.i.i = icmp eq i32 %call.i30.i.i.i, 0
  br i1 %tobool.not.i31.i.i.i, label %land.lhs.true.i34.i.i.i, label %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i.i.i

land.lhs.true.i34.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i32.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i.i)
  %tobool2.not.i33.i.i.i = icmp eq i32 %call1.i32.i.i.i, 0
  br i1 %tobool2.not.i33.i.i.i, label %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %land.lhs.true3.i36.i.i.i

land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i.i.i

land.lhs.true3.i36.i.i.i:                         ; preds = %land.lhs.true.i34.i.i.i
  %.b7.i35.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i.i, label %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %if.then.i37.i.i.i

land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit42.i.i.i

if.then.i37.i.i.i:                                ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 377, ptr noundef nonnull @.str.18) #10
  br label %rht_ptr.exit42.i.i.i

rht_ptr.exit42.i.i.i:                             ; preds = %if.then.i37.i.i.i, %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge
  %65 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cond.i8.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %and.i.i38.i.i.i = and i32 %67, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i.i)
  %tobool.not.i.i39.i.i.i = icmp eq i32 %and.i.i38.i.i.i, 0
  %cond.i.i41.i.i.i = select i1 %tobool.not.i.i39.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i38.i.i.i
  %68 = inttoptr i32 %cond.i.i41.i.i.i to ptr
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %13, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #10
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #10, !srcloc !91
  tail call fastcc void @rht_assign_unlock(ptr noundef %21, ptr noundef nonnull %cond.i8.i.i.i, ptr noundef %13) #10
  %call.i.i.i44.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %71 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %73 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %21, align 128
  %div8.i.i.i.i = lshr i32 %74, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %mul.i.i.i.i)
  %cmp.i45.i.i.i = icmp ugt i32 %72, %mul.i.i.i.i
  br i1 %cmp.i45.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit42.i.i.i
  %max_size.i46.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %max_size.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_size.i46.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i47.i.i.i = icmp eq i32 %76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp4.i48.i.i.i = icmp ult i32 %74, %76
  %spec.select.i49.i.i.i = select i1 %tobool.not.i47.i.i.i, i1 true, i1 %cmp4.i48.i.i.i
  br i1 %spec.select.i49.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %run_work.i.i.i) #10
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge ]
  %call.i52.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52.i.i.i, label %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true.i55.i.i.i

out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true.i55.i.i.i:                          ; preds = %out.i.i.i
  %call1.i53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i.i)
  %tobool.not.i54.i.i.i = icmp eq i32 %call1.i53.i.i.i, 0
  br i1 %tobool.not.i54.i.i.i, label %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true2.i57.i.i.i

land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true2.i57.i.i.i:                         ; preds = %land.lhs.true.i55.i.i.i
  %.b4.i56.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i.i, label %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %if.then.i58.i.i.i

land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62.i.i.i

if.then.i58.i.i.i:                                ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit62.i.i.i

rcu_read_unlock.exit62.i.i.i:                     ; preds = %if.then.i58.i.i.i, %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %78 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i.i59.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i59.i.i.i to ptr
  %preempt_count.i.i.i.i60.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  %sub.i.i.i61.i.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i61.i.i.i, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %rhashtable_insert_fast.exit.i

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_unlock(ptr noundef %21, ptr noundef nonnull %cond.i8.i.i.i) #10
  br label %out.i.i.i

rhashtable_insert_fast.exit.i:                    ; preds = %rcu_read_unlock.exit62.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit62.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  %82 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i.i = icmp eq ptr %retval.0.i.i.i, null
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %82, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %out_free

if.end.i:                                         ; preds = %rhashtable_insert_fast.exit.i
  %neigh_list.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %13, i32 0, i32 4
  %neigh_list2.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %15, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %neigh_list2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %neigh_list2.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %neigh_list.i, ptr noundef %neigh_list2.i, ptr noundef %84) #10
  br i1 %call.i.i14.i, label %if.end.i.i.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %neigh_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %13, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %neigh_list2.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %87 = ptrtoint ptr %neigh_list2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %neigh_list.i, ptr %neigh_list2.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %88 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %neigh_list.i, ptr %prev37.i.i.i, align 4
  br label %cleanup

out_free:                                         ; preds = %rhashtable_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nhe, align 4
  tail call void @kfree(ptr noundef %90) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.i.i.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_update_neigh_used_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_update_sampling_interval(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_neigh_update(ptr noundef %work) #0 align 64 {
entry:
  %ha = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nhe1 = getelementptr inbounds %struct.neigh_update_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %nhe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhe1, align 4
  %n2 = getelementptr inbounds %struct.neigh_update_work, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n2, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %ha) #10
  tail call void @rtnl_lock() #10
  %lock = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %ha3 = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 18
  %4 = call ptr @memcpy(ptr %ha, ptr %ha3, i32 6)
  %nud_state5 = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %nud_state5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nud_state5, align 8
  %dead6 = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %dead6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dead6, align 2
  %neigh_dev = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %neigh_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %neigh_dev, align 4
  %dev = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 25
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %cmp = icmp eq ptr %10, %12
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  %13 = and i8 %6, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp ne i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  %14 = select i1 %tobool.not, i1 %tobool9.not, i1 false
  call fastcc void @trace_mlx5e_rep_neigh_update(ptr noundef %1, ptr noundef nonnull %ha, i1 noundef zeroext %14)
  br i1 %cmp, label %while.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.cond.preheader:                             ; preds = %entry
  %call31 = call ptr @mlx5e_get_next_init_encap(ptr noundef %1, ptr noundef null) #10
  %cmp14.not32 = icmp eq ptr %call31, null
  br i1 %cmp14.not32, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call33 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call31, %while.cond.preheader.while.body_crit_edge ]
  %out_dev = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call33, i32 0, i32 9
  %15 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 2304
  call void @mlx5e_rep_update_flows(ptr noundef %add.ptr.i, ptr noundef nonnull %call33, i1 noundef zeroext %14, ptr noundef nonnull %ha) #10
  %call = call ptr @mlx5e_get_next_init_encap(ptr noundef %1, ptr noundef nonnull %call33) #10
  %cmp14.not = icmp eq ptr %call, null
  br i1 %cmp14.not, label %while.body.out_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %while.body.out_crit_edge, %while.cond.preheader.out_crit_edge, %entry.out_crit_edge
  call void @rtnl_unlock() #10
  %17 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %n2, align 4
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %18, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #10
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #10, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5e_release_neigh_update_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !79

if.end5.i.i.i.i.i.mlx5e_release_neigh_update_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_release_neigh_update_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #10
  br label %mlx5e_release_neigh_update_work.exit

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @neigh_destroy(ptr noundef %18) #10
  br label %mlx5e_release_neigh_update_work.exit

mlx5e_release_neigh_update_work.exit:             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5e_release_neigh_update_work.exit_crit_edge
  %20 = ptrtoint ptr %nhe1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhe1, align 4
  call void @mlx5e_rep_neigh_entry_release(ptr noundef %21) #10
  call void @kfree(ptr noundef %work) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %ha) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5e_rep_neigh_update(ptr noundef %nhe, ptr noundef %ha, i1 noundef zeroext %neigh_connected) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_rep_neigh_update, i32 0, i32 1), ptr blockaddress(@trace_mlx5e_rep_neigh_update, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !93

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %call43 = tail call i32 @__traceiter_mlx5e_rep_neigh_update(ptr noundef null, ptr noundef %nhe, ptr noundef %ha, i1 noundef zeroext %neigh_connected) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !79

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_rep_neigh_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_rep_neigh_update, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mlx5e_rep_neigh_update.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_mlx5e_rep_neigh_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 45, ptr noundef nonnull @.str.14) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_next_init_encap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_update_flows(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlx5e_rep_neigh_update(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !99

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !79

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %7 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !104
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !85

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !108
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %3 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %2 = tail call i32 @llvm.read_register.i32(metadata !67) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @mlx5e_rep_neigh_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 286, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5e_rep_neigh_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 287, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_rep_neigh_init.__key.3, !4, !"__key", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 302, i32 7}
!10 = !{ptr @mlx5e_rep_neigh_entry_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 385, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx5e_neigh_ht_params, !14, !"mlx5e_neigh_ht_params", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 269, i32 39}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 248, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx5e_alloc_neigh_update_work.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/neigh.c", i32 194, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_rep_tracepoint.h", i32 14, i32 1}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148229231}
!78 = !{i64 2148143695, i64 2148143727, i64 2148143756, i64 2148143790, i64 2148143821, i64 2148143844}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148596621}
!81 = !{i64 2149192607}
!82 = !{i64 2159027540}
!83 = !{i64 2148142165, i64 2148142191, i64 2148142220, i64 2148142254, i64 2148142285, i64 2148142308}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2149192873}
!87 = !{i64 2148141230, i64 2148141262, i64 2148141291, i64 2148141325, i64 2148141356, i64 2148141379}
!88 = !{i64 2158960164}
!89 = !{i64 2158963598}
!90 = !{i64 514534, i64 514558, i64 514579, i64 514596, i64 514613}
!91 = !{i64 2148139700, i64 2148139726, i64 2148139755, i64 2148139789, i64 2148139820, i64 2148139843}
!92 = !{i64 2149217999}
!93 = !{i64 2148585424, i64 2148585429, i64 2148585442, i64 2148585486, i64 2148585520, i64 2148585541}
!94 = !{i64 2160623500}
!95 = !{i64 2160623755}
!96 = !{i64 2149201166}
!97 = !{i64 2149202202}
!98 = !{i64 2152643381}
!99 = !{!"branch_weights", i32 2146410443, i32 1073205}
!100 = !{i64 2148148558, i64 2148148590, i64 2148148619, i64 2148148653, i64 2148148684, i64 2148148707}
!101 = !{i64 2148237639}
!102 = !{i64 2152643541}
!103 = !{i64 2152643818}
!104 = !{i64 2152643660}
!105 = !{i64 2152644023}
!106 = !{i64 2152645086, i64 2152645578, i64 2152645123, i64 2152645179, i64 2152645213, i64 2152645237, i64 2152645278, i64 2152645299, i64 2152645327, i64 2152645361}
!107 = !{i64 2148236526}
!108 = !{i64 2148146945, i64 2148146977, i64 2148147006, i64 2148147040, i64 2148147071, i64 2148147094}
!109 = !{i64 2152646481}
!110 = !{i64 2158953237}
!111 = !{i64 2158955536}
