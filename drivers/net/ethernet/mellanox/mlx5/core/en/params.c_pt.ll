; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/params.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/params.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.0 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.0 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.1 }
%struct.anon.1 = type { i8, i8 }
%struct.mlx5e_xsk_param = type { i16, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.212, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.243, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.212 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.242] }
%struct.anon.242 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.184 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.184 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.243 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.129, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.129 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.298, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.275, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.275 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.298 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.276, i32, i32 }
%union.anon.276 = type { ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx5e_rq = type { %union.anon.253, %struct.anon.268, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.253 = type { %struct.anon.260 }
%struct.anon.260 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.263 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.261 }
%union.anon.261 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.262, i64, i32, [28 x i8] }
%union.anon.262 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.263 = type { %struct.anon.264 }
%struct.anon.264 = type { %struct.anon.265, [0 x %struct.mlx5_mtt] }
%struct.anon.265 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.268 = type { i16, i32, i8 }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.256, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.259, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.256 = type { %struct.anon.257 }
%struct.anon.257 = type { i8, i8, i16, i32 }
%union.anon.259 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.277, i32 }
%union.anon.277 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.mlx5e_dma_info = type { i32, %union.anon.255 }
%union.anon.255 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.297, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.297 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.280, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.280 = type { ptr }
%struct.mlx5e_rq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, %struct.mlx5e_rq_frags_info }
%struct.mlx5e_cq_param = type { [16 x i32], %struct.mlx5_wq_param, i16, i8 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5e_rq_frags_info = type { [4 x %struct.mlx5e_rq_frag_info], i8, i8, i8 }
%struct.mlx5e_rq_frag_info = type { i32, i32 }
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mlx5e_sq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, i8, i8, i16 }
%struct.mlx5e_channel_param = type { %struct.mlx5e_rq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param }

@mlx5e_validate_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Stop room %u is bigger than the SQ size %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_validate_params\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/params.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_validate_params._entry_ptr = internal global ptr @mlx5e_validate_params._entry, section ".printk_index", align 4
@slow_pci_heuristic.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@slow_pci_heuristic.__UNIQUE_ID_ddebug760 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slow_pci_heuristic\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Max link speed = %d, PCI BW = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_init_rq_type_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 346, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"MLX5E: StrdRq(%d) RqSz(%ld) StrdSz(%ld) RxCqeCmprss(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5e_init_rq_type_params\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5e_init_rq_type_params._entry_ptr = internal global ptr @mlx5e_init_rq_type_params._entry, section ".printk_index", align 4
@mlx5e_build_rq_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): Bad RX MPWQE params: log_stride_size %u, log_num_strides %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5e_build_rq_param\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_build_rq_param._entry_ptr = internal global ptr @mlx5e_build_rq_param._entry, section ".printk_index", align 4
@mlx5e_shampo_hd_per_wqe.__UNIQUE_ID_ddebug799 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_shampo_hd_per_wqe\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s:%d:(pid %d): %s hd_per_wqe = %d rsrv_size = %d wqe_size = %d pkt_per_resv = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 217, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 303, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 340, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 544, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 689, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @mlx5e_build_rq_param._entry, ptr @mlx5e_build_rq_param._entry_ptr, ptr @mlx5e_init_rq_type_params._entry, ptr @mlx5e_init_rq_type_params._entry_ptr, ptr @mlx5e_validate_params._entry, ptr @mlx5e_validate_params._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_validate_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_init_rq_type_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_build_rq_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5e_get_linear_rq_headroom(ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xsk, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xsk, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %2 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.not.i.not = icmp eq ptr %3, null
  %. = select i1 %tobool.not.i.not, i16 130, i16 258
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %1, %if.then ], [ %., %if.end ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_rx_get_min_frag_sz(ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu, align 4
  %hard_mtu = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu, align 4
  %tobool.not.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_get_linear_rq_headroom.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  %..i = select i1 %tobool.not.i.not.i, i16 130, i16 258
  br label %mlx5e_get_linear_rq_headroom.exit

mlx5e_get_linear_rq_headroom.exit:                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i16 [ %5, %if.then.i ], [ %..i, %if.end.i ]
  %add = add i32 %3, %1
  %conv = zext i16 %retval.0.i to i32
  %add1 = add i32 %add, %conv
  ret i32 %add1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_mpwqe_log_pkts_per_wqe(ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i, align 4
  %hard_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %7, null
  %..i.i.i = select i1 %tobool.not.i.not.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i

mlx5e_rx_get_min_frag_sz.exit.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %5, %if.then.i.i.i ], [ %..i.i.i, %if.end.i.i.i ]
  %add.i.i = add i32 %3, %1
  %conv.i.i = zext i16 %retval.0.i.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %8 = add i32 %add1.i.i, 383
  %add1.i = and i32 %8, -128
  %frag_sz.0.i = select i1 %tobool.not.i.i.i, i32 %add1.i, i32 %add1.i.i
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %10, null
  %tobool1.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i = or i1 %tobool1.i.i, %tobool.not.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i, i32 4096) #13
  %frag_sz.1.i = select i1 %spec.select.i.i, i32 %11, i32 %frag_sz.0.i
  br i1 %tobool.not.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.cond.false17_crit_edge, label %if.then6.i

mlx5e_rx_get_min_frag_sz.exit.i.cond.false17_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17

if.then6.i:                                       ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i, i32 %conv.i) #13
  br label %cond.false17

cond.false17:                                     ; preds = %if.then6.i, %mlx5e_rx_get_min_frag_sz.exit.i.cond.false17_crit_edge
  %frag_sz.2.i = phi i32 [ %14, %if.then6.i ], [ %frag_sz.1.i, %mlx5e_rx_get_min_frag_sz.exit.i.cond.false17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i)
  %cmp.i = icmp ugt i32 %frag_sz.2.i, 1
  %sub.i31 = add i32 %frag_sz.2.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31, i1 true) #13, !range !42
  %16 = trunc i32 %15 to i8
  %phi.bo = add nsw i8 %16, -14
  %cond20.neg = select i1 %cmp.i, i8 %phi.bo, i8 18
  ret i8 %cond20.neg
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_rx_is_linear_skb(ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i, align 4
  %hard_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %7, null
  %..i.i.i = select i1 %tobool.not.i.not.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i

mlx5e_rx_get_min_frag_sz.exit.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %5, %if.then.i.i.i ], [ %..i.i.i, %if.end.i.i.i ]
  %add.i.i = add i32 %3, %1
  %conv.i.i = zext i16 %retval.0.i.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %8 = add i32 %add1.i.i, 383
  %add1.i = and i32 %8, -128
  %frag_sz.0.i = select i1 %tobool.not.i.i.i, i32 %add1.i, i32 %add1.i.i
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %10, null
  %tobool1.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i = or i1 %tobool1.i.i, %tobool.not.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i, i32 4096) #13
  %frag_sz.1.i = select i1 %spec.select.i.i, i32 %11, i32 %frag_sz.0.i
  br i1 %tobool.not.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge, label %if.then6.i

mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit

if.then6.i:                                       ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i, i32 %conv.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit

mlx5e_rx_get_linear_frag_sz.exit:                 ; preds = %if.then6.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge
  %frag_sz.2.i = phi i32 [ %14, %if.then6.i ], [ %frag_sz.1.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge ]
  %tobool.not.i.not.i.i.i11 = icmp eq ptr %10, null
  %conv.i.i16 = select i1 %tobool.not.i.not.i.i.i11, i32 130, i32 258
  %add1.i.i17 = add i32 %add.i.i, 383
  %15 = add i32 %add1.i.i17, %conv.i.i16
  %add1.i18 = and i32 %15, -128
  %16 = tail call i32 @llvm.umax.i32(i32 %add1.i18, i32 4096) #13
  %frag_sz.1.i21 = select i1 %tobool.not.i.i, i32 %16, i32 %add1.i18
  %17 = tail call i32 @llvm.umax.i32(i32 %frag_sz.2.i, i32 %frag_sz.1.i21)
  %packet_merge = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %18 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2 = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %17)
  %cmp3 = icmp ult i32 %17, 4097
  %20 = select i1 %cmp2, i1 %cmp3, i1 false
  ret i1 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_verify_rx_mpwqe_strides(ptr nocapture noundef readonly %mdev, i8 noundef zeroext %log_stride_sz, i8 noundef zeroext %log_num_strides) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %log_stride_sz to i32
  %conv1 = zext i8 %log_num_strides to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add)
  %cmp.not = icmp eq i32 %add, 18
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = add i8 %log_stride_sz, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %0)
  %1 = icmp ult i8 %0, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %log_num_strides)
  %cmp12 = icmp ugt i8 %log_num_strides, 16
  %or.cond29 = or i1 %1, %cmp12
  br i1 %or.cond29, label %if.end.return_crit_edge, label %if.end15

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end15:                                         ; preds = %if.end
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 29
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %log_num_strides)
  %cmp18 = icmp ugt i8 %log_num_strides, 2
  br label %return

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %log_num_strides)
  %cmp22 = icmp ugt i8 %log_num_strides, 8
  br label %return

return:                                           ; preds = %if.end20, %if.then16, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp18, %if.then16 ], [ %cmp22, %if.end20 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %7, null
  %..i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %5, %if.then.i.i.i.i ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  %add.i.i.i = add i32 %3, %1
  %conv.i.i.i = zext i16 %retval.0.i.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %8 = add i32 %add1.i.i.i, 383
  %add1.i.i = and i32 %8, -128
  %frag_sz.0.i.i = select i1 %tobool.not.i.i.i.i, i32 %add1.i.i, i32 %add1.i.i.i
  %xdp_prog.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %10, null
  %tobool1.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i = or i1 %tobool1.i.i.i, %tobool.not.i.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %spec.select.i.i.i, i32 %11, i32 %frag_sz.0.i.i
  br i1 %tobool.not.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge, label %if.then6.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_is_linear_skb.exit

if.then6.i.i:                                     ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i, i32 %conv.i.i) #13
  br label %mlx5e_rx_is_linear_skb.exit

mlx5e_rx_is_linear_skb.exit:                      ; preds = %if.then6.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge
  %frag_sz.2.i.i = phi i32 [ %14, %if.then6.i.i ], [ %frag_sz.1.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge ]
  %tobool.not.i.not.i.i.i11.i = icmp eq ptr %10, null
  %conv.i.i16.i = select i1 %tobool.not.i.not.i.i.i11.i, i32 130, i32 258
  %add1.i.i17.i = add i32 %add.i.i.i, 383
  %15 = add i32 %add1.i.i17.i, %conv.i.i16.i
  %add1.i18.i = and i32 %15, -128
  %16 = tail call i32 @llvm.umax.i32(i32 %add1.i18.i, i32 4096) #13
  %frag_sz.1.i21.i = select i1 %tobool.not.i.i.i, i32 %16, i32 %add1.i18.i
  %17 = tail call i32 @llvm.umax.i32(i32 %frag_sz.2.i.i, i32 %frag_sz.1.i21.i) #13
  %packet_merge.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %18 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packet_merge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %17)
  %cmp3.i = icmp ult i32 %17, 4097
  %20 = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  br i1 %20, label %if.end, label %mlx5e_rx_is_linear_skb.exit.cleanup_crit_edge

mlx5e_rx_is_linear_skb.exit.cleanup_crit_edge:    ; preds = %mlx5e_rx_is_linear_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %mlx5e_rx_is_linear_skb.exit
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %..i.i.i = select i1 %tobool.not.i.not.i.i.i11.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i

mlx5e_rx_get_min_frag_sz.exit.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %22, %if.then.i.i.i ], [ %..i.i.i, %if.end.i.i.i ]
  %conv.i.i11 = zext i16 %retval.0.i.i.i to i32
  %add1.i.i12 = add i32 %add.i.i.i, %conv.i.i11
  %23 = add i32 %add1.i.i12, 383
  %add1.i = and i32 %23, -128
  %frag_sz.0.i = select i1 %tobool.not.i.i.i.i, i32 %add1.i, i32 %add1.i.i12
  %24 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i, i32 4096) #13
  %frag_sz.1.i = select i1 %spec.select.i.i.i, i32 %24, i32 %frag_sz.0.i
  br i1 %tobool.not.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge, label %if.then6.i

mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit

if.then6.i:                                       ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %25 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %chunk_size.i, align 2
  %conv.i = zext i16 %26 to i32
  %27 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i, i32 %conv.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit

mlx5e_rx_get_linear_frag_sz.exit:                 ; preds = %if.then6.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge
  %frag_sz.2.i = phi i32 [ %27, %if.then6.i ], [ %frag_sz.1.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i)
  %cmp.i = icmp ugt i32 %frag_sz.2.i, 1
  %sub.i = add i32 %frag_sz.2.i, -1
  %28 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #13, !range !42
  %29 = trunc i32 %28 to i8
  %phi.cast = sub nuw nsw i8 32, %29
  %cond13.i = select i1 %cmp.i, i8 %phi.cast, i8 0
  %conv4 = sub nsw i8 18, %cond13.i
  %conv.i14 = zext i8 %cond13.i to i32
  %conv1.i = zext i8 %conv4 to i32
  %add.i15 = add nuw nsw i32 %conv1.i, %conv.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add.i15)
  %cmp.not.i = icmp eq i32 %add.i15, 18
  br i1 %cmp.not.i, label %if.end.i, label %mlx5e_rx_get_linear_frag_sz.exit.cleanup_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.cleanup_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %mlx5e_rx_get_linear_frag_sz.exit
  %30 = add nsw i8 %cond13.i, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %30)
  %31 = icmp ult i8 %30, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv4)
  %cmp12.i = icmp ugt i8 %conv4, 16
  %or.cond29.i = or i1 %31, %cmp12.i
  br i1 %or.cond29.i, label %if.end.i.cleanup_crit_edge, label %if.end15.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %32 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %33, i32 29
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool.not.i = icmp sgt i32 %35, -1
  br i1 %tobool.not.i, label %if.end20.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv4)
  %cmp18.i = icmp ugt i8 %conv4, 2
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv4)
  %cmp22.i = icmp ugt i8 %conv4, 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.then16.i, %if.end.i.cleanup_crit_edge, %mlx5e_rx_get_linear_frag_sz.exit.cleanup_crit_edge, %mlx5e_rx_is_linear_skb.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %mlx5e_rx_is_linear_skb.exit.cleanup_crit_edge ], [ %cmp18.i, %if.then16.i ], [ %cmp22.i, %if.end20.i ], [ false, %mlx5e_rx_get_linear_frag_sz.exit.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_mpwqe_get_log_rq_size(ptr nocapture noundef readonly %params, ptr noundef readonly %xsk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %7, null
  %..i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %5, %if.then.i.i.i.i ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  %add.i.i.i = add i32 %3, %1
  %conv.i.i.i = zext i16 %retval.0.i.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %8 = add i32 %add1.i.i.i, 383
  %add1.i.i = and i32 %8, -128
  %frag_sz.0.i.i = select i1 %tobool.not.i.i.i.i, i32 %add1.i.i, i32 %add1.i.i.i
  %xdp_prog.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %10, null
  %tobool1.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i = or i1 %tobool1.i.i.i, %tobool.not.i.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %spec.select.i.i.i, i32 %11, i32 %frag_sz.0.i.i
  br i1 %tobool.not.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.cond.false17.i_crit_edge, label %if.then6.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.cond.false17.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17.i

if.then6.i.i:                                     ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i, i32 %conv.i.i) #13
  br label %cond.false17.i

cond.false17.i:                                   ; preds = %if.then6.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.cond.false17.i_crit_edge
  %frag_sz.2.i.i = phi i32 [ %14, %if.then6.i.i ], [ %frag_sz.1.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.cond.false17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i)
  %cmp.i.i = icmp ugt i32 %frag_sz.2.i.i, 1
  %sub.i31.i = add i32 %frag_sz.2.i.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i, i1 true) #13, !range !42
  %16 = trunc i32 %15 to i8
  %phi.bo = add nsw i8 %16, -14
  %cond20.neg.i = select i1 %cmp.i.i, i8 %phi.bo, i8 18
  %log_rq_mtu_frames = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %log_rq_mtu_frames to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %log_rq_mtu_frames, align 2
  %conv = zext i8 %18 to i32
  %conv1 = zext i8 %cond20.neg.i to i32
  %add = add nuw nsw i32 %conv1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  %sub = sub i8 %18, %cond20.neg.i
  %retval.0 = select i1 %cmp, i8 2, i8 %sub
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_shampo_get_log_hd_entry_size(ptr nocapture readnone %mdev, ptr nocapture readnone %params) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_shampo_get_log_rsrv_size(ptr nocapture readnone %mdev, ptr nocapture readnone %params) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_shampo_get_log_pkt_per_rsrv(ptr nocapture readnone %mdev, ptr nocapture noundef readonly %params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_mtu = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu, align 4
  %sub = add i32 %1, 65535
  %div = udiv i32 %sub, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp.i = icmp ugt i32 %div, 1
  %sub.i87 = add i32 %div, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i87, i1 true) #13, !range !42
  %3 = trunc i32 %2 to i8
  %phi.cast = sub nuw nsw i8 32, %3
  %cond62 = select i1 %cmp.i, i8 %phi.cast, i8 0
  ret i8 %cond62
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_mpwqe_get_log_stride_size(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr noundef %xsk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk)
  br i1 %call, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  %sw_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i, align 4
  %hard_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %7, null
  %..i.i.i = select i1 %tobool.not.i.not.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i

