; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/qos.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_rq = type { %union.anon.186, %struct.anon.200, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.186 = type { %struct.anon.193 }
%struct.anon.193 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.195 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.173 }
%union.anon.173 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.194, i64, i32, [28 x i8] }
%union.anon.194 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { %struct.anon.197, [0 x %struct.mlx5_mtt] }
%struct.anon.197 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.200 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.183, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.183 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.189, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.192, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { i8, i8, i16, i32 }
%union.anon.192 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.201, i32 }
%union.anon.201 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.184, i32, i32 }
%union.anon.184 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.188 }
%union.anon.188 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.215, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.215 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.216 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.216 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.217 }
%struct.anon.217 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
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
%struct.mlx5e_qos_node = type { %struct.hlist_node, %struct.callback_head, ptr, i64, i32, i32, i32, i32, i16 }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.185, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.185 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.214, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.214 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.204, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.204 = type { ptr }
%struct.mlx5e_create_cq_param = type { ptr, ptr, i32, i32 }
%struct.mlx5e_sq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, i8, i8, i16 }
%struct.mlx5e_cq_param = type { [16 x i32], %struct.mlx5_wq_param, i16, i8 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mlx5e_mqprio_rl = type { ptr, i32, ptr, i8 }

@mlx5e_qos_bytes_rate_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 15, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d:(pid %d): QoS: Input rate (%llu Bytes/sec) below minimum supported (%u Bytes/sec)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5e_qos_bytes_rate_check\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/qos.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_qos_bytes_rate_check._entry_ptr = internal global ptr @mlx5e_qos_bytes_rate_check._entry, section ".printk_index", align 4
@mlx5e_qos_close_queues.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@mlx5e_qos_close_queues.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_qos_deactivate_queues.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_qos_deactivate_queues.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@mlx5e_qos_deactivate_queues.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5e_qos_deactivate_queues\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): QoS: Deactivate QoS SQ qid %u\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_add.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5e_htb_root_add\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_CREATE handle %04x:, default :%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_add.__msg = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"mlx5_core: Missing QoS capabilities. Try disabling SRIOV or use a supported device.\00", [44 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_add.__msg.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: Firmware error. Try upgrading firmware.\00", [45 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_del.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5e_htb_root_del\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_DESTROY\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 534, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): QoS: Failed to find the root node in the QoS tree\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_del._entry_ptr = internal global ptr @mlx5e_htb_root_del._entry, section ".printk_index", align 4
@mlx5e_htb_root_del._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 540, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): QoS: Failed to destroy root node %u, err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5e_htb_root_del._entry_ptr.20 = internal global ptr @mlx5e_htb_root_del._entry.18, section ".printk_index", align 4
@mlx5e_htb_leaf_alloc_queue.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5e_htb_leaf_alloc_queue\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_LEAF_ALLOC_QUEUE classid %04x, parent %04x, rate %llu, ceil %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlx5_core: Maximum amount of leaf classes is reached.\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue.__msg.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: Firmware error when creating a leaf node.\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 615, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): QoS: Failed to create a leaf node (class %04x), err = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue._entry_ptr = internal global ptr @mlx5e_htb_leaf_alloc_queue._entry, section ".printk_index", align 4
@mlx5e_htb_leaf_alloc_queue.__msg.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Error creating an SQ.\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): QoS: Failed to create a QoS SQ (class %04x), err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_alloc_queue._entry_ptr.28 = internal global ptr @mlx5e_htb_leaf_alloc_queue._entry.26, section ".printk_index", align 4
@mlx5e_htb_leaf_to_inner.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_htb_leaf_to_inner\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_LEAF_TO_INNER classid %04x, upcoming child %04x, rate %llu, ceil %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlx5_core: Firmware error when creating an inner node.\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 655, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): QoS: Failed to create an inner node (class %04x), err = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry_ptr = internal global ptr @mlx5e_htb_leaf_to_inner._entry, section ".printk_index", align 4
@mlx5e_htb_leaf_to_inner.__msg.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: Firmware error when creating a leaf node.\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.2, i32 675, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry_ptr.34 = internal global ptr @mlx5e_htb_leaf_to_inner._entry.33, section ".printk_index", align 4
@mlx5e_htb_leaf_to_inner._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): QoS: Failed to destroy leaf node %u (class %04x), err = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry_ptr.37 = internal global ptr @mlx5e_htb_leaf_to_inner._entry.35, section ".printk_index", align 4
@mlx5e_htb_leaf_to_inner.__msg.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Error creating an SQ.\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry_ptr.40 = internal global ptr @mlx5e_htb_leaf_to_inner._entry.39, section ".printk_index", align 4
@mlx5e_htb_leaf_to_inner._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.29, ptr @.str.2, i32 718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:%d:(pid %d): QoS: Failed to roll back creation of an inner node %u (class %04x), err = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_to_inner._entry_ptr.43 = internal global ptr @mlx5e_htb_leaf_to_inner._entry.41, section ".printk_index", align 4
@mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5e_htb_leaf_del\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_LEAF_DEL classid %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.44, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del._entry_ptr = internal global ptr @mlx5e_htb_leaf_del._entry, section ".printk_index", align 4
@.str.46 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Gaps in queue numeration: destroyed queue %u, the highest queue is %u\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't move node with qid %u to itself\00", [58 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.44, ptr @.str.2, ptr @.str.48, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): QoS: Moving QoS SQ %u to %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Could not find a node with qid %u to move to queue %u\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Error creating an SQ.\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.2, i32 835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s:%d:(pid %d): QoS: Failed to create a QoS SQ (class %04x) while moving qid %u to %u, err = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del._entry_ptr.52 = internal global ptr @mlx5e_htb_leaf_del._entry.50, section ".printk_index", align 4
@mlx5e_htb_leaf_del_last.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_htb_leaf_del_last\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_LEAF_DEL_LAST%s classid %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_FORCE\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mlx5e_htb_leaf_del_last.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: Firmware error when creating a leaf node.\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.53, ptr @.str.2, i32 871, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry_ptr = internal global ptr @mlx5e_htb_leaf_del_last._entry, section ".printk_index", align 4
@mlx5e_htb_leaf_del_last._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.53, ptr @.str.2, i32 893, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry_ptr.58 = internal global ptr @mlx5e_htb_leaf_del_last._entry.57, section ".printk_index", align 4
@mlx5e_htb_leaf_del_last.__msg.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Error creating an SQ.\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.53, ptr @.str.2, i32 915, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry_ptr.61 = internal global ptr @mlx5e_htb_leaf_del_last._entry.60, section ".printk_index", align 4
@mlx5e_htb_leaf_del_last._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.53, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_htb_leaf_del_last._entry_ptr.63 = internal global ptr @mlx5e_htb_leaf_del_last._entry.62, section ".printk_index", align 4
@mlx5e_htb_node_modify.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_htb_node_modify\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): QoS: TC_HTB_LEAF_MODIFY classid %04x, rate %llu, ceil %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_htb_node_modify.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlx5_core: Firmware error when modifying a node.\00", [47 x i8] zeroinitializer }, align 32
@mlx5e_htb_node_modify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 985, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): QoS: Failed to modify a node (class %04x), err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5e_htb_node_modify._entry_ptr = internal global ptr @mlx5e_htb_node_modify._entry, section ".printk_index", align 4
@mlx5e_mqprio_rl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1025, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:%d:(pid %d): QoS: Missing QoS capabilities. Try disabling SRIOV or use a supported device.\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5e_mqprio_rl_init\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_mqprio_rl_init._entry_ptr = internal global ptr @mlx5e_mqprio_rl_init._entry, section ".printk_index", align 4
@mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): QoS: Root created, id %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): QoS: Leaf[%d] created, id %#x, max average bw %u Mbits/sec\0A\00", [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_sw_node_find_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_qos_alloc_queues.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_open_qos_sq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5e_activate_qos_sq.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_activate_qos_sq\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): QoS: Activate QoS SQ qid %u\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5e_get_qos_sq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_get_qos_sq.__warned.77 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_find_unused_qos_qid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: state_lock is not held\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mlx5e_find_unused_qos_qid = private unnamed_addr constant [26 x i8] c"mlx5e_find_unused_qos_qid\00", align 1
@mlx5e_htb_convert_rate.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_htb_convert_rate\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): QoS: Convert: rate %llu, parent ceil %llu -> bw_share %u\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_htb_convert_ceil\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): QoS: Convert: ceil %llu -> max_average_bw %u\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_deactivate_qos_sq.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.83, ptr @.str.2, ptr @.str.10, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_deactivate_qos_sq\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_close_qos_sq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_close_qos_sq.__warned.84 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_reactivate_qos_sq\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): QoS: Reactivate QoS SQ qid %u\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5e_qos_update_children.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlx5_core: Firmware error when modifying a child node.\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_qos_update_children._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 954, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): QoS: Failed to modify a child node (class %04x), err = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5e_qos_update_children\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_qos_update_children._entry_ptr = internal global ptr @mlx5e_qos_update_children._entry, section ".printk_index", align 4
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 14, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 336, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 453, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 478, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 481, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 501, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 527, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 534, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 539, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 588, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 593, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 613, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 614, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 623, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 624, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 642, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 653, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 654, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 673, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 674, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 692, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 700, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 701, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 717, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 763, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 782, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 799, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 806, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 807, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 810, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 833, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 834, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 857, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 869, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 870, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 892, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 913, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 914, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 923, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 969, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 983, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 984, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1025, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1041, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1052, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 695, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 120, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 723, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 287, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 45, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 565, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 576, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 299, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 736, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 952, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 953, i32 4 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @mlx5e_htb_leaf_alloc_queue._entry, ptr @mlx5e_htb_leaf_alloc_queue._entry.26, ptr @mlx5e_htb_leaf_alloc_queue._entry_ptr, ptr @mlx5e_htb_leaf_alloc_queue._entry_ptr.28, ptr @mlx5e_htb_leaf_del._entry, ptr @mlx5e_htb_leaf_del._entry.50, ptr @mlx5e_htb_leaf_del._entry_ptr, ptr @mlx5e_htb_leaf_del._entry_ptr.52, ptr @mlx5e_htb_leaf_del_last._entry, ptr @mlx5e_htb_leaf_del_last._entry.57, ptr @mlx5e_htb_leaf_del_last._entry.60, ptr @mlx5e_htb_leaf_del_last._entry.62, ptr @mlx5e_htb_leaf_del_last._entry_ptr, ptr @mlx5e_htb_leaf_del_last._entry_ptr.58, ptr @mlx5e_htb_leaf_del_last._entry_ptr.61, ptr @mlx5e_htb_leaf_del_last._entry_ptr.63, ptr @mlx5e_htb_leaf_to_inner._entry, ptr @mlx5e_htb_leaf_to_inner._entry.33, ptr @mlx5e_htb_leaf_to_inner._entry.35, ptr @mlx5e_htb_leaf_to_inner._entry.39, ptr @mlx5e_htb_leaf_to_inner._entry.41, ptr @mlx5e_htb_leaf_to_inner._entry_ptr, ptr @mlx5e_htb_leaf_to_inner._entry_ptr.34, ptr @mlx5e_htb_leaf_to_inner._entry_ptr.37, ptr @mlx5e_htb_leaf_to_inner._entry_ptr.40, ptr @mlx5e_htb_leaf_to_inner._entry_ptr.43, ptr @mlx5e_htb_node_modify._entry, ptr @mlx5e_htb_node_modify._entry_ptr, ptr @mlx5e_htb_root_del._entry, ptr @mlx5e_htb_root_del._entry.18, ptr @mlx5e_htb_root_del._entry_ptr, ptr @mlx5e_htb_root_del._entry_ptr.20, ptr @mlx5e_mqprio_rl_init._entry, ptr @mlx5e_mqprio_rl_init._entry_ptr, ptr @mlx5e_qos_bytes_rate_check._entry, ptr @mlx5e_qos_bytes_rate_check._entry_ptr, ptr @mlx5e_qos_update_children._entry, ptr @mlx5e_qos_update_children._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mlx5e_htb_root_add.__msg, ptr @mlx5e_htb_root_add.__msg.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @mlx5e_htb_leaf_alloc_queue.__msg, ptr @mlx5e_htb_leaf_alloc_queue.__msg.23, ptr @.str.24, ptr @mlx5e_htb_leaf_alloc_queue.__msg.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @mlx5e_htb_leaf_to_inner.__msg, ptr @.str.31, ptr @mlx5e_htb_leaf_to_inner.__msg.32, ptr @.str.36, ptr @mlx5e_htb_leaf_to_inner.__msg.38, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mlx5e_htb_leaf_del.__msg, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mlx5e_htb_leaf_del_last.__msg, ptr @mlx5e_htb_leaf_del_last.__msg.59, ptr @.str.64, ptr @.str.65, ptr @mlx5e_htb_node_modify.__msg, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @mlx5e_qos_update_children.__msg, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_qos_bytes_rate_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_root_add.__msg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_root_add.__msg.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_root_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_root_del._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_alloc_queue.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_alloc_queue.__msg.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_alloc_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_alloc_queue.__msg.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_alloc_queue._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner.__msg.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner.__msg.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_to_inner._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last.__msg.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_leaf_del_last._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_node_modify.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_htb_node_modify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_mqprio_rl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_qos_update_children.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_qos_update_children._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_qos_bytes_rate_check(ptr nocapture noundef readonly %mdev, i64 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 125000, i64 %nbytes)
  %cmp = icmp ult i64 %nbytes, 125000
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef %7, i64 noundef %nbytes, i32 noundef 125000) #13
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_qos_max_leaf_nodes(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %mdev) #10
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 256)
  ret i32 %0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_max_leaf_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_qos_cur_leaf_nodes(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %call.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %1) #10
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 256) #10
  %qos_used_qids = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %call5.i = tail call i32 @_find_last_bit(ptr noundef %qos_used_qids, i32 noundef %2) #10
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 64
  %call.i7 = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %4) #10
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i7, i32 256) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %5)
  %cmp = icmp eq i32 %call5.i, %5
  %add = add i32 %call5.i, 1
  %spec.select = select i1 %cmp, i32 0, i32 %add
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_get_txq_by_classid(ptr noundef %priv, i16 noundef zeroext %classid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !216
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef 696, ptr noundef nonnull @.str.72) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %conv = zext i16 %classid to i32
  %call.i11 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i14, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i14:                                ; preds = %rcu_read_lock.exit
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i14.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i14.do.end.i_crit_edge:             ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i14
  %.b39.i = load i1, ptr @mlx5e_sw_node_find_rcu.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i15

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i15:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_sw_node_find_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @.str.73) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i15, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i14.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %conv, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i = load volatile ptr, ptr %node.0.in.i, align 4
  %tobool13.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool13.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %classid14.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %classid14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %classid14.i, align 4
  %cmp.i = icmp eq i32 %6, %conv
  br i1 %cmp.i, label %do.end, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

do.end:                                           ; preds = %for.body.i
  %qid1 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %qid1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load volatile i16, ptr %qid1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp = icmp eq i16 %8, -1
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end5

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %do.end
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %9 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %11 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %13 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end5.mlx5e_qid_from_qos.exit_crit_edge

if.end5.mlx5e_qid_from_qos.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %15 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %16 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %if.end5.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %if.end5.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i = lshr i32 %10, 7
  %and.lobit.i = and i32 %and.i, 1
  %conv.i = zext i16 %12 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %17 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %8, %17
  %conv7 = zext i16 %conv9.i to i32
  br label %out

out:                                              ; preds = %mlx5e_qid_from_qos.exit, %do.end.out_crit_edge, %for.cond.i.out_crit_edge
  %res.0 = phi i32 [ %conv7, %mlx5e_qid_from_qos.exit ], [ -22, %do.end.out_crit_edge ], [ -2, %for.cond.i.out_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i16, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %out
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.71, i32 noundef 724, ptr noundef nonnull @.str.74) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !217
  %18 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i.i.i.i23 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_qos_close_queues(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 21
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b89 = load i1, ptr @mlx5e_qos_close_queues.__warned, align 1
  br i1 %.b89, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_qos_close_queues.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 336, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %qos_sqs5 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 4
  %2 = ptrtoint ptr %qos_sqs5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos_sqs5, align 128
  store volatile ptr null, ptr %qos_sqs5, align 128
  %tobool44.not = icmp eq ptr %3, null
  br i1 %tobool44.not, label %do.end.cleanup68_crit_edge, label %if.end46

do.end.cleanup68_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup68

if.end46:                                         ; preds = %do.end
  tail call void @synchronize_rcu() #10
  %qos_sqs_size = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 10
  %4 = ptrtoint ptr %qos_sqs_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %qos_sqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4792.not = icmp eq i16 %5, 0
  br i1 %cmp4792.not, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end46.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end46.for.body_crit_edge ]
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %dep_map52 = getelementptr inbounds %struct.mlx5e_priv, ptr %7, i32 0, i32 6, i32 5
  %call.i90 = tail call i32 @lock_is_held_type(ptr noundef %dep_map52, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool54.not = icmp eq i32 %call.i90, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %for.body.do.end63_crit_edge

for.body.do.end63_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

land.lhs.true55:                                  ; preds = %for.body
  %call56 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true55.do.end63_crit_edge, label %land.lhs.true58

land.lhs.true55.do.end63_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %.b8788 = load i1, ptr @mlx5e_qos_close_queues.__warned.6, align 1
  br i1 %.b8788, label %land.lhs.true58.do.end63_crit_edge, label %if.then60

land.lhs.true58.do.end63_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

if.then60:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_qos_close_queues.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 344, ptr noundef nonnull @.str.5) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %land.lhs.true58.do.end63_crit_edge, %land.lhs.true55.do.end63_crit_edge, %for.body.do.end63_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.093
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool65.not = icmp eq ptr %9, null
  br i1 %tobool65.not, label %do.end63.cleanup_crit_edge, label %if.end67

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_close_txqsq(ptr noundef nonnull %9) #10
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %9, i32 0, i32 10
  tail call void @mlx5e_close_cq(ptr noundef %cq) #10
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end63.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.093, 1
  %10 = ptrtoint ptr %qos_sqs_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %qos_sqs_size, align 4
  %conv = zext i16 %11 to i32
  %cmp47 = icmp ult i32 %inc, %conv
  br i1 %cmp47, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end46.for.end_crit_edge
  tail call void @kvfree(ptr noundef nonnull %3) #10
  br label %cleanup68

cleanup68:                                        ; preds = %for.end, %do.end.cleanup68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_cq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_qos_open_queues(ptr noundef %priv, ptr noundef %chs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %htb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %maj_id = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 4
  %0 = ptrtoint ptr %maj_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %maj_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @mlx5e_qos_alloc_queues(ptr noundef %priv, ptr noundef %chs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %if.end.for.body_crit_edge
  %bkt.055 = phi i32 [ %inc, %for.inc29.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %htb, i32 0, i32 %bkt.055
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.152 = load ptr, ptr %arrayidx, align 4
  %tobool9.not53 = icmp eq ptr %node.152, null
  br i1 %tobool9.not53, label %for.body.for.inc29_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %node.154 = phi ptr [ %node.1, %for.inc.for.body10_crit_edge ], [ %node.152, %for.body.for.body10_crit_edge ]
  %qid = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.154, i32 0, i32 8
  %3 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp11 = icmp eq i16 %4, -1
  br i1 %cmp11, label %for.body10.for.inc_crit_edge, label %if.end14

for.body10.for.inc_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %for.body10
  %call15 = tail call fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %chs, ptr noundef nonnull %node.154)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.for.inc_crit_edge, label %if.then17

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %if.end14
  %num.i = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 2
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not.i = icmp eq i32 %6, 0
  br i1 %cmp4.not.i, label %if.then17.cleanup_crit_edge, label %if.then17.for.body.i_crit_edge

if.then17.for.body.i_crit_edge:                   ; preds = %if.then17
  br label %for.body.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then17.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then17.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chs, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %i.05.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void @mlx5e_qos_close_queues(ptr noundef %10) #10
  %inc.i = add nuw i32 %i.05.i, 1
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %for.body10.for.inc_crit_edge
  %13 = ptrtoint ptr %node.154 to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.1 = load ptr, ptr %node.154, align 4
  %tobool9.not = icmp eq ptr %node.1, null
  br i1 %tobool9.not, label %for.inc.for.inc29_crit_edge, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.inc.for.inc29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc.for.inc29_crit_edge, %for.body.for.inc29_crit_edge
  %inc = add nuw nsw i32 %bkt.055, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc29.cleanup_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc29.cleanup_crit_edge:                      ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc29.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call15, %if.then17.cleanup_crit_edge ], [ %call15, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_qos_alloc_queues(ptr noundef %priv, ptr nocapture noundef readonly %chs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %call.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %1) #10
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 256) #10
  %num = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 2
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %add = add i32 %4, -1
  %sub = add i32 %add, %2
  %div = udiv i32 %sub, %4
  %conv = trunc i32 %div to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp153.not = icmp eq i32 %4, 0
  br i1 %cmp153.not, label %entry.cleanup125_crit_edge, label %kvcalloc.exit.lr.ph

entry.cleanup125_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup125

kvcalloc.exit.lr.ph:                              ; preds = %entry
  %conv4 = shl i32 %div, 2
  %5 = and i32 %conv4, 262140
  br label %kvcalloc.exit

kvcalloc.exit:                                    ; preds = %for.inc.kvcalloc.exit_crit_edge, %kvcalloc.exit.lr.ph
  %i.0154 = phi i32 [ 0, %kvcalloc.exit.lr.ph ], [ %inc, %for.inc.kvcalloc.exit_crit_edge ]
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %kvcalloc.exit
  %dec155 = add i32 %i.0154, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec155)
  %cmp61156 = icmp sgt i32 %dec155, -1
  br i1 %cmp61156, label %while.body.lr.ph, label %while.cond.preheader.cleanup125_crit_edge

while.cond.preheader.cleanup125_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup125

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6, i32 5
  br label %while.body

for.inc:                                          ; preds = %kvcalloc.exit
  %6 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chs, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0154
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %qos_sqs_size8 = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %qos_sqs_size8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store volatile i16 %conv, ptr %qos_sqs_size8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  %11 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chs, align 4
  %arrayidx48 = getelementptr ptr, ptr %12, i32 %i.0154
  %13 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx48, align 4
  %qos_sqs49 = getelementptr inbounds %struct.mlx5e_channel, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %qos_sqs49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call.i.i.i, ptr %qos_sqs49, align 128
  %inc = add nuw i32 %i.0154, 1
  %16 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.kvcalloc.exit_crit_edge, label %for.inc.cleanup125_crit_edge

for.inc.cleanup125_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup125

for.inc.kvcalloc.exit_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %kvcalloc.exit

while.body:                                       ; preds = %do.end75.while.body_crit_edge, %while.body.lr.ph
  %dec157 = phi i32 [ %dec155, %while.body.lr.ph ], [ %dec, %do.end75.while.body_crit_edge ]
  %call.i147 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool66.not = icmp eq i32 %call.i147, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %while.body.do.end75_crit_edge

while.body.do.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

land.lhs.true67:                                  ; preds = %while.body
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b146 = load i1, ptr @mlx5e_qos_alloc_queues.__warned, align 1
  br i1 %.b146, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_qos_alloc_queues.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 390, ptr noundef nonnull @.str.5) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %while.body.do.end75_crit_edge
  %18 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chs, align 4
  %arrayidx77 = getelementptr ptr, ptr %19, i32 %dec157
  %20 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx77, align 4
  %qos_sqs78 = getelementptr inbounds %struct.mlx5e_channel, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %qos_sqs78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qos_sqs78, align 128
  store volatile ptr null, ptr %qos_sqs78, align 128
  tail call void @synchronize_rcu() #10
  tail call void @kvfree(ptr noundef %23) #10
  %dec = add i32 %dec157, -1
  %cmp61 = icmp sgt i32 %dec, -1
  br i1 %cmp61, label %do.end75.while.body_crit_edge, label %do.end75.cleanup125_crit_edge

do.end75.cleanup125_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup125

do.end75.while.body_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup125:                                       ; preds = %do.end75.cleanup125_crit_edge, %for.inc.cleanup125_crit_edge, %while.cond.preheader.cleanup125_crit_edge, %entry.cleanup125_crit_edge
  %retval.0 = phi i32 [ -12, %while.cond.preheader.cleanup125_crit_edge ], [ 0, %entry.cleanup125_crit_edge ], [ -12, %do.end75.cleanup125_crit_edge ], [ 0, %for.inc.cleanup125_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %chs, ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  %ccp = alloca %struct.mlx5e_create_cq_param, align 4
  %param_sq = alloca %struct.mlx5e_sq_param, align 4
  %param_cq = alloca %struct.mlx5e_cq_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccp) #10
  %0 = call ptr @memset(ptr %ccp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 328, ptr nonnull %param_sq) #10
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %param_cq) #10
  %params1 = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3
  %qid2 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node, i32 0, i32 8
  %1 = ptrtoint ptr %qid2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %qid2, align 8
  %pflags.i = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 15
  %3 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %entry.mlx5e_qid_from_qos.exit_crit_edge

entry.mlx5e_qid_from_qos.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 4, i32 1
  %9 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %10 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %entry.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %entry.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i = lshr i32 %4, 7
  %and.lobit.i = and i32 %and.i, 1
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %11 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %2, %11
  %conv = zext i16 %conv9.i to i32
  %max_qos_sqs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 3
  %12 = ptrtoint ptr %max_qos_sqs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_qos_sqs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %13)
  %cmp = icmp ugt i16 %2, %13
  br i1 %cmp, label %do.end, label %mlx5e_qid_from_qos.exit.if.end_crit_edge, !prof !220

mlx5e_qid_from_qos.exit.if.end_crit_edge:         ; preds = %mlx5e_qid_from_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %mlx5e_qid_from_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 212, i32 noundef 9, ptr noundef null) #10
  %14 = ptrtoint ptr %max_qos_sqs to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr = load i16, ptr %max_qos_sqs, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %mlx5e_qid_from_qos.exit.if.end_crit_edge
  %15 = phi i16 [ %.pr, %do.end ], [ %13, %mlx5e_qid_from_qos.exit.if.end_crit_edge ]
  %16 = ptrtoint ptr %qid2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %qid2, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %15)
  %cmp30 = icmp eq i16 %17, %15
  br i1 %cmp30, label %if.then32, label %if.end.if.end102_crit_edge

if.end.if.end102_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp36 = icmp eq i16 %15, 0
  br i1 %cmp36, label %if.then38, label %if.then32.if.end44_crit_edge

if.then32.if.end44_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then38:                                        ; preds = %if.then32
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 64
  %call.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %19) #10
  %20 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 256) #10
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.then38.cleanup189_crit_edge, label %kvcalloc.exit, !prof !220

if.then38.cleanup189_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup189

kvcalloc.exit:                                    ; preds = %if.then38
  %23 = extractvalue { i32, i1 } %21, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %23, i32 noundef 3520, i32 noundef -1) #14
  %tobool41.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool41.not, label %kvcalloc.exit.cleanup189_crit_edge, label %kvcalloc.exit.if.end44_crit_edge

kvcalloc.exit.if.end44_crit_edge:                 ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

kvcalloc.exit.cleanup189_crit_edge:               ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup189

if.end44:                                         ; preds = %kvcalloc.exit.if.end44_crit_edge, %if.then32.if.end44_crit_edge
  %stats_list.0 = phi ptr [ %call.i.i.i, %kvcalloc.exit.if.end44_crit_edge ], [ null, %if.then32.if.end44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 384) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef %stats_list.0) #10
  br label %cleanup189

if.end48:                                         ; preds = %if.end44
  %tobool49.not = icmp eq ptr %stats_list.0, null
  br i1 %tobool49.not, label %if.end48.do.body66_crit_edge, label %do.body55

if.end48.do.body66_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body66

do.body55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %qos_sq_stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 2
  %25 = ptrtoint ptr %qos_sq_stats to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %stats_list.0, ptr %qos_sq_stats, align 32
  br label %do.body66

do.body66:                                        ; preds = %do.body55, %if.end48.do.body66_crit_edge
  %qos_sq_stats68 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 2
  %26 = ptrtoint ptr %qos_sq_stats68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qos_sq_stats68, align 32
  %28 = ptrtoint ptr %qid2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %qid2, align 8
  %idxprom = zext i16 %29 to i32
  %arrayidx = getelementptr ptr, ptr %27, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !221
  %31 = ptrtoint ptr %max_qos_sqs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_qos_sqs, align 4
  %add = add i16 %32, 1
  store volatile i16 %add, ptr %max_qos_sqs, align 4
  br label %if.end102

if.end102:                                        ; preds = %do.body66, %if.end.if.end102_crit_edge
  %33 = ptrtoint ptr %qid2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %qid2, align 8
  %35 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_channels.i, align 4
  %.frozen = freeze i16 %34
  %.frozen253 = freeze i16 %36
  %div252 = udiv i16 %.frozen, %.frozen253
  %37 = mul i16 %div252, %.frozen253
  %rem251.decomposed = sub i16 %.frozen, %37
  %rem.zext = zext i16 %rem251.decomposed to i32
  %div.zext = zext i16 %div252 to i32
  %38 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chs, align 4
  %arrayidx111 = getelementptr ptr, ptr %39, i32 %rem.zext
  %40 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx111, align 4
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6, i32 5
  %call.i246 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool114.not = icmp eq i32 %call.i246, 0
  br i1 %tobool114.not, label %land.lhs.true, label %if.end102.do.end122_crit_edge

if.end102.do.end122_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

land.lhs.true:                                    ; preds = %if.end102
  %call115 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %land.lhs.true.do.end122_crit_edge, label %land.lhs.true117

land.lhs.true.do.end122_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

land.lhs.true117:                                 ; preds = %land.lhs.true
  %.b244 = load i1, ptr @mlx5e_open_qos_sq.__warned, align 1
  br i1 %.b244, label %land.lhs.true117.do.end122_crit_edge, label %if.then119

land.lhs.true117.do.end122_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end122

if.then119:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_open_qos_sq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 241, ptr noundef nonnull @.str.5) #10
  br label %do.end122

do.end122:                                        ; preds = %if.then119, %land.lhs.true117.do.end122_crit_edge, %land.lhs.true.do.end122_crit_edge, %if.end102.do.end122_crit_edge
  %qos_sqs124 = getelementptr inbounds %struct.mlx5e_channel, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %qos_sqs124 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qos_sqs124, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i248 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 896) #15
  %tobool126.not = icmp eq ptr %call7.i.i248, null
  br i1 %tobool126.not, label %do.end122.cleanup189_crit_edge, label %if.end128

do.end122.cleanup189_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup189