mlx5e_rx_get_min_frag_sz.exit.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %5, %if.then.i.i.i ], [ %..i.i.i, %if.end.i.i.i ]
  %add.i.i = add i32 %3, %1
  %conv.i.i = zext i16 %retval.0.i.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %8 = add i32 %add1.i.i, 383
  %add1.i = and i32 %8, -128
  %frag_sz.0.i = select i1 %tobool.not.i.i.i, i32 %add1.i, i32 %add1.i.i
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %10, null
  %tobool1.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i = or i1 %tobool1.i.i, %tobool.not.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i, i32 4096) #13
  %frag_sz.1.i = select i1 %spec.select.i.i, i32 %11, i32 %frag_sz.0.i
  br i1 %tobool.not.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge, label %if.then6.i

mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit

if.then6.i:                                       ; preds = %mlx5e_rx_get_min_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i, i32 %conv.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit

mlx5e_rx_get_linear_frag_sz.exit:                 ; preds = %if.then6.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge
  %frag_sz.2.i = phi i32 [ %14, %if.then6.i ], [ %frag_sz.1.i, %mlx5e_rx_get_min_frag_sz.exit.i.mlx5e_rx_get_linear_frag_sz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i)
  %cmp.i = icmp ugt i32 %frag_sz.2.i, 1
  br i1 %cmp.i, label %cond.end9.i, label %mlx5e_rx_get_linear_frag_sz.exit.return_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.return_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

cond.end9.i:                                      ; preds = %mlx5e_rx_get_linear_frag_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %frag_sz.2.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #13, !range !42
  %16 = trunc i32 %15 to i8
  %phi.cast = sub nuw nsw i8 32, %16
  br label %return

return:                                           ; preds = %cond.end9.i, %mlx5e_rx_get_linear_frag_sz.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 8, %entry.return_crit_edge ], [ %phi.cast, %cond.end9.i ], [ 0, %mlx5e_rx_get_linear_frag_sz.exit.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_mpwqe_get_log_num_strides(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr noundef %xsk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk) #13
  br i1 %call.i, label %if.then.i, label %entry.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

entry.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

if.then.i:                                        ; preds = %entry
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %7, null
  %..i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %5, %if.then.i.i.i.i ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  %add.i.i.i = add i32 %3, %1
  %conv.i.i.i = zext i16 %retval.0.i.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %8 = add i32 %add1.i.i.i, 383
  %add1.i.i = and i32 %8, -128
  %frag_sz.0.i.i = select i1 %tobool.not.i.i.i.i, i32 %add1.i.i, i32 %add1.i.i.i
  %xdp_prog.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %9 = ptrtoint ptr %xdp_prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %10, null
  %tobool1.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i = or i1 %tobool1.i.i.i, %tobool.not.i.i.i
  %11 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %spec.select.i.i.i, i32 %11, i32 %frag_sz.0.i.i
  br i1 %tobool.not.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge, label %if.then6.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i

if.then6.i.i:                                     ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %12 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %chunk_size.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i, i32 %conv.i.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i

mlx5e_rx_get_linear_frag_sz.exit.i:               ; preds = %if.then6.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge
  %frag_sz.2.i.i = phi i32 [ %14, %if.then6.i.i ], [ %frag_sz.1.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i)
  %cmp.i.i = icmp ugt i32 %frag_sz.2.i.i, 1
  br i1 %cmp.i.i, label %cond.end9.i.i, label %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

cond.end9.i.i:                                    ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %frag_sz.2.i.i, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #13, !range !42
  %16 = trunc i32 %15 to i8
  %phi.bo = add nsw i8 %16, -14
  br label %mlx5e_mpwqe_get_log_stride_size.exit

mlx5e_mpwqe_get_log_stride_size.exit:             ; preds = %cond.end9.i.i, %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, %entry.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge
  %retval.0.i.neg = phi i8 [ 10, %entry.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ], [ %phi.bo, %cond.end9.i.i ], [ 18, %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ]
  ret i8 %retval.0.i.neg
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5e_get_rq_headroom(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr noundef %xsk) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rq_wq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %2 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %4 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_mtu.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

if.end.i.i.i.i:                                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %8 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %9, null
  %..i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %7, %if.then.i.i.i.i ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  %add.i.i.i = add i32 %5, %3
  %conv.i.i.i = zext i16 %retval.0.i.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %10 = add i32 %add1.i.i.i, 383
  %add1.i.i = and i32 %10, -128
  %frag_sz.0.i.i = select i1 %tobool.not.i.i.i.i, i32 %add1.i.i, i32 %add1.i.i.i
  %xdp_prog.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %11 = ptrtoint ptr %xdp_prog.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdp_prog.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %12, null
  %tobool1.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i = or i1 %tobool1.i.i.i, %tobool.not.i.i.i
  %13 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %spec.select.i.i.i, i32 %13, i32 %frag_sz.0.i.i
  br i1 %tobool.not.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge, label %if.then6.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_is_linear_skb.exit

if.then6.i.i:                                     ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %14 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chunk_size.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %16 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i, i32 %conv.i.i) #13
  br label %mlx5e_rx_is_linear_skb.exit

mlx5e_rx_is_linear_skb.exit:                      ; preds = %if.then6.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge
  %frag_sz.2.i.i = phi i32 [ %16, %if.then6.i.i ], [ %frag_sz.1.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_is_linear_skb.exit_crit_edge ]
  %tobool.not.i.not.i.i.i11.i = icmp eq ptr %12, null
  %conv.i.i16.i = select i1 %tobool.not.i.not.i.i.i11.i, i32 130, i32 258
  %add1.i.i17.i = add i32 %add.i.i.i, 383
  %17 = add i32 %add1.i.i17.i, %conv.i.i16.i
  %add1.i18.i = and i32 %17, -128
  %18 = tail call i32 @llvm.umax.i32(i32 %add1.i18.i, i32 4096) #13
  %frag_sz.1.i21.i = select i1 %tobool.not.i.i.i, i32 %18, i32 %add1.i18.i
  %19 = tail call i32 @llvm.umax.i32(i32 %frag_sz.2.i.i, i32 %frag_sz.1.i21.i) #13
  %packet_merge.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %20 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %packet_merge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.i = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %19)
  %cmp3.i = icmp ult i32 %19, 4097
  %22 = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  br i1 %22, label %mlx5e_rx_is_linear_skb.exit.cond.true9_crit_edge, label %mlx5e_rx_is_linear_skb.exit.lor.lhs.false_crit_edge

mlx5e_rx_is_linear_skb.exit.lor.lhs.false_crit_edge: ; preds = %mlx5e_rx_is_linear_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

mlx5e_rx_is_linear_skb.exit.cond.true9_crit_edge: ; preds = %mlx5e_rx_is_linear_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true9

cond.end:                                         ; preds = %entry
  %call3 = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk)
  br i1 %call3, label %cond.end.cond.true9_crit_edge, label %cond.end.lor.lhs.false_crit_edge

cond.end.lor.lhs.false_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

cond.end.cond.true9_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true9

lor.lhs.false:                                    ; preds = %cond.end.lor.lhs.false_crit_edge, %mlx5e_rx_is_linear_skb.exit.lor.lhs.false_crit_edge
  %packet_merge = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %23 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp7 = icmp eq i32 %24, 2
  br i1 %cmp7, label %lor.lhs.false.cond.true9_crit_edge, label %lor.lhs.false.cond.end13_crit_edge

lor.lhs.false.cond.end13_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end13

lor.lhs.false.cond.true9_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.true9

cond.true9:                                       ; preds = %lor.lhs.false.cond.true9_crit_edge, %cond.end.cond.true9_crit_edge, %mlx5e_rx_is_linear_skb.exit.cond.true9_crit_edge
  %tobool.not.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.true9
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %xsk, align 2
  br label %cond.end13

if.end.i:                                         ; preds = %cond.true9
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %27 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %28, null
  %..i = select i1 %tobool.not.i.not.i, i16 130, i16 258
  br label %cond.end13

cond.end13:                                       ; preds = %if.end.i, %if.then.i, %lor.lhs.false.cond.end13_crit_edge
  %cond14 = phi i16 [ 0, %lor.lhs.false.cond.end13_crit_edge ], [ %26, %if.then.i ], [ %..i, %if.end.i ]
  ret i16 %cond14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx5e_calc_sq_stop_room(ptr noundef %mdev, ptr noundef %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call = tail call zeroext i16 @mlx5e_tls_get_stop_room(ptr noundef %mdev, ptr noundef %params) #13
  %spec.select.v = select i1 %tobool.not, i16 31, i16 62
  %spec.select = add i16 %spec.select.v, %call
  ret i16 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5e_tls_get_stop_room(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_validate_params(ptr noundef %mdev, ptr noundef %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %params, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %2 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pflags.i, align 4
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call.i = tail call zeroext i16 @mlx5e_tls_get_stop_room(ptr noundef %mdev, ptr noundef %params) #13
  %spec.select.v.i = select i1 %tobool.not.i, i16 31, i16 62
  %spec.select.i = add i16 %spec.select.v.i, %call.i
  %conv1 = zext i16 %spec.select.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv1)
  %cmp.not = icmp ugt i32 %shl, %conv1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !32) #13
  %and.i10 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i10 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 218, i32 noundef %11, i32 noundef %conv1, i32 noundef %shl) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reset_tx_moderation(ptr nocapture noundef %params, i8 noundef zeroext %cq_period_mode) local_unnamed_addr #6 align 64 {
entry:
  %tmp = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dim_enabled = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 14
  %0 = ptrtoint ptr %tx_dim_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_dim_enabled, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cq_period_mode)
  %cmp.i = icmp eq i8 %cq_period_mode, 1
  %conv2.i = zext i1 %cmp.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #13
  call void @net_dim_get_def_tx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp, i8 noundef zeroext %conv2.i) #13
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tmp2.sroa.4.0.insert.ext = zext i8 %cq_period_mode to i64
  %tmp2.sroa.4.0.insert.shift = shl nuw nsw i64 %tmp2.sroa.4.0.insert.ext, 8
  %tmp2.sroa.0.0.insert.insert = or i64 %tmp2.sroa.4.0.insert.shift, 4503737066323968
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i64 [ %tmp2.sroa.0.0.insert.insert, %if.else ], [ %3, %if.then ]
  %4 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %.sink, ptr %4, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_tx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reset_rx_moderation(ptr nocapture noundef %params, i8 noundef zeroext %cq_period_mode) local_unnamed_addr #6 align 64 {
entry:
  %tmp = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dim_enabled = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 13
  %0 = ptrtoint ptr %rx_dim_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_dim_enabled, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cq_period_mode)
  %cmp.i6 = icmp eq i8 %cq_period_mode, 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i = zext i1 %cmp.i6 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #13
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp, i8 noundef zeroext %conv2.i) #13
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tmp2.sroa.57.0.insert.ext = zext i8 %cq_period_mode to i64
  %tmp2.sroa.57.0.insert.shift = shl nuw nsw i64 %tmp2.sroa.57.0.insert.ext, 8
  %tmp2.sroa.0.0.insert.ext = select i1 %cmp.i6, i64 844424930131968, i64 4503599627370496
  %tmp2.sroa.5.0.insert.insert = or i64 %tmp2.sroa.57.0.insert.shift, %tmp2.sroa.0.0.insert.ext
  %tmp2.sroa.0.0.insert.insert = or i64 %tmp2.sroa.5.0.insert.insert, 137438953472
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i64 [ %tmp2.sroa.0.0.insert.insert, %if.else ], [ %3, %if.then ]
  %4 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %.sink, ptr %4, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @net_dim_get_def_rx_moderation(ptr sret(%struct.dim_cq_moder) align 2, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_set_tx_cq_mode_params(ptr nocapture noundef %params, i8 noundef zeroext %cq_period_mode) local_unnamed_addr #6 align 64 {
entry:
  %tmp.i = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dim_enabled.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 14
  %0 = ptrtoint ptr %tx_dim_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_dim_enabled.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cq_period_mode)
  %cmp.i.i = icmp eq i8 %cq_period_mode, 1
  %conv2.i.i = zext i1 %cmp.i.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #13
  call void @net_dim_get_def_tx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp.i, i8 noundef zeroext %conv2.i.i) #13
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #13
  br label %mlx5e_reset_tx_moderation.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tmp2.sroa.4.0.insert.ext.i = zext i8 %cq_period_mode to i64
  %tmp2.sroa.4.0.insert.shift.i = shl nuw nsw i64 %tmp2.sroa.4.0.insert.ext.i, 8
  %tmp2.sroa.0.0.insert.insert.i = or i64 %tmp2.sroa.4.0.insert.shift.i, 4503737066323968
  br label %mlx5e_reset_tx_moderation.exit

mlx5e_reset_tx_moderation.exit:                   ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i64 [ %tmp2.sroa.0.0.insert.insert.i, %if.else.i ], [ %3, %if.then.i ]
  %4 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %.sink.i, ptr %4, align 2
  %6 = and i64 %.sink.i, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %6)
  %cmp = icmp eq i64 %6, 256
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %7 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pflags, align 4
  %and = and i32 %8, -3
  %masksel = select i1 %cmp, i32 2, i32 0
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %pflags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_set_rx_cq_mode_params(ptr nocapture noundef %params, i8 noundef zeroext %cq_period_mode) local_unnamed_addr #6 align 64 {
entry:
  %tmp.i = alloca %struct.dim_cq_moder, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dim_enabled.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 13
  %0 = ptrtoint ptr %rx_dim_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_dim_enabled.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cq_period_mode)
  %cmp.i6.i = icmp eq i8 %cq_period_mode, 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i.i = zext i1 %cmp.i6.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #13
  call void @net_dim_get_def_rx_moderation(ptr nonnull sret(%struct.dim_cq_moder) align 2 %tmp.i, i8 noundef zeroext %conv2.i.i) #13
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #13
  br label %mlx5e_reset_rx_moderation.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tmp2.sroa.57.0.insert.ext.i = zext i8 %cq_period_mode to i64
  %tmp2.sroa.57.0.insert.shift.i = shl nuw nsw i64 %tmp2.sroa.57.0.insert.ext.i, 8
  %tmp2.sroa.0.0.insert.ext.i = select i1 %cmp.i6.i, i64 844424930131968, i64 4503599627370496
  %tmp2.sroa.5.0.insert.insert.i = or i64 %tmp2.sroa.57.0.insert.shift.i, %tmp2.sroa.0.0.insert.ext.i
  %tmp2.sroa.0.0.insert.insert.i = or i64 %tmp2.sroa.5.0.insert.insert.i, 137438953472
  br label %mlx5e_reset_rx_moderation.exit

mlx5e_reset_rx_moderation.exit:                   ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i64 [ %tmp2.sroa.0.0.insert.insert.i, %if.else.i ], [ %3, %if.then.i ]
  %4 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %.sink.i, ptr %4, align 2
  %6 = and i64 %.sink.i, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %6)
  %cmp = icmp eq i64 %6, 256
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %7 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pflags, align 4
  %and = and i32 %8, -2
  %masksel = zext i1 %cmp to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %pflags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @slow_pci_heuristic(ptr noundef %mdev) local_unnamed_addr #6 align 64 {
entry:
  %link_speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed) #13
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %link_speed, align 4
  %call = call i32 @mlx5e_port_max_linkspeed(ptr noundef %mdev, ptr noundef nonnull %link_speed) #13
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 2
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %call1 = call i32 @pcie_bandwidth_available(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %.b18 = load i1, ptr @slow_pci_heuristic.__print_once, align 1
  br i1 %.b18, label %entry.do.end11_crit_edge, label %if.then

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @slow_pci_heuristic.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slow_pci_heuristic.__UNIQUE_ID_ddebug760, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slow_pci_heuristic, %if.then7)) #13
          to label %do.end11 [label %if.then7], !srcloc !44

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %5 = call i32 @llvm.read_register.i32(metadata !32) #13
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
  %11 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_speed, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slow_pci_heuristic.__UNIQUE_ID_ddebug760, ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 304, i32 noundef %10, i32 noundef %12, i32 noundef %call1) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %if.then, %entry.do.end11_crit_edge
  %13 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool13.not = icmp eq i32 %call1, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %do.end11.land.end_crit_edge, label %land.rhs