if.end128:                                        ; preds = %do.end122
  call void @mlx5e_build_create_cq_param(ptr noundef nonnull %ccp, ptr noundef %41) #10
  %45 = call ptr @memset(ptr %param_sq, i32 0, i32 328)
  %46 = call ptr @memset(ptr %param_cq, i32 0, i32 76)
  %mdev129 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %47 = ptrtoint ptr %mdev129 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev129, align 64
  call void @mlx5e_build_sq_param(ptr noundef %48, ptr noundef %params1, ptr noundef nonnull %param_sq) #10
  %49 = ptrtoint ptr %mdev129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdev129, align 64
  call void @mlx5e_build_tx_cq_param(ptr noundef %50, ptr noundef %params1, ptr noundef nonnull %param_cq) #10
  %tx_cq_moderation = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 8
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %call7.i.i248, i32 0, i32 10
  %51 = ptrtoint ptr %tx_cq_moderation to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %.unpack = load i32, ptr %tx_cq_moderation, align 2
  %52 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt242 = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 3, i32 8, i32 2
  %53 = ptrtoint ptr %.elt242 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %.unpack243 = load i32, ptr %.elt242, align 2
  %54 = insertvalue [2 x i32] %52, i32 %.unpack243, 1
  %call131 = call i32 @mlx5e_open_cq(ptr noundef %priv, [2 x i32] %54, ptr noundef nonnull %param_cq, ptr noundef nonnull %ccp, ptr noundef %cq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end128.err_free_sq_crit_edge

if.end128.err_free_sq_crit_edge:                  ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_sq

if.end134:                                        ; preds = %if.end128
  %lag_port = getelementptr inbounds %struct.mlx5e_channel, ptr %41, i32 0, i32 12
  %55 = ptrtoint ptr %lag_port to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lag_port, align 1
  %idxprom135 = zext i8 %56 to i32
  %arrayidx136 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 10, i32 %idxprom135
  %57 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx136, align 4
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node, i32 0, i32 6
  %59 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_id, align 8
  %conv138 = trunc i32 %60 to i16
  %qos_sq_stats140 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 2
  %61 = ptrtoint ptr %qos_sq_stats140 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qos_sq_stats140, align 32
  %63 = ptrtoint ptr %qid2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %qid2, align 8
  %idxprom142 = zext i16 %64 to i32
  %arrayidx143 = getelementptr ptr, ptr %62, i32 %idxprom142
  %65 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx143, align 4
  %call144 = call i32 @mlx5e_open_txqsq(ptr noundef %41, i32 noundef %58, i32 noundef %conv, ptr noundef %params1, ptr noundef nonnull %param_sq, ptr noundef nonnull %call7.i.i248, i32 noundef 0, i16 noundef zeroext %conv138, ptr noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.body148, label %err_close_cq

do.body148:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !222
  %arrayidx176 = getelementptr ptr, ptr %43, i32 %div.zext
  %67 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i248, ptr %arrayidx176, align 4
  br label %cleanup189

err_close_cq:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5e_close_cq(ptr noundef %cq) #10
  br label %err_free_sq

err_free_sq:                                      ; preds = %err_close_cq, %if.end128.err_free_sq_crit_edge
  %err.0 = phi i32 [ %call131, %if.end128.err_free_sq_crit_edge ], [ %call144, %err_close_cq ]
  call void @kfree(ptr noundef nonnull %call7.i.i248) #10
  br label %cleanup189

cleanup189:                                       ; preds = %err_free_sq, %do.body148, %do.end122.cleanup189_crit_edge, %if.then47, %kvcalloc.exit.cleanup189_crit_edge, %if.then38.cleanup189_crit_edge
  %retval.1 = phi i32 [ %err.0, %err_free_sq ], [ 0, %do.body148 ], [ -12, %kvcalloc.exit.cleanup189_crit_edge ], [ -12, %if.then47 ], [ -12, %do.end122.cleanup189_crit_edge ], [ -12, %if.then38.cleanup189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %param_cq) #10
  call void @llvm.lifetime.end.p0(i64 328, ptr nonnull %param_sq) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_qos_activate_queues(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %htb = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry
  %bkt.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc18.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %htb, i32 0, i32 %bkt.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.131 = load ptr, ptr %arrayidx, align 4
  %tobool4.not32 = icmp eq ptr %node.131, null
  br i1 %tobool4.not32, label %for.body.for.inc18_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %node.133 = phi ptr [ %node.1, %for.inc.for.body5_crit_edge ], [ %node.131, %for.body.for.body5_crit_edge ]
  %qid = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.133, i32 0, i32 8
  %1 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp6 = icmp eq i16 %2, -1
  br i1 %cmp6, label %for.body5.for.inc_crit_edge, label %if.end

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr noundef nonnull %node.133)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body5.for.inc_crit_edge
  %3 = ptrtoint ptr %node.133 to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.1 = load ptr, ptr %node.133, align 4
  %tobool4.not = icmp eq ptr %node.1, null
  br i1 %tobool4.not, label %for.inc.for.inc18_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc = add nuw nsw i32 %bkt.034, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end19, label %for.inc18.for.body_crit_edge

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end19:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr nocapture noundef readonly %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qid = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node, i32 0, i32 8
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %qid, align 8
  %conv = zext i16 %1 to i32
  %call = tail call fastcc ptr @mlx5e_get_qos_sq(ptr noundef %priv, i32 noundef %conv)
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %qid, align 8
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %6 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %8 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %10 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.i = icmp eq i16 %11, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %entry.mlx5e_qid_from_qos.exit_crit_edge

entry.mlx5e_qid_from_qos.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %12 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %13 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %entry.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %entry.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i = lshr i32 %7, 7
  %and.lobit.i = and i32 %and.i, 1
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %14 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %5, %14
  %idxprom = zext i16 %conv9.i to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %16 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mlx5e_qid_from_qos.exit.do.end29_crit_edge, label %do.body16

mlx5e_qid_from_qos.exit.do.end29_crit_edge:       ; preds = %mlx5e_qid_from_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.body16:                                        ; preds = %mlx5e_qid_from_qos.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_activate_qos_sq.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_activate_qos_sq, %if.then21)) #10
          to label %do.end29 [label %if.then21], !srcloc !224

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 64
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i36 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i36 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  %27 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %qid, align 8
  %conv24 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_activate_qos_sq.__UNIQUE_ID_ddebug668, ptr noundef %20, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef 287, i32 noundef %26, i32 noundef %conv24) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then21, %do.body16, %mlx5e_qid_from_qos.exit.do.end29_crit_edge
  tail call void @mlx5e_activate_txqsq(ptr noundef %call) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_qos_deactivate_queues(ptr nocapture noundef readonly %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 21
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @mlx5e_qos_deactivate_queues.__warned, align 1
  br i1 %.b79, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_qos_deactivate_queues.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 441, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %qos_sqs7 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 4
  %2 = ptrtoint ptr %qos_sqs7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos_sqs7, align 128
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.end.cleanup57_crit_edge, label %for.cond.preheader

do.end.cleanup57_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.cond.preheader:                               ; preds = %do.end
  %qos_sqs_size = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 10
  %4 = ptrtoint ptr %qos_sqs_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %qos_sqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp84.not = icmp eq i16 %5, 0
  br i1 %cmp84.not, label %for.cond.preheader.cleanup57_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup57_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 9, i32 3, i32 3
  %ix = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 25
  %mdev = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_channels, align 4
  %conv12 = zext i16 %7 to i32
  %mul = mul i32 %i.085, %conv12
  %8 = ptrtoint ptr %ix to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ix, align 4
  %add = add i32 %mul, %9
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dep_map17 = getelementptr inbounds %struct.mlx5e_priv, ptr %11, i32 0, i32 6, i32 5
  %call.i80 = tail call i32 @lock_is_held_type(ptr noundef %dep_map17, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool19.not = icmp eq i32 %call.i80, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.body.do.end28_crit_edge

for.body.do.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b7778 = load i1, ptr @mlx5e_qos_deactivate_queues.__warned.7, align 1
  br i1 %.b7778, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_qos_deactivate_queues.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 449, ptr noundef nonnull @.str.5) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.body.do.end28_crit_edge
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.085
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %do.end28.cleanup_crit_edge, label %do.body33

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body33:                                        ; preds = %do.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %14 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.body33.do.end50_crit_edge, label %do.body36

do.body33.do.end50_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_qos_deactivate_queues.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_qos_deactivate_queues, %if.then42)) #10
          to label %do.end50 [label %if.then42], !srcloc !224

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  %conv44 = and i32 %add, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_qos_deactivate_queues.__UNIQUE_ID_ddebug683, ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 453, i32 noundef %24, i32 noundef %conv44) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then42, %do.body36, %do.body33.do.end50_crit_edge
  tail call void @mlx5e_deactivate_txqsq(ptr noundef nonnull %13) #10
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 128
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %26, i32 0, i32 9, i32 3, i32 15
  %29 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %26, i32 0, i32 9, i32 3, i32 3
  %31 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %26, i32 0, i32 9, i32 3, i32 4
  %33 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i.i = icmp eq i16 %34, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end50.mlx5e_qid_from_qos.exit_crit_edge

do.end50.mlx5e_qid_from_qos.exit_crit_edge:       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %26, i32 0, i32 9, i32 3, i32 4, i32 1
  %35 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %36 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %do.end50.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %do.end50.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i81 = lshr i32 %30, 7
  %and.lobit.i = and i32 %and.i81, 1
  %conv.i = zext i16 %32 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %conv9.i = add i32 %mul.i, %add
  %idxprom = and i32 %conv9.i, 65535
  %arrayidx55 = getelementptr ptr, ptr %28, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx55, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_qid_from_qos.exit, %do.end28.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %38 = ptrtoint ptr %qos_sqs_size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %qos_sqs_size, align 4
  %conv = zext i16 %39 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup57_crit_edge

cleanup.cleanup57_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup57

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup57:                                        ; preds = %cleanup.cleanup57_crit_edge, %for.cond.preheader.cleanup57_crit_edge, %do.end.cleanup57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_root_add(ptr noundef %priv, i16 noundef zeroext %htb_maj_id, i16 noundef zeroext %htb_defcls, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_root_add.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_root_add, %if.then5)) #10
          to label %do.end10 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %conv = zext i16 %htb_maj_id to i32
  %conv7 = zext i16 %htb_defcls to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_root_add.__UNIQUE_ID_ddebug684, ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 478, i32 noundef %10, i32 noundef %conv, i32 noundef %conv7) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %mdev11 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %11 = ptrtoint ptr %mdev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev11, align 64
  %call12 = tail call zeroext i1 @mlx5_qos_is_supported(ptr noundef %12) #10
  br i1 %call12, label %if.end20, label %do.body14

do.body14:                                        ; preds = %do.end10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_root_add.__msg) #10
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body14.cleanup_crit_edge, label %if.then16

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx5e_htb_root_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end20:                                         ; preds = %do.end10
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool22.not = icmp eq i32 %and1.i, 0
  br i1 %tobool22.not, label %if.end20.if.end30_crit_edge, label %if.then25

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then25:                                        ; preds = %if.end20
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %call26 = tail call fastcc i32 @mlx5e_qos_alloc_queues(ptr noundef %priv, ptr noundef %channels)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 56) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end30.if.then33_crit_edge, label %if.end.i

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end.i:                                         ; preds = %if.end30
  %qid.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %qid.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %qid.i, align 8
  %classid.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %classid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %classid.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 0, i32 158
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.mlx5e_sw_node_create_root.exit_crit_edge, label %do.body49.i.i

if.end.i.mlx5e_sw_node_create_root.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_create_root.exit

do.body49.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %mlx5e_sw_node_create_root.exit

mlx5e_sw_node_create_root.exit:                   ; preds = %do.body49.i.i, %if.end.i.mlx5e_sw_node_create_root.exit_crit_edge
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5e_sw_node_create_root.exit.if.then33_crit_edge, label %if.end35

mlx5e_sw_node_create_root.exit.if.then33_crit_edge: ; preds = %mlx5e_sw_node_create_root.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %mlx5e_sw_node_create_root.exit.if.then33_crit_edge, %if.end30.if.then33_crit_edge
  %retval.0.i108116 = phi ptr [ %call7.i.i.i, %mlx5e_sw_node_create_root.exit.if.then33_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end30.if.then33_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i108116 to i32
  br label %err_free_queues

if.end35:                                         ; preds = %mlx5e_sw_node_create_root.exit
  %26 = ptrtoint ptr %mdev11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev11, align 64
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 6
  %call37 = tail call i32 @mlx5_qos_create_root_node(ptr noundef %27, ptr noundef %hw_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body53, label %do.body40

do.body40:                                        ; preds = %if.end35
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_root_add.__msg.13) #10
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body40.if.end45_crit_edge, label %if.then43

do.body40.if.end45_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mlx5e_htb_root_add.__msg.13, ptr %extack, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body40.if.end45_crit_edge
  %29 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end45.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

if.end45.hash_del_rcu.exit.i_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %if.end45
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i.i, align 8
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %30, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end45.hash_del_rcu.exit.i_crit_edge
  %36 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp.not.i = icmp eq i16 %37, -1
  br i1 %cmp.not.i, label %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge, label %if.then.i

hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge: ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_delete.exit

if.then.i:                                        ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %37 to i32
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %39, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %call.i = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br label %mlx5e_sw_node_delete.exit

mlx5e_sw_node_delete.exit:                        ; preds = %if.then.i, %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %err_free_queues

do.body53:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %defcls = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 5
  %40 = ptrtoint ptr %defcls to i32
  call void @__asan_store2_noabort(i32 %40)
  store volatile i16 %htb_defcls, ptr %defcls, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  %maj_id = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 4
  %41 = ptrtoint ptr %maj_id to i32
  call void @__asan_store2_noabort(i32 %41)
  store volatile i16 %htb_maj_id, ptr %maj_id, align 2
  br label %cleanup

err_free_queues:                                  ; preds = %mlx5e_sw_node_delete.exit, %if.then33
  %err.0 = phi i32 [ %25, %if.then33 ], [ %call37, %mlx5e_sw_node_delete.exit ]
  br i1 %tobool22.not, label %err_free_queues.cleanup_crit_edge, label %if.then81

err_free_queues.cleanup_crit_edge:                ; preds = %err_free_queues
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then81:                                        ; preds = %err_free_queues
  %channels82 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %num.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 2
  %42 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp4.not.i = icmp eq i32 %43, 0
  br i1 %cmp4.not.i, label %if.then81.cleanup_crit_edge, label %if.then81.for.body.i_crit_edge

if.then81.for.body.i_crit_edge:                   ; preds = %if.then81
  br label %for.body.i

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then81.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then81.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %channels82 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %channels82, align 4
  %arrayidx.i111 = getelementptr ptr, ptr %45, i32 %i.05.i
  %46 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i111, align 4
  tail call void @mlx5e_qos_close_queues(ptr noundef %47) #10
  %inc.i = add nuw i32 %i.05.i, 1
  %48 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num.i, align 4
  %cmp.i112 = icmp ult i32 %inc.i, %49
  br i1 %cmp.i112, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %err_free_queues.cleanup_crit_edge, %do.body53, %if.then25.cleanup_crit_edge, %if.then16, %do.body14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body53 ], [ -95, %if.then16 ], [ -95, %do.body14.cleanup_crit_edge ], [ %call26, %if.then25.cleanup_crit_edge ], [ %err.0, %err_free_queues.cleanup_crit_edge ], [ %err.0, %if.then81.cleanup_crit_edge ], [ %err.0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_qos_is_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_create_root_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_sw_node_delete(ptr noundef %priv, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i.i, label %entry.hash_del_rcu.exit_crit_edge, label %if.then.i.i

entry.hash_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %entry.hash_del_rcu.exit_crit_edge
  %qid = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node, i32 0, i32 8
  %7 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %qid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp.not = icmp eq i16 %8, -1
  br i1 %cmp.not, label %hash_del_rcu.exit.do.body_crit_edge, label %if.then

hash_del_rcu.exit.do.body_crit_edge:              ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %8 to i32
  %qos_used_qids = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %qos_used_qids, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %10, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %call = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br label %do.body

do.body:                                          ; preds = %if.then, %hash_del_rcu.exit.do.body_crit_edge
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %do.end

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_root_del(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %do.body1

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_root_del.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_root_del, %if.then5)) #10
          to label %do.body14 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_root_del.__UNIQUE_ID_ddebug688, ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 527, i32 noundef %10) #10
  br label %do.body14

do.body14:                                        ; preds = %if.then5, %do.body1, %entry.do.body14_crit_edge
  %maj_id = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 4
  %11 = ptrtoint ptr %maj_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store volatile i16 0, ptr %maj_id, align 2
  tail call void @synchronize_rcu() #10
  %arrayidx.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 0, i32 158
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body14
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.body14 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %do.end24, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %classid3.i, align 4
  %cmp.i = icmp eq i32 %14, -1
  br i1 %cmp.i, label %if.end30, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

do.end24:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev25 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %15 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev25, align 64
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i60 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i60 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 534, i32 noundef %24) #13
  br label %cleanup

if.end30:                                         ; preds = %for.body.i
  %mdev31 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %25 = ptrtoint ptr %mdev31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdev31, align 64
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_id, align 8
  %call32 = tail call i32 @mlx5_qos_destroy_node(ptr noundef %26, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end44_crit_edge, label %do.end37

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %mdev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev31, align 64
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i61 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i61 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid42, align 8
  %39 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef 540, i32 noundef %38, i32 noundef %40, i32 noundef %call32) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end37, %if.end30.if.end44_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.0.i, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end44.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

if.end44.hash_del_rcu.exit.i_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %if.end44
  %43 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %node.0.i, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %42, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %42, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %47 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end44.hash_del_rcu.exit.i_crit_edge
  %qid.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 8
  %48 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp.not.i = icmp eq i16 %49, -1
  br i1 %cmp.not.i, label %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge, label %if.then.i

hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge: ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_delete.exit