do.end11.land.end_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %call1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp = icmp ugt i32 %14, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end11.land.end_crit_edge
  %15 = phi i1 [ false, %do.end11.land.end_crit_edge ], [ %cmp, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed) #13
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_max_linkspeed(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_bandwidth_available(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_striding_rq_possible(ptr noundef %mdev, ptr nocapture noundef readonly %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef %mdev) #13
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %mdev) #13
  br i1 %call1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  %xdp_prog = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %0 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end3.if.end8_crit_edge, label %if.then4

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then4:                                         ; preds = %if.end3
  %call5 = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null)
  br i1 %call5, label %if.then4.if.end8_crit_edge, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %if.then4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end8 ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.then4.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_init_rq_type_params(ptr nocapture noundef readonly %mdev, ptr nocapture noundef %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %0 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %0)
  %cmp.i.not = icmp eq i64 %0, -1
  %conv = select i1 %cmp.i.not, i8 10, i8 4
  %log_rq_mtu_frames = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %1 = ptrtoint ptr %log_rq_mtu_frames to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %log_rq_mtu_frames, align 2
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rq_wq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sw_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %6 = ptrtoint ptr %sw_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sw_mtu.i.i.i.i, align 4
  %hard_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %8 = ptrtoint ptr %hard_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hard_mtu.i.i.i.i, align 4
  %xdp_prog.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %10 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xdp_prog.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i = icmp eq ptr %11, null
  %conv.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i, i32 130, i32 258
  %add.i.i.i.i = add i32 %7, 383
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %9
  %12 = add i32 %add1.i.i.i.i, %conv.i.i.i.i
  %add1.i.i.i = and i32 %12, -128
  %13 = tail call i32 @llvm.umax.i32(i32 %add1.i.i.i, i32 4096) #13
  %frag_sz.1.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i, i32 %add1.i.i.i, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_sz.1.i.i.i)
  %switch.i.i = icmp eq i32 %frag_sz.1.i.i.i, 0
  %sub.i31.i.i = add i32 %frag_sz.1.i.i.i, -1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i.i, i1 true) #13, !range !45
  %15 = trunc i32 %14 to i8
  %phi.bo = add nsw i8 %15, -14
  %cond20.neg.i.i = select i1 %switch.i.i, i8 18, i8 %phi.bo
  %conv.i = zext i8 %conv to i32
  %conv1.i = zext i8 %cond20.neg.i.i to i32
  %add.i = add nuw nsw i32 %conv1.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i24 = icmp ugt i32 %add.i, %conv.i
  %sub.i = sub nsw i8 %conv, %cond20.neg.i.i
  %retval.0.i = select i1 %cmp.i24, i8 2, i8 %sub.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %conv8.pn.in = phi i8 [ %retval.0.i, %cond.true ], [ %conv, %entry.cond.end_crit_edge ]
  %call.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null) #13
  br i1 %call.i, label %if.then.i, label %cond.end.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

cond.end.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

if.then.i:                                        ; preds = %cond.end
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %16 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %18 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hard_mtu.i.i.i, align 4
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %20 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %21, null
  %conv.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 130, i32 258
  %add.i.i.i = add i32 %17, 383
  %add1.i.i.i25 = add i32 %add.i.i.i, %19
  %22 = add i32 %add1.i.i.i25, %conv.i.i.i
  %add1.i.i = and i32 %22, -128
  %23 = tail call i32 @llvm.umax.i32(i32 %add1.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 %add1.i.i, i32 %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_sz.1.i.i)
  %cmp.i.i.not = icmp eq i32 %frag_sz.1.i.i, 0
  br i1 %cmp.i.i.not, label %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, label %cond.true.i.i27

if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

cond.true.i.i27:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i26 = add i32 %frag_sz.1.i.i, -1
  %24 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i26, i1 true) #13, !range !45
  %phi.cast.i = sub nuw nsw i32 32, %24
  br label %mlx5e_mpwqe_get_log_stride_size.exit

mlx5e_mpwqe_get_log_stride_size.exit:             ; preds = %cond.true.i.i27, %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, %cond.end.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge
  %retval.0.i31 = phi i32 [ 8, %cond.end.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ], [ %phi.cast.i, %cond.true.i.i27 ], [ 0, %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ]
  %conv2 = zext i1 %cmp to i32
  %conv8.pn = zext i8 %conv8.pn.in to i32
  %cond12 = shl nuw i32 1, %conv8.pn
  %shl15 = shl nuw i32 1, %retval.0.i31
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %25 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pflags, align 4
  %and = lshr i32 %26, 2
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %conv2, i32 noundef %cond12, i32 noundef %shl15, i32 noundef %and.lobit) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_set_rq_type(ptr noundef %mdev, ptr nocapture noundef %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef %mdev) #13
  br i1 %call.i, label %if.end.i, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %mdev) #13
  br i1 %call1.i, label %if.end.i.land.end_crit_edge, label %if.end3.i

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

if.end3.i:                                        ; preds = %if.end.i
  %xdp_prog.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %0 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end3.i.land.rhs_crit_edge, label %if.then4.i

if.end3.i.land.rhs_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then4.i:                                       ; preds = %if.end3.i
  %call5.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null) #13
  br i1 %call5.i, label %if.then4.i.land.rhs_crit_edge, label %if.then4.i.land.end_crit_edge

if.then4.i.land.end_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

if.then4.i.land.rhs_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %if.then4.i.land.rhs_crit_edge, %if.end3.i.land.rhs_crit_edge
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %2 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pflags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %phi.cast = select i1 %tobool.not, i8 1, i8 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then4.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %4 = phi i8 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %if.end.i.land.end_crit_edge ], [ 1, %if.then4.i.land.end_crit_edge ]
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %rq_wq_type, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_build_rq_params(ptr noundef %mdev, ptr nocapture noundef %params) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @slow_pci_heuristic(ptr noundef %mdev)
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i = tail call zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef %mdev) #13
  br i1 %call.i, label %if.end.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %call1.i = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %mdev) #13
  br i1 %call1.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %xdp_prog.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %0 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end3.i.land.lhs.true2_crit_edge, label %if.then4.i

if.end3.i.land.lhs.true2_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true2

if.then4.i:                                       ; preds = %if.end3.i
  %call5.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null) #13
  br i1 %call5.i, label %if.then4.i.land.lhs.true2_crit_edge, label %if.then4.i.if.end_crit_edge

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4.i.land.lhs.true2_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.then4.i.land.lhs.true2_crit_edge, %if.end3.i.land.lhs.true2_crit_edge
  %call3 = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null)
  br i1 %call3, label %land.lhs.true2.do.body_crit_edge, label %lor.lhs.false

land.lhs.true2.do.body_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %sw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %2 = ptrtoint ptr %sw_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_mtu.i.i.i, align 4
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %4 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_mtu.i.i.i, align 4
  %6 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xdp_prog.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %7, null
  %add.i.i.i = add i32 %5, %3
  %conv.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 130, i32 258
  %add1.i.i.i = add i32 %add.i.i.i, 383
  %8 = add i32 %add1.i.i.i, %conv.i.i.i
  %add1.i.i = and i32 %8, -128
  %9 = tail call i32 @llvm.umax.i32(i32 %add1.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 %add1.i.i, i32 %9
  %packet_merge.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %10 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_merge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %frag_sz.1.i.i)
  %cmp3.i = icmp ult i32 %frag_sz.1.i.i, 4097
  %12 = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  br i1 %12, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true2.do.body_crit_edge
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %13 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pflags, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %pflags, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %lor.lhs.false.if.end_crit_edge, %if.then4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef %mdev) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.mlx5e_set_rq_type.exit_crit_edge

if.end.mlx5e_set_rq_type.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_set_rq_type.exit

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %mdev) #13
  br i1 %call1.i.i, label %if.end.i.i.mlx5e_set_rq_type.exit_crit_edge, label %if.end3.i.i

if.end.i.i.mlx5e_set_rq_type.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_set_rq_type.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %xdp_prog.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %15 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end3.i.i.land.rhs.i_crit_edge, label %if.then4.i.i

if.end3.i.i.land.rhs.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.then4.i.i:                                     ; preds = %if.end3.i.i
  %call5.i.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null) #13
  br i1 %call5.i.i, label %if.then4.i.i.land.rhs.i_crit_edge, label %if.then4.i.i.mlx5e_set_rq_type.exit_crit_edge

if.then4.i.i.mlx5e_set_rq_type.exit_crit_edge:    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_set_rq_type.exit

if.then4.i.i.land.rhs.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then4.i.i.land.rhs.i_crit_edge, %if.end3.i.i.land.rhs.i_crit_edge
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %17 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pflags.i, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  %phi.cast.i = select i1 %tobool.not.i14, i8 1, i8 2
  br label %mlx5e_set_rq_type.exit

mlx5e_set_rq_type.exit:                           ; preds = %land.rhs.i, %if.then4.i.i.mlx5e_set_rq_type.exit_crit_edge, %if.end.i.i.mlx5e_set_rq_type.exit_crit_edge, %if.end.mlx5e_set_rq_type.exit_crit_edge
  %19 = phi i8 [ %phi.cast.i, %land.rhs.i ], [ 1, %if.end.mlx5e_set_rq_type.exit_crit_edge ], [ 1, %if.end.i.i.mlx5e_set_rq_type.exit_crit_edge ], [ 1, %if.then4.i.i.mlx5e_set_rq_type.exit_crit_edge ]
  %rq_wq_type.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %rq_wq_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rq_wq_type.i, align 1
  tail call void @mlx5e_init_rq_type_params(ptr noundef %mdev, ptr noundef %params)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_create_cq_param(ptr nocapture noundef writeonly %ccp, ptr noundef %c) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %napi1 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 6
  %stats = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 20
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 16
  %ix2 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 25
  %2 = ptrtoint ptr %ix2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ix2, align 4
  %4 = ptrtoint ptr %ccp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %napi1, ptr %ccp, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %ccp, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %ccp, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %ccp, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_build_rq_param(ptr noundef %mdev, ptr noundef readonly %params, ptr noundef %xsk, i16 noundef zeroext %q_counter, ptr nocapture noundef %param) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rqc1 = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1
  %add.ptr = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 12
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rq_wq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cond = icmp eq i8 %1, 2
  br i1 %cond, label %sw.bb, label %do.body154

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk) #13
  br i1 %call.i.i, label %if.then.i.i, label %sw.bb.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

sw.bb.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

if.then.i.i:                                      ; preds = %sw.bb
  %sw_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %2 = ptrtoint ptr %sw_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sw_mtu.i.i.i.i, align 4
  %hard_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %4 = ptrtoint ptr %hard_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_mtu.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %8 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xdp_prog.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i = icmp eq ptr %9, null
  %..i.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i:              ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i16 [ %7, %if.then.i.i.i.i.i ], [ %..i.i.i.i.i, %if.end.i.i.i.i.i ]
  %add.i.i.i.i = add i32 %5, %3
  %conv.i.i.i.i = zext i16 %retval.0.i.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %10 = add i32 %add1.i.i.i.i, 383
  %add1.i.i.i = and i32 %10, -128
  %frag_sz.0.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add1.i.i.i, i32 %add1.i.i.i.i
  %xdp_prog.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %11 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp ne ptr %12, null
  %tobool1.i.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i = or i1 %tobool1.i.i.i.i, %tobool.not.i.i.i.i
  %13 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i, i32 4096) #13
  %frag_sz.1.i.i.i = select i1 %spec.select.i.i.i.i, i32 %13, i32 %frag_sz.0.i.i.i
  br i1 %tobool.not.i.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i_crit_edge, label %if.then6.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i

if.then6.i.i.i:                                   ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %14 = ptrtoint ptr %chunk_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chunk_size.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %16 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i, i32 %conv.i.i.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i

mlx5e_rx_get_linear_frag_sz.exit.i.i:             ; preds = %if.then6.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i_crit_edge
  %frag_sz.2.i.i.i = phi i32 [ %16, %if.then6.i.i.i ], [ %frag_sz.1.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %frag_sz.2.i.i.i, 1
  %sub.i.i.i = add i32 %frag_sz.2.i.i.i, -1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #13, !range !42
  %18 = trunc i32 %17 to i8
  %phi.bo.i = add nsw i8 %18, -14
  %retval.0.i.neg.i.ph = select i1 %cmp.i.i.i, i8 %phi.bo.i, i8 18
  %19 = ptrtoint ptr %sw_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sw_mtu.i.i.i.i, align 4
  %21 = ptrtoint ptr %hard_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hard_mtu.i.i.i.i, align 4
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

if.end.i.i.i.i:                                   ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %26, null
  %..i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %24, %if.then.i.i.i.i ], [ %..i.i.i.i, %if.end.i.i.i.i ]
  %add.i.i.i = add i32 %22, %20
  %conv.i.i.i357 = zext i16 %retval.0.i.i.i.i to i32
  %add1.i.i.i358 = add i32 %add.i.i.i, %conv.i.i.i357
  %27 = add i32 %add1.i.i.i358, 383
  %add1.i.i = and i32 %27, -128
  %frag_sz.0.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %add1.i.i, i32 %add1.i.i.i358
  %28 = ptrtoint ptr %xdp_prog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xdp_prog.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %29, null
  %spec.select.i.i.i = or i1 %tobool1.i.i.i.i, %tobool.not.i.i.i
  %30 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %spec.select.i.i.i, i32 %30, i32 %frag_sz.0.i.i
  br i1 %tobool.not.i.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge, label %if.then6.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i

if.then6.i.i:                                     ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %31 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %chunk_size.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %33 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i, i32 %conv.i.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i

mlx5e_rx_get_linear_frag_sz.exit.i:               ; preds = %if.then6.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge
  %frag_sz.2.i.i = phi i32 [ %33, %if.then6.i.i ], [ %frag_sz.1.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.mlx5e_rx_get_linear_frag_sz.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i)
  %cmp.i.i = icmp ugt i32 %frag_sz.2.i.i, 1
  br i1 %cmp.i.i, label %cond.end9.i.i, label %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

cond.end9.i.i:                                    ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %frag_sz.2.i.i, -1
  %34 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #13, !range !42
  %35 = trunc i32 %34 to i8
  %phi.cast.i = sub nuw nsw i8 32, %35
  br label %mlx5e_mpwqe_get_log_stride_size.exit

mlx5e_mpwqe_get_log_stride_size.exit:             ; preds = %cond.end9.i.i, %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, %sw.bb.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge
  %retval.0.i.neg.i527 = phi i8 [ %retval.0.i.neg.i.ph, %cond.end9.i.i ], [ %retval.0.i.neg.i.ph, %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ], [ 10, %sw.bb.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ]
  %retval.0.i = phi i8 [ %phi.cast.i, %cond.end9.i.i ], [ 0, %mlx5e_rx_get_linear_frag_sz.exit.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ], [ 8, %sw.bb.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ]
  %conv.i = zext i8 %retval.0.i to i32
  %conv1.i = zext i8 %retval.0.i.neg.i527 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %add.i)
  %cmp.not.i = icmp eq i32 %add.i, 18
  br i1 %cmp.not.i, label %if.end.i, label %mlx5e_mpwqe_get_log_stride_size.exit.do.end_crit_edge

mlx5e_mpwqe_get_log_stride_size.exit.do.end_crit_edge: ; preds = %mlx5e_mpwqe_get_log_stride_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %mlx5e_mpwqe_get_log_stride_size.exit
  %36 = add nsw i8 %retval.0.i, -14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %36)
  %37 = icmp ult i8 %36, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %retval.0.i.neg.i527)
  %cmp12.i = icmp ugt i8 %retval.0.i.neg.i527, 16
  %or.cond29.i = or i1 %cmp12.i, %37
  br i1 %or.cond29.i, label %if.end.i.do.end_crit_edge, label %if.end15.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end15.i:                                       ; preds = %if.end.i
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %38 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %39, i32 29
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool.not.i = icmp sgt i32 %41, -1
  br i1 %tobool.not.i, label %mlx5e_verify_rx_mpwqe_strides.exit, label %if.then16.i

if.then16.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %retval.0.i.neg.i527)
  %cmp18.i = icmp ugt i8 %retval.0.i.neg.i527, 2
  br i1 %cmp18.i, label %if.then16.i.do.body7_crit_edge, label %if.then16.i.do.end_crit_edge

if.then16.i.do.end_crit_edge:                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then16.i.do.body7_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

mlx5e_verify_rx_mpwqe_strides.exit:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retval.0.i.neg.i527)
  %cmp22.i = icmp ugt i8 %retval.0.i.neg.i527, 8
  br i1 %cmp22.i, label %mlx5e_verify_rx_mpwqe_strides.exit.do.body7_crit_edge, label %mlx5e_verify_rx_mpwqe_strides.exit.do.end_crit_edge

mlx5e_verify_rx_mpwqe_strides.exit.do.end_crit_edge: ; preds = %mlx5e_verify_rx_mpwqe_strides.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

mlx5e_verify_rx_mpwqe_strides.exit.do.body7_crit_edge: ; preds = %mlx5e_verify_rx_mpwqe_strides.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

do.end:                                           ; preds = %mlx5e_verify_rx_mpwqe_strides.exit.do.end_crit_edge, %if.then16.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %mlx5e_mpwqe_get_log_stride_size.exit.do.end_crit_edge
  %42 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdev, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !32) #13
  %and.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 546, i32 noundef %49, i32 noundef %conv.i, i32 noundef %conv1.i) #16
  br label %cleanup275

do.body7:                                         ; preds = %mlx5e_verify_rx_mpwqe_strides.exit.do.body7_crit_edge, %if.then16.i.do.body7_crit_edge
  %add.ptr12 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 21
  %50 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr12, align 4
  %and = and i32 %51, -3848
  %52 = add nuw nsw i8 %retval.0.i.neg.i527, 7
  %53 = and i8 %52, 15
  %and13 = zext i8 %53 to i32
  %shl = shl nuw nsw i32 %and13, 8
  %or = or i32 %and, %shl
  %54 = add nuw nsw i8 %retval.0.i, 2
  %55 = and i8 %54, 7
  %and26 = zext i8 %55 to i32
  %or28 = or i32 %or, %and26
  store i32 %or28, ptr %add.ptr12, align 4
  %sw_mtu.i.i.i.i360 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %56 = ptrtoint ptr %sw_mtu.i.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sw_mtu.i.i.i.i360, align 4
  %hard_mtu.i.i.i.i361 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %58 = ptrtoint ptr %hard_mtu.i.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hard_mtu.i.i.i.i361, align 4
  %tobool.not.i.i.i.i.i362 = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i362, label %if.end.i.i.i.i.i367, label %if.then.i.i.i.i.i363

if.then.i.i.i.i.i363:                             ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i379

if.end.i.i.i.i.i367:                              ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i364 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %62 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xdp_prog.i.i.i.i.i.i364, align 4
  %tobool.not.i.not.i.i.i.i.i365 = icmp eq ptr %63, null
  %..i.i.i.i.i366 = select i1 %tobool.not.i.not.i.i.i.i.i365, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i379

mlx5e_rx_get_min_frag_sz.exit.i.i.i379:           ; preds = %if.end.i.i.i.i.i367, %if.then.i.i.i.i.i363
  %retval.0.i.i.i.i.i368 = phi i16 [ %61, %if.then.i.i.i.i.i363 ], [ %..i.i.i.i.i366, %if.end.i.i.i.i.i367 ]
  %add.i.i.i.i369 = add i32 %59, %57
  %conv.i.i.i.i370 = zext i16 %retval.0.i.i.i.i.i368 to i32
  %add1.i.i.i.i371 = add i32 %add.i.i.i.i369, %conv.i.i.i.i370
  %64 = add i32 %add1.i.i.i.i371, 383
  %add1.i.i.i372 = and i32 %64, -128
  %frag_sz.0.i.i.i373 = select i1 %tobool.not.i.i.i.i.i362, i32 %add1.i.i.i372, i32 %add1.i.i.i.i371
  %xdp_prog.i.i.i.i374 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %65 = ptrtoint ptr %xdp_prog.i.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xdp_prog.i.i.i.i374, align 4
  %tobool.not.i.i.i.i375 = icmp ne ptr %66, null
  %tobool1.i.i.i.i376 = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i377 = or i1 %tobool1.i.i.i.i376, %tobool.not.i.i.i.i375
  %67 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i373, i32 4096) #13
  %frag_sz.1.i.i.i378 = select i1 %spec.select.i.i.i.i377, i32 %67, i32 %frag_sz.0.i.i.i373
  br i1 %tobool.not.i.i.i.i.i362, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i379.cond.false17.i.i_crit_edge, label %if.then6.i.i.i382

mlx5e_rx_get_min_frag_sz.exit.i.i.i379.cond.false17.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i379
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17.i.i

if.then6.i.i.i382:                                ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i379
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i380 = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %68 = ptrtoint ptr %chunk_size.i.i.i380 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %chunk_size.i.i.i380, align 2
  %conv.i.i.i381 = zext i16 %69 to i32
  %70 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i378, i32 %conv.i.i.i381) #13
  br label %cond.false17.i.i

cond.false17.i.i:                                 ; preds = %if.then6.i.i.i382, %mlx5e_rx_get_min_frag_sz.exit.i.i.i379.cond.false17.i.i_crit_edge
  %frag_sz.2.i.i.i383 = phi i32 [ %70, %if.then6.i.i.i382 ], [ %frag_sz.1.i.i.i378, %mlx5e_rx_get_min_frag_sz.exit.i.i.i379.cond.false17.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i383)
  %cmp.i.i.i390 = icmp ugt i32 %frag_sz.2.i.i.i383, 1
  %sub.i31.i.i = add i32 %frag_sz.2.i.i.i383, -1
  %71 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i.i, i1 true) #13, !range !42
  %72 = trunc i32 %71 to i8
  %.op = add nsw i8 %72, -14
  %conv22.i.i = select i1 %cmp.i.i.i390, i8 %.op, i8 18
  %log_rq_mtu_frames.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %73 = ptrtoint ptr %log_rq_mtu_frames.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %log_rq_mtu_frames.i, align 2
  %conv.i397 = zext i8 %74 to i32
  %conv1.i398 = zext i8 %conv22.i.i to i32
  %add.i399 = add nuw nsw i32 %conv1.i398, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i399, i32 %conv.i397)
  %cmp.i = icmp ugt i32 %add.i399, %conv.i397
  %sub.i = sub i8 %74, %conv22.i.i
  %add.ptr39 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 20
  %75 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr39, align 4
  %and40 = and i32 %76, -32
  %sub.i.op = and i8 %sub.i, 31
  %77 = zext i8 %sub.i.op to i32
  %and41 = select i1 %cmp.i, i32 2, i32 %77
  %or43 = or i32 %and41, %and40
  store i32 %or43, ptr %add.ptr39, align 4
  %packet_merge = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %78 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp = icmp eq i32 %79, 2
  br i1 %cmp, label %do.body49, label %cond.false17.i.i.do.body170_crit_edge

cond.false17.i.i.do.body170_crit_edge:            ; preds = %cond.false17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body170

do.body49:                                        ; preds = %cond.false17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr54 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 27
  %80 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr54, align 4
  %or58 = and i32 %81, 2030043135
  %or73 = or i32 %or58, -2080374784
  store i32 %or73, ptr %add.ptr54, align 4
  %82 = ptrtoint ptr %sw_mtu.i.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sw_mtu.i.i.i.i360, align 4
  %sub.i401 = add i32 %83, 65535
  %div.i = udiv i32 %sub.i401, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp.i.i403 = icmp ugt i32 %div.i, 1
  %sub.i87.i = add i32 %div.i, -1
  %84 = tail call i32 @llvm.ctlz.i32(i32 %sub.i87.i, i1 true) #13, !range !42
  %and85 = and i32 %or73, -50791169
  %.neg539 = mul nuw nsw i32 %84, 458752
  %.neg539.op = and i32 %.neg539, 458752
  %shl87 = select i1 %cmp.i.i403, i32 %.neg539.op, i32 0
  %or88 = or i32 %and85, %shl87
  %or103 = or i32 %or88, 512
  %85 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or103, ptr %add.ptr54, align 4
  %timeout = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9, i32 1
  %86 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %timeout, align 4
  %add.ptr113 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 9
  %88 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr113, align 4
  %and114 = and i32 %89, -65536
  %and115 = and i32 %87, 65535
  %or117 = or i32 %and114, %and115
  store i32 %or117, ptr %add.ptr113, align 4
  %shampo = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9, i32 2
  %90 = ptrtoint ptr %shampo to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %shampo, align 4
  %and129 = and i32 %or117, -196609
  %92 = and i8 %91, 3
  %and130 = zext i8 %92 to i32
  %shl131 = shl nuw nsw i32 %and130, 16
  %or132 = or i32 %shl131, %and129
  store i32 %or132, ptr %add.ptr113, align 4
  %alignment_granularity = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9, i32 2, i32 1
  %93 = ptrtoint ptr %alignment_granularity to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %alignment_granularity, align 1
  %and145 = and i32 %or132, -50331649
  %95 = and i8 %94, 3
  %and146 = zext i8 %95 to i32
  %shl147 = shl nuw nsw i32 %and146, 24
  %or148 = or i32 %and145, %shl147
  store i32 %or148, ptr %add.ptr113, align 4
  br label %do.body170

do.body154:                                       ; preds = %entry
  %log_rq_mtu_frames = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %96 = ptrtoint ptr %log_rq_mtu_frames to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %log_rq_mtu_frames, align 2
  %add.ptr160 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 20
  %98 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr160, align 4
  %and161 = and i32 %99, -32
  %100 = and i8 %97, 31
  %and162 = zext i8 %100 to i32
  %or164 = or i32 %and161, %and162
  store i32 %or164, ptr %add.ptr160, align 4
  %frags_info = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3
  %sw_mtu.i413 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %101 = ptrtoint ptr %sw_mtu.i413 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sw_mtu.i413, align 4
  %hard_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %103 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hard_mtu.i, align 4
  %add.i414 = add i32 %104, %102
  %call.i415 = tail call zeroext i1 @mlx5_fpga_is_ipsec_device(ptr noundef %mdev) #13
  %add1.i = add i32 %add.i414, 8
  %spec.select.i = select i1 %call.i415, i32 %add1.i, i32 %add.i414
  %105 = ptrtoint ptr %sw_mtu.i413 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sw_mtu.i413, align 4
  %107 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hard_mtu.i, align 4
  %tobool.not.i.i.i.i.i416 = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i416, label %if.end.i.i.i.i.i421, label %if.then.i.i.i.i.i417

if.then.i.i.i.i.i417:                             ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i433

if.end.i.i.i.i.i421:                              ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i418 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %111 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i418 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xdp_prog.i.i.i.i.i.i418, align 4
  %tobool.not.i.not.i.i.i.i.i419 = icmp eq ptr %112, null
  %..i.i.i.i.i420 = select i1 %tobool.not.i.not.i.i.i.i.i419, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i433

mlx5e_rx_get_min_frag_sz.exit.i.i.i433:           ; preds = %if.end.i.i.i.i.i421, %if.then.i.i.i.i.i417
  %retval.0.i.i.i.i.i422 = phi i16 [ %110, %if.then.i.i.i.i.i417 ], [ %..i.i.i.i.i420, %if.end.i.i.i.i.i421 ]
  %add.i.i.i.i423 = add i32 %108, %106
  %conv.i.i.i.i424 = zext i16 %retval.0.i.i.i.i.i422 to i32
  %add1.i.i.i.i425 = add i32 %add.i.i.i.i423, %conv.i.i.i.i424
  %113 = add i32 %add1.i.i.i.i425, 383
  %add1.i.i.i426 = and i32 %113, -128
  %frag_sz.0.i.i.i427 = select i1 %tobool.not.i.i.i.i.i416, i32 %add1.i.i.i426, i32 %add1.i.i.i.i425
  %xdp_prog.i.i.i.i428 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %114 = ptrtoint ptr %xdp_prog.i.i.i.i428 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xdp_prog.i.i.i.i428, align 4
  %tobool.not.i.i.i.i429 = icmp ne ptr %115, null
  %tobool1.i.i.i.i430 = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i431 = or i1 %tobool1.i.i.i.i430, %tobool.not.i.i.i.i429
  %116 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i427, i32 4096) #13
  %frag_sz.1.i.i.i432 = select i1 %spec.select.i.i.i.i431, i32 %116, i32 %frag_sz.0.i.i.i427
  br i1 %tobool.not.i.i.i.i.i416, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i433.mlx5e_rx_is_linear_skb.exit.i_crit_edge, label %if.then6.i.i.i436

mlx5e_rx_get_min_frag_sz.exit.i.i.i433.mlx5e_rx_is_linear_skb.exit.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_is_linear_skb.exit.i

if.then6.i.i.i436:                                ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i434 = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %117 = ptrtoint ptr %chunk_size.i.i.i434 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %chunk_size.i.i.i434, align 2
  %conv.i.i.i435 = zext i16 %118 to i32
  %119 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i432, i32 %conv.i.i.i435) #13
  br label %mlx5e_rx_is_linear_skb.exit.i

mlx5e_rx_is_linear_skb.exit.i:                    ; preds = %if.then6.i.i.i436, %mlx5e_rx_get_min_frag_sz.exit.i.i.i433.mlx5e_rx_is_linear_skb.exit.i_crit_edge
  %frag_sz.2.i.i.i437 = phi i32 [ %119, %if.then6.i.i.i436 ], [ %frag_sz.1.i.i.i432, %mlx5e_rx_get_min_frag_sz.exit.i.i.i433.mlx5e_rx_is_linear_skb.exit.i_crit_edge ]
  %tobool.not.i.not.i.i.i11.i.i = icmp eq ptr %115, null
  %conv.i.i16.i.i = select i1 %tobool.not.i.not.i.i.i11.i.i, i32 130, i32 258
  %add1.i.i17.i.i = add i32 %add.i.i.i.i423, 383
  %120 = add i32 %add1.i.i17.i.i, %conv.i.i16.i.i
  %add1.i18.i.i = and i32 %120, -128
  %121 = tail call i32 @llvm.umax.i32(i32 %add1.i18.i.i, i32 4096) #13
  %frag_sz.1.i21.i.i = select i1 %tobool.not.i.i.i.i429, i32 %121, i32 %add1.i18.i.i
  %122 = tail call i32 @llvm.umax.i32(i32 %frag_sz.2.i.i.i437, i32 %frag_sz.1.i21.i.i) #13
  %packet_merge.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %123 = ptrtoint ptr %packet_merge.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %packet_merge.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp2.i.i = icmp eq i32 %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %122)
  %cmp3.i.i438 = icmp ult i32 %122, 4097
  %125 = select i1 %cmp2.i.i, i1 %cmp3.i.i438, i1 false
  br i1 %125, label %if.then3.i, label %if.end29.i

if.then3.i:                                       ; preds = %mlx5e_rx_is_linear_skb.exit.i
  br i1 %tobool.not.i.i.i.i.i416, label %if.end.i.i.i.i441, label %if.then.i.i.i.i439

if.then.i.i.i.i439:                               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i446

if.end.i.i.i.i441:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %..i.i.i.i440 = select i1 %tobool.not.i.not.i.i.i11.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i446

mlx5e_rx_get_min_frag_sz.exit.i.i446:             ; preds = %if.end.i.i.i.i441, %if.then.i.i.i.i439
  %retval.0.i.i.i.i442 = phi i16 [ %127, %if.then.i.i.i.i439 ], [ %..i.i.i.i440, %if.end.i.i.i.i441 ]
  %conv.i.i212.i = zext i16 %retval.0.i.i.i.i442 to i32
  %add1.i.i213.i = add i32 %add.i.i.i.i423, %conv.i.i212.i
  %128 = add i32 %add1.i.i213.i, 383
  %add1.i.i443 = and i32 %128, -128
  %frag_sz.0.i.i444 = select i1 %tobool.not.i.i.i.i.i416, i32 %add1.i.i443, i32 %add1.i.i213.i
  %129 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i444, i32 4096) #13
  %frag_sz.1.i.i445 = select i1 %spec.select.i.i.i.i431, i32 %129, i32 %frag_sz.0.i.i444
  br i1 %tobool.not.i.i.i.i.i416, label %mlx5e_rx_get_min_frag_sz.exit.i.i446.cond.end23.i_crit_edge, label %if.then6.i.i449

mlx5e_rx_get_min_frag_sz.exit.i.i446.cond.end23.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i446
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end23.i

if.then6.i.i449:                                  ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i446
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i447 = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %130 = ptrtoint ptr %chunk_size.i.i447 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %chunk_size.i.i447, align 2
  %conv.i.i448 = zext i16 %131 to i32
  %132 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i445, i32 %conv.i.i448) #13
  br label %cond.end23.i

cond.end23.i:                                     ; preds = %if.then6.i.i449, %mlx5e_rx_get_min_frag_sz.exit.i.i446.cond.end23.i_crit_edge
  %frag_sz.2.i.i450 = phi i32 [ %132, %if.then6.i.i449 ], [ %frag_sz.1.i.i445, %mlx5e_rx_get_min_frag_sz.exit.i.i446.cond.end23.i_crit_edge ]
  %sub.i215.i = add i32 %frag_sz.2.i.i450, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i215.i)
  %tobool.not.i.i.i216.i = icmp eq i32 %sub.i215.i, 0
  %133 = tail call i32 @llvm.ctlz.i32(i32 %sub.i215.i, i1 true) #13, !range !42
  %sub.i.i.i.i = sub nuw nsw i32 32, %133
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i216.i, i32 1, i32 %sub.i.i.op.i.i
  %134 = ptrtoint ptr %frags_info to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %spec.select.i, ptr %frags_info, align 4
  %frag_stride27.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 0, i32 0, i32 1
  %135 = ptrtoint ptr %frag_stride27.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %shl.i.i, ptr %frag_stride27.i, align 4
  %num_frags.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %num_frags.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %num_frags.i, align 4
  %sub.i.i.i.i.op = lshr i32 4096, %sub.i.i.i.i
  %137 = trunc i32 %sub.i.i.i.i.op to i8
  %conv28.i = select i1 %tobool.not.i.i.i216.i, i8 0, i8 %137
  br label %out.i

if.end29.i:                                       ; preds = %mlx5e_rx_is_linear_skb.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %spec.select.i)
  %cmp31.i = icmp ugt i32 %spec.select.i, 10240
  %spec.store.select.i = select i1 %cmp31.i, i32 4096, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp35232.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp35232.not.i, label %if.end29.i.while.end.i_crit_edge, label %if.end29.i.while.body.i_crit_edge

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  br label %while.body.i

if.end29.i.while.end.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end29.i.while.body.i_crit_edge
  %buf_size.0234.i = phi i32 [ %add86.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end29.i.while.body.i_crit_edge ]
  %i.0233.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end29.i.while.body.i_crit_edge ]
  %sub38.i = sub i32 %spec.select.i, %buf_size.0234.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0233.i)
  %cmp39.i = icmp slt i32 %i.0233.i, 3
  %138 = tail call i32 @llvm.smin.i32(i32 %sub38.i, i32 %spec.store.select.i) #13
  %frag_size37.0.i = select i1 %cmp39.i, i32 %138, i32 %sub38.i
  %arrayidx50.i = getelementptr [4 x %struct.mlx5e_rq_frag_info], ptr %frags_info, i32 0, i32 %i.0233.i
  %139 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %frag_size37.0.i, ptr %arrayidx50.i, align 4
  %sub.i220.i = add i32 %frag_size37.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i220.i)
  %tobool.not.i.i.i221.i = icmp eq i32 %sub.i220.i, 0
  %140 = tail call i32 @llvm.ctlz.i32(i32 %sub.i220.i, i1 true) #13, !range !42
  %sub.i.i.i222.i = sub nuw nsw i32 32, %140
  %sub.i.i.op.i223.i = shl nuw i32 1, %sub.i.i.i222.i
  %shl.i224.i = select i1 %tobool.not.i.i.i221.i, i32 1, i32 %sub.i.i.op.i223.i
  %frag_stride85.i = getelementptr [4 x %struct.mlx5e_rq_frag_info], ptr %frags_info, i32 0, i32 %i.0233.i, i32 1
  %141 = ptrtoint ptr %frag_stride85.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl.i224.i, ptr %frag_stride85.i, align 4
  %add86.i = add i32 %frag_size37.0.i, %buf_size.0234.i
  %inc.i = add i32 %i.0233.i, 1
  %cmp35.i = icmp ugt i32 %spec.select.i, %add86.i
  br i1 %cmp35.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i458 = trunc i32 %inc.i to i8
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %if.end29.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.end29.i.while.end.i_crit_edge ], [ %phi.cast.i458, %while.end.loopexit.i ]
  %num_frags88.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %num_frags88.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %i.0.lcssa.i, ptr %num_frags88.i, align 4
  %143 = and i8 %i.0.lcssa.i, 1
  %conv92.i = add nuw nsw i8 %143, 1
  br label %out.i