if.then.i:                                        ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %49 to i32
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %51, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %call.i = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br label %mlx5e_sw_node_delete.exit

mlx5e_sw_node_delete.exit:                        ; preds = %if.then.i, %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %num.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp4.not.i = icmp eq i32 %53, 0
  br i1 %cmp4.not.i, label %mlx5e_sw_node_delete.exit.cleanup_crit_edge, label %mlx5e_sw_node_delete.exit.for.body.i64_crit_edge

mlx5e_sw_node_delete.exit.for.body.i64_crit_edge: ; preds = %mlx5e_sw_node_delete.exit
  br label %for.body.i64

mlx5e_sw_node_delete.exit.cleanup_crit_edge:      ; preds = %mlx5e_sw_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %mlx5e_sw_node_delete.exit.for.body.i64_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i64.for.body.i64_crit_edge ], [ 0, %mlx5e_sw_node_delete.exit.for.body.i64_crit_edge ]
  %54 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %channels, align 4
  %arrayidx.i62 = getelementptr ptr, ptr %55, i32 %i.05.i
  %56 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i62, align 4
  tail call void @mlx5e_qos_deactivate_queues(ptr noundef %57) #10
  %inc.i = add nuw i32 %i.05.i, 1
  %58 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num.i, align 4
  %cmp.i63 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i63, label %for.body.i64.for.body.i64_crit_edge, label %mlx5e_qos_deactivate_all_queues.exit

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i64

mlx5e_qos_deactivate_all_queues.exit:             ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp4.not.i66 = icmp eq i32 %59, 0
  br i1 %cmp4.not.i66, label %mlx5e_qos_deactivate_all_queues.exit.cleanup_crit_edge, label %mlx5e_qos_deactivate_all_queues.exit.for.body.i71_crit_edge

mlx5e_qos_deactivate_all_queues.exit.for.body.i71_crit_edge: ; preds = %mlx5e_qos_deactivate_all_queues.exit
  br label %for.body.i71

mlx5e_qos_deactivate_all_queues.exit.cleanup_crit_edge: ; preds = %mlx5e_qos_deactivate_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %mlx5e_qos_deactivate_all_queues.exit.for.body.i71_crit_edge
  %i.05.i67 = phi i32 [ %inc.i69, %for.body.i71.for.body.i71_crit_edge ], [ 0, %mlx5e_qos_deactivate_all_queues.exit.for.body.i71_crit_edge ]
  %60 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %channels, align 4
  %arrayidx.i68 = getelementptr ptr, ptr %61, i32 %i.05.i67
  %62 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i68, align 4
  tail call void @mlx5e_qos_close_queues(ptr noundef %63) #10
  %inc.i69 = add nuw i32 %i.05.i67, 1
  %64 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num.i, align 4
  %cmp.i70 = icmp ult i32 %inc.i69, %65
  br i1 %cmp.i70, label %for.body.i71.for.body.i71_crit_edge, label %for.body.i71.cleanup_crit_edge

for.body.i71.cleanup_crit_edge:                   ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i71

cleanup:                                          ; preds = %for.body.i71.cleanup_crit_edge, %mlx5e_qos_deactivate_all_queues.exit.cleanup_crit_edge, %mlx5e_sw_node_delete.exit.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ -2, %do.end24 ], [ %call32, %mlx5e_qos_deactivate_all_queues.exit.cleanup_crit_edge ], [ %call32, %mlx5e_sw_node_delete.exit.cleanup_crit_edge ], [ %call32, %for.body.i71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_destroy_node(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_leaf_alloc_queue(ptr noundef %priv, i16 noundef zeroext %classid, i32 noundef %parent_classid, i64 noundef %rate, i64 noundef %ceil, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_leaf_alloc_queue.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_alloc_queue, %if.then5)) #10
          to label %do.end9 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %conv = zext i16 %classid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_leaf_alloc_queue.__UNIQUE_ID_ddebug694, ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 589, i32 noundef %10, i32 noundef %conv, i32 noundef %parent_classid, i64 noundef %rate, i64 noundef %ceil) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 64
  %call.i.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %12) #10
  %state_lock.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %state_lock.i) #10
  br i1 %call1.i, label %do.end9.mlx5e_find_unused_qos_qid.exit_crit_edge, label %land.rhs.i

do.end9.mlx5e_find_unused_qos_qid.exit_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_find_unused_qos_qid.exit

land.rhs.i:                                       ; preds = %do.end9
  %.b44.i = load i1, ptr @mlx5e_find_unused_qos_qid.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.mlx5e_find_unused_qos_qid.exit_crit_edge, label %if.then.i, !prof !227

land.rhs.i.mlx5e_find_unused_qos_qid.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_find_unused_qos_qid.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_find_unused_qos_qid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.mlx5e_find_unused_qos_qid) #10
  br label %mlx5e_find_unused_qos_qid.exit

mlx5e_find_unused_qos_qid.exit:                   ; preds = %if.then.i, %land.rhs.i.mlx5e_find_unused_qos_qid.exit_crit_edge, %do.end9.mlx5e_find_unused_qos_qid.exit_crit_edge
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 256) #10
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %call37.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %qos_used_qids.i, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %13)
  %cmp.i = icmp eq i32 %call37.i, %13
  %spec.select.i = select i1 %cmp.i, i32 -28, i32 %call37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp slt i32 %spec.select.i, 0
  br i1 %cmp, label %do.body13, label %if.end19

do.body13:                                        ; preds = %mlx5e_find_unused_qos_qid.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_alloc_queue.__msg) #10
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body13.cleanup_crit_edge, label %if.then15

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlx5e_htb_leaf_alloc_queue.__msg, ptr %extack, align 4
  br label %cleanup

if.end19:                                         ; preds = %mlx5e_find_unused_qos_qid.exit
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %parent_classid, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end19
  %node.0.in.i = phi ptr [ %arrayidx.i, %if.end19 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %16 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %classid3.i, align 4
  %cmp.i137 = icmp eq i32 %17, %parent_classid
  br i1 %cmp.i137, label %if.end23, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end23:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 56) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end23.if.then27_crit_edge, label %if.end.i

if.end23.if.then27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.end.i:                                         ; preds = %if.end23
  %conv24 = trunc i32 %spec.select.i to i16
  %parent2.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.0.i, ptr %parent2.i, align 8
  %qid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv24, ptr %qid3.i, align 8
  %rem.i.i = and i32 %spec.select.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %conv.i = lshr i32 %spec.select.i, 5
  %div2.i.i = and i32 %conv.i, 2047
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %22, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %conv4.i = zext i16 %classid to i32
  %classid5.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %classid5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv4.i, ptr %classid5.i, align 4
  %mul.i.i.i140 = mul i32 %conv4.i, 1640531527
  %shr.i.i141 = lshr i32 %mul.i.i.i140, 24
  %arrayidx.i142 = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i141
  %24 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i142, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.i142, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  %28 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i142, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge, label %do.body49.i.i

if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_create_leaf.exit

do.body49.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %mlx5e_sw_node_create_leaf.exit

mlx5e_sw_node_create_leaf.exit:                   ; preds = %do.body49.i.i, %if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge
  %call9.i = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  %cmp.i144 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %mlx5e_sw_node_create_leaf.exit.if.then27_crit_edge, label %if.end29

mlx5e_sw_node_create_leaf.exit.if.then27_crit_edge: ; preds = %mlx5e_sw_node_create_leaf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then27:                                        ; preds = %mlx5e_sw_node_create_leaf.exit.if.then27_crit_edge, %if.end23.if.then27_crit_edge
  %retval.0.i143157 = phi ptr [ %call7.i.i.i, %mlx5e_sw_node_create_leaf.exit.if.then27_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.if.then27_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i143157 to i32
  br label %cleanup

if.end29:                                         ; preds = %mlx5e_sw_node_create_leaf.exit
  %rate30 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %rate30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %rate, ptr %rate30, align 8
  %32 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent2.i, align 8
  %bw_share = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 4
  tail call fastcc void @mlx5e_htb_convert_rate(ptr noundef %priv, i64 noundef %rate, ptr noundef %33, ptr noundef %bw_share)
  %max_average_bw = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 5
  %34 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %ceil) #16, !srcloc !228
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %ceil, i64 %34, i32 0) #16, !srcloc !229
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %35, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 15
  %conv.i145 = trunc i64 %div1581.i.i.i to i32
  %36 = tail call i32 @llvm.umax.i32(i32 %conv.i145, i32 1) #10
  %37 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_average_bw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %38 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i146 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.end29.mlx5e_htb_convert_ceil.exit_crit_edge, label %do.body2.i

if.end29.mlx5e_htb_convert_ceil.exit_crit_edge:   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_htb_convert_ceil.exit

do.body2.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_alloc_queue, %if.then8.i)) #10
          to label %mlx5e_htb_convert_ceil.exit [label %if.then8.i], !srcloc !224

if.then8.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev.i, align 64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid.i, align 8
  %49 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_average_bw, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, ptr noundef %42, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef 577, i32 noundef %48, i64 noundef %ceil, i32 noundef %50) #10
  br label %mlx5e_htb_convert_ceil.exit

mlx5e_htb_convert_ceil.exit:                      ; preds = %if.then8.i, %do.body2.i, %if.end29.mlx5e_htb_convert_ceil.exit_crit_edge
  %51 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdev.i, align 64
  %53 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent2.i, align 8
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hw_id, align 8
  %57 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bw_share, align 8
  %59 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_average_bw, align 4
  %hw_id37 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 6
  %call38 = tail call i32 @mlx5_qos_create_leaf_node(ptr noundef %52, i32 noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %hw_id37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end58, label %do.body41

do.body41:                                        ; preds = %mlx5e_htb_convert_ceil.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_alloc_queue.__msg.23) #10
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.if.end46_crit_edge, label %if.then44

do.body41.if.end46_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mlx5e_htb_leaf_alloc_queue.__msg.23, ptr %extack, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.body41.if.end46_crit_edge
  %62 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdev.i, align 64
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i149 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i149 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 615, i32 noundef %71, i32 noundef %conv4.i, i32 noundef %call38) #13
  tail call fastcc void @mlx5e_sw_node_delete(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

if.end58:                                         ; preds = %mlx5e_htb_convert_ceil.exit
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool60.not = icmp eq i32 %and1.i, 0
  br i1 %tobool60.not, label %if.end58.if.end83_crit_edge, label %if.then61

if.end58.if.end83_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then61:                                        ; preds = %if.end58
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %call62 = tail call fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %channels, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else, label %do.body65

do.body65:                                        ; preds = %if.then61
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_alloc_queue.__msg.25) #10
  %tobool67.not = icmp eq ptr %extack, null
  br i1 %tobool67.not, label %do.body65.if.end70_crit_edge, label %if.then68

do.body65.if.end70_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @mlx5e_htb_leaf_alloc_queue.__msg.25, ptr %extack, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.body65.if.end70_crit_edge
  %75 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdev.i, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %79 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i150 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i150 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task79, align 8
  %pid80 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid80, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef 625, i32 noundef %84, i32 noundef %conv4.i, i32 noundef %call62) #13
  br label %if.end83

if.else:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i)
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.end70, %if.end58.if.end83_crit_edge
  %85 = ptrtoint ptr %qid3.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %qid3.i, align 8
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %87 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %89 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %91 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp.i.i = icmp eq i16 %92, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end83.mlx5e_qid_from_qos.exit_crit_edge

if.end83.mlx5e_qid_from_qos.exit_crit_edge:       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %93 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %94 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %if.end83.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %if.end83.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i151 = lshr i32 %88, 7
  %and.lobit.i = and i32 %and.i151, 1
  %conv.i152 = zext i16 %90 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i152
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %95 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %86, %95
  %conv87 = zext i16 %conv9.i to i32
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_qid_from_qos.exit, %if.end46, %if.then27, %for.cond.i.cleanup_crit_edge, %if.then15, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then27 ], [ %call38, %if.end46 ], [ %conv87, %mlx5e_qid_from_qos.exit ], [ %spec.select.i, %if.then15 ], [ %spec.select.i, %do.body13.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_htb_convert_rate(ptr nocapture noundef readonly %priv, i64 noundef %rate, ptr nocapture noundef readonly %parent, ptr nocapture noundef %bw_share) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %classid8 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %parent, i32 0, i32 7
  %0 = ptrtoint ptr %classid8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not9 = icmp eq i32 %1, -1
  br i1 %cmp.not9, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %parent.addr.010 = phi ptr [ %5, %while.body.land.rhs_crit_edge ], [ %parent, %entry.land.rhs_crit_edge ]
  %max_average_bw = getelementptr inbounds %struct.mlx5e_qos_node, ptr %parent.addr.010, i32 0, i32 5
  %2 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_average_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %parent1 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %parent.addr.010, i32 0, i32 2
  %4 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1, align 8
  %classid = getelementptr inbounds %struct.mlx5e_qos_node, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %classid, align 4
  %cmp.not = icmp eq i32 %7, -1
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.addr.0.lcssa = phi ptr [ %parent, %entry.while.end_crit_edge ], [ %5, %while.body.while.end_crit_edge ], [ %parent.addr.010, %land.rhs.while.end_crit_edge ]
  %max_average_bw2 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %parent.addr.0.lcssa, i32 0, i32 5
  %8 = ptrtoint ptr %max_average_bw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_average_bw2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %while.end.if.end.thread_crit_edge, label %if.end

while.end.if.end.thread_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end:                                           ; preds = %while.end
  %mul = mul i64 %rate, 100
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #16, !srcloc !228
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %10, i32 0) #16, !srcloc !229
  %asmresult10.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 15
  %conv = zext i32 %9 to i64
  %call5 = tail call i64 @div64_u64(i64 noundef %div1581.i.i, i64 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call5)
  %cmp6 = icmp eq i64 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %call5)
  %cmp8 = icmp ugt i64 %call5, 100
  %extract.t = trunc i64 %call5 to i32
  br i1 %cmp8, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %12

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %while.end.if.end.thread_crit_edge
  %cmp66 = phi i1 [ %cmp6, %if.end.if.end.thread_crit_edge ], [ false, %while.end.if.end.thread_crit_edge ]
  br label %12

12:                                               ; preds = %if.end.thread, %if.end._crit_edge
  %cmp65 = phi i1 [ %cmp66, %if.end.thread ], [ %cmp6, %if.end._crit_edge ]
  %13 = phi i32 [ 0, %if.end.thread ], [ %extract.t, %if.end._crit_edge ]
  %cond13.off0 = select i1 %cmp65, i32 1, i32 %13
  %14 = ptrtoint ptr %bw_share to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond13.off0, ptr %bw_share, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %15 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %.do.end31_crit_edge, label %do.body17

.do.end31_crit_edge:                              ; preds = %12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.body17:                                        ; preds = %12
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_convert_rate.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_convert_rate, %if.then23)) #10
          to label %do.end31 [label %if.then23], !srcloc !224

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %16 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %26 = ptrtoint ptr %max_average_bw2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_average_bw2, align 4
  %conv26 = zext i32 %27 to i64
  %mul27 = mul nuw nsw i64 %conv26, 125000
  %28 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bw_share, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_convert_rate.__UNIQUE_ID_ddebug690, ptr noundef %19, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef 566, i32 noundef %25, i64 noundef %rate, i64 noundef %mul27, i32 noundef %29) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body17, %.do.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_create_leaf_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_leaf_to_inner(ptr noundef %priv, i16 noundef zeroext %classid, i16 noundef zeroext %child_classid, i64 noundef %rate, i64 noundef %ceil, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %new_hw_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_hw_id) #10
  %0 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_hw_id, align 4, !annotation !230
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %1 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_leaf_to_inner.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_to_inner, %if.then5)) #10
          to label %do.end10 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %conv = zext i16 %classid to i32
  %conv7 = zext i16 %child_classid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_leaf_to_inner.__UNIQUE_ID_ddebug695, ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 643, i32 noundef %11, i32 noundef %conv, i32 noundef %conv7, i64 noundef %rate, i64 noundef %ceil) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %conv11 = zext i16 %classid to i32
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %conv11, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end10
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.end10 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %classid3.i, align 4
  %cmp.i = icmp eq i32 %14, %conv11
  br i1 %cmp.i, label %if.end15, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end15:                                         ; preds = %for.body.i
  %mdev16 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %15 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev16, align 64
  %parent = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_id, align 8
  %bw_share = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bw_share, align 8
  %max_average_bw = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 5
  %23 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_average_bw, align 4
  %call17 = call i32 @mlx5_qos_create_inner_node(ptr noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %new_hw_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end35, label %do.body20

do.body20:                                        ; preds = %if.end15
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_to_inner.__msg) #10
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body20.if.end23_crit_edge, label %if.then22

do.body20.if.end23_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5e_htb_leaf_to_inner.__msg, ptr %extack, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.body20.if.end23_crit_edge
  %26 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev16, align 64
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i219 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i219 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid33, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 655, i32 noundef %35, i32 noundef %conv11, i32 noundef %call17) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end15
  %qid36 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 8
  %36 = ptrtoint ptr %qid36 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %qid36, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 56) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end35.if.then39_crit_edge, label %if.end.i

if.end35.if.then39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.end.i:                                         ; preds = %if.end35
  %parent2.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %parent2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %node.0.i, ptr %parent2.i, align 8
  %qid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %37, ptr %qid3.i, align 8
  %conv.i = zext i16 %37 to i32
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %42, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %conv4.i = zext i16 %child_classid to i32
  %classid5.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %classid5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv4.i, ptr %classid5.i, align 4
  %mul.i.i.i221 = mul i32 %conv4.i, 1640531527
  %shr.i.i222 = lshr i32 %mul.i.i.i221, 24
  %arrayidx.i223 = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i222
  %44 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i223, align 4
  %46 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx.i223, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  %48 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i223, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge, label %do.body49.i.i

if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_create_leaf.exit

do.body49.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i.i, ptr %pprev51.i.i, align 4
  br label %mlx5e_sw_node_create_leaf.exit

mlx5e_sw_node_create_leaf.exit:                   ; preds = %do.body49.i.i, %if.end.i.mlx5e_sw_node_create_leaf.exit_crit_edge
  %call9.i = call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  %cmp.i225 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %mlx5e_sw_node_create_leaf.exit.if.then39_crit_edge, label %if.end41

mlx5e_sw_node_create_leaf.exit.if.then39_crit_edge: ; preds = %mlx5e_sw_node_create_leaf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %mlx5e_sw_node_create_leaf.exit.if.then39_crit_edge, %if.end35.if.then39_crit_edge
  %retval.0.i224236 = phi ptr [ %call7.i.i.i, %mlx5e_sw_node_create_leaf.exit.if.then39_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end35.if.then39_crit_edge ]
  %50 = ptrtoint ptr %retval.0.i224236 to i32
  br label %err_destroy_hw_node

if.end41:                                         ; preds = %mlx5e_sw_node_create_leaf.exit
  %rate42 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %rate42 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %rate, ptr %rate42, align 8
  %bw_share43 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 4
  call fastcc void @mlx5e_htb_convert_rate(ptr noundef %priv, i64 noundef %rate, ptr noundef nonnull %node.0.i, ptr noundef %bw_share43)
  %max_average_bw45 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 5
  %52 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %ceil) #16, !srcloc !228
  %53 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %ceil, i64 %52, i32 0) #16, !srcloc !229
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %53, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 15
  %conv.i226 = trunc i64 %div1581.i.i.i to i32
  %54 = call i32 @llvm.umax.i32(i32 %conv.i226, i32 1) #10
  %55 = ptrtoint ptr %max_average_bw45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %max_average_bw45, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %56 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i227 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i227)
  %tobool.not.i228 = icmp eq i32 %and.i227, 0
  br i1 %tobool.not.i228, label %if.end41.mlx5e_htb_convert_ceil.exit_crit_edge, label %do.body2.i

if.end41.mlx5e_htb_convert_ceil.exit_crit_edge:   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_htb_convert_ceil.exit

do.body2.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_to_inner, %if.then8.i)) #10
          to label %mlx5e_htb_convert_ceil.exit [label %if.then8.i], !srcloc !224

if.then8.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev16, align 64
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid.i, align 8
  %67 = ptrtoint ptr %max_average_bw45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_average_bw45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, ptr noundef %60, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef 577, i32 noundef %66, i64 noundef %ceil, i32 noundef %68) #10
  br label %mlx5e_htb_convert_ceil.exit

mlx5e_htb_convert_ceil.exit:                      ; preds = %if.then8.i, %do.body2.i, %if.end41.mlx5e_htb_convert_ceil.exit_crit_edge
  %69 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdev16, align 64
  %71 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %new_hw_id, align 4
  %73 = ptrtoint ptr %bw_share43 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bw_share43, align 8
  %75 = ptrtoint ptr %max_average_bw45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_average_bw45, align 4
  %hw_id49 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %call7.i.i.i, i32 0, i32 6
  %call50 = call i32 @mlx5_qos_create_leaf_node(ptr noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, ptr noundef %hw_id49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end70, label %do.body53

do.body53:                                        ; preds = %mlx5e_htb_convert_ceil.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_to_inner.__msg.32) #10
  %tobool55.not = icmp eq ptr %extack, null
  br i1 %tobool55.not, label %do.body53.if.end58_crit_edge, label %if.then56

do.body53.if.end58_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then56:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @mlx5e_htb_leaf_to_inner.__msg.32, ptr %extack, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %do.body53.if.end58_crit_edge
  %78 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mdev16, align 64
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %82 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i229 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i229 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 68
  %86 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid68, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef 675, i32 noundef %87, i32 noundef %conv11, i32 noundef %call50) #13
  %88 = ptrtoint ptr %qid3.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %qid3.i, align 8
  call fastcc void @mlx5e_sw_node_delete(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i)
  br label %err_destroy_hw_node

if.end70:                                         ; preds = %mlx5e_htb_convert_ceil.exit
  %89 = ptrtoint ptr %qid36 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %qid36, align 8
  store volatile i16 -1, ptr %qid36, align 8
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %91 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool83.not = icmp eq i32 %and1.i, 0
  br i1 %tobool83.not, label %if.end70.if.end85_crit_edge, label %if.then84

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx5e_deactivate_qos_sq(ptr noundef %priv, i16 noundef zeroext %90)
  call fastcc void @mlx5e_close_qos_sq(ptr noundef %priv, i16 noundef zeroext %90)
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end70.if.end85_crit_edge
  %93 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mdev16, align 64
  %hw_id87 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 6
  %95 = ptrtoint ptr %hw_id87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hw_id87, align 8
  %call88 = call i32 @mlx5_qos_destroy_node(ptr noundef %94, i32 noundef %96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end85.if.end101_crit_edge, label %do.end93

if.end85.if.end101_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mdev16, align 64
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %101 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i230 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i230 to ptr
  %task97 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task97, align 8
  %pid98 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 68
  %105 = ptrtoint ptr %pid98 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pid98, align 8
  %107 = ptrtoint ptr %hw_id87 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hw_id87, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef 693, i32 noundef %106, i32 noundef %108, i32 noundef %conv11, i32 noundef %call88) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end93, %if.end85.if.end101_crit_edge
  %109 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %new_hw_id, align 4
  %111 = ptrtoint ptr %hw_id87 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %hw_id87, align 8
  %112 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %state, align 4
  %and1.i218 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i218)
  %tobool105.not = icmp eq i32 %and1.i218, 0
  br i1 %tobool105.not, label %if.end101.cleanup_crit_edge, label %if.then106

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then106:                                       ; preds = %if.end101
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %call107 = call fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %channels, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.else, label %do.body110

do.body110:                                       ; preds = %if.then106
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_to_inner.__msg.38) #10
  %tobool112.not = icmp eq ptr %extack, null
  br i1 %tobool112.not, label %do.body110.if.end115_crit_edge, label %if.then113

do.body110.if.end115_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then113:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @mlx5e_htb_leaf_to_inner.__msg.38, ptr %extack, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %do.body110.if.end115_crit_edge
  %115 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdev16, align 64
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 8
  %119 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i231 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i231 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task124, align 8
  %pid125 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 68
  %123 = ptrtoint ptr %pid125 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pid125, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef 702, i32 noundef %124, i32 noundef %conv11, i32 noundef %call107) #13
  br label %cleanup

if.else:                                          ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

err_destroy_hw_node:                              ; preds = %if.end58, %if.then39
  %err.0 = phi i32 [ %50, %if.then39 ], [ %call50, %if.end58 ]
  %125 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mdev16, align 64
  %127 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %new_hw_id, align 4
  %call131 = call i32 @mlx5_qos_destroy_node(ptr noundef %126, i32 noundef %128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err_destroy_hw_node.cleanup_crit_edge, label %do.end136

err_destroy_hw_node.cleanup_crit_edge:            ; preds = %err_destroy_hw_node
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end136:                                        ; preds = %err_destroy_hw_node
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mdev16, align 64
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %133 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i232 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i232 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task140, align 8
  %pid141 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 68
  %137 = ptrtoint ptr %pid141 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pid141, align 8
  %139 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %new_hw_id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, i32 noundef 718, i32 noundef %138, i32 noundef %140, i32 noundef %conv11, i32 noundef %call131) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %err_destroy_hw_node.cleanup_crit_edge, %if.else, %if.end115, %if.end101.cleanup_crit_edge, %if.end23, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end23 ], [ 0, %if.end115 ], [ 0, %if.else ], [ 0, %if.end101.cleanup_crit_edge ], [ %err.0, %do.end136 ], [ %err.0, %err_destroy_hw_node.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hw_id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_create_inner_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_deactivate_qos_sq(ptr noundef %priv, i16 noundef zeroext %qid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %qid to i32
  %call = tail call fastcc ptr @mlx5e_get_qos_sq(ptr noundef %priv, i32 noundef %conv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end14_crit_edge, label %do.body3

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_deactivate_qos_sq.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_deactivate_qos_sq, %if.then8)) #10
          to label %do.end14 [label %if.then8], !srcloc !224

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_deactivate_qos_sq.__UNIQUE_ID_ddebug669, ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.83, i32 noundef 299, i32 noundef %10, i32 noundef %conv) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3, %do.body.do.end14_crit_edge
  tail call void @mlx5e_deactivate_txqsq(ptr noundef nonnull %call) #10
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 128
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %13 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %15 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %17 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %do.end14.mlx5e_qid_from_qos.exit_crit_edge

do.end14.mlx5e_qid_from_qos.exit_crit_edge:       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %19 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %20 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %do.end14.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %do.end14.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i22 = lshr i32 %14, 7
  %and.lobit.i = and i32 %and.i22, 1
  %conv.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %21 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %21, %qid
  %idxprom = zext i16 %conv9.i to i32
  %arrayidx = getelementptr ptr, ptr %12, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_qid_from_qos.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_close_qos_sq(ptr noundef %priv, i16 noundef zeroext %qid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_channels, align 4
  %.frozen = freeze i16 %1
  %div = udiv i16 %qid, %.frozen
  %2 = mul i16 %div, %.frozen
  %.decomposed = sub i16 %qid, %2
  %rem = zext i16 %.decomposed to i32
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channels, align 128
  %arrayidx = getelementptr ptr, ptr %4, i32 %rem
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b95 = load i1, ptr @mlx5e_close_qos_sq.__warned, align 1
  br i1 %.b95, label %land.lhs.true11.do.end_crit_edge, label %if.then

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_close_qos_sq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %qos_sqs13 = getelementptr inbounds %struct.mlx5e_channel, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %qos_sqs13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qos_sqs13, align 128
  %call.i96 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool18.not = icmp eq i32 %call.i96, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %do.end.do.end27_crit_edge

do.end.do.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

land.lhs.true19:                                  ; preds = %do.end
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b9394 = load i1, ptr @mlx5e_close_qos_sq.__warned.84, align 1
  br i1 %.b9394, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_close_qos_sq.__warned.84, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 320, ptr noundef nonnull @.str.5) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %do.end.do.end27_crit_edge
  %idxprom = zext i16 %div to i32
  %arrayidx29 = getelementptr ptr, ptr %8, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx29, align 4
  store volatile ptr null, ptr %arrayidx29, align 4
  %tobool71.not = icmp eq ptr %10, null
  br i1 %tobool71.not, label %do.end27.cleanup_crit_edge, label %if.end73

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @synchronize_rcu() #10
  tail call void @mlx5e_close_txqsq(ptr noundef nonnull %10) #10
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %10, i32 0, i32 10
  tail call void @mlx5e_close_cq(ptr noundef %cq) #10
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_leaf_del(ptr noundef %priv, ptr nocapture noundef %classid, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del, %if.then5)) #10
          to label %do.end9 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i358 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i358 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %11 = ptrtoint ptr %classid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %classid, align 2
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug698, ptr noundef %4, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef 763, i32 noundef %10, i32 noundef %conv) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %13 = ptrtoint ptr %classid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %classid, align 2
  %conv10 = zext i16 %14 to i32
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %conv10, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.end9 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %16 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %classid3.i, align 4
  %cmp.i = icmp eq i32 %17, %conv10
  br i1 %cmp.i, label %if.end14, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end14:                                         ; preds = %for.body.i
  %qid15 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 8
  %18 = ptrtoint ptr %qid15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %qid15, align 8
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.end14.if.end24_crit_edge, label %if.then20

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.end14
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  %pflags.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %24 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pflags.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %26 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_channels.i, align 4
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %28 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i.i = icmp eq i16 %29, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.then20.mlx5e_qid_from_qos.exit_crit_edge

if.then20.mlx5e_qid_from_qos.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit

cond.true.i.i:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %30 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_tc.i.i, align 2
  %phi.cast.i = zext i8 %31 to i32
  br label %mlx5e_qid_from_qos.exit

mlx5e_qid_from_qos.exit:                          ; preds = %cond.true.i.i, %if.then20.mlx5e_qid_from_qos.exit_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 1, %if.then20.mlx5e_qid_from_qos.exit_crit_edge ]
  %and.i359 = lshr i32 %25, 7
  %and.lobit.i = and i32 %and.i359, 1
  %conv.i = zext i16 %27 to i32
  %add.i = add nuw nsw i32 %and.lobit.i, %conv.i
  %mul.i = mul nuw nsw i32 %cond.i.i, %add.i
  %32 = trunc i32 %mul.i to i16
  %conv9.i = add i16 %19, %32
  %conv22 = zext i16 %conv9.i to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i360 = getelementptr %struct.netdev_queue, ptr %34, i32 %conv22
  tail call fastcc void @mlx5e_deactivate_qos_sq(ptr noundef %priv, i16 noundef zeroext %19)
  tail call fastcc void @mlx5e_close_qos_sq(ptr noundef %priv, i16 noundef zeroext %19)
  br label %if.end24

if.end24:                                         ; preds = %mlx5e_qid_from_qos.exit, %if.end14.if.end24_crit_edge
  %txq.0 = phi ptr [ %arrayidx.i360, %mlx5e_qid_from_qos.exit ], [ inttoptr (i32 -1 to ptr), %if.end14.if.end24_crit_edge ]
  %mdev25 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %35 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev25, align 64
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 6
  %37 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_id, align 8
  %call26 = tail call i32 @mlx5_qos_destroy_node(ptr noundef %36, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.if.end39_crit_edge, label %do.end31

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev25, align 64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i361 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i361 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid36, align 8
  %49 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_id, align 8
  %51 = ptrtoint ptr %classid to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %classid, align 2
  %conv38 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.44, i32 noundef 783, i32 noundef %48, i32 noundef %50, i32 noundef %conv38, i32 noundef %call26) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end31, %if.end24.if.end39_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end39.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

if.end39.hash_del_rcu.exit.i_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %if.end39
  %55 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %node.0.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %56, ptr %54, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %54, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %59 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end39.hash_del_rcu.exit.i_crit_edge
  %60 = ptrtoint ptr %qid15 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %qid15, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp.not.i = icmp eq i16 %61, -1
  br i1 %cmp.not.i, label %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge, label %if.then.i

hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge: ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_delete.exit

if.then.i:                                        ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i362 = zext i16 %61 to i32
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i.i = and i32 %conv.i362, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i362, 5
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %63, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %call.i = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br label %mlx5e_sw_node_delete.exit