out.i:                                            ; preds = %while.end.i, %cond.end23.i
  %conv28.sink.i = phi i8 [ %conv28.i, %cond.end23.i ], [ %conv92.i, %while.end.i ]
  %wqe_bulk94.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 3
  %144 = tail call i8 @llvm.umax.i8(i8 %conv28.sink.i, i8 8) #13
  %145 = ptrtoint ptr %wqe_bulk94.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %wqe_bulk94.i, align 2
  %num_frags108.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 1
  %146 = ptrtoint ptr %num_frags108.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %num_frags108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %147)
  %cmp.i.i459 = icmp ugt i8 %147, 1
  %conv151.i = zext i8 %147 to i32
  %sub.i228.i = add nsw i32 %conv151.i, -1
  %148 = tail call i32 @llvm.ctlz.i32(i32 %sub.i228.i, i1 true) #13, !range !42
  %149 = trunc i32 %148 to i8
  %150 = sub nuw nsw i8 32, %149
  %conv155.i = select i1 %cmp.i.i459, i8 %150, i8 0
  %log_num_frags.i = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 3, i32 2
  %151 = ptrtoint ptr %log_num_frags.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv155.i, ptr %log_num_frags.i, align 1
  %152 = ptrtoint ptr %num_frags108.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %num_frags108.i, align 4
  %conv169 = zext i8 %153 to i32
  br label %do.body170

do.body170:                                       ; preds = %out.i, %do.body49, %cond.false17.i.i.do.body170_crit_edge
  %ndsegs.0 = phi i32 [ %conv169, %out.i ], [ 1, %do.body49 ], [ 1, %cond.false17.i.i.do.body170_crit_edge ]
  %154 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rq_wq_type, align 1
  %156 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr, align 4
  %and178 = and i32 %157, 268435455
  %and179 = zext i8 %155 to i32
  %shl180 = shl i32 %and179, 28
  %or181 = or i32 %and178, %shl180
  store i32 %or181, ptr %add.ptr, align 4
  %packet_merge.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %158 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %packet_merge.i, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 2
  %160 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev.i, align 8
  %call.i469 = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %161) #13
  br i1 %call.i469, label %rq_end_pad_mode.exit, label %rq_end_pad_mode.exit.thread

rq_end_pad_mode.exit.thread:                      ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #15
  %162 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr, align 4
  %and193530 = and i32 %163, -100663297
  br label %171

rq_end_pad_mode.exit:                             ; preds = %do.body170
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp.i470 = icmp ne i32 %159, 1
  %caps.i471 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %164 = ptrtoint ptr %caps.i471 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %caps.i471, align 8
  %add.ptr.i472 = getelementptr i32, ptr %165, i32 7
  %166 = ptrtoint ptr %add.ptr.i472 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr.i472, align 4
  %168 = and i32 %167, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i473 = icmp eq i32 %168, 0
  %spec.select.i474 = select i1 %tobool.not.i473, i1 true, i1 %cmp.i470
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr, align 4
  %and193 = and i32 %170, -100663297
  br i1 %spec.select.i474, label %rq_end_pad_mode.exit._crit_edge, label %rq_end_pad_mode.exit.cond.false22.i_crit_edge

rq_end_pad_mode.exit.cond.false22.i_crit_edge:    ; preds = %rq_end_pad_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false22.i

rq_end_pad_mode.exit._crit_edge:                  ; preds = %rq_end_pad_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %171

171:                                              ; preds = %rq_end_pad_mode.exit._crit_edge, %rq_end_pad_mode.exit.thread
  %and193532 = phi i32 [ %and193530, %rq_end_pad_mode.exit.thread ], [ %and193, %rq_end_pad_mode.exit._crit_edge ]
  br label %cond.false22.i

cond.false22.i:                                   ; preds = %171, %rq_end_pad_mode.exit.cond.false22.i_crit_edge
  %and193531 = phi i32 [ %and193532, %171 ], [ %and193, %rq_end_pad_mode.exit.cond.false22.i_crit_edge ]
  %172 = phi i32 [ 33554432, %171 ], [ 0, %rq_end_pad_mode.exit.cond.false22.i_crit_edge ]
  %or196 = or i32 %and193531, %172
  %173 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or196, ptr %add.ptr, align 4
  %174 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %rq_wq_type, align 1
  %mul.i = shl nuw nsw i32 %ndsegs.0, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %cond27.i = icmp eq i8 %175, 2
  %add.i476 = add nuw nsw i32 %mul.i, 16
  %sz.0.i = select i1 %cond27.i, i32 %add.i476, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i)
  %cmp.i477 = icmp eq i32 %sz.0.i, 0
  %sub.i.i484 = add nsw i32 %sz.0.i, -1
  %176 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i484, i1 true) #13, !range !46
  %add.ptr208 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 20
  %177 = ptrtoint ptr %add.ptr208 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr208, align 4
  %and209 = and i32 %178, -983041
  %.neg = mul nuw nsw i32 %176, 983040
  %.neg.op = and i32 %.neg, 983040
  %shl211 = select i1 %cmp.i477, i32 0, i32 %.neg.op
  %or212 = or i32 %and209, %shl211
  store i32 %or212, ptr %add.ptr208, align 4
  %mlx5e_res = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 20
  %179 = ptrtoint ptr %mlx5e_res to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mlx5e_res, align 4
  %add.ptr221 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 14
  %181 = ptrtoint ptr %add.ptr221 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr221, align 4
  %and222 = and i32 %182, -16777216
  %and223 = and i32 %180, 16777215
  %or225 = or i32 %and222, %and223
  store i32 %or225, ptr %add.ptr221, align 4
  %add.ptr235 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 3
  %183 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr235, align 4
  %and236 = and i32 %184, 16777215
  %and237 = zext i16 %q_counter to i32
  %shl238 = shl i32 %and237, 24
  %or239 = or i32 %and236, %shl238
  store i32 %or239, ptr %add.ptr235, align 4
  %vlan_strip_disable = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 11
  %185 = ptrtoint ptr %vlan_strip_disable to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %vlan_strip_disable, align 1, !range !43
  %187 = zext i8 %186 to i32
  %188 = ptrtoint ptr %rqc1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rqc1, align 4
  %and250 = and i32 %189, -268435457
  %shl252 = shl nuw nsw i32 %187, 28
  %or253 = or i32 %and250, %shl252
  store i32 %or253, ptr %rqc1, align 4
  %scatter_fcs_en = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 12
  %190 = ptrtoint ptr %scatter_fcs_en to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %scatter_fcs_en, align 2, !range !43
  %192 = zext i8 %191 to i32
  %and265 = and i32 %or253, -536870913
  %shl267 = shl nuw nsw i32 %192, 29
  %or268 = or i32 %shl267, %and265
  store i32 %or268, ptr %rqc1, align 4
  %wq274 = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 2
  %193 = ptrtoint ptr %wq274 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %wq274, align 4
  %194 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %rq_wq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %195)
  %cond51.i = icmp eq i8 %195, 2
  br i1 %cond51.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %cond.false22.i
  %caps.i487 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %196 = ptrtoint ptr %caps.i487 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %caps.i487, align 8
  %add.ptr.i488 = getelementptr i32, ptr %197, i32 45
  %198 = ptrtoint ptr %add.ptr.i488 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr.i488, align 4
  %200 = and i32 %199, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.i = icmp ne i32 %200, 0
  %201 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %packet_merge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %202)
  %cmp.i490 = icmp eq i32 %202, 2
  br i1 %cmp.i490, label %if.then.i491, label %if.else.i

if.then.i491:                                     ; preds = %sw.bb.i
  %call.i.i.i.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk) #13
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i492, label %if.then.i491.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge

if.then.i491.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge: ; preds = %if.then.i491
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i.i

if.then.i.i.i.i492:                               ; preds = %if.then.i491
  %sw_mtu.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %203 = ptrtoint ptr %sw_mtu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %sw_mtu.i.i.i.i.i.i, align 4
  %hard_mtu.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %205 = ptrtoint ptr %hard_mtu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %hard_mtu.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i492
  call void @__sanitizer_cov_trace_pc() #15
  %207 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i492
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %209 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %xdp_prog.i.i.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %210, null
  %..i.i.i.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i:          ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi i16 [ %208, %if.then.i.i.i.i.i.i.i ], [ %..i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i ]
  %add.i.i.i.i.i.i = add i32 %206, %204
  %conv.i.i.i.i.i.i = zext i16 %retval.0.i.i.i.i.i.i.i to i32
  %add1.i.i.i.i.i.i = add i32 %add.i.i.i.i.i.i, %conv.i.i.i.i.i.i
  %211 = add i32 %add1.i.i.i.i.i.i, 383
  %add1.i.i.i.i.i = and i32 %211, -128
  %frag_sz.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i, i32 %add1.i.i.i.i.i.i
  %xdp_prog.i.i.i.i.i.i493 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %212 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i493 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %xdp_prog.i.i.i.i.i.i493, align 4
  %tobool.not.i.i.i.i.i.i = icmp ne ptr %213, null
  %tobool1.i.i.i.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i.i.i = or i1 %tobool1.i.i.i.i.i.i, %tobool.not.i.i.i.i.i.i
  %214 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i.i.i, i32 4096) #13
  %frag_sz.1.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i, i32 %214, i32 %frag_sz.0.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i.i.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i_crit_edge, label %if.then6.i.i.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i

if.then6.i.i.i.i.i:                               ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %215 = ptrtoint ptr %chunk_size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %chunk_size.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %216 to i32
  %217 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i.i.i, i32 %conv.i.i.i.i.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i

mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i:         ; preds = %if.then6.i.i.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i_crit_edge
  %frag_sz.2.i.i.i.i.i = phi i32 [ %217, %if.then6.i.i.i.i.i ], [ %frag_sz.1.i.i.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %frag_sz.2.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %cond.end9.i.i.i.i.i, label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i.i

cond.end9.i.i.i.i.i:                              ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i.i = add i32 %frag_sz.2.i.i.i.i.i, -1
  %218 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i.i.i, i1 true) #13, !range !42
  %phi.bo.i.i.i = add nuw nsw i32 %218, 242
  %phi.bo538 = and i32 %phi.bo.i.i.i, 255
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i.i

mlx5e_mpwqe_get_log_num_strides.exit.i.i:         ; preds = %cond.end9.i.i.i.i.i, %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge, %if.then.i491.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge
  %retval.0.i.neg.i.i.i = phi i32 [ 10, %if.then.i491.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge ], [ %phi.bo538, %cond.end9.i.i.i.i.i ], [ 18, %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i.i_crit_edge ]
  %shl3.i.i = shl nuw i32 1, %retval.0.i.neg.i.i.i
  %sw_mtu.i.i.i494 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %219 = ptrtoint ptr %sw_mtu.i.i.i494 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %sw_mtu.i.i.i494, align 4
  %sub.i.i.i495 = add i32 %220, 65535
  %div.i.i.i = udiv i32 %sub.i.i.i495, %220
  %sub.i87.i.i.i = add i32 %div.i.i.i, -1
  %221 = tail call i32 @llvm.ctlz.i32(i32 %sub.i87.i.i.i, i1 true) #13, !range !42
  %add.i.i.i.i500 = sub nuw nsw i32 32, %221
  %add.i.i.i.i500.op = shl nuw i32 1, %add.i.i.i.i500
  br i1 %call.i.i.i.i, label %if.then.i.i.i, label %mlx5e_mpwqe_get_log_num_strides.exit.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge

mlx5e_mpwqe_get_log_num_strides.exit.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge: ; preds = %mlx5e_mpwqe_get_log_num_strides.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit.i.i

if.then.i.i.i:                                    ; preds = %mlx5e_mpwqe_get_log_num_strides.exit.i.i
  %hard_mtu.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %222 = ptrtoint ptr %hard_mtu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %hard_mtu.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i108.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i108.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %224 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %226 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %xdp_prog.i.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i.i = icmp eq ptr %227, null
  %..i.i.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i.i:            ; preds = %if.end.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi i16 [ %225, %if.then.i.i.i.i.i.i ], [ %..i.i.i.i.i.i, %if.end.i.i.i.i.i.i ]
  %add.i.i.i.i.i = add i32 %223, %220
  %conv.i.i.i109.i.i = zext i16 %retval.0.i.i.i.i.i.i to i32
  %add1.i.i.i110.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i109.i.i
  %228 = add i32 %add1.i.i.i110.i.i, 383
  %add1.i.i.i.i501 = and i32 %228, -128
  %frag_sz.0.i.i.i.i = select i1 %tobool.not.i.i.i.i108.i.i, i32 %add1.i.i.i.i501, i32 %add1.i.i.i110.i.i
  %xdp_prog.i.i.i.i.i502 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %229 = ptrtoint ptr %xdp_prog.i.i.i.i.i502 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %xdp_prog.i.i.i.i.i502, align 4
  %tobool.not.i.i.i.i.i503 = icmp ne ptr %230, null
  %tobool1.i.i.i.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i.i = or i1 %tobool1.i.i.i.i.i, %tobool.not.i.i.i.i.i503
  %231 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i.i, i32 4096) #13
  %frag_sz.1.i.i.i.i = select i1 %spec.select.i.i.i.i.i, i32 %231, i32 %frag_sz.0.i.i.i.i
  br i1 %tobool.not.i.i.i.i108.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i_crit_edge, label %if.then6.i.i.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i

if.then6.i.i.i.i:                                 ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %232 = ptrtoint ptr %chunk_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %chunk_size.i.i.i.i, align 2
  %conv.i.i.i.i504 = zext i16 %233 to i32
  %234 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i.i, i32 %conv.i.i.i.i504) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i

mlx5e_rx_get_linear_frag_sz.exit.i.i.i:           ; preds = %if.then6.i.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i_crit_edge
  %frag_sz.2.i.i.i.i = phi i32 [ %234, %if.then6.i.i.i.i ], [ %frag_sz.1.i.i.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i.i.mlx5e_rx_get_linear_frag_sz.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i.i)
  %cmp.i.i111.i.i = icmp ugt i32 %frag_sz.2.i.i.i.i, 1
  br i1 %cmp.i.i111.i.i, label %cond.end9.i.i120.i.i, label %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.i.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit.i.i

cond.end9.i.i120.i.i:                             ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i505 = add i32 %frag_sz.2.i.i.i.i, -1
  %235 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i.i505, i1 true) #13, !range !42
  %phi.cast.i.i.i = sub nuw nsw i32 32, %235
  br label %mlx5e_mpwqe_get_log_stride_size.exit.i.i

mlx5e_mpwqe_get_log_stride_size.exit.i.i:         ; preds = %cond.end9.i.i120.i.i, %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge, %mlx5e_mpwqe_get_log_num_strides.exit.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 8, %mlx5e_mpwqe_get_log_num_strides.exit.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge ], [ %phi.cast.i.i.i, %cond.end9.i.i120.i.i ], [ 0, %mlx5e_rx_get_linear_frag_sz.exit.i.i.i.mlx5e_mpwqe_get_log_stride_size.exit.i.i_crit_edge ]
  %hard_mtu.i.i.i.i122.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %236 = ptrtoint ptr %hard_mtu.i.i.i.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %hard_mtu.i.i.i.i122.i.i, align 4
  %tobool.not.i.i.i.i.i123.i.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i123.i.i, label %if.end.i.i.i.i.i128.i.i, label %if.then.i.i.i.i.i124.i.i

if.then.i.i.i.i.i124.i.i:                         ; preds = %mlx5e_mpwqe_get_log_stride_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %238 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i