mlx5e_sw_node_delete.exit:                        ; preds = %if.then.i, %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  %qos_used_qids.i363 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %64 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdev25, align 64
  %call.i.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %65) #10
  %66 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 256) #10
  %call5.i.i = tail call i32 @_find_last_bit(ptr noundef %qos_used_qids.i363, i32 noundef %66) #10
  %67 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdev25, align 64
  %call.i7.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %68) #10
  %69 = tail call i32 @llvm.smin.i32(i32 %call.i7.i, i32 256) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %69)
  %cmp.i366 = icmp eq i32 %call5.i.i, %69
  %add.i367 = add i32 %call5.i.i, 1
  %spec.select.i = select i1 %cmp.i366, i32 0, i32 %add.i367
  %conv42 = and i32 %spec.select.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42)
  %cmp = icmp eq i32 %conv42, 0
  br i1 %cmp, label %if.then44, label %if.end48

if.then44:                                        ; preds = %mlx5e_sw_node_delete.exit
  br i1 %tobool17.not, label %if.then44.cleanup_crit_edge, label %if.then46

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %70 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i368 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.not.i369 = icmp eq i32 %and.i368, 0
  br i1 %tobool.not.i369, label %if.then46.mlx5e_reactivate_qos_sq.exit_crit_edge, label %do.body1.i

if.then46.mlx5e_reactivate_qos_sq.exit_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_reactivate_qos_sq.exit

do.body1.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del, %if.then5.i)) #10
          to label %mlx5e_reactivate_qos_sq.exit [label %if.then5.i], !srcloc !224

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mdev25, align 64
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i371 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i371 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid.i, align 8
  %conv.i372 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, ptr noundef %74, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 736, i32 noundef %80, i32 noundef %conv.i372) #10
  br label %mlx5e_reactivate_qos_sq.exit

mlx5e_reactivate_qos_sq.exit:                     ; preds = %if.then5.i, %do.body1.i, %if.then46.mlx5e_reactivate_qos_sq.exit_crit_edge
  %state.i10.i = getelementptr inbounds %struct.netdev_queue, ptr %txq.0, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i10.i) #10
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %txq.0, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i10.i) #10
  br label %cleanup

if.end48:                                         ; preds = %mlx5e_sw_node_delete.exit
  %conv41 = trunc i32 %spec.select.i to i16
  %dec = add i16 %conv41, -1
  %conv49 = zext i16 %dec to i32
  %conv50 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %dec, i16 %19)
  %cmp51 = icmp ult i16 %dec, %19
  br i1 %cmp51, label %if.then53, label %if.end92

if.then53:                                        ; preds = %if.end48
  %sub = add nsw i32 %conv50, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv49)
  %cmp56.not = icmp eq i32 %sub, %conv49
  br i1 %cmp56.not, label %if.then53.if.end81_crit_edge, label %do.end73, !prof !227

if.then53.if.end81_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

do.end73:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 800, i32 noundef 9, ptr noundef nonnull @.str.46, i32 noundef %conv50, i32 noundef %conv49) #10
  br label %if.end81

if.end81:                                         ; preds = %do.end73, %if.then53.if.end81_crit_edge
  br i1 %tobool17.not, label %if.end81.cleanup_crit_edge, label %if.then90

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then90:                                        ; preds = %if.end81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %81 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i373 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i373)
  %tobool.not.i374 = icmp eq i32 %and.i373, 0
  br i1 %tobool.not.i374, label %if.then90.mlx5e_reactivate_qos_sq.exit384_crit_edge, label %do.body1.i375

if.then90.mlx5e_reactivate_qos_sq.exit384_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_reactivate_qos_sq.exit384

do.body1.i375:                                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del, %if.then5.i381)) #10
          to label %mlx5e_reactivate_qos_sq.exit384 [label %if.then5.i381], !srcloc !224

if.then5.i381:                                    ; preds = %do.body1.i375
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev25, align 64
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i377 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i377 to ptr
  %task.i378 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task.i378 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i378, align 8
  %pid.i379 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid.i379 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid.i379, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, ptr noundef %85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 736, i32 noundef %91, i32 noundef %conv50) #10
  br label %mlx5e_reactivate_qos_sq.exit384

mlx5e_reactivate_qos_sq.exit384:                  ; preds = %if.then5.i381, %do.body1.i375, %if.then90.mlx5e_reactivate_qos_sq.exit384_crit_edge
  %state.i10.i382 = getelementptr inbounds %struct.netdev_queue, ptr %txq.0, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i10.i382) #10
  %dql.i.i383 = getelementptr inbounds %struct.netdev_queue, ptr %txq.0, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i383) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i10.i382) #10
  br label %cleanup

if.end92:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_cmp2(i16 %dec, i16 %19)
  %cmp96 = icmp eq i16 %dec, %19
  br i1 %cmp96, label %do.end113, label %if.end92.if.end120_crit_edge, !prof !220

if.end92.if.end120_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

do.end113:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 806, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %conv50) #10
  br label %if.end120

if.end120:                                        ; preds = %do.end113, %if.end92.if.end120_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %92 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and129 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end120.for.body.i388_crit_edge, label %do.body132

if.end120.for.body.i388_crit_edge:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i388

do.body132:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del, %if.then144)) #10
          to label %for.body.i388 [label %if.then144], !srcloc !224

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mdev25, align 64
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %97 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i385 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i385 to ptr
  %task148 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task148 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task148, align 8
  %pid149 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 68
  %101 = ptrtoint ptr %pid149 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pid149, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug699, ptr noundef %96, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.44, i32 noundef 807, i32 noundef %102, i32 noundef %conv49, i32 noundef %conv50) #10
  br label %for.body.i388

for.body.i388:                                    ; preds = %for.inc20.i.for.body.i388_crit_edge, %if.then144, %do.body132, %if.end120.for.body.i388_crit_edge
  %bkt.032.i = phi i32 [ %inc.i, %for.inc20.i.for.body.i388_crit_edge ], [ 0, %do.body132 ], [ 0, %if.then144 ], [ 0, %if.end120.for.body.i388_crit_edge ]
  %arrayidx.i387 = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %bkt.032.i
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.body5.i.for.cond3.i_crit_edge, %for.body.i388
  %node.1.in.i = phi ptr [ %arrayidx.i387, %for.body.i388 ], [ %node.1.i, %for.body5.i.for.cond3.i_crit_edge ]
  %103 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %node.1.i = load ptr, ptr %node.1.in.i, align 4
  %tobool4.not.i = icmp eq ptr %node.1.i, null
  br i1 %tobool4.not.i, label %for.inc20.i, label %for.body5.i

for.body5.i:                                      ; preds = %for.cond3.i
  %qid6.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.1.i, i32 0, i32 8
  %104 = ptrtoint ptr %qid6.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %qid6.i, align 8
  %cmp8.i = icmp eq i16 %105, %dec
  br i1 %cmp8.i, label %for.body5.i.if.end186_crit_edge, label %for.body5.i.for.cond3.i_crit_edge

for.body5.i.for.cond3.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.i

for.body5.i.if.end186_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

for.inc20.i:                                      ; preds = %for.cond3.i
  %inc.i = add nuw nsw i32 %bkt.032.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not, label %do.end178, label %for.inc20.i.for.body.i388_crit_edge

for.inc20.i.for.body.i388_crit_edge:              ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i388

do.end178:                                        ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 811, i32 noundef 9, ptr noundef nonnull @.str.49, i32 noundef %conv49, i32 noundef %conv50) #10
  br label %if.end186

if.end186:                                        ; preds = %do.end178, %for.body5.i.if.end186_crit_edge
  %qid199 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.1.i, i32 0, i32 8
  %106 = ptrtoint ptr %qid199 to i32
  call void @__asan_store2_noabort(i32 %106)
  store volatile i16 -1, ptr %qid199, align 8
  %rem.i = and i32 %conv49, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv49, 5
  %add.ptr.i = getelementptr i32, ptr %qos_used_qids.i363, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %108, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br i1 %tobool17.not, label %if.end186.if.end212_crit_edge, label %if.then206

if.end186.if.end212_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

if.then206:                                       ; preds = %if.end186
  %netdev207 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %109 = ptrtoint ptr %netdev207 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %netdev207, align 4
  %pflags.i389 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %111 = ptrtoint ptr %pflags.i389 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pflags.i389, align 4
  %num_channels.i390 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %113 = ptrtoint ptr %num_channels.i390 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %num_channels.i390, align 4
  %mqprio.i.i391 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %115 = ptrtoint ptr %mqprio.i.i391 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %mqprio.i.i391, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp.i.i392 = icmp eq i16 %116, 0
  br i1 %cmp.i.i392, label %cond.true.i.i395, label %if.then206.mlx5e_qid_from_qos.exit403_crit_edge

if.then206.mlx5e_qid_from_qos.exit403_crit_edge:  ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_qid_from_qos.exit403

cond.true.i.i395:                                 ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #12
  %num_tc.i.i393 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4, i32 1
  %117 = ptrtoint ptr %num_tc.i.i393 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %num_tc.i.i393, align 2
  %phi.cast.i394 = zext i8 %118 to i32
  br label %mlx5e_qid_from_qos.exit403

mlx5e_qid_from_qos.exit403:                       ; preds = %cond.true.i.i395, %if.then206.mlx5e_qid_from_qos.exit403_crit_edge
  %cond.i.i396 = phi i32 [ %phi.cast.i394, %cond.true.i.i395 ], [ 1, %if.then206.mlx5e_qid_from_qos.exit403_crit_edge ]
  %and.i397 = lshr i32 %112, 7
  %and.lobit.i398 = and i32 %and.i397, 1
  %conv.i399 = zext i16 %114 to i32
  %add.i400 = add nuw nsw i32 %and.lobit.i398, %conv.i399
  %mul.i401 = mul nuw nsw i32 %cond.i.i396, %add.i400
  %119 = trunc i32 %mul.i401 to i16
  %conv9.i402 = add i16 %dec, %119
  %conv210 = zext i16 %conv9.i402 to i32
  %_tx.i404 = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 103
  %120 = ptrtoint ptr %_tx.i404 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %_tx.i404, align 128
  %arrayidx.i405 = getelementptr %struct.netdev_queue, ptr %121, i32 %conv210
  tail call fastcc void @mlx5e_deactivate_qos_sq(ptr noundef %priv, i16 noundef zeroext %dec)
  tail call fastcc void @mlx5e_close_qos_sq(ptr noundef %priv, i16 noundef zeroext %dec)
  br label %if.end212

if.end212:                                        ; preds = %mlx5e_qid_from_qos.exit403, %if.end186.if.end212_crit_edge
  %txq.1 = phi ptr [ %arrayidx.i405, %mlx5e_qid_from_qos.exit403 ], [ %txq.0, %if.end186.if.end212_crit_edge ]
  %netdev213 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %122 = ptrtoint ptr %netdev213 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %netdev213, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 103
  %124 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %_tx.i.i, align 128
  %qdisc_sleeping.i = getelementptr %struct.netdev_queue, ptr %125, i32 %conv49, i32 3
  %126 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %qdisc_sleeping.i, align 4
  %tobool.not.i407 = icmp eq ptr %127, null
  br i1 %tobool.not.i407, label %if.end212.mlx5e_reset_qdisc.exit_crit_edge, label %if.end.i

if.end212.mlx5e_reset_qdisc.exit_crit_edge:       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_reset_qdisc.exit

if.end.i:                                         ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %127, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  tail call void @qdisc_reset(ptr noundef nonnull %127) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  br label %mlx5e_reset_qdisc.exit

mlx5e_reset_qdisc.exit:                           ; preds = %if.end.i, %if.end212.mlx5e_reset_qdisc.exit_crit_edge
  %rem.i353 = and i32 %conv50, 31
  %shl.i354 = shl nuw i32 1, %rem.i353
  %div2.i355 = lshr i32 %conv50, 5
  %add.ptr.i356 = getelementptr i32, ptr %qos_used_qids.i363, i32 %div2.i355
  %128 = ptrtoint ptr %add.ptr.i356 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i356, align 4
  %or.i = or i32 %129, %shl.i354
  store i32 %or.i, ptr %add.ptr.i356, align 4
  %130 = ptrtoint ptr %qid199 to i32
  call void @__asan_store2_noabort(i32 %130)
  store volatile i16 %19, ptr %qid199, align 8
  %131 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %state, align 4
  %and1.i357 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i357)
  %tobool230.not = icmp eq i32 %and1.i357, 0
  br i1 %tobool230.not, label %mlx5e_reset_qdisc.exit.if.end254_crit_edge, label %if.then231

mlx5e_reset_qdisc.exit.if.end254_crit_edge:       ; preds = %mlx5e_reset_qdisc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then231:                                       ; preds = %mlx5e_reset_qdisc.exit
  %channels232 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %call233 = tail call fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %channels232, ptr noundef %node.1.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.else, label %do.body236

do.body236:                                       ; preds = %if.then231
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_del.__msg) #10
  %tobool237.not = icmp eq ptr %extack, null
  br i1 %tobool237.not, label %do.body236.if.end239_crit_edge, label %if.then238

do.body236.if.end239_crit_edge:                   ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.then238:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @mlx5e_htb_leaf_del.__msg, ptr %extack, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %do.body236.if.end239_crit_edge
  %134 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mdev25, align 64
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %138 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i408 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i408 to ptr
  %task248 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task248 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task248, align 8
  %pid249 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 68
  %142 = ptrtoint ptr %pid249 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pid249, align 8
  %classid250 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.1.i, i32 0, i32 7
  %144 = ptrtoint ptr %classid250 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %classid250, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.44, i32 noundef 835, i32 noundef %143, i32 noundef %145, i32 noundef %conv49, i32 noundef %conv50, i32 noundef %call233) #13
  br label %if.end254

if.else:                                          ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr noundef %node.1.i)
  br label %if.end254

if.end254:                                        ; preds = %if.else, %if.end239, %mlx5e_reset_qdisc.exit.if.end254_crit_edge
  %call255 = tail call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br i1 %tobool17.not, label %if.end254.if.end258_crit_edge, label %if.then257

if.end254.if.end258_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then257:                                       ; preds = %if.end254
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %146 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i409 = and i32 %146, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i409)
  %tobool.not.i410 = icmp eq i32 %and.i409, 0
  br i1 %tobool.not.i410, label %if.then257.mlx5e_reactivate_qos_sq.exit420_crit_edge, label %do.body1.i411

if.then257.mlx5e_reactivate_qos_sq.exit420_crit_edge: ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_reactivate_qos_sq.exit420

do.body1.i411:                                    ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del, %if.then5.i417)) #10
          to label %mlx5e_reactivate_qos_sq.exit420 [label %if.then5.i417], !srcloc !224

if.then5.i417:                                    ; preds = %do.body1.i411
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %mdev25 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev25, align 64
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %151 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i413 = and i32 %151, -16384
  %152 = inttoptr i32 %and.i.i413 to ptr
  %task.i414 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task.i414 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task.i414, align 8
  %pid.i415 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 68
  %155 = ptrtoint ptr %pid.i415 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pid.i415, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, ptr noundef %150, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 736, i32 noundef %156, i32 noundef %conv49) #10
  br label %mlx5e_reactivate_qos_sq.exit420

mlx5e_reactivate_qos_sq.exit420:                  ; preds = %if.then5.i417, %do.body1.i411, %if.then257.mlx5e_reactivate_qos_sq.exit420_crit_edge
  %state.i10.i418 = getelementptr inbounds %struct.netdev_queue, ptr %txq.1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i10.i418) #10
  %dql.i.i419 = getelementptr inbounds %struct.netdev_queue, ptr %txq.1, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i419) #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i10.i418) #10
  br label %if.end258

if.end258:                                        ; preds = %mlx5e_reactivate_qos_sq.exit420, %if.end254.if.end258_crit_edge
  %classid259 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.1.i, i32 0, i32 7
  %157 = ptrtoint ptr %classid259 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %classid259, align 4
  %conv260 = trunc i32 %158 to i16
  %159 = ptrtoint ptr %classid to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv260, ptr %classid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end258, %mlx5e_reactivate_qos_sq.exit384, %if.end81.cleanup_crit_edge, %mlx5e_reactivate_qos_sq.exit, %if.then44.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end258 ], [ 0, %mlx5e_reactivate_qos_sq.exit ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %mlx5e_reactivate_qos_sq.exit384 ], [ 0, %if.end81.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_update_tx_netdev_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_leaf_del_last(ptr noundef %priv, i16 noundef zeroext %classid, i1 noundef zeroext %force, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %new_hw_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_hw_id) #10
  %0 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_hw_id, align 4, !annotation !230
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %1 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_leaf_del_last.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_leaf_del_last, %if.then6)) #10
          to label %do.end11 [label %if.then6], !srcloc !224

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %cond = select i1 %force, ptr @.str.55, ptr @.str.56
  %conv = zext i16 %classid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_leaf_del_last.__UNIQUE_ID_ddebug702, ptr noundef %5, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef 858, i32 noundef %11, ptr noundef nonnull %cond, i32 noundef %conv) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1, %entry.do.end11_crit_edge
  %conv12 = zext i16 %classid to i32
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %conv12, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end11
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.end11 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %classid3.i, align 4
  %cmp.i = icmp eq i32 %14, %conv12
  br i1 %cmp.i, label %if.end16, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end16:                                         ; preds = %for.body.i
  %mdev17 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %15 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev17, align 64
  %parent18 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent18, align 8
  %parent19 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent19, align 8
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_id, align 8
  %bw_share = getelementptr inbounds %struct.mlx5e_qos_node, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bw_share, align 8
  %max_average_bw = getelementptr inbounds %struct.mlx5e_qos_node, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %max_average_bw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_average_bw, align 4
  %call22 = call i32 @mlx5_qos_create_leaf_node(ptr noundef %16, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef nonnull %new_hw_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end16.if.end43_crit_edge, label %do.body25

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body25:                                        ; preds = %if.end16
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_del_last.__msg) #10
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body25.if.end28_crit_edge, label %if.then27

do.body25.if.end28_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mlx5e_htb_leaf_del_last.__msg, ptr %extack, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body25.if.end28_crit_edge
  %28 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev17, align 64
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i193 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i193 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task37, align 8
  %pid38 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid38, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.53, i32 noundef 871, i32 noundef %37, i32 noundef %conv12, i32 noundef %call22) #13
  br i1 %force, label %if.end28.if.end43_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %if.end28.if.end43_crit_edge, %if.end16.if.end43_crit_edge
  %qid44 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 8
  %38 = ptrtoint ptr %qid44 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %qid44, align 8
  store volatile i16 -1, ptr %qid44, align 8
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool56.not = icmp eq i32 %and1.i, 0
  br i1 %tobool56.not, label %if.end43.if.end58_crit_edge, label %if.then57

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx5e_deactivate_qos_sq(ptr noundef %priv, i16 noundef zeroext %39)
  call fastcc void @mlx5e_close_qos_sq(ptr noundef %priv, i16 noundef zeroext %39)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end43.if.end58_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %42 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev, align 4
  %conv.i = zext i16 %39 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 103
  %44 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i, align 128
  %qdisc_sleeping.i = getelementptr %struct.netdev_queue, ptr %45, i32 %conv.i, i32 3
  %46 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qdisc_sleeping.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end58.mlx5e_reset_qdisc.exit_crit_edge, label %if.end.i

if.end58.mlx5e_reset_qdisc.exit_crit_edge:        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_reset_qdisc.exit

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %47, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #10
  call void @qdisc_reset(ptr noundef nonnull %47) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #10
  br label %mlx5e_reset_qdisc.exit

mlx5e_reset_qdisc.exit:                           ; preds = %if.end.i, %if.end58.mlx5e_reset_qdisc.exit_crit_edge
  %48 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev17, align 64
  %hw_id60 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 6
  %50 = ptrtoint ptr %hw_id60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_id60, align 8
  %call61 = call i32 @mlx5_qos_destroy_node(ptr noundef %49, i32 noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %mlx5e_reset_qdisc.exit.if.end74_crit_edge, label %do.end66

mlx5e_reset_qdisc.exit.if.end74_crit_edge:        ; preds = %mlx5e_reset_qdisc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.end66:                                         ; preds = %mlx5e_reset_qdisc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev17, align 64
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i194 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i194 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task70, align 8
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid71, align 8
  %62 = ptrtoint ptr %hw_id60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hw_id60, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.53, i32 noundef 893, i32 noundef %61, i32 noundef %63, i32 noundef %conv12, i32 noundef %call61) #13
  br label %if.end74

if.end74:                                         ; preds = %do.end66, %mlx5e_reset_qdisc.exit.if.end74_crit_edge
  %64 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent18, align 8
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end74.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

if.end74.hash_del_rcu.exit.i_crit_edge:           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %if.end74
  %68 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %node.0.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %69, ptr %67, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %67, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %72 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end74.hash_del_rcu.exit.i_crit_edge
  %73 = ptrtoint ptr %qid44 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %qid44, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %74)
  %cmp.not.i = icmp eq i16 %74, -1
  br i1 %cmp.not.i, label %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge, label %if.then.i

hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge: ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_sw_node_delete.exit

if.then.i:                                        ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i195 = zext i16 %74 to i32
  %qos_used_qids.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 1
  %rem.i.i = and i32 %conv.i195, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i195, 5
  %add.ptr.i.i = getelementptr i32, ptr %qos_used_qids.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %76, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %call.i = call i32 @mlx5e_update_tx_netdev_queues(ptr noundef %priv) #10
  br label %mlx5e_sw_node_delete.exit

mlx5e_sw_node_delete.exit:                        ; preds = %if.then.i, %hash_del_rcu.exit.i.mlx5e_sw_node_delete.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #10
  %qid81 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %65, i32 0, i32 8
  %77 = ptrtoint ptr %qid81 to i32
  call void @__asan_store2_noabort(i32 %77)
  store volatile i16 %39, ptr %qid81, align 8
  br i1 %tobool23.not, label %if.end88, label %mlx5e_sw_node_delete.exit.cleanup_crit_edge

mlx5e_sw_node_delete.exit.cleanup_crit_edge:      ; preds = %mlx5e_sw_node_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end88:                                         ; preds = %mlx5e_sw_node_delete.exit
  %hw_id89 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %65, i32 0, i32 6
  %78 = ptrtoint ptr %hw_id89 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hw_id89, align 8
  %80 = ptrtoint ptr %new_hw_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %new_hw_id, align 4
  store i32 %81, ptr %hw_id89, align 8
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state, align 4
  %and1.i192 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i192)
  %tobool93.not = icmp eq i32 %and1.i192, 0
  br i1 %tobool93.not, label %if.end88.if.end116_crit_edge, label %if.then94

if.end88.if.end116_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then94:                                        ; preds = %if.end88
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %call95 = call fastcc i32 @mlx5e_open_qos_sq(ptr noundef %priv, ptr noundef %channels, ptr noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.else, label %do.body98

do.body98:                                        ; preds = %if.then94
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_leaf_del_last.__msg.59) #10
  %tobool100.not = icmp eq ptr %extack, null
  br i1 %tobool100.not, label %do.body98.if.end103_crit_edge, label %if.then101

do.body98.if.end103_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then101:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @mlx5e_htb_leaf_del_last.__msg.59, ptr %extack, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %do.body98.if.end103_crit_edge
  %85 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev17, align 64
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %89 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i197 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i197 to ptr
  %task112 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task112 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task112, align 8
  %pid113 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid113 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid113, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.53, i32 noundef 915, i32 noundef %94, i32 noundef %conv12, i32 noundef %call95) #13
  br label %if.end116

if.else:                                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlx5e_activate_qos_sq(ptr noundef %priv, ptr noundef %65)
  br label %if.end116

if.end116:                                        ; preds = %if.else, %if.end103, %if.end88.if.end116_crit_edge
  %95 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mdev17, align 64
  %call118 = call i32 @mlx5_qos_destroy_node(ptr noundef %96, i32 noundef %79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end116.cleanup_crit_edge, label %do.end123

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mdev17, align 64
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  %101 = call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i198 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i198 to ptr
  %task127 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task127, align 8
  %pid128 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 68
  %105 = ptrtoint ptr %pid128 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pid128, align 8
  %107 = ptrtoint ptr %hw_id89 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hw_id89, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.53, i32 noundef 924, i32 noundef %106, i32 noundef %108, i32 noundef %conv12, i32 noundef %call118) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %if.end116.cleanup_crit_edge, %mlx5e_sw_node_delete.exit.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end28.cleanup_crit_edge ], [ %call22, %mlx5e_sw_node_delete.exit.cleanup_crit_edge ], [ 0, %do.end123 ], [ 0, %if.end116.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hw_id) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_htb_node_modify(ptr nocapture noundef readonly %priv, i16 noundef zeroext %classid, i64 noundef %rate, i64 noundef %ceil, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %bw_share = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw_share) #10
  %0 = ptrtoint ptr %bw_share to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bw_share, align 4, !annotation !230
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %1 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_node_modify.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_node_modify, %if.then5)) #10
          to label %do.end9 [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %conv = zext i16 %classid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_node_modify.__UNIQUE_ID_ddebug705, ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef 970, i32 noundef %11, i32 noundef %conv, i64 noundef %rate, i64 noundef %ceil) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %conv10 = zext i16 %classid to i32
  %htb.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50
  %mul.i.i.i = mul i32 %conv10, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end9
  %node.0.in.i = phi ptr [ %arrayidx.i, %do.end9 ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool2.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %classid3.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %classid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %classid3.i, align 4
  %cmp.i = icmp eq i32 %14, %conv10
  br i1 %cmp.i, label %if.end14, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end14:                                         ; preds = %for.body.i
  %classid3.i.le = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 7
  %rate15 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %rate15 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %rate, ptr %rate15, align 8
  %parent = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  call fastcc void @mlx5e_htb_convert_rate(ptr noundef %priv, i64 noundef %rate, ptr noundef %17, ptr noundef nonnull %bw_share)
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %ceil) #16, !srcloc !228
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %ceil, i64 %18, i32 0) #16, !srcloc !229
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 15
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %20 = tail call i32 @llvm.umax.i32(i32 %conv.i, i32 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %21 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i77 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i, label %if.end14.mlx5e_htb_convert_ceil.exit_crit_edge, label %do.body2.i

if.end14.mlx5e_htb_convert_ceil.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_htb_convert_ceil.exit

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_htb_node_modify, %if.then8.i)) #10
          to label %mlx5e_htb_convert_ceil.exit [label %if.then8.i], !srcloc !224

if.then8.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %22 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev.i, align 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, ptr noundef %25, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef 577, i32 noundef %31, i64 noundef %ceil, i32 noundef %20) #10
  br label %mlx5e_htb_convert_ceil.exit

mlx5e_htb_convert_ceil.exit:                      ; preds = %if.then8.i, %do.body2.i, %if.end14.mlx5e_htb_convert_ceil.exit_crit_edge
  %mdev17 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %32 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev17, align 64
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  %hw_id = getelementptr inbounds %struct.mlx5e_qos_node, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_id, align 8
  %38 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bw_share, align 4
  %hw_id19 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 6
  %40 = ptrtoint ptr %hw_id19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_id19, align 8
  %call20 = tail call i32 @mlx5_qos_update_node(ptr noundef %33, i32 noundef %37, i32 noundef %39, i32 noundef %20, i32 noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end38, label %do.body23

do.body23:                                        ; preds = %mlx5e_htb_convert_ceil.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_htb_node_modify.__msg) #10
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body23.if.end26_crit_edge, label %if.then25

do.body23.if.end26_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then25:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mlx5e_htb_node_modify.__msg, ptr %extack, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %do.body23.if.end26_crit_edge
  %43 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdev17, align 64
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i78 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i78 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 68
  %51 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pid36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 985, i32 noundef %52, i32 noundef %conv10, i32 noundef %call20) #13
  br label %cleanup

if.end38:                                         ; preds = %mlx5e_htb_convert_ceil.exit
  %max_average_bw39 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 5
  %53 = ptrtoint ptr %max_average_bw39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_average_bw39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %54)
  %cmp.not = icmp eq i32 %20, %54
  %bw_share43 = getelementptr inbounds %struct.mlx5e_qos_node, ptr %node.0.i, i32 0, i32 4
  %55 = ptrtoint ptr %bw_share43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %39, ptr %bw_share43, align 8
  %56 = ptrtoint ptr %max_average_bw39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %20, ptr %max_average_bw39, align 4
  br i1 %cmp.not, label %if.end38.cleanup_crit_edge, label %if.then46

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %if.end38
  %tobool18.not.i = icmp eq ptr %extack, null
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc38.i.for.body.i82_crit_edge, %if.then46
  %err.075.i = phi i32 [ 0, %if.then46 ], [ %err.1.lcssa.i, %for.inc38.i.for.body.i82_crit_edge ]
  %bkt.074.i = phi i32 [ 0, %if.then46 ], [ %inc.i, %for.inc38.i.for.body.i82_crit_edge ]
  %arrayidx.i81 = getelementptr [256 x %struct.hlist_head], ptr %htb.i, i32 0, i32 %bkt.074.i
  %57 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %child.170.i = load ptr, ptr %arrayidx.i81, align 4
  %tobool4.not71.i = icmp eq ptr %child.170.i, null
  br i1 %tobool4.not71.i, label %for.body.i82.for.inc38.i_crit_edge, label %for.body.i82.for.body5.i_crit_edge

for.body.i82.for.body5.i_crit_edge:               ; preds = %for.body.i82
  br label %for.body5.i

for.body.i82.for.inc38.i_crit_edge:               ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38.i

for.body5.i:                                      ; preds = %cleanup.i.for.body5.i_crit_edge, %for.body.i82.for.body5.i_crit_edge
  %child.173.i = phi ptr [ %child.1.i, %cleanup.i.for.body5.i_crit_edge ], [ %child.170.i, %for.body.i82.for.body5.i_crit_edge ]
  %err.172.i = phi i32 [ %err.3.i, %cleanup.i.for.body5.i_crit_edge ], [ %err.075.i, %for.body.i82.for.body5.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %child.173.i, i32 0, i32 2
  %58 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i, align 8
  %cmp6.not.i = icmp eq ptr %59, %node.0.i
  br i1 %cmp6.not.i, label %if.end.i, label %for.body5.i.cleanup.i_crit_edge

for.body5.i.cleanup.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body5.i
  %bw_share.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %child.173.i, i32 0, i32 4
  %60 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bw_share.i, align 8
  %rate.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %child.173.i, i32 0, i32 3
  %62 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rate.i, align 8
  tail call fastcc void @mlx5e_htb_convert_rate(ptr noundef %priv, i64 noundef %63, ptr noundef nonnull %node.0.i, ptr noundef %bw_share.i) #10
  %64 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bw_share.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %61)
  %cmp9.i = icmp eq i32 %65, %61
  br i1 %cmp9.i, label %if.end.i.cleanup.i_crit_edge, label %if.end11.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end11.i:                                       ; preds = %if.end.i
  %66 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdev17, align 64
  %hw_id.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %child.173.i, i32 0, i32 6
  %68 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hw_id.i, align 8
  %max_average_bw.i = getelementptr inbounds %struct.mlx5e_qos_node, ptr %child.173.i, i32 0, i32 5
  %70 = ptrtoint ptr %max_average_bw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_average_bw.i, align 4
  %call14.i = tail call i32 @mlx5_qos_update_node(ptr noundef %67, i32 noundef %69, i32 noundef %65, i32 noundef %71, i32 noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.172.i)
  %tobool15.not.i = icmp eq i32 %err.172.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %if.end11.i.cleanup.i_crit_edge

if.end11.i.cleanup.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %if.then17.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_qos_update_children.__msg) #10
  br i1 %tobool18.not.i, label %if.then17.i.if.end20.i_crit_edge, label %if.then19.i

if.then17.i.if.end20.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mlx5e_qos_update_children.__msg, ptr %extack, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.then17.i.if.end20.i_crit_edge
  %73 = ptrtoint ptr %mdev17 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdev17, align 64
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %77 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i.i83 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i83 to ptr
  %task.i84 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i84, align 8
  %pid.i85 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid.i85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid.i85, align 8
  %83 = ptrtoint ptr %classid3.i.le to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %classid3.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef 954, i32 noundef %82, i32 noundef %84, i32 noundef %call14.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end20.i, %land.lhs.true.i.cleanup.i_crit_edge, %if.end11.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body5.i.cleanup.i_crit_edge
  %err.3.i = phi i32 [ %err.172.i, %for.body5.i.cleanup.i_crit_edge ], [ %err.172.i, %if.end.i.cleanup.i_crit_edge ], [ %err.172.i, %if.end11.i.cleanup.i_crit_edge ], [ %call14.i, %if.end20.i ], [ 0, %land.lhs.true.i.cleanup.i_crit_edge ]
  %85 = ptrtoint ptr %child.173.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %child.1.i = load ptr, ptr %child.173.i, align 4
  %tobool4.not.i = icmp eq ptr %child.1.i, null
  br i1 %tobool4.not.i, label %cleanup.i.for.inc38.i_crit_edge, label %cleanup.i.for.body5.i_crit_edge