if.end.i.i.i.i.i128.i.i:                          ; preds = %mlx5e_mpwqe_get_log_stride_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i125.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %240 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %xdp_prog.i.i.i.i.i.i125.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i126.i.i = icmp eq ptr %241, null
  %..i.i.i.i.i127.i.i = select i1 %tobool.not.i.not.i.i.i.i.i126.i.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i:       ; preds = %if.end.i.i.i.i.i128.i.i, %if.then.i.i.i.i.i124.i.i
  %retval.0.i.i.i.i.i129.i.i = phi i16 [ %239, %if.then.i.i.i.i.i124.i.i ], [ %..i.i.i.i.i127.i.i, %if.end.i.i.i.i.i128.i.i ]
  %add.i.i.i.i130.i.i = add i32 %237, %220
  %conv.i.i.i.i131.i.i = zext i16 %retval.0.i.i.i.i.i129.i.i to i32
  %add1.i.i.i.i132.i.i = add i32 %add.i.i.i.i130.i.i, %conv.i.i.i.i131.i.i
  %242 = add i32 %add1.i.i.i.i132.i.i, 383
  %add1.i.i.i133.i.i = and i32 %242, -128
  %frag_sz.0.i.i.i134.i.i = select i1 %tobool.not.i.i.i.i.i123.i.i, i32 %add1.i.i.i133.i.i, i32 %add1.i.i.i.i132.i.i
  %xdp_prog.i.i.i.i135.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %243 = ptrtoint ptr %xdp_prog.i.i.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %xdp_prog.i.i.i.i135.i.i, align 4
  %tobool.not.i.i.i.i136.i.i = icmp ne ptr %244, null
  %tobool1.i.i.i.i137.i.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i138.i.i = or i1 %tobool1.i.i.i.i137.i.i, %tobool.not.i.i.i.i136.i.i
  %245 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i134.i.i, i32 4096) #13
  %frag_sz.1.i.i.i139.i.i = select i1 %spec.select.i.i.i.i138.i.i, i32 %245, i32 %frag_sz.0.i.i.i134.i.i
  br i1 %tobool.not.i.i.i.i.i123.i.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i.cond.false17.i.i.i.i_crit_edge, label %if.then6.i.i.i143.i.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i.cond.false17.i.i.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17.i.i.i.i

if.then6.i.i.i143.i.i:                            ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i141.i.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %246 = ptrtoint ptr %chunk_size.i.i.i141.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %chunk_size.i.i.i141.i.i, align 2
  %conv.i.i.i142.i.i = zext i16 %247 to i32
  %248 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i139.i.i, i32 %conv.i.i.i142.i.i) #13
  br label %cond.false17.i.i.i.i

cond.false17.i.i.i.i:                             ; preds = %if.then6.i.i.i143.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i.cond.false17.i.i.i.i_crit_edge
  %frag_sz.2.i.i.i144.i.i = phi i32 [ %248, %if.then6.i.i.i143.i.i ], [ %frag_sz.1.i.i.i139.i.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i140.i.i.cond.false17.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i144.i.i)
  %cmp.i.i.i151.i.i = icmp ugt i32 %frag_sz.2.i.i.i144.i.i, 1
  %sub.i31.i.i.i.i = add i32 %frag_sz.2.i.i.i144.i.i, -1
  %249 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i.i.i.i, i1 true) #13, !range !42
  %250 = trunc i32 %249 to i8
  %phi.bo535 = add nsw i8 %250, -14
  %cond20.neg.i.i.i.i = select i1 %cmp.i.i.i151.i.i, i8 %phi.bo535, i8 18
  %log_rq_mtu_frames.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %251 = ptrtoint ptr %log_rq_mtu_frames.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %log_rq_mtu_frames.i.i.i, align 2
  %conv.i.i.i506 = zext i8 %252 to i32
  %conv1.i.i.i = zext i8 %cond20.neg.i.i.i.i to i32
  %add.i.i.i507 = add nuw nsw i32 %conv1.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i507, i32 %conv.i.i.i506)
  %cmp.i158.i.i = icmp ugt i32 %add.i.i.i507, %conv.i.i.i506
  %sub.i159.i.i = sub i8 %252, %cond20.neg.i.i.i.i
  %253 = zext i8 %sub.i159.i.i to i32
  %conv10.i.i = select i1 %cmp.i158.i.i, i32 2, i32 %253
  %conv14.i.i = and i32 %shl3.i.i, 65535
  %mul15.i.i = shl i32 %conv14.i.i, %retval.0.i.i.i
  %div.i.i = sdiv i32 %mul15.i.i, 65536
  %mul16.i.i = shl i32 %div.i.i, %conv10.i.i
  %add.i.i.i.i500.op.op = add nuw i32 %add.i.i.i.i500.op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i.i.i)
  %cmp.i.i.i.i.inv = icmp ult i32 %div.i.i.i, 2
  %add.i.i508 = select i1 %cmp.i.i.i.i.inv, i32 2, i32 %add.i.i.i.i500.op.op
  %mul17.i.i = mul i32 %mul16.i.i, %add.i.i508
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul17.i.i)
  %cmp.i162.i.i = icmp ugt i32 %mul17.i.i, 1
  %sub.i163.i.i = add i32 %mul17.i.i, -1
  %254 = tail call i32 @llvm.ctlz.i32(i32 %sub.i163.i.i, i1 true) #13, !range !42
  %255 = trunc i32 %254 to i8
  %phi.cast = sub nuw nsw i8 32, %255
  %cond70.i.i = select i1 %cmp.i162.i.i, i8 %phi.cast, i8 0
  br label %do.body.i

if.else.i:                                        ; preds = %sw.bb.i
  %sw_mtu.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %256 = ptrtoint ptr %sw_mtu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %sw_mtu.i.i.i.i.i, align 4
  %hard_mtu.i.i.i.i71.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %258 = ptrtoint ptr %hard_mtu.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %hard_mtu.i.i.i.i71.i, align 4
  %tobool.not.i.i.i.i.i72.i = icmp eq ptr %xsk, null
  br i1 %tobool.not.i.i.i.i.i72.i, label %if.end.i.i.i.i.i77.i, label %if.then.i.i.i.i.i73.i

if.then.i.i.i.i.i73.i:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %260 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i

if.end.i.i.i.i.i77.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_prog.i.i.i.i.i.i74.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %262 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %xdp_prog.i.i.i.i.i.i74.i, align 4
  %tobool.not.i.not.i.i.i.i.i75.i = icmp eq ptr %263, null
  %..i.i.i.i.i76.i = select i1 %tobool.not.i.not.i.i.i.i.i75.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i:          ; preds = %if.end.i.i.i.i.i77.i, %if.then.i.i.i.i.i73.i
  %retval.0.i.i.i.i.i78.i = phi i16 [ %261, %if.then.i.i.i.i.i73.i ], [ %..i.i.i.i.i76.i, %if.end.i.i.i.i.i77.i ]
  %add.i.i.i.i79.i = add i32 %259, %257
  %conv.i.i.i.i80.i = zext i16 %retval.0.i.i.i.i.i78.i to i32
  %add1.i.i.i.i81.i = add i32 %add.i.i.i.i79.i, %conv.i.i.i.i80.i
  %264 = add i32 %add1.i.i.i.i81.i, 383
  %add1.i.i.i82.i = and i32 %264, -128
  %frag_sz.0.i.i.i83.i = select i1 %tobool.not.i.i.i.i.i72.i, i32 %add1.i.i.i82.i, i32 %add1.i.i.i.i81.i
  %xdp_prog.i.i.i.i84.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %265 = ptrtoint ptr %xdp_prog.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %xdp_prog.i.i.i.i84.i, align 4
  %tobool.not.i.i.i.i85.i = icmp ne ptr %266, null
  %tobool1.i.i.i.i86.i = icmp ne ptr %xsk, null
  %spec.select.i.i.i.i87.i = or i1 %tobool1.i.i.i.i86.i, %tobool.not.i.i.i.i85.i
  %267 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i83.i, i32 4096) #13
  %frag_sz.1.i.i.i88.i = select i1 %spec.select.i.i.i.i87.i, i32 %267, i32 %frag_sz.0.i.i.i83.i
  br i1 %tobool.not.i.i.i.i.i72.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i.cond.false17.i.i.i_crit_edge, label %if.then6.i.i.i92.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i.cond.false17.i.i.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false17.i.i.i

if.then6.i.i.i92.i:                               ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i90.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %268 = ptrtoint ptr %chunk_size.i.i.i90.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %chunk_size.i.i.i90.i, align 2
  %conv.i.i.i91.i = zext i16 %269 to i32
  %270 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i88.i, i32 %conv.i.i.i91.i) #13
  br label %cond.false17.i.i.i

cond.false17.i.i.i:                               ; preds = %if.then6.i.i.i92.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i.cond.false17.i.i.i_crit_edge
  %frag_sz.2.i.i.i93.i = phi i32 [ %270, %if.then6.i.i.i92.i ], [ %frag_sz.1.i.i.i88.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i89.i.cond.false17.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i93.i)
  %cmp.i.i.i100.i = icmp ugt i32 %frag_sz.2.i.i.i93.i, 1
  %sub.i31.i.i.i = add i32 %frag_sz.2.i.i.i93.i, -1
  %271 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i.i.i, i1 true) #13, !range !42
  %272 = trunc i32 %271 to i8
  %phi.bo = add nsw i8 %272, -14
  %cond20.neg.i.i.i = select i1 %cmp.i.i.i100.i, i8 %phi.bo, i8 18
  %log_rq_mtu_frames.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %273 = ptrtoint ptr %log_rq_mtu_frames.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %log_rq_mtu_frames.i.i, align 2
  %conv.i.i520 = zext i8 %274 to i32
  %conv1.i.i = zext i8 %cond20.neg.i.i.i to i32
  %add.i110.i = add nuw nsw i32 %conv1.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i110.i, i32 %conv.i.i520)
  %cmp.i.i521 = icmp ugt i32 %add.i110.i, %conv.i.i520
  %sub.i111.i = sub i8 %274, %cond20.neg.i.i.i
  %retval.0.i.i = select i1 %cmp.i.i521, i8 2, i8 %sub.i111.i
  %call.i.i.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk) #13
  br i1 %call.i.i.i, label %if.then.i.i115.i, label %cond.false17.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge

cond.false17.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge: ; preds = %cond.false17.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i

if.then.i.i115.i:                                 ; preds = %cond.false17.i.i.i
  br i1 %tobool.not.i.i.i.i.i72.i, label %if.end.i.i.i.i.i120.i, label %if.then.i.i.i.i.i116.i

if.then.i.i.i.i.i116.i:                           ; preds = %if.then.i.i115.i
  call void @__sanitizer_cov_trace_pc() #15
  %275 = ptrtoint ptr %xsk to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %xsk, align 2
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i

if.end.i.i.i.i.i120.i:                            ; preds = %if.then.i.i115.i
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not.i.not.i.i.i.i.i118.i = icmp eq ptr %266, null
  %..i.i.i.i.i119.i = select i1 %tobool.not.i.not.i.i.i.i.i118.i, i16 130, i16 258
  br label %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i:         ; preds = %if.end.i.i.i.i.i120.i, %if.then.i.i.i.i.i116.i
  %retval.0.i.i.i.i.i121.i = phi i16 [ %276, %if.then.i.i.i.i.i116.i ], [ %..i.i.i.i.i119.i, %if.end.i.i.i.i.i120.i ]
  %conv.i.i.i.i123.i = zext i16 %retval.0.i.i.i.i.i121.i to i32
  %add1.i.i.i.i124.i = add i32 %add.i.i.i.i79.i, %conv.i.i.i.i123.i
  %277 = add i32 %add1.i.i.i.i124.i, 383
  %add1.i.i.i125.i = and i32 %277, -128
  %frag_sz.0.i.i.i126.i = select i1 %tobool.not.i.i.i.i.i72.i, i32 %add1.i.i.i125.i, i32 %add1.i.i.i.i124.i
  %278 = tail call i32 @llvm.umax.i32(i32 %frag_sz.0.i.i.i126.i, i32 4096) #13
  %frag_sz.1.i.i.i131.i = select i1 %spec.select.i.i.i.i87.i, i32 %278, i32 %frag_sz.0.i.i.i126.i
  br i1 %tobool.not.i.i.i.i.i72.i, label %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i.mlx5e_rx_get_linear_frag_sz.exit.i.i138.i_crit_edge, label %if.then6.i.i.i135.i

mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i.mlx5e_rx_get_linear_frag_sz.exit.i.i138.i_crit_edge: ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i

if.then6.i.i.i135.i:                              ; preds = %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i
  call void @__sanitizer_cov_trace_pc() #15
  %chunk_size.i.i.i133.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %279 = ptrtoint ptr %chunk_size.i.i.i133.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %chunk_size.i.i.i133.i, align 2
  %conv.i.i.i134.i = zext i16 %280 to i32
  %281 = tail call i32 @llvm.umax.i32(i32 %frag_sz.1.i.i.i131.i, i32 %conv.i.i.i134.i) #13
  br label %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i

mlx5e_rx_get_linear_frag_sz.exit.i.i138.i:        ; preds = %if.then6.i.i.i135.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i.mlx5e_rx_get_linear_frag_sz.exit.i.i138.i_crit_edge
  %frag_sz.2.i.i.i136.i = phi i32 [ %281, %if.then6.i.i.i135.i ], [ %frag_sz.1.i.i.i131.i, %mlx5e_rx_get_min_frag_sz.exit.i.i.i132.i.mlx5e_rx_get_linear_frag_sz.exit.i.i138.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_sz.2.i.i.i136.i)
  %cmp.i.i.i137.i = icmp ugt i32 %frag_sz.2.i.i.i136.i, 1
  br i1 %cmp.i.i.i137.i, label %cond.end9.i.i.i145.i, label %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge

mlx5e_rx_get_linear_frag_sz.exit.i.i138.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge: ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i

cond.end9.i.i.i145.i:                             ; preds = %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i139.i = add i32 %frag_sz.2.i.i.i136.i, -1
  %282 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i139.i, i1 true) #13, !range !42
  %283 = trunc i32 %282 to i8
  %phi.bo.i.i = add nsw i8 %283, -14
  br label %mlx5e_mpwqe_get_log_num_strides.exit.i

mlx5e_mpwqe_get_log_num_strides.exit.i:           ; preds = %cond.end9.i.i.i145.i, %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge, %cond.false17.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge
  %retval.0.i.neg.i.i = phi i8 [ 10, %cond.false17.i.i.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge ], [ %phi.bo.i.i, %cond.end9.i.i.i145.i ], [ 18, %mlx5e_rx_get_linear_frag_sz.exit.i.i138.i.mlx5e_mpwqe_get_log_num_strides.exit.i_crit_edge ]
  %add.i523 = add i8 %retval.0.i.neg.i.i, %retval.0.i.i
  br label %do.body.i

sw.default.i:                                     ; preds = %cond.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  %log_rq_mtu_frames.i524 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 2
  %284 = ptrtoint ptr %log_rq_mtu_frames.i524 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %log_rq_mtu_frames.i524, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %sw.default.i, %mlx5e_mpwqe_get_log_num_strides.exit.i, %cond.false17.i.i.i.i
  %log_cq_size.0.i = phi i8 [ %cond70.i.i, %cond.false17.i.i.i.i ], [ %add.i523, %mlx5e_mpwqe_get_log_num_strides.exit.i ], [ %285, %sw.default.i ]
  %hw_stridx.0.shrunk.i = phi i1 [ %tobool.i, %cond.false17.i.i.i.i ], [ %tobool.i, %mlx5e_mpwqe_get_log_num_strides.exit.i ], [ false, %sw.default.i ]
  %add.ptr12.i = getelementptr i32, ptr %param, i32 3
  %286 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %287, -520093697
  %288 = and i8 %log_cq_size.0.i, 31
  %and14.i = zext i8 %288 to i32
  %shl.i525 = shl nuw nsw i32 %and14.i, 24
  %or.i = or i32 %and13.i, %shl.i525
  store i32 %or.i, ptr %add.ptr12.i, align 4
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %289 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %pflags.i, align 4
  %and18.i = and i32 %290, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.body.i.if.end49.i_crit_edge, label %do.body21.i

do.body.i.if.end49.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

do.body21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %param, align 4
  %and29.i = and i32 %292, -28673
  %or32.i = select i1 %hw_stridx.0.shrunk.i, i32 28672, i32 20480
  %or45.i = or i32 %and29.i, %or32.i
  store i32 %or45.i, ptr %param, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.body21.i, %do.body.i.if.end49.i_crit_edge
  %uar.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 39
  %293 = ptrtoint ptr %uar.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %uar.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %294, i32 0, i32 2
  %295 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %index.i.i, align 4
  %and.i.i = and i32 %or.i, -16777216
  %and3.i.i = and i32 %296, 16777215
  %or.i.i = or i32 %and3.i.i, %and.i.i
  %297 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %or.i.i, ptr %add.ptr12.i, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %298 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %caps.i.i, align 8
  %add.ptr8.i.i = getelementptr i32, ptr %299, i32 45
  %300 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %add.ptr8.i.i, align 4
  %302 = and i32 %301, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool.not.i.i = icmp eq i32 %302, 0
  br i1 %tobool.not.i.i, label %if.end49.i.mlx5e_build_rx_cq_param.exit_crit_edge, label %do.body10.i.i

if.end49.i.mlx5e_build_rx_cq_param.exit_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_rx_cq_param.exit

do.body10.i.i:                                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %303 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %param, align 4
  %and16.i.i = and i32 %304, -14680065
  %or19.i.i = or i32 %and16.i.i, 4194304
  store i32 %or19.i.i, ptr %param, align 4
  br label %mlx5e_build_rx_cq_param.exit

mlx5e_build_rx_cq_param.exit:                     ; preds = %do.body10.i.i, %if.end49.i.mlx5e_build_rx_cq_param.exit_crit_edge
  %cq_period_mode.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 7, i32 3
  %305 = ptrtoint ptr %cq_period_mode.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %cq_period_mode.i, align 2
  %cq_period_mode50.i = getelementptr inbounds %struct.mlx5e_cq_param, ptr %param, i32 0, i32 3
  %307 = ptrtoint ptr %cq_period_mode50.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %306, ptr %cq_period_mode50.i, align 2
  br label %cleanup275

cleanup275:                                       ; preds = %mlx5e_build_rx_cq_param.exit, %do.end
  %retval.1 = phi i32 [ 0, %mlx5e_build_rx_cq_param.exit ], [ -22, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_drop_rq_param(ptr nocapture noundef readnone %mdev, i16 noundef zeroext %q_counter, ptr nocapture noundef %param) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, 268435455
  %or = or i32 %and, 268435456
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr13 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 20
  %2 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %3, -983041
  %or17 = or i32 %and14, 262144
  store i32 %or17, ptr %add.ptr13, align 4
  %add.ptr27 = getelementptr %struct.mlx5e_rq_param, ptr %param, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %5, 16777215
  %and29 = zext i16 %q_counter to i32
  %shl30 = shl i32 %and29, 24
  %or31 = or i32 %and28, %shl30
  store i32 %or31, ptr %add.ptr27, align 4
  %wq37 = getelementptr inbounds %struct.mlx5e_rq_param, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %wq37 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %wq37, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_tx_cq_param(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr nocapture noundef %param) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %params, align 4
  %add.ptr = getelementptr i32, ptr %param, i32 3
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -520093697
  %4 = and i8 %1, 31
  %and3 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and3, 24
  %or = or i32 %shl, %and
  store i32 %or, ptr %add.ptr, align 4
  %uar.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 39
  %5 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uar.i, align 4
  %index.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %and.i = and i32 %or, -16777216
  %and3.i = and i32 %8, 16777215
  %or.i = or i32 %and.i, %and3.i
  store i32 %or.i, ptr %add.ptr, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i, align 8
  %add.ptr8.i = getelementptr i32, ptr %10, i32 45
  %11 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr8.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %entry.mlx5e_build_common_cq_param.exit_crit_edge, label %do.body10.i

entry.mlx5e_build_common_cq_param.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_common_cq_param.exit

do.body10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param, align 4
  %and16.i = and i32 %15, -14680065
  %or19.i = or i32 %and16.i, 4194304
  store i32 %or19.i, ptr %param, align 4
  br label %mlx5e_build_common_cq_param.exit

mlx5e_build_common_cq_param.exit:                 ; preds = %do.body10.i, %entry.mlx5e_build_common_cq_param.exit_crit_edge
  %cq_period_mode = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %cq_period_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cq_period_mode, align 2
  %cq_period_mode7 = getelementptr inbounds %struct.mlx5e_cq_param, ptr %param, i32 0, i32 3
  %18 = ptrtoint ptr %cq_period_mode7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %cq_period_mode7, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_sq_param_common(ptr nocapture noundef readonly %mdev, ptr nocapture noundef %param) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 20
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr3, align 4
  %and = and i32 %1, -983041
  %or = or i32 %and, 393216
  store i32 %or, ptr %add.ptr3, align 4
  %mlx5e_res = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 20
  %2 = ptrtoint ptr %mlx5e_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlx5e_res, align 4
  %add.ptr13 = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %5, -16777216
  %and15 = and i32 %3, 16777215
  %or17 = or i32 %and14, %and15
  store i32 %or17, ptr %add.ptr13, align 4
  %wq22 = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %wq22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %wq22, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_build_sq_param(ptr noundef %mdev, ptr noundef %params, ptr nocapture noundef %param) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %3)
  %.not.i.i = icmp ugt i32 %3, -1073741825
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool18.i.i = icmp ne i32 %4, 0
  %5 = and i1 %.not.i.i, %tobool18.i.i
  br i1 %5, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %mdev) #13
  %and = shl i32 %call2, 18
  %phi.bo = and i32 %and, 262144
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i32 [ 262144, %entry.lor.end_crit_edge ], [ %phi.bo, %lor.rhs ]
  %sqc1 = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1
  %add.ptr3.i = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 20
  %7 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr3.i, align 4
  %and.i = and i32 %8, -983041
  %or.i = or i32 %and.i, 393216
  store i32 %or.i, ptr %add.ptr3.i, align 4
  %mlx5e_res.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 20
  %9 = ptrtoint ptr %mlx5e_res.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mlx5e_res.i, align 4
  %add.ptr13.i = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 14
  %11 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %12, -16777216
  %and15.i = and i32 %10, 16777215
  %or17.i = or i32 %and14.i, %and15.i
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %wq22.i = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 2
  %13 = ptrtoint ptr %wq22.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %wq22.i, align 4
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %params, align 4
  %and6 = and i32 %or.i, -589856
  %16 = and i8 %15, 31
  %and7 = zext i8 %16 to i32
  %or = or i32 %and6, %and7
  store i32 %or, ptr %add.ptr3.i, align 4
  %17 = ptrtoint ptr %sqc1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sqc1, align 4
  %and19 = and i32 %18, -262145
  %or22 = or i32 %and19, %6
  store i32 %or22, ptr %sqc1, align 4
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %19 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pflags, align 4
  %is_mpw = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 3
  %21 = trunc i32 %20 to i8
  %22 = lshr i8 %21, 6
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %is_mpw to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %is_mpw, align 4
  %25 = load i32, ptr %pflags, align 4
  %and.i46 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i = icmp eq i32 %and.i46, 0
  %call.i = tail call zeroext i16 @mlx5e_tls_get_stop_room(ptr noundef %mdev, ptr noundef %params) #13
  %spec.select.v.i = select i1 %tobool.not.i, i16 31, i16 62
  %spec.select.i = add i16 %spec.select.v.i, %call.i
  %stop_room = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 5
  %26 = ptrtoint ptr %stop_room to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.select.i, ptr %stop_room, align 2
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %params, align 4
  %add.ptr.i = getelementptr i32, ptr %param, i32 3
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %and.i47 = and i32 %30, -520093697
  %31 = and i8 %28, 31
  %and3.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 %and3.i, 24
  %or.i48 = or i32 %shl.i, %and.i47
  store i32 %or.i48, ptr %add.ptr.i, align 4
  %uar.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 39
  %32 = ptrtoint ptr %uar.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uar.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  %and.i.i = and i32 %or.i48, -16777216
  %and3.i.i = and i32 %35, 16777215
  %or.i.i = or i32 %and.i.i, %and3.i.i
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %36 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %caps.i.i, align 8
  %add.ptr8.i.i = getelementptr i32, ptr %37, i32 45
  %38 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr8.i.i, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %lor.end.mlx5e_build_tx_cq_param.exit_crit_edge, label %do.body10.i.i

lor.end.mlx5e_build_tx_cq_param.exit_crit_edge:   ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_tx_cq_param.exit

do.body10.i.i:                                    ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %param, align 4
  %and16.i.i = and i32 %42, -14680065
  %or19.i.i = or i32 %and16.i.i, 4194304
  store i32 %or19.i.i, ptr %param, align 4
  br label %mlx5e_build_tx_cq_param.exit

mlx5e_build_tx_cq_param.exit:                     ; preds = %do.body10.i.i, %lor.end.mlx5e_build_tx_cq_param.exit_crit_edge
  %cq_period_mode.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8, i32 3
  %43 = ptrtoint ptr %cq_period_mode.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cq_period_mode.i, align 2
  %cq_period_mode7.i = getelementptr inbounds %struct.mlx5e_cq_param, ptr %param, i32 0, i32 3
  %45 = ptrtoint ptr %cq_period_mode7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %cq_period_mode7.i, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_ipsec_device_caps(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_shampo_hd_per_wqe(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr nocapture readnone %rq_param) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef null) #13
  br i1 %call.i.i, label %if.then.i.i, label %entry.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge

entry.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit

if.then.i.i:                                      ; preds = %entry
  %sw_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %0 = ptrtoint ptr %sw_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_mtu.i.i.i.i, align 4
  %hard_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %2 = ptrtoint ptr %hard_mtu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_mtu.i.i.i.i, align 4
  %xdp_prog.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %4 = ptrtoint ptr %xdp_prog.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdp_prog.i.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i.i = icmp eq ptr %5, null
  %conv.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i, i32 130, i32 258
  %add.i.i.i.i = add i32 %1, 383
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %3
  %6 = add i32 %add1.i.i.i.i, %conv.i.i.i.i
  %add1.i.i.i = and i32 %6, -128
  %7 = tail call i32 @llvm.umax.i32(i32 %add1.i.i.i, i32 4096) #13
  %frag_sz.1.i.i.i = select i1 %tobool.not.i.not.i.i.i.i.i, i32 %add1.i.i.i, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_sz.1.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %frag_sz.1.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.then.i.i.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge, label %cond.true.i.i.i

if.then.i.i.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_num_strides.exit

cond.true.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %frag_sz.1.i.i.i, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i.i, i1 true) #13, !range !45
  %phi.bo.i = add nuw nsw i32 %8, 242
  %phi.cast = and i32 %phi.bo.i, 255
  br label %mlx5e_mpwqe_get_log_num_strides.exit

mlx5e_mpwqe_get_log_num_strides.exit:             ; preds = %cond.true.i.i.i, %if.then.i.i.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge, %entry.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge
  %retval.0.i.neg.i = phi i32 [ 10, %entry.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge ], [ %phi.cast, %cond.true.i.i.i ], [ 18, %if.then.i.i.mlx5e_mpwqe_get_log_num_strides.exit_crit_edge ]
  %shl3 = shl nuw i32 1, %retval.0.i.neg.i
  %sw_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %9 = ptrtoint ptr %sw_mtu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sw_mtu.i, align 4
  %sub.i = add i32 %10, 65535
  %div.i = udiv i32 %sub.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp.i.i = icmp ugt i32 %div.i, 1
  %sub.i87.i = add i32 %div.i, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i87.i, i1 true) #13, !range !42
  %add.i.i = sub nuw nsw i32 32, %11
  %cond62.i = select i1 %cmp.i.i, i32 %add.i.i, i32 0
  br i1 %call.i.i, label %if.then.i, label %mlx5e_mpwqe_get_log_num_strides.exit.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge

mlx5e_mpwqe_get_log_num_strides.exit.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %mlx5e_mpwqe_get_log_num_strides.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

if.then.i:                                        ; preds = %mlx5e_mpwqe_get_log_num_strides.exit
  %hard_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %12 = ptrtoint ptr %hard_mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hard_mtu.i.i.i, align 4
  %xdp_prog.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 16
  %14 = ptrtoint ptr %xdp_prog.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xdp_prog.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %15, null
  %conv.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 130, i32 258
  %add.i.i.i = add i32 %10, 383
  %add1.i.i.i29 = add i32 %add.i.i.i, %13
  %16 = add i32 %add1.i.i.i29, %conv.i.i.i
  %add1.i.i = and i32 %16, -128
  %17 = tail call i32 @llvm.umax.i32(i32 %add1.i.i, i32 4096) #13
  %frag_sz.1.i.i = select i1 %tobool.not.i.not.i.i.i.i, i32 %add1.i.i, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_sz.1.i.i)
  %cmp.i.i30.not = icmp eq i32 %frag_sz.1.i.i, 0
  br i1 %cmp.i.i30.not, label %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, label %cond.true.i.i31

if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_mpwqe_get_log_stride_size.exit

cond.true.i.i31:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %frag_sz.1.i.i, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %sub.i.i, i1 true) #13, !range !45
  %phi.cast.i = sub nuw nsw i32 32, %18
  br label %mlx5e_mpwqe_get_log_stride_size.exit

mlx5e_mpwqe_get_log_stride_size.exit:             ; preds = %cond.true.i.i31, %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge, %mlx5e_mpwqe_get_log_num_strides.exit.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge
  %retval.0.i40 = phi i32 [ 8, %mlx5e_mpwqe_get_log_num_strides.exit.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ], [ %phi.cast.i, %cond.true.i.i31 ], [ 0, %if.then.i.mlx5e_mpwqe_get_log_stride_size.exit_crit_edge ]
  %conv11 = and i32 %shl3, 65535
  %mul12 = shl i32 %conv11, %retval.0.i40
  %div = sdiv i32 %mul12, 65536
  %mul13 = shl i32 %div, %cond62.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_shampo_hd_per_wqe.__UNIQUE_ID_ddebug799, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_shampo_hd_per_wqe, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %mlx5e_mpwqe_get_log_stride_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shl7 = shl nuw i32 1, %cond62.i
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !32) #13
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_shampo_hd_per_wqe.__UNIQUE_ID_ddebug799, ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 690, i32 noundef %26, ptr noundef nonnull @.str.13, i32 noundef %mul13, i32 noundef 65536, i32 noundef %mul12, i32 noundef %shl7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %mlx5e_mpwqe_get_log_stride_size.exit
  ret i32 %mul13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_shampo_hd_per_wq(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %rq_param) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr %struct.mlx5e_rq_param, ptr %rq_param, i32 0, i32 1, i32 20
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr1, align 4
  %call = tail call i32 @mlx5e_shampo_hd_per_wqe(ptr noundef %mdev, ptr noundef %params, ptr undef)
  %and = and i32 %1, 31
  %mul = shl i32 %call, %and
  %sub.i41 = add i32 %mul, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i41)
  %tobool.not.i.i.i = icmp eq i32 %sub.i41, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i41, i1 true) #13, !range !42
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  ret i32 %shl.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_build_xdpsq_param(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %params, ptr nocapture noundef %param) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 20
  %0 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr3.i, align 4
  %and.i = and i32 %1, -983041
  %or.i = or i32 %and.i, 393216
  store i32 %or.i, ptr %add.ptr3.i, align 4
  %mlx5e_res.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 20
  %2 = ptrtoint ptr %mlx5e_res.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlx5e_res.i, align 4
  %add.ptr13.i = getelementptr %struct.mlx5e_sq_param, ptr %param, i32 0, i32 1, i32 14
  %4 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %5, -16777216
  %and15.i = and i32 %3, 16777215
  %or17.i = or i32 %and14.i, %and15.i
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %wq22.i = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 2
  %6 = ptrtoint ptr %wq22.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %wq22.i, align 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %params, align 4
  %and = and i32 %or.i, -589856
  %9 = and i8 %8, 31
  %and4 = zext i8 %9 to i32
  %or = or i32 %and, %and4
  store i32 %or, ptr %add.ptr3.i, align 4
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %10 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pflags, align 4
  %is_mpw = getelementptr inbounds %struct.mlx5e_sq_param, ptr %param, i32 0, i32 3
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %is_mpw to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %is_mpw, align 4
  %16 = load i8, ptr %params, align 4
  %add.ptr.i = getelementptr i32, ptr %param, i32 3
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %and.i17 = and i32 %18, -520093697
  %19 = and i8 %16, 31
  %and3.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %and3.i, 24
  %or.i18 = or i32 %shl.i, %and.i17
  store i32 %or.i18, ptr %add.ptr.i, align 4
  %uar.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 39
  %20 = ptrtoint ptr %uar.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uar.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i, align 4
  %and.i.i = and i32 %or.i18, -16777216
  %and3.i.i = and i32 %23, 16777215
  %or.i.i = or i32 %and.i.i, %and3.i.i
  store i32 %or.i.i, ptr %add.ptr.i, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %24 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps.i.i, align 8
  %add.ptr8.i.i = getelementptr i32, ptr %25, i32 45
  %26 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr8.i.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %entry.mlx5e_build_tx_cq_param.exit_crit_edge, label %do.body10.i.i

entry.mlx5e_build_tx_cq_param.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_tx_cq_param.exit

do.body10.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %param, align 4
  %and16.i.i = and i32 %30, -14680065
  %or19.i.i = or i32 %and16.i.i, 4194304
  store i32 %or19.i.i, ptr %param, align 4
  br label %mlx5e_build_tx_cq_param.exit

mlx5e_build_tx_cq_param.exit:                     ; preds = %do.body10.i.i, %entry.mlx5e_build_tx_cq_param.exit_crit_edge
  %cq_period_mode.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %cq_period_mode.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cq_period_mode.i, align 2
  %cq_period_mode7.i = getelementptr inbounds %struct.mlx5e_cq_param, ptr %param, i32 0, i32 3
  %33 = ptrtoint ptr %cq_period_mode7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %cq_period_mode7.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_build_channel_param(ptr noundef %mdev, ptr noundef %params, i16 noundef zeroext %q_counter, ptr nocapture noundef %cparam) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_build_rq_param(ptr noundef %mdev, ptr noundef %params, ptr noundef null, i16 noundef zeroext %q_counter, ptr noundef %cparam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_wq_type.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %rq_wq_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rq_wq_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.mlx5e_build_icosq_log_wq_sz.exit_crit_edge

if.end.mlx5e_build_icosq_log_wq_sz.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_icosq_log_wq_sz.exit

if.end.i:                                         ; preds = %if.end
  %add.ptr1.i.i = getelementptr %struct.mlx5e_rq_param, ptr %cparam, i32 0, i32 1, i32 20
  %2 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1.i.i, align 4
  %conv.i.i = and i32 %3, 31
  %packet_merge.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 9
  %4 = ptrtoint ptr %packet_merge.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_merge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.i = icmp eq i32 %5, 2
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @mlx5e_shampo_hd_per_wqe(ptr noundef %mdev, ptr noundef %params, ptr undef) #13
  %call.i.i.frozen = freeze i32 %call.i.i
  %div.i.i = sdiv i32 %call.i.i.frozen, 48
  %6 = mul i32 %div.i.i, 48
  %rem.i.i.decomposed = sub i32 %call.i.i.frozen, %6
  %mul4.i.i = mul nsw i32 %div.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %tobool.not.i.i = icmp eq i32 %rem.i.i.decomposed, 0
  %mul5.i.i = shl nsw i32 %rem.i.i.decomposed, 4
  %sub8.i.i = add nsw i32 %mul5.i.i, 191
  %div919.i.i = lshr i32 %sub8.i.i, 6
  %add10.i.i = select i1 %tobool.not.i.i, i32 0, i32 %div919.i.i
  %wqebbs.0.i.i = add nsw i32 %mul4.i.i, 10
  %7 = add nsw i32 %wqebbs.0.i.i, %add10.i.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %.pn = phi i32 [ %7, %if.then5.i ], [ 10, %if.end.i.if.end7.i_crit_edge ]
  %wqebbs.0.i = shl i32 %.pn, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wqebbs.0.i)
  %cmp.i.i = icmp ugt i32 %wqebbs.0.i, 1
  %sub.i60.i = add i32 %wqebbs.0.i, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i60.i, i1 true) #13, !range !42
  %add.i.i = sub nuw nsw i32 32, %8
  %cond33.i = select i1 %cmp.i.i, i32 %add.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cond33.i)
  %cmp37.i = icmp ult i32 %cond33.i, 6
  %phi.cast.i.op = and i32 %cond33.i, 31
  %phi.cast = select i1 %cmp37.i, i32 6, i32 %phi.cast.i.op
  br label %mlx5e_build_icosq_log_wq_sz.exit