cleanup.i.for.body5.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5.i

cleanup.i.for.inc38.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %cleanup.i.for.inc38.i_crit_edge, %for.body.i82.for.inc38.i_crit_edge
  %err.1.lcssa.i = phi i32 [ %err.075.i, %for.body.i82.for.inc38.i_crit_edge ], [ %err.3.i, %cleanup.i.for.inc38.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bkt.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc38.i.cleanup_crit_edge, label %for.inc38.i.for.body.i82_crit_edge

for.inc38.i.for.body.i82_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i82

for.inc38.i.cleanup_crit_edge:                    ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc38.i.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end26, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end26 ], [ 0, %if.end38.cleanup_crit_edge ], [ %err.1.lcssa.i, %for.inc38.i.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw_share) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_qos_update_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mlx5e_mqprio_rl_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #14
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mqprio_rl_free(ptr noundef %rl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %rl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_mqprio_rl_init(ptr noundef %rl, ptr noundef %mdev, i8 noundef zeroext %num_tc, ptr nocapture noundef readonly %max_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5_qos_is_supported(ptr noundef %mdev) #10
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 1025, i32 noundef %7) #13
  br label %cleanup85

if.end:                                           ; preds = %entry
  %conv = zext i8 %num_tc to i32
  %call.i = tail call i32 @mlx5_qos_max_leaf_nodes(ptr noundef %mdev) #10
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 256) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp slt i32 %8, %conv
  br i1 %cmp, label %if.end.cleanup85_crit_edge, label %if.end5

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %rl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mdev, ptr %rl, align 4
  %num_tc7 = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 3
  %10 = ptrtoint ptr %num_tc7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %num_tc, ptr %num_tc7, align 4
  %11 = shl nuw nsw i32 %conv, 2
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3520, i32 noundef -1) #14
  %leaves_id = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 2
  %12 = ptrtoint ptr %leaves_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %leaves_id, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup85_crit_edge, label %if.end12

if.end5.cleanup85_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

if.end12:                                         ; preds = %if.end5
  %root_id = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 1
  %call13 = tail call i32 @mlx5_qos_create_root_node(ptr noundef %mdev, ptr noundef %root_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body17, label %if.end12.err_free_leaves_crit_edge

if.end12.err_free_leaves_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_leaves

do.body17:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %13 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body17.do.end36_crit_edge, label %do.body20

do.body17.do.end36_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.body20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_mqprio_rl_init, %if.then25)) #10
          to label %do.end36 [label %if.then25], !srcloc !224

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i124 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i124 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid29, align 8
  %22 = ptrtoint ptr %root_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %root_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug706, ptr noundef %15, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef 1041, i32 noundef %21, i32 noundef %23) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then25, %do.body20, %do.body17.do.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_tc)
  %cmp38133.not = icmp eq i8 %num_tc, 0
  br i1 %cmp38133.not, label %do.end36.cleanup85_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  br label %for.body

do.end36.cleanup85_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end36.for.body_crit_edge
  %tc.0134 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end36.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %max_rate, i32 %tc.0134
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx, align 8
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %25) #16, !srcloc !228
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %25, i64 %26, i32 0) #16, !srcloc !229
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 15
  %conv.i = trunc i64 %div1581.i.i.i to i32
  %28 = ptrtoint ptr %root_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %root_id, align 4
  %30 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %leaves_id, align 4
  %arrayidx43 = getelementptr i32, ptr %31, i32 %tc.0134
  %call44 = tail call i32 @mlx5_qos_create_leaf_node(ptr noundef %mdev, i32 noundef %29, i32 noundef 0, i32 noundef %conv.i, ptr noundef %arrayidx43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body48, label %while.cond.preheader

do.body48:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %32 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and49 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.for.inc_crit_edge, label %do.body52

do.body48.for.inc_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_mqprio_rl_init, %if.then64)) #10
          to label %for.inc [label %if.then64], !srcloc !224

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  %35 = tail call i32 @llvm.read_register.i32(metadata !206) #10
  %and.i125 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i125 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid68, align 8
  %41 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %leaves_id, align 4
  %arrayidx70 = getelementptr i32, ptr %42, i32 %tc.0134
  %43 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug707, ptr noundef %34, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 1053, i32 noundef %40, i32 noundef %tc.0134, i32 noundef %44, i32 noundef %conv.i) #10
  br label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tc.0134)
  %cmp77138.not = icmp eq i32 %tc.0134, 0
  br i1 %cmp77138.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

for.inc:                                          ; preds = %if.then64, %do.body52, %do.body48.for.inc_crit_edge
  %inc = add nuw nsw i32 %tc.0134, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup85_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup85_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec139.in = phi i32 [ %dec139, %while.body.while.body_crit_edge ], [ %tc.0134, %while.cond.preheader.while.body_crit_edge ]
  %dec139 = add nsw i32 %dec139.in, -1
  %45 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %leaves_id, align 4
  %arrayidx80 = getelementptr i32, ptr %46, i32 %dec139
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx80, align 4
  %call81 = tail call i32 @mlx5_qos_destroy_node(ptr noundef %mdev, i32 noundef %48) #10
  %cmp77 = icmp sgt i32 %dec139.in, 1
  br i1 %cmp77, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %49 = ptrtoint ptr %root_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %root_id, align 4
  %call83 = tail call i32 @mlx5_qos_destroy_node(ptr noundef %mdev, i32 noundef %50) #10
  br label %err_free_leaves

err_free_leaves:                                  ; preds = %while.end, %if.end12.err_free_leaves_crit_edge
  %err.0 = phi i32 [ %call13, %if.end12.err_free_leaves_crit_edge ], [ %call44, %while.end ]
  %51 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %leaves_id, align 4
  tail call void @kvfree(ptr noundef %52) #10
  br label %cleanup85

cleanup85:                                        ; preds = %err_free_leaves, %for.inc.cleanup85_crit_edge, %do.end36.cleanup85_crit_edge, %if.end5.cleanup85_crit_edge, %if.end.cleanup85_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %err_free_leaves ], [ -95, %do.end ], [ -22, %if.end.cleanup85_crit_edge ], [ -12, %if.end5.cleanup85_crit_edge ], [ 0, %do.end36.cleanup85_crit_edge ], [ 0, %for.inc.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mqprio_rl_cleanup(ptr nocapture noundef readonly %rl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 3
  %0 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13.not = icmp eq i8 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %leaves_id = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tc.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rl, align 4
  %4 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %leaves_id, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %tc.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @mlx5_qos_destroy_node(ptr noundef %3, i32 noundef %7) #10
  %inc = add nuw nsw i32 %tc.014, 1
  %8 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %10 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rl, align 4
  %root_id = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 1
  %12 = ptrtoint ptr %root_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %root_id, align 4
  %call3 = tail call i32 @mlx5_qos_destroy_node(ptr noundef %11, i32 noundef %13) #10
  %leaves_id4 = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 2
  %14 = ptrtoint ptr %leaves_id4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %leaves_id4, align 4
  tail call void @kvfree(ptr noundef %15) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_mqprio_rl_get_node_hw_id(ptr nocapture noundef readonly %rl, i32 noundef %tc, ptr nocapture noundef writeonly %hw_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 3
  %0 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %tc)
  %cmp.not = icmp sgt i32 %conv, %tc
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %leaves_id = getelementptr inbounds %struct.mlx5e_mqprio_rl, ptr %rl, i32 0, i32 2
  %2 = ptrtoint ptr %leaves_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leaves_id, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %tc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %hw_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %hw_id, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_create_cq_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_sq_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_tx_cq_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_cq(ptr noundef, [2 x i32], ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_txqsq(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_get_qos_sq(ptr noundef %priv, i32 noundef %qid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %0 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_channels, align 4
  %conv = zext i16 %1 to i32
  %conv.frozen = freeze i32 %conv
  %div = sdiv i32 %qid, %conv.frozen
  %2 = mul i32 %div, %conv.frozen
  %rem.decomposed = sub i32 %qid, %2
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channels, align 128
  %arrayidx = getelementptr ptr, ptr %4, i32 %rem.decomposed
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %dep_map = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @mlx5e_get_qos_sq.__warned, align 1
  br i1 %.b35, label %land.lhs.true8.do.end_crit_edge, label %if.then

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_get_qos_sq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef nonnull @.str.5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %qos_sqs10 = getelementptr inbounds %struct.mlx5e_channel, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %qos_sqs10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qos_sqs10, align 128
  %call.i36 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool15.not = icmp eq i32 %call.i36, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end.do.end24_crit_edge

do.end.do.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b3334 = load i1, ptr @mlx5e_get_qos_sq.__warned.77, align 1
  br i1 %.b3334, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_get_qos_sq.__warned.77, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 191, ptr noundef nonnull @.str.5) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end.do.end24_crit_edge
  %arrayidx26 = getelementptr ptr, ptr %8, i32 %div
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx26, align 4
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !78, !79, !80, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !100, !102, !103, !105, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !121, !122, !124, !125, !127, !129, !130, !132, !133, !135, !136, !137, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !168, !170, !171, !172, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !193, !195, !197, !198, !199, !201, !203, !204, !205}
!llvm.named.register.sp = !{!206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 14, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_qos_bytes_rate_check._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_qos_bytes_rate_check._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 336, i32 12}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 344, i32 8}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 441, i32 12}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 449, i32 8}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 453, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5e_qos_deactivate_queues.__UNIQUE_ID_ddebug683, !18, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 478, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5e_htb_root_add.__UNIQUE_ID_ddebug684, !23, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!26 = !{ptr @mlx5e_htb_root_add.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 481, i32 3}
!28 = !{ptr @mlx5e_htb_root_add.__msg.13, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 501, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 527, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mlx5e_htb_root_del.__UNIQUE_ID_ddebug688, !31, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 534, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mlx5e_htb_root_del._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlx5e_htb_root_del._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 539, i32 3}
!41 = !{ptr @mlx5e_htb_root_del._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5e_htb_root_del._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 588, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx5e_htb_leaf_alloc_queue.__UNIQUE_ID_ddebug694, !44, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!47 = !{ptr @mlx5e_htb_leaf_alloc_queue.__msg, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 593, i32 3}
!49 = !{ptr @mlx5e_htb_leaf_alloc_queue.__msg.23, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 613, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 614, i32 3}
!53 = !{ptr @mlx5e_htb_leaf_alloc_queue._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mlx5e_htb_leaf_alloc_queue._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mlx5e_htb_leaf_alloc_queue.__msg.25, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 623, i32 4}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 624, i32 4}
!59 = !{ptr @mlx5e_htb_leaf_alloc_queue._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mlx5e_htb_leaf_alloc_queue._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 642, i32 2}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mlx5e_htb_leaf_to_inner.__UNIQUE_ID_ddebug695, !62, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!65 = !{ptr @mlx5e_htb_leaf_to_inner.__msg, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 653, i32 3}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 654, i32 3}
!69 = !{ptr @mlx5e_htb_leaf_to_inner._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mlx5e_htb_leaf_to_inner._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mlx5e_htb_leaf_to_inner.__msg.32, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 673, i32 3}
!73 = !{ptr @mlx5e_htb_leaf_to_inner._entry.33, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 674, i32 3}
!75 = !{ptr @mlx5e_htb_leaf_to_inner._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 692, i32 3}
!78 = !{ptr @mlx5e_htb_leaf_to_inner._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mlx5e_htb_leaf_to_inner._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mlx5e_htb_leaf_to_inner.__msg.38, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 700, i32 4}
!82 = !{ptr @mlx5e_htb_leaf_to_inner._entry.39, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 701, i32 4}
!84 = !{ptr @mlx5e_htb_leaf_to_inner._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 717, i32 3}
!87 = !{ptr @mlx5e_htb_leaf_to_inner._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mlx5e_htb_leaf_to_inner._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 763, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug698, !90, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!93 = !{ptr @mlx5e_htb_leaf_del._entry, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 782, i32 3}
!95 = !{ptr @mlx5e_htb_leaf_del._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 799, i32 3}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 806, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 807, i32 2}
!102 = !{ptr @mlx5e_htb_leaf_del.__UNIQUE_ID_ddebug699, !101, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 810, i32 2}
!105 = !{ptr @mlx5e_htb_leaf_del.__msg, !106, !"__msg", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 833, i32 4}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 834, i32 4}
!109 = !{ptr @mlx5e_htb_leaf_del._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mlx5e_htb_leaf_del._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 857, i32 2}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mlx5e_htb_leaf_del_last.__UNIQUE_ID_ddebug702, !112, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!115 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mlx5e_htb_leaf_del_last.__msg, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 869, i32 3}
!119 = !{ptr @mlx5e_htb_leaf_del_last._entry, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 870, i32 3}
!121 = !{ptr @mlx5e_htb_leaf_del_last._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @mlx5e_htb_leaf_del_last._entry.57, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 892, i32 3}
!124 = !{ptr @mlx5e_htb_leaf_del_last._entry_ptr.58, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @mlx5e_htb_leaf_del_last.__msg.59, !126, !"__msg", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 913, i32 4}
!127 = !{ptr @mlx5e_htb_leaf_del_last._entry.60, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 914, i32 4}
!129 = !{ptr @mlx5e_htb_leaf_del_last._entry_ptr.61, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @mlx5e_htb_leaf_del_last._entry.62, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 923, i32 3}
!132 = !{ptr @mlx5e_htb_leaf_del_last._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 969, i32 2}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mlx5e_htb_node_modify.__UNIQUE_ID_ddebug705, !134, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!137 = !{ptr @mlx5e_htb_node_modify.__msg, !138, !"__msg", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 983, i32 3}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 984, i32 3}
!141 = !{ptr @mlx5e_htb_node_modify._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @mlx5e_htb_node_modify._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 1025, i32 3}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mlx5e_mqprio_rl_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @mlx5e_mqprio_rl_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 1041, i32 2}
!150 = !{ptr @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug706, !149, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 1052, i32 3}
!153 = !{ptr @mlx5e_mqprio_rl_init.__UNIQUE_ID_ddebug707, !152, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 120, i32 2}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!163 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 389, i32 9}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 241, i32 12}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 287, i32 2}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @mlx5e_activate_qos_sq.__UNIQUE_ID_ddebug668, !169, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 190, i32 12}
!174 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 191, i32 9}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 45, i32 2}
!178 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @__func__.mlx5e_find_unused_qos_qid, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 565, i32 2}
!182 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @mlx5e_htb_convert_rate.__UNIQUE_ID_ddebug690, !181, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 576, i32 2}
!186 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mlx5e_htb_convert_ceil.__UNIQUE_ID_ddebug693, !185, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 299, i32 2}
!190 = !{ptr @mlx5e_deactivate_qos_sq.__UNIQUE_ID_ddebug669, !189, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!191 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 319, i32 12}
!193 = distinct !{null, !194, !"__warned", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 320, i32 7}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 736, i32 2}
!197 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @mlx5e_reactivate_qos_sq.__UNIQUE_ID_ddebug697, !196, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!199 = !{ptr @mlx5e_qos_update_children.__msg, !200, !"__msg", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 952, i32 4}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/qos.c", i32 953, i32 4}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mlx5e_qos_update_children._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @mlx5e_qos_update_children._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{!"sp"}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{i64 2149649020}
!217 = !{i64 2149649286}
!218 = !{i64 2160418964}
!219 = !{i64 2160424402}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{i64 2160371019}
!222 = !{i64 2160379706}
!223 = !{i64 2160385540}
!224 = !{i64 2149100260, i64 2149100265, i64 2149100278, i64 2149100322, i64 2149100356, i64 2149100377}
!225 = !{i64 2149750631}
!226 = !{i64 2160458628}
!227 = !{!"branch_weights", i32 2000, i32 1}
!228 = !{i64 903588, i64 903615}
!229 = !{i64 904283, i64 904310, i64 904343, i64 904364, i64 904391, i64 904417}
!230 = !{!"auto-init"}