mlx5e_build_icosq_log_wq_sz.exit:                 ; preds = %if.end7.i, %if.end.mlx5e_build_icosq_log_wq_sz.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end7.i ], [ 6, %if.end.mlx5e_build_icosq_log_wq_sz.exit_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %9 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp.i.not.i.i = icmp eq i64 %9, -1
  br i1 %cmp.i.not.i.i, label %mlx5e_accel_is_ktls_rx.exit.i, label %mlx5e_build_icosq_log_wq_sz.exit.mlx5e_build_async_icosq_log_wq_sz.exit_crit_edge

mlx5e_build_icosq_log_wq_sz.exit.mlx5e_build_async_icosq_log_wq_sz.exit_crit_edge: ; preds = %mlx5e_build_icosq_log_wq_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_async_icosq_log_wq_sz.exit

mlx5e_accel_is_ktls_rx.exit.i:                    ; preds = %mlx5e_build_icosq_log_wq_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %10 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %11, i32 36
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %14 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.i.not.i = icmp eq i32 %14, 0
  %phi.cast79 = select i1 %tobool.i.i.not.i, i32 6, i32 10
  br label %mlx5e_build_async_icosq_log_wq_sz.exit

mlx5e_build_async_icosq_log_wq_sz.exit:           ; preds = %mlx5e_accel_is_ktls_rx.exit.i, %mlx5e_build_icosq_log_wq_sz.exit.mlx5e_build_async_icosq_log_wq_sz.exit_crit_edge
  %15 = phi i32 [ 6, %mlx5e_build_icosq_log_wq_sz.exit.mlx5e_build_async_icosq_log_wq_sz.exit_crit_edge ], [ %phi.cast79, %mlx5e_accel_is_ktls_rx.exit.i ]
  %txq_sq = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 1
  tail call void @mlx5e_build_sq_param(ptr noundef %mdev, ptr noundef %params, ptr noundef %txq_sq)
  %add.ptr3.i.i = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 1, i32 20
  %16 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr3.i.i, align 4
  %and.i.i21 = and i32 %17, -983041
  %or.i.i = or i32 %and.i.i21, 393216
  store i32 %or.i.i, ptr %add.ptr3.i.i, align 4
  %mlx5e_res.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 20
  %18 = ptrtoint ptr %mlx5e_res.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mlx5e_res.i.i, align 4
  %add.ptr13.i.i = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 1, i32 14
  %20 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr13.i.i, align 4
  %and14.i.i = and i32 %21, -16777216
  %and15.i.i = and i32 %19, 16777215
  %or17.i.i = or i32 %and14.i.i, %and15.i.i
  store i32 %or17.i.i, ptr %add.ptr13.i.i, align 4
  %wq22.i.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %wq22.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %wq22.i.i, align 4
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %params, align 4
  %and.i = and i32 %or.i.i, -589856
  %25 = and i8 %24, 31
  %and4.i = zext i8 %25 to i32
  %or.i = or i32 %and.i, %and4.i
  store i32 %or.i, ptr %add.ptr3.i.i, align 4
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %26 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pflags.i, align 4
  %is_mpw.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 3
  %28 = trunc i32 %27 to i8
  %29 = lshr i8 %28, 5
  %30 = and i8 %29, 1
  %31 = ptrtoint ptr %is_mpw.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %is_mpw.i, align 4
  %32 = load i8, ptr %params, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %and.i17.i = and i32 %34, -520093697
  %35 = and i8 %32, 31
  %and3.i.i = zext i8 %35 to i32
  %shl.i.i = shl nuw nsw i32 %and3.i.i, 24
  %or.i18.i = or i32 %shl.i.i, %and.i17.i
  store i32 %or.i18.i, ptr %add.ptr.i.i, align 4
  %uar.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 39
  %36 = ptrtoint ptr %uar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uar.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i.i.i, align 4
  %and.i.i.i = and i32 %or.i18.i, -16777216
  %and3.i.i.i = and i32 %39, 16777215
  %or.i.i.i = or i32 %and.i.i.i, %and3.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i, align 4
  %caps.i.i.i22 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %40 = ptrtoint ptr %caps.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %caps.i.i.i22, align 8
  %add.ptr8.i.i.i = getelementptr i32, ptr %41, i32 45
  %42 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr8.i.i.i, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.i, label %mlx5e_build_async_icosq_log_wq_sz.exit.mlx5e_build_xdpsq_param.exit_crit_edge, label %do.body10.i.i.i

mlx5e_build_async_icosq_log_wq_sz.exit.mlx5e_build_xdpsq_param.exit_crit_edge: ; preds = %mlx5e_build_async_icosq_log_wq_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_xdpsq_param.exit

do.body10.i.i.i:                                  ; preds = %mlx5e_build_async_icosq_log_wq_sz.exit
  call void @__sanitizer_cov_trace_pc() #15
  %xdp_sq = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2
  %45 = ptrtoint ptr %xdp_sq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %xdp_sq, align 4
  %and16.i.i.i = and i32 %46, -14680065
  %or19.i.i.i = or i32 %and16.i.i.i, 4194304
  store i32 %or19.i.i.i, ptr %xdp_sq, align 4
  br label %mlx5e_build_xdpsq_param.exit

mlx5e_build_xdpsq_param.exit:                     ; preds = %do.body10.i.i.i, %mlx5e_build_async_icosq_log_wq_sz.exit.mlx5e_build_xdpsq_param.exit_crit_edge
  %cq_period_mode.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8, i32 3
  %47 = ptrtoint ptr %cq_period_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cq_period_mode.i.i, align 2
  %cq_period_mode7.i.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 2, i32 0, i32 3
  %49 = ptrtoint ptr %cq_period_mode7.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %cq_period_mode7.i.i, align 2
  %sqc1.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 1
  %add.ptr3.i.i23 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 1, i32 20
  %50 = ptrtoint ptr %add.ptr3.i.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr3.i.i23, align 4
  %and.i.i24 = and i32 %51, -983041
  %or.i.i25 = or i32 %and.i.i24, 393216
  store i32 %or.i.i25, ptr %add.ptr3.i.i23, align 4
  %52 = ptrtoint ptr %mlx5e_res.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mlx5e_res.i.i, align 4
  %add.ptr13.i.i27 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 1, i32 14
  %54 = ptrtoint ptr %add.ptr13.i.i27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr13.i.i27, align 4
  %and14.i.i28 = and i32 %55, -16777216
  %and15.i.i29 = and i32 %53, 16777215
  %or17.i.i30 = or i32 %and14.i.i28, %and15.i.i29
  store i32 %or17.i.i30, ptr %add.ptr13.i.i27, align 4
  %wq22.i.i31 = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %wq22.i.i31 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %wq22.i.i31, align 4
  %and.i32 = and i32 %or.i.i25, -589856
  %or.i34 = or i32 %and.i32, %retval.0.i
  store i32 %or.i34, ptr %add.ptr3.i.i23, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %sqc1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sqc1.i, align 4
  %and17.i = and i32 %62, -524289
  %63 = shl i32 %60, 12
  %shl19.i = and i32 %63, 524288
  %or20.i = or i32 %and17.i, %shl19.i
  store i32 %or20.i, ptr %sqc1.i, align 4
  %add.ptr.i.i35 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %add.ptr.i.i35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i35, align 4
  %and.i32.i = and i32 %65, -520093697
  %shl.i.i36 = shl nuw nsw i32 %retval.0.i, 24
  %or.i33.i = or i32 %and.i32.i, %shl.i.i36
  store i32 %or.i33.i, ptr %add.ptr.i.i35, align 4
  %66 = ptrtoint ptr %uar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %uar.i.i.i, align 4
  %index.i.i.i38 = getelementptr inbounds %struct.mlx5_uars_page, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %index.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index.i.i.i38, align 4
  %and.i.i.i39 = and i32 %or.i33.i, -16777216
  %and3.i.i.i40 = and i32 %69, 16777215
  %or.i.i.i41 = or i32 %and3.i.i.i40, %and.i.i.i39
  store i32 %or.i.i.i41, ptr %add.ptr.i.i35, align 4
  %70 = ptrtoint ptr %caps.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %caps.i.i.i22, align 8
  %add.ptr8.i.i.i43 = getelementptr i32, ptr %71, i32 45
  %72 = ptrtoint ptr %add.ptr8.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr8.i.i.i43, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i.i44 = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i.i44, label %mlx5e_build_xdpsq_param.exit.mlx5e_build_icosq_param.exit_crit_edge, label %do.body10.i.i.i47

mlx5e_build_xdpsq_param.exit.mlx5e_build_icosq_param.exit_crit_edge: ; preds = %mlx5e_build_xdpsq_param.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_icosq_param.exit

do.body10.i.i.i47:                                ; preds = %mlx5e_build_xdpsq_param.exit
  call void @__sanitizer_cov_trace_pc() #15
  %icosq = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3
  %75 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %icosq, align 4
  %and16.i.i.i45 = and i32 %76, -14680065
  %or19.i.i.i46 = or i32 %and16.i.i.i45, 4194304
  store i32 %or19.i.i.i46, ptr %icosq, align 4
  br label %mlx5e_build_icosq_param.exit

mlx5e_build_icosq_param.exit:                     ; preds = %do.body10.i.i.i47, %mlx5e_build_xdpsq_param.exit.mlx5e_build_icosq_param.exit_crit_edge
  %cq_period_mode.i.i48 = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 3, i32 0, i32 3
  %77 = ptrtoint ptr %cq_period_mode.i.i48 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %cq_period_mode.i.i48, align 2
  %async_icosq = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4
  %add.ptr3.i.i49 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 1, i32 20
  %78 = ptrtoint ptr %add.ptr3.i.i49 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr3.i.i49, align 4
  %and.i.i50 = and i32 %79, -983041
  %or.i.i51 = or i32 %and.i.i50, 393216
  store i32 %or.i.i51, ptr %add.ptr3.i.i49, align 4
  %80 = ptrtoint ptr %mlx5e_res.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mlx5e_res.i.i, align 4
  %add.ptr13.i.i53 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 1, i32 14
  %82 = ptrtoint ptr %add.ptr13.i.i53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr13.i.i53, align 4
  %and14.i.i54 = and i32 %83, -16777216
  %and15.i.i55 = and i32 %81, 16777215
  %or17.i.i56 = or i32 %and14.i.i54, %and15.i.i55
  store i32 %or17.i.i56, ptr %add.ptr13.i.i53, align 4
  %wq22.i.i57 = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %wq22.i.i57 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %wq22.i.i57, align 4
  %stop_room.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 5
  %85 = ptrtoint ptr %stop_room.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %stop_room.i, align 2
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %86 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %86)
  %cmp.i.not.i.i58 = icmp eq i64 %86, -1
  br i1 %cmp.i.not.i.i58, label %mlx5e_accel_is_ktls_rx.exit.i62, label %mlx5e_accel_is_ktls_rx.exit.thread.i

mlx5e_accel_is_ktls_rx.exit.thread.i:             ; preds = %mlx5e_build_icosq_param.exit
  call void @__sanitizer_cov_trace_pc() #15
  %is_tls47.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 4
  %87 = ptrtoint ptr %is_tls47.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %is_tls47.i, align 1
  br label %do.body.i

mlx5e_accel_is_ktls_rx.exit.i62:                  ; preds = %mlx5e_build_icosq_param.exit
  %88 = ptrtoint ptr %caps.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %caps.i.i.i22, align 8
  %add.ptr.i.i.i60 = getelementptr i32, ptr %89, i32 36
  %90 = ptrtoint ptr %add.ptr.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i.i60, align 4
  %92 = and i32 %91, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.i.not.i61 = icmp eq i32 %92, 0
  %is_tls.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 4
  %.lobit.i = lshr exact i32 %92, 29
  %93 = trunc i32 %.lobit.i to i8
  %94 = ptrtoint ptr %is_tls.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %is_tls.i, align 1
  br i1 %tobool.i.i.not.i61, label %mlx5e_accel_is_ktls_rx.exit.i62.do.body.i_crit_edge, label %if.then.i

mlx5e_accel_is_ktls_rx.exit.i62.do.body.i_crit_edge: ; preds = %mlx5e_accel_is_ktls_rx.exit.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then.i:                                        ; preds = %mlx5e_accel_is_ktls_rx.exit.i62
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %stop_room.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2, ptr %stop_room.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %mlx5e_accel_is_ktls_rx.exit.i62.do.body.i_crit_edge, %mlx5e_accel_is_ktls_rx.exit.thread.i
  %sqc1.i63 = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %100 = ptrtoint ptr %sqc1.i63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sqc1.i63, align 4
  %and12.i = and i32 %101, -524289
  %102 = shl i32 %99, 12
  %shl.i = and i32 %102, 524288
  %or.i65 = or i32 %and12.i, %shl.i
  store i32 %or.i65, ptr %sqc1.i63, align 4
  %and24.i = and i32 %or.i.i51, -589856
  %or27.i = or i32 %and24.i, %15
  %103 = ptrtoint ptr %add.ptr3.i.i49 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or27.i, ptr %add.ptr3.i.i49, align 4
  %add.ptr.i.i66 = getelementptr %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 0, i32 0, i32 3
  %104 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i.i66, align 4
  %and.i44.i = and i32 %105, -520093697
  %shl.i.i67 = shl nuw nsw i32 %15, 24
  %or.i45.i = or i32 %and.i44.i, %shl.i.i67
  store i32 %or.i45.i, ptr %add.ptr.i.i66, align 4
  %106 = ptrtoint ptr %uar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %uar.i.i.i, align 4
  %index.i.i.i69 = getelementptr inbounds %struct.mlx5_uars_page, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %index.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index.i.i.i69, align 4
  %and.i.i.i70 = and i32 %or.i45.i, -301989888
  %and3.i.i.i71 = and i32 %109, 16777215
  %or.i.i.i72 = or i32 %and3.i.i.i71, %and.i.i.i70
  store i32 %or.i.i.i72, ptr %add.ptr.i.i66, align 4
  %110 = ptrtoint ptr %caps.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %caps.i.i.i22, align 8
  %add.ptr8.i.i.i73 = getelementptr i32, ptr %111, i32 45
  %112 = ptrtoint ptr %add.ptr8.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr8.i.i.i73, align 4
  %114 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i.i74 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i74, label %do.body.i.mlx5e_build_async_icosq_param.exit_crit_edge, label %do.body10.i.i.i77

do.body.i.mlx5e_build_async_icosq_param.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_build_async_icosq_param.exit

do.body10.i.i.i77:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %async_icosq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %async_icosq, align 4
  %and16.i.i.i75 = and i32 %116, -14680065
  %or19.i.i.i76 = or i32 %and16.i.i.i75, 4194304
  store i32 %or19.i.i.i76, ptr %async_icosq, align 4
  br label %mlx5e_build_async_icosq_param.exit

mlx5e_build_async_icosq_param.exit:               ; preds = %do.body10.i.i.i77, %do.body.i.mlx5e_build_async_icosq_param.exit_crit_edge
  %cq_period_mode.i.i78 = getelementptr inbounds %struct.mlx5e_channel_param, ptr %cparam, i32 0, i32 4, i32 0, i32 3
  %117 = ptrtoint ptr %cq_period_mode.i.i78 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %cq_period_mode.i.i78, align 2
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_build_async_icosq_param.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c", i32 217, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_validate_params._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_validate_params._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__print_once", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c", i32 303, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @slow_pci_heuristic.__UNIQUE_ID_ddebug760, !9, !"__UNIQUE_ID_ddebug760", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c", i32 340, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mlx5e_init_rq_type_params._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5e_init_rq_type_params._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c", i32 544, i32 4}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5e_build_rq_param._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5e_build_rq_param._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/params.c", i32 689, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mlx5e_shampo_hd_per_wqe.__UNIQUE_ID_ddebug799, !26, !"__UNIQUE_ID_ddebug799", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i32 0, i32 33}
!43 = !{i8 0, i8 2}
!44 = !{i64 2149129119, i64 2149129124, i64 2149129137, i64 2149129181, i64 2149129215, i64 2149129236}
!45 = !{i32 0, i32 26}
!46 = !{i32 0, i32 29}
