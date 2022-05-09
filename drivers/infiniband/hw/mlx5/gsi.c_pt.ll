; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/gsi.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/gsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.176 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.mlx5_ib_delay_drop = type { ptr, %struct.work_struct, %struct.mutex, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.mlx5_ib_lb_state = type { %struct.mutex, i32, i32, i8 }
%struct.mlx5_dm = type { ptr, %struct.spinlock, [8 x i32] }
%struct.mlx5_srq_table = type { %struct.notifier_block, %struct.xarray }
%struct.mlx5_qp_table = type { %struct.notifier_block, %struct.spinlock, %struct.xarray }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.mlx5_devx_event_table = type { %struct.mlx5_nb, %struct.mutex, %struct.xarray }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5_var_table = type { %struct.mutex, ptr, i64, i32, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.190, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.192, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.190 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.191] }
%struct.anon.191 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.192 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.188, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%union.anon.188 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.196, i32, i32 }
%union.anon.196 = type { ptr }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.164 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i64 }
%union.anon.164 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.mlx5_ib_gsi_qp = type { ptr, i32, %struct.ib_qp_cap, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.160, ptr, i32, i32, i32, %union.anon.161 }
%union.anon.160 = type { i64 }
%union.anon.161 = type { i32 }
%struct.mlx5_ib_ah = type { %struct.ib_ah, %struct.mlx5_av, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_av = type { %union.anon.198, i32, i8, i8, %union.anon.200, [4 x i8], [6 x i8], i8, i8, i32, [16 x i8] }
%union.anon.198 = type { i64 }
%union.anon.200 = type { i16 }
%struct.mlx5_ib_gsi_wr = type { %struct.ib_cqe, %struct.ib_wc, i8 }
%struct.ib_cqe = type { ptr }
%struct.ib_wc = type { %union.anon.135, i32, i32, i32, i32, ptr, %union.anon.136, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.135 = type { i64 }
%union.anon.136 = type { i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.137, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.137 = type { %struct.work_struct }

@mlx5_ib_create_gsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): GSI QP already exists on port %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_ib_create_gsi\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/gsi.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_create_gsi._entry_ptr = internal global ptr @mlx5_ib_create_gsi._entry, section ".printk_index", align 4
@mlx5_ib_create_gsi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gsi->lock\00", [21 x i8] zeroinitializer }, align 32
@mlx5_ib_create_gsi._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): unable to create send CQ for GSI QP. error %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_ib_create_gsi._entry_ptr.8 = internal global ptr @mlx5_ib_create_gsi._entry.6, section ".printk_index", align 4
@mlx5_ib_create_gsi._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): unable to create hardware GSI QP. error %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5_ib_create_gsi._entry_ptr.11 = internal global ptr @mlx5_ib_create_gsi._entry.9, section ".printk_index", align 4
@mlx5_ib_destroy_gsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): unable to destroy hardware GSI QP. error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_ib_destroy_gsi\00", [44 x i8] zeroinitializer }, align 32
@mlx5_ib_destroy_gsi._entry_ptr = internal global ptr @mlx5_ib_destroy_gsi._entry, section ".printk_index", align 4
@mlx5_ib_destroy_gsi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_ib_gsi_modify_qp.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_ib_gsi_modify_qp\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): modifying GSI QP to state %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_ib_gsi_modify_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): unable to modify GSI rx QP: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_ib_gsi_modify_qp._entry_ptr = internal global ptr @mlx5_ib_gsi_modify_qp._entry, section ".printk_index", align 4
@setup_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): unable to read P_Key at port %d, index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_qp\00", [23 x i8] zeroinitializer }, align 32
@setup_qp._entry_ptr = internal global ptr @setup_qp._entry, section ".printk_index", align 4
@setup_qp.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): invalid P_Key at port %d, index %d.  Skipping.\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_qp.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): already existing GSI TX QP at port %d, index %d. Skipping\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_qp._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): unable to create hardware UD QP for GSI: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@setup_qp._entry_ptr.24 = internal global ptr @setup_qp._entry.22, section ".printk_index", align 4
@setup_qp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@setup_qp.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@modify_to_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 235, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): could not change QP%d state to INIT: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"modify_to_rts\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@modify_to_rts._entry_ptr = internal global ptr @modify_to_rts._entry, section ".printk_index", align 4
@modify_to_rts._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.2, i32 243, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): could not change QP%d state to RTR: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@modify_to_rts._entry_ptr.31 = internal global ptr @modify_to_rts._entry.29, section ".printk_index", align 4
@modify_to_rts._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 252, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): could not change QP%d state to RTS: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@modify_to_rts._entry_ptr.34 = internal global ptr @modify_to_rts._entry.32, section ".printk_index", align 4
@generate_completions.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_ib_add_outstanding_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): no available GSI work request.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_ib_add_outstanding_wr\00", [37 x i8] zeroinitializer }, align 32
@mlx5_ib_add_outstanding_wr._entry_ptr = internal global ptr @mlx5_ib_add_outstanding_wr._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 120, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 126, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 134, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 150, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 178, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 329, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 333, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 275, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 281, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 290, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 297, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 234, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 242, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 251, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/gsi.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 367, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @mlx5_ib_add_outstanding_wr._entry, ptr @mlx5_ib_add_outstanding_wr._entry_ptr, ptr @mlx5_ib_create_gsi._entry, ptr @mlx5_ib_create_gsi._entry.6, ptr @mlx5_ib_create_gsi._entry.9, ptr @mlx5_ib_create_gsi._entry_ptr, ptr @mlx5_ib_create_gsi._entry_ptr.11, ptr @mlx5_ib_create_gsi._entry_ptr.8, ptr @mlx5_ib_destroy_gsi._entry, ptr @mlx5_ib_destroy_gsi._entry_ptr, ptr @mlx5_ib_gsi_modify_qp._entry, ptr @mlx5_ib_gsi_modify_qp._entry_ptr, ptr @modify_to_rts._entry, ptr @modify_to_rts._entry.29, ptr @modify_to_rts._entry.32, ptr @modify_to_rts._entry_ptr, ptr @modify_to_rts._entry_ptr.31, ptr @modify_to_rts._entry_ptr.34, ptr @setup_qp._entry, ptr @setup_qp._entry.22, ptr @setup_qp._entry_ptr, ptr @setup_qp._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5_ib_create_gsi.__key, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_gsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_gsi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_gsi._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_gsi._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_destroy_gsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_gsi_modify_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_qp._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modify_to_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modify_to_rts._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modify_to_rts._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_add_outstanding_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_create_gsi(ptr noundef %pd, ptr noundef %mqp, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %hw_init_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %hw_init_attr) #7
  %2 = call ptr @memcpy(ptr %hw_init_attr, ptr %attr, i32 72)
  %port_num1 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 10
  %3 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_num1, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 17
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i32, ptr %8, i32 13
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %14 = and i32 %13, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %max_pkeys = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 22, i32 38
  %15 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_pkeys, align 8
  %conv6 = zext i16 %16 to i32
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %lag_active = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %lag_active to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %lag_active, align 8
  %18 = lshr i8 %bf.load, 4
  %19 = and i8 %18, 2
  %20 = zext i8 %19 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4, %entry.if.end9_crit_edge
  %num_qps.0 = phi i32 [ %conv6, %if.then4 ], [ 0, %entry.if.end9_crit_edge ], [ %20, %if.else ]
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1
  %22 = shl nuw nsw i32 %num_qps.0, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #10
  %tx_qps = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tx_qps to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %tx_qps, align 4
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %attr, i32 0, i32 6
  %24 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cap, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 80) #7
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit166.thread, label %if.end7.i.i164, !prof !85

kcalloc.exit166.thread:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %outstanding_wrs180 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %outstanding_wrs180 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %outstanding_wrs180, align 4
  br label %err_free_tx

if.end7.i.i164:                                   ; preds = %if.end14
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i163 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #10
  %outstanding_wrs = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %outstanding_wrs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i163, ptr %outstanding_wrs, align 4
  %tobool17.not = icmp eq ptr %call8.i.i163, null
  br i1 %tobool17.not, label %if.end7.i.i164.err_free_tx_crit_edge, label %if.end19

if.end7.i.i164.err_free_tx_crit_edge:             ; preds = %if.end7.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tx

if.end19:                                         ; preds = %if.end7.i.i164
  %conv20 = and i32 %4, 255
  %sub = add nsw i32 %conv20, -1
  %arrayidx21 = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8, i32 6, i32 %sub
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21, align 8
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %33 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %34 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef %39, i32 noundef %conv20) #11
  br label %err_free_wrs

if.end27:                                         ; preds = %if.end19
  %num_qps28 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %num_qps28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %num_qps.0, ptr %num_qps28, align 4
  %lock = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5_ib_create_gsi.__key, i16 noundef signext 3) #7
  %cap33 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %cap33, ptr %cap, i32 24)
  %port_num36 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %port_num36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv20, ptr %port_num36, align 4
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 4
  %45 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cap, align 4
  %call.i = tail call ptr @__ib_alloc_cq(ptr noundef %44, ptr noundef %21, i32 noundef %46, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.14) #7
  %cq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %cq, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end46, label %if.end55

do.end46:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %48 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %49 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i167 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i167 to ptr
  %task49 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task49, align 8
  %pid50 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid50, align 8
  %55 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef %54, i32 noundef %55) #11
  %56 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cq, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %err_free_wrs

if.end55:                                         ; preds = %if.end27
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %hw_init_attr, i32 0, i32 8
  %59 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4097, ptr %qp_type, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %hw_init_attr, i32 0, i32 2
  %60 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %send_cq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_qps.0)
  %tobool57.not = icmp eq i32 %num_qps.0, 0
  br i1 %tobool57.not, label %if.end55.if.end63_crit_edge, label %if.then58

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %cap59 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %hw_init_attr, i32 0, i32 6
  %61 = ptrtoint ptr %cap59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cap59, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %hw_init_attr, i32 0, i32 6, i32 2
  %62 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %max_send_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %hw_init_attr, i32 0, i32 6, i32 4
  %63 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %max_inline_data, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end55.if.end63_crit_edge
  %call.i168 = call ptr @ib_create_qp_kernel(ptr noundef %pd, ptr noundef nonnull %hw_init_attr, ptr noundef nonnull @.str.14) #7
  %64 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i168, ptr %21, align 4
  %cmp.i169 = icmp ugt ptr %call.i168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end70, label %if.end79

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %65 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %66 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i170 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i170 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task73, align 8
  %pid74 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid74, align 8
  %72 = ptrtoint ptr %call.i168 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef %71, i32 noundef %72) #11
  %73 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %21, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cq, align 4
  call void @ib_free_cq(ptr noundef %77) #7
  br label %err_free_wrs

if.end79:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port_num1, align 4
  %sub83 = add i32 %79, -1
  %arrayidx84 = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8, i32 6, i32 %sub83
  %80 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %21, ptr %arrayidx84, align 8
  br label %cleanup

err_free_wrs:                                     ; preds = %do.end70, %do.end46, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ %58, %do.end46 ], [ %75, %do.end70 ]
  %81 = ptrtoint ptr %outstanding_wrs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %outstanding_wrs, align 4
  call void @kfree(ptr noundef %82) #7
  br label %err_free_tx

err_free_tx:                                      ; preds = %err_free_wrs, %if.end7.i.i164.err_free_tx_crit_edge, %kcalloc.exit166.thread
  %ret.1 = phi i32 [ %ret.0, %err_free_wrs ], [ -12, %if.end7.i.i164.err_free_tx_crit_edge ], [ -12, %kcalloc.exit166.thread ]
  %83 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_qps, align 4
  call void @kfree(ptr noundef %84) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_tx, %if.end79, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_tx ], [ 0, %if.end79 ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %hw_init_attr) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_destroy_gsi(ptr nocapture noundef %mqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mqp, align 8
  %2 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1
  %port_num1 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_num1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef %6, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %8 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 179, i32 noundef %13, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8, i32 6, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %2, align 4
  %num_qps = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_qps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp82 = icmp sgt i32 %17, 0
  br i1 %cmp82, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tx_qps = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %qp_index.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_qps, align 4
  %arrayidx6 = getelementptr ptr, ptr %19, i32 %qp_index.083
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %call.i81 = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %21, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool13.not = icmp eq i32 %call.i81, 0
  br i1 %tobool13.not, label %if.end9.if.end46_crit_edge, label %land.rhs

if.end9.if.end46_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.rhs:                                         ; preds = %if.end9
  %.b80 = load i1, ptr @mlx5_ib_destroy_gsi.__already_done, align 1
  br i1 %.b80, label %land.rhs.if.end46_crit_edge, label %if.then21, !prof !86

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mlx5_ib_destroy_gsi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef null) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then21, %land.rhs.if.end46_crit_edge, %if.end9.if.end46_crit_edge
  %22 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_qps, align 4
  %arrayidx55 = getelementptr ptr, ptr %23, i32 %qp_index.083
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx55, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %qp_index.083, 1
  %25 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_qps, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %cq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cq, align 4
  tail call void @ib_free_cq(ptr noundef %28) #7
  %outstanding_wrs = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %outstanding_wrs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %outstanding_wrs, align 4
  tail call void @kfree(ptr noundef %30) #7
  %tx_qps56 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %mqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %tx_qps56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_qps56, align 4
  tail call void @kfree(ptr noundef %32) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_gsi_modify_qp(ptr noundef %qp, ptr noundef %attr, i32 noundef %attr_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %2 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_gsi_modify_qp.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_gsi_modify_qp, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %4 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_gsi_modify_qp.__UNIQUE_ID_ddebug510, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 329, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %call6 = tail call i32 @ib_modify_qp(ptr noundef %13, ptr noundef %attr, i32 noundef %attr_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end16, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %15 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i39 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i39 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 333, i32 noundef %20, i32 noundef %call6) #11
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %state = getelementptr inbounds %struct.mlx5_ib_qp, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.not = icmp eq i8 %24, 3
  br i1 %cmp.not, label %for.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %num_qps = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_qps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2341 = icmp sgt i32 %26, 0
  br i1 %cmp2341, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %qp_index.042 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @setup_qp(ptr noundef %2, i16 noundef zeroext %qp_index.042)
  %inc = add i16 %qp_index.042, 1
  %conv22 = zext i16 %inc to i32
  %27 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_qps, align 4
  %cmp23 = icmp sgt i32 %28, %conv22
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_qp(ptr noundef %gsi, i16 noundef zeroext %qp_index) unnamed_addr #0 align 64 {
entry:
  %attr.i = alloca %struct.ib_qp_attr, align 8
  %init_attr.i = alloca %struct.ib_qp_init_attr, align 4
  %pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %qp_index to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey) #7
  %4 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %pkey, align 2, !annotation !88
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = and i32 %10, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  %spec.select = select i1 %cmp.not, i16 %qp_index, i16 0
  %port_num = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 1
  %12 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num, align 4
  %call4 = call i32 @ib_query_pkey(ptr noundef %3, i32 noundef %13, i16 noundef zeroext %spec.select, ptr noundef nonnull %pkey) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %15 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %21 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 276, i32 noundef %20, i32 noundef %22, i32 noundef %conv) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %23 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pkey, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not = icmp eq i16 %24, 0
  br i1 %tobool10.not, label %do.body12, label %do.body29

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_qp.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_qp, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !87

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %26 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i268 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i268 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid21, align 8
  %32 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_qp.__UNIQUE_ID_ddebug508, ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef 282, i32 noundef %31, i32 noundef %33, i32 noundef %conv) #7
  br label %cleanup

do.body29:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 8
  %call34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tx_qps = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 9
  %34 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_qps, align 4
  %arrayidx39 = getelementptr ptr, ptr %35, i32 %conv
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx39, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call34) #7
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %if.end65, label %do.body43

do.body43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_qp.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_qp, %if.then55)) #7
          to label %cleanup [label %if.then55], !srcloc !87

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %38 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %39 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i269 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i269 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task58, align 8
  %pid59 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid59, align 8
  %45 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_qp.__UNIQUE_ID_ddebug509, ptr noundef %38, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 291, i32 noundef %44, i32 noundef %46, i32 noundef %conv) #7
  br label %cleanup

if.end65:                                         ; preds = %do.body29
  %47 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gsi, align 4
  %pd1.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pd1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pd1.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr.i) #7
  %51 = getelementptr inbounds i8, ptr %init_attr.i, i32 12
  %52 = call ptr @memset(ptr %51, i32 255, i32 60)
  %event_handler3.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 15
  %53 = ptrtoint ptr %event_handler3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %event_handler3.i, align 4
  %55 = ptrtoint ptr %init_attr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %init_attr.i, align 4
  %qp_context.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 1
  %qp_context5.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 16
  %56 = ptrtoint ptr %qp_context5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %qp_context5.i, align 4
  %58 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %qp_context.i, align 4
  %send_cq.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 2
  %cq.i = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 3
  %59 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cq.i, align 4
  %61 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %send_cq.i, align 4
  %recv_cq7.i = getelementptr inbounds %struct.ib_qp, ptr %48, i32 0, i32 3
  %62 = ptrtoint ptr %recv_cq7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %recv_cq7.i, align 4
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %51, align 4
  %srq.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 4
  %65 = ptrtoint ptr %srq.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %srq.i, align 4
  %xrcd.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 5
  %66 = ptrtoint ptr %xrcd.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %xrcd.i, align 4
  %cap.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6
  %cap8.i = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 2
  %67 = ptrtoint ptr %cap8.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cap8.i, align 4
  %69 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %cap.i, align 4
  %max_recv_wr.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %max_recv_wr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %max_recv_wr.i, align 4
  %max_send_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6, i32 2
  %max_send_sge11.i = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %max_send_sge11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_send_sge11.i, align 4
  %73 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %max_send_sge.i, align 4
  %max_recv_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6, i32 3
  %74 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %max_recv_sge.i, align 4
  %max_inline_data.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6, i32 4
  %max_inline_data13.i = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %max_inline_data13.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_inline_data13.i, align 4
  %77 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %max_inline_data.i, align 4
  %max_rdma_ctxs.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 6, i32 5
  %78 = ptrtoint ptr %max_rdma_ctxs.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %max_rdma_ctxs.i, align 4
  %sq_sig_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 7
  %79 = ptrtoint ptr %sq_sig_type.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %sq_sig_type.i, align 4
  %qp_type.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 8
  %80 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %qp_type.i, align 4
  %create_flags.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 9
  %81 = ptrtoint ptr %create_flags.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 67108864, ptr %create_flags.i, align 4
  %port_num.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 10
  %82 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %port_num.i, align 4
  %rwq_ind_tbl.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 11
  %83 = ptrtoint ptr %rwq_ind_tbl.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rwq_ind_tbl.i, align 4
  %source_qpn.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i, i32 0, i32 12
  %84 = ptrtoint ptr %source_qpn.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %source_qpn.i, align 4
  %call.i.i = call ptr @ib_create_qp_kernel(ptr noundef %50, ptr noundef nonnull %init_attr.i, ptr noundef nonnull @.str.14) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i) #7
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end71, label %if.end77

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %85 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %86 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i270 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i270 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task74, align 8
  %pid75 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid75, align 8
  %92 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, i32 noundef 298, i32 noundef %91, i32 noundef %92) #11
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %lag_active = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 5
  %93 = ptrtoint ptr %lag_active to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load = load i8, ptr %lag_active, align 8
  %94 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool79.not = icmp eq i8 %94, 0
  br i1 %tobool79.not, label %if.end77.if.end83_crit_edge, label %if.then80

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i16 %qp_index, 1
  %gsi_lag_port = getelementptr inbounds %struct.mlx5_ib_qp, ptr %call.i.i, i32 0, i32 24
  %95 = ptrtoint ptr %gsi_lag_port to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %add, ptr %gsi_lag_port, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77.if.end83_crit_edge
  %96 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i) #7
  %98 = call ptr @memset(ptr %attr.i, i32 255, i32 216)
  %99 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %attr.i, align 8
  %pkey_index1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 12
  %100 = ptrtoint ptr %pkey_index1.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %spec.select, ptr %pkey_index1.i, align 8
  %qkey.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 4
  %101 = ptrtoint ptr %qkey.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -2147418112, ptr %qkey.i, align 8
  %102 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port_num, align 4
  %port_num2.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 19
  %104 = ptrtoint ptr %port_num2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %port_num2.i, align 4
  %call3.i = call i32 @ib_modify_qp(ptr noundef %call.i.i, ptr noundef nonnull %attr.i, i32 noundef 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %105 = getelementptr inbounds %struct.ib_device, ptr %97, i32 0, i32 13
  %106 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 68
  %110 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pid.i, align 8
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %call.i.i, i32 0, i32 19
  %112 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qp_num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 235, i32 noundef %111, i32 noundef %113, i32 noundef %call3.i) #11
  br label %err_destroy_qp

if.end.i:                                         ; preds = %if.end83
  %114 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %attr.i, align 8
  %call6.i = call i32 @ib_modify_qp(ptr noundef %call.i.i, ptr noundef nonnull %attr.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end17.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = getelementptr inbounds %struct.ib_device, ptr %97, i32 0, i32 13
  %116 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i50.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i50.i to ptr
  %task14.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task14.i, align 8
  %pid15.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 68
  %120 = ptrtoint ptr %pid15.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pid15.i, align 8
  %qp_num16.i = getelementptr inbounds %struct.ib_qp, ptr %call.i.i, i32 0, i32 19
  %122 = ptrtoint ptr %qp_num16.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qp_num16.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef 243, i32 noundef %121, i32 noundef %123, i32 noundef %call6.i) #11
  br label %err_destroy_qp

if.end17.i:                                       ; preds = %if.end.i
  %124 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 3, ptr %attr.i, align 8
  %sq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 6
  %125 = ptrtoint ptr %sq_psn.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %sq_psn.i, align 8
  %call19.i = call i32 @ib_modify_qp(ptr noundef %call.i.i, ptr noundef nonnull %attr.i, i32 noundef 65537) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %do.body90, label %do.end24.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = getelementptr inbounds %struct.ib_device, ptr %97, i32 0, i32 13
  %127 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i51.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i51.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task27.i, align 8
  %pid28.i = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 68
  %131 = ptrtoint ptr %pid28.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pid28.i, align 8
  %qp_num29.i = getelementptr inbounds %struct.ib_qp, ptr %call.i.i, i32 0, i32 19
  %133 = ptrtoint ptr %qp_num29.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %qp_num29.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.27, i32 noundef 252, i32 noundef %132, i32 noundef %134, i32 noundef %call19.i) #11
  br label %err_destroy_qp

do.body90:                                        ; preds = %if.end17.i
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #7
  %call98 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %135 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_qps, align 4
  %arrayidx105 = getelementptr ptr, ptr %136, i32 %conv
  %137 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx105, align 4
  %tobool106.not = icmp eq ptr %138, null
  br i1 %tobool106.not, label %do.body90.if.end149_crit_edge, label %land.rhs

do.body90.if.end149_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.rhs:                                         ; preds = %do.body90
  %.b263 = load i1, ptr @setup_qp.__already_done, align 1
  br i1 %.b263, label %land.rhs.if.end149_crit_edge, label %if.then123, !prof !86

land.rhs.if.end149_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then123:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @setup_qp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef 9, ptr noundef null) #7
  br label %if.end149

if.end149:                                        ; preds = %if.then123, %land.rhs.if.end149_crit_edge, %do.body90.if.end149_crit_edge
  %139 = ptrtoint ptr %tx_qps to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_qps, align 4
  %arrayidx159 = getelementptr ptr, ptr %140, i32 %conv
  %141 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i.i, ptr %arrayidx159, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call98) #7
  br label %cleanup

err_destroy_qp:                                   ; preds = %do.end24.i, %do.end11.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #7
  %tobool162.not = icmp eq ptr %call.i.i, null
  br i1 %tobool162.not, label %err_destroy_qp.cleanup_crit_edge, label %land.rhs170

err_destroy_qp.cleanup_crit_edge:                 ; preds = %err_destroy_qp
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs170:                                      ; preds = %err_destroy_qp
  %.b262264 = load i1, ptr @setup_qp.__already_done.25, align 1
  br i1 %.b262264, label %land.rhs170.cleanup_crit_edge, label %if.then181, !prof !86

land.rhs170.cleanup_crit_edge:                    ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then181:                                       ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @setup_qp.__already_done.25, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %land.rhs170.cleanup_crit_edge, %err_destroy_qp.cleanup_crit_edge, %if.end149, %do.end71, %if.then55, %do.body43, %if.then17, %do.body12, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_gsi_query_qp(ptr nocapture noundef readonly %qp, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %qp_init_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call1 = tail call i32 @ib_query_qp(ptr noundef %2, ptr noundef %qp_attr, i32 noundef %qp_attr_mask, ptr noundef %qp_init_attr) #7
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %cap2 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %cap, ptr %cap2, i32 24)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_gsi_post_send(ptr noundef %qp, ptr noundef %wr, ptr noundef %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %cur_wr = alloca %struct.ib_ud_wr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1
  %tobool.not78 = icmp eq ptr %wr, null
  br i1 %tobool.not78, label %entry.cleanup27_crit_edge, label %for.body.lr.ph

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 6
  %ah1.i = getelementptr inbounds %struct.ib_ud_wr, ptr %cur_wr, i32 0, i32 1
  %pkey_index.i = getelementptr inbounds %struct.ib_ud_wr, ptr %cur_wr, i32 0, i32 7
  %num_qps.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 3
  %tx_qps.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %outstanding_pi.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1, i32 1
  %outstanding_ci.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 2
  %cap.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1
  %outstanding_wrs.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %1 = getelementptr inbounds %struct.ib_send_wr, ptr %cur_wr, i32 0, i32 1
  %tobool.not.i55 = icmp eq ptr %bad_wr, null
  %.dummy.i = select i1 %tobool.not.i55, ptr %dummy.i, ptr %bad_wr
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.079 = phi ptr [ %wr, %for.body.lr.ph ], [ %98, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cur_wr) #7
  %2 = call ptr @memset(ptr %cur_wr, i32 255, i32 72)
  %3 = call ptr @memcpy(ptr %cur_wr, ptr %wr.addr.079, i32 72)
  %4 = ptrtoint ptr %cur_wr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cur_wr, align 8
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %7 = ptrtoint ptr %ah1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah1.i, align 8
  %9 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pkey_index.i, align 8
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %num_qps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_qps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.body.get_tx_qp.exit_crit_edge, label %if.end.i

for.body.get_tx_qp.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_tx_qp.exit

if.end.i:                                         ; preds = %for.body
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %lag_active.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %lag_active.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %lag_active.i, align 8
  %16 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %xmit_port.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %xmit_port.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xmit_port.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not.i = icmp eq i8 %18, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then8.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %18 to i32
  %sub.i = add nsw i32 %conv6.i, -1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %qp_index.0.i = phi i32 [ %sub.i, %if.then8.i ], [ %conv.i, %land.lhs.true.i.if.end11.i_crit_edge ], [ %conv.i, %if.end.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %qp_index.0.i, i32 %12)
  %cmp.not.i = icmp slt i32 %qp_index.0.i, %12
  br i1 %cmp.not.i, label %if.end15.i, label %if.end11.i.if.then_crit_edge

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %tx_qps.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_qps.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %qp_index.0.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  br label %get_tx_qp.exit

get_tx_qp.exit:                                   ; preds = %if.end15.i, %for.body.get_tx_qp.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end15.i ], [ %6, %for.body.get_tx_qp.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %get_tx_qp.exit.if.then_crit_edge, label %if.end14

get_tx_qp.exit.if.then_crit_edge:                 ; preds = %get_tx_qp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %get_tx_qp.exit.if.then_crit_edge, %if.end11.i.if.then_crit_edge
  %23 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %outstanding_pi.i, align 4
  %25 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %outstanding_ci.i, align 4
  %27 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap.i, align 4
  %add.i.i = add i32 %28, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %24, %add.i.i
  br i1 %cmp.i.i, label %mlx5_ib_gsi_silent_drop.exit, label %if.end.i49

if.end.i49:                                       ; preds = %if.then
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %1, align 8
  %31 = ptrtoint ptr %outstanding_wrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %outstanding_wrs.i, align 4
  %rem.i.i = urem i32 %24, %28
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %32, i32 %rem.i.i
  %inc.i.i = add i32 %24, 1
  %33 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i.i, ptr %outstanding_pi.i, align 4
  %wc7.i.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %32, i32 %rem.i.i, i32 1
  %34 = ptrtoint ptr %wc7.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %30, ptr %wc7.i.i, align 8
  %wc.sroa.5.0.wc7.i.sroa_idx.i = getelementptr inbounds i8, ptr %wc7.i.i, i32 8
  %wc.sroa.9.0.wc7.i.sroa_idx.i = getelementptr inbounds i8, ptr %wc7.i.i, i32 24
  %35 = call ptr @memset(ptr %wc.sroa.5.0.wc7.i.sroa_idx.i, i32 0, i32 16)
  %36 = ptrtoint ptr %wc.sroa.9.0.wc7.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %qp, ptr %wc.sroa.9.0.wc7.i.sroa_idx.i, align 8
  %wc.sroa.10.0.wc7.i.sroa_idx.i = getelementptr inbounds i8, ptr %wc7.i.i, i32 28
  %wc.sroa.21.0.wc7.i.sroa_idx.i = getelementptr inbounds i8, ptr %wc7.i.i, i32 61
  %37 = call ptr @memset(ptr %wc.sroa.10.0.wc7.i.sroa_idx.i, i32 0, i32 33)
  %38 = call ptr @memset(ptr %wc.sroa.21.0.wc7.i.sroa_idx.i, i32 255, i32 3)
  %completed.i.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %32, i32 %rem.i.i, i32 2
  %39 = ptrtoint ptr %completed.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i = load i8, ptr %completed.i.i, align 8
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %completed.i.i, align 8
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @handle_single_completion, ptr %arrayidx.i.i, align 8
  store ptr %arrayidx.i.i, ptr %1, align 8
  %41 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %send_cq.i.i, align 8
  %43 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %outstanding_ci.i, align 4
  %45 = load i32, ptr %outstanding_pi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp.not54.i.i = icmp eq i32 %44, %45
  br i1 %cmp.not54.i.i, label %if.end.i49.if.end_crit_edge, label %if.end.i49.for.body.i.i_crit_edge

if.end.i49.for.body.i.i_crit_edge:                ; preds = %if.end.i49
  br label %for.body.i.i

if.end.i49.if.end_crit_edge:                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.i:                                     ; preds = %if.end30.i.i.for.body.i.i_crit_edge, %if.end.i49.for.body.i.i_crit_edge
  %index.055.i.i = phi i32 [ %inc.i15.i, %if.end30.i.i.for.body.i.i_crit_edge ], [ %44, %if.end.i49.for.body.i.i_crit_edge ]
  %46 = ptrtoint ptr %outstanding_wrs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %outstanding_wrs.i, align 4
  %48 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cap.i, align 4
  %rem.i11.i = urem i32 %index.055.i.i, %49
  %completed.i12.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %47, i32 %rem.i11.i, i32 2
  %50 = ptrtoint ptr %completed.i12.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i13.i = load i8, ptr %completed.i12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i13.i, -1
  br i1 %bf.cast.not.i.i, label %for.body.i.i.if.end_crit_edge, label %if.end.i14.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i14.i:                                     ; preds = %for.body.i.i
  %wc.i.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %47, i32 %rem.i11.i, i32 1
  %call.i.i = call i32 @mlx5_ib_generate_wc(ptr noundef %42, ptr noundef %wc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i14.i.if.end30.i.i_crit_edge, label %land.rhs.i.i

if.end.i14.i.if.end30.i.i_crit_edge:              ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

land.rhs.i.i:                                     ; preds = %if.end.i14.i
  %.b53.i.i = load i1, ptr @generate_completions.__already_done, align 1
  br i1 %.b53.i.i, label %land.rhs.i.i.if.end30.i.i_crit_edge, label %if.then8.i.i, !prof !86

land.rhs.i.i.if.end30.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @generate_completions.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then8.i.i, %land.rhs.i.i.if.end30.i.i_crit_edge, %if.end.i14.i.if.end30.i.i_crit_edge
  %51 = ptrtoint ptr %completed.i12.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load39.i.i = load i8, ptr %completed.i12.i, align 8
  %bf.clear.i.i = and i8 %bf.load39.i.i, 127
  store i8 %bf.clear.i.i, ptr %completed.i12.i, align 8
  %inc.i15.i = add i32 %index.055.i.i, 1
  %52 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %outstanding_pi.i, align 4
  %cmp.not.i.i = icmp eq i32 %inc.i15.i, %53
  br i1 %cmp.not.i.i, label %if.end30.i.i.if.end_crit_edge, label %if.end30.i.i.for.body.i.i_crit_edge

if.end30.i.i.for.body.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end30.i.i.if.end_crit_edge:                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mlx5_ib_gsi_silent_drop.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.ib_device, ptr %55, i32 0, i32 13
  %57 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 367, i32 noundef %62) #11
  br label %err

if.end:                                           ; preds = %if.end30.i.i.if.end_crit_edge, %for.body.i.i.if.end_crit_edge, %if.end.i49.if.end_crit_edge
  %index.0.lcssa.i.i = phi i32 [ %44, %if.end.i49.if.end_crit_edge ], [ %index.055.i.i, %for.body.i.i.if.end_crit_edge ], [ %inc.i15.i, %if.end30.i.i.if.end_crit_edge ]
  %63 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %index.0.lcssa.i.i, ptr %outstanding_ci.i, align 4
  br label %for.inc

if.end14:                                         ; preds = %get_tx_qp.exit
  %64 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %outstanding_pi.i, align 4
  %66 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %outstanding_ci.i, align 4
  %68 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cap.i, align 4
  %add.i = add i32 %69, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add.i)
  %cmp.i = icmp eq i32 %65, %add.i
  br i1 %cmp.i, label %mlx5_ib_add_outstanding_wr.exit, label %if.end18

mlx5_ib_add_outstanding_wr.exit:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.ib_device, ptr %71, i32 0, i32 13
  %73 = call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 367, i32 noundef %78) #11
  br label %err

if.end18:                                         ; preds = %if.end14
  %79 = ptrtoint ptr %outstanding_wrs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %outstanding_wrs.i, align 4
  %rem.i = urem i32 %65, %69
  %arrayidx.i51 = getelementptr %struct.mlx5_ib_gsi_wr, ptr %80, i32 %rem.i
  %inc.i = add i32 %65, 1
  %81 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %inc.i, ptr %outstanding_pi.i, align 4
  %wc7.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %80, i32 %rem.i, i32 1
  %82 = call ptr @memset(ptr %wc7.i, i32 0, i32 64)
  %83 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %pkey_index.i, align 8
  %pkey_index9.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %80, i32 %rem.i, i32 1, i32 10
  %85 = ptrtoint ptr %pkey_index9.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %pkey_index9.i, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %1, align 8
  %88 = ptrtoint ptr %wc7.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %wc7.i, align 8
  %89 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @handle_single_completion, ptr %arrayidx.i51, align 8
  store ptr %arrayidx.i51, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #7
  %90 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !88
  %91 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %retval.0.i, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %92, i32 0, i32 1, i32 6
  %93 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %94(ptr noundef nonnull %retval.0.i, ptr noundef nonnull %cur_wr, ptr noundef %.dummy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end18.for.inc_crit_edge, label %if.then22

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %outstanding_pi.i, align 4
  %dec = add i32 %96, -1
  store i32 %dec, ptr %outstanding_pi.i, align 4
  br label %err

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %if.end
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cur_wr) #7
  %97 = ptrtoint ptr %wr.addr.079 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wr.addr.079, align 8
  %tobool.not = icmp eq ptr %98, null
  br i1 %tobool.not, label %for.inc.cleanup27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

err:                                              ; preds = %if.then22, %mlx5_ib_add_outstanding_wr.exit, %mlx5_ib_gsi_silent_drop.exit
  %ret.0.ph = phi i32 [ -12, %mlx5_ib_add_outstanding_wr.exit ], [ -12, %mlx5_ib_gsi_silent_drop.exit ], [ %call.i, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cur_wr) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  %99 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %wr.addr.079, ptr %bad_wr, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %err, %for.inc.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %ret.0.ph, %err ], [ 0, %entry.cleanup27_crit_edge ], [ 0, %for.inc.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_gsi_post_recv(ptr nocapture noundef readonly %qp, ptr noundef %wr, ptr noundef %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #7
  %3 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !88
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %post_recv.i, align 4
  %tobool.not.i = icmp eq ptr %bad_wr, null
  %.dummy.i = select i1 %tobool.not.i, ptr %dummy.i, ptr %bad_wr
  %call.i = call i32 %7(ptr noundef %2, ptr noundef %wr, ptr noundef %.dummy.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_gsi_pkey_change(ptr noundef %gsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_qps = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %gsi, i32 0, i32 7
  %0 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_qps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %qp_index.06 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @setup_qp(ptr noundef %gsi, i16 noundef zeroext %qp_index.06)
  %inc = add i16 %qp_index.06, 1
  %conv = zext i16 %inc to i32
  %2 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_qps, align 4
  %cmp = icmp sgt i32 %3, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_generate_wc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_single_completion(ptr nocapture noundef readonly %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 -256
  %lock = getelementptr inbounds %struct.mlx5_ib_gsi_qp, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %completed = getelementptr inbounds %struct.mlx5_ib_gsi_wr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %completed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %completed, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %completed, align 8
  %wc9 = getelementptr inbounds %struct.mlx5_ib_gsi_wr, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %wc9 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %wc9, align 8
  %7 = call ptr @memcpy(ptr %wc9, ptr %wc, i32 64)
  store i64 %6, ptr %wc9, align 8
  %qp = getelementptr inbounds %struct.mlx5_ib_gsi_wr, ptr %3, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr3, ptr %qp, align 8
  %send_cq.i = getelementptr i8, ptr %1, i32 -248
  %9 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_cq.i, align 8
  %outstanding_ci.i = getelementptr i8, ptr %1, i32 44
  %11 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outstanding_ci.i, align 4
  %outstanding_wrs.i = getelementptr i8, ptr %1, i32 36
  %outstanding_pi.i = getelementptr i8, ptr %1, i32 40
  %13 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %outstanding_pi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not54.i = icmp eq i32 %12, %14
  br i1 %cmp.not54.i, label %entry.generate_completions.exit_crit_edge, label %for.body.lr.ph.i

entry.generate_completions.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %generate_completions.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %cap.i = getelementptr i8, ptr %1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.055.i = phi i32 [ %12, %for.body.lr.ph.i ], [ %inc.i, %if.end30.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %outstanding_wrs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %outstanding_wrs.i, align 4
  %17 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap.i, align 4
  %rem.i = urem i32 %index.055.i, %18
  %completed.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %16, i32 %rem.i, i32 2
  %19 = ptrtoint ptr %completed.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %completed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %for.body.i.generate_completions.exit_crit_edge, label %if.end.i

for.body.i.generate_completions.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generate_completions.exit

if.end.i:                                         ; preds = %for.body.i
  %wc.i = getelementptr %struct.mlx5_ib_gsi_wr, ptr %16, i32 %rem.i, i32 1
  %call.i = tail call i32 @mlx5_ib_generate_wc(ptr noundef %10, ptr noundef %wc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end30.i_crit_edge, label %land.rhs.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b53.i = load i1, ptr @generate_completions.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then8.i, !prof !86

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @generate_completions.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 61, i32 noundef 9, ptr noundef null) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then8.i, %land.rhs.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  %20 = ptrtoint ptr %completed.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load39.i = load i8, ptr %completed.i, align 8
  %bf.clear.i = and i8 %bf.load39.i, 127
  store i8 %bf.clear.i, ptr %completed.i, align 8
  %inc.i = add i32 %index.055.i, 1
  %21 = ptrtoint ptr %outstanding_pi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %outstanding_pi.i, align 4
  %cmp.not.i = icmp eq i32 %inc.i, %22
  br i1 %cmp.not.i, label %if.end30.i.generate_completions.exit_crit_edge, label %if.end30.i.for.body.i_crit_edge

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end30.i.generate_completions.exit_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %generate_completions.exit

generate_completions.exit:                        ; preds = %if.end30.i.generate_completions.exit_crit_edge, %for.body.i.generate_completions.exit_crit_edge, %entry.generate_completions.exit_crit_edge
  %index.0.lcssa.i = phi i32 [ %12, %entry.generate_completions.exit_crit_edge ], [ %inc.i, %if.end30.i.generate_completions.exit_crit_edge ], [ %index.055.i, %for.body.i.generate_completions.exit_crit_edge ]
  %23 = ptrtoint ptr %outstanding_ci.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %index.0.lcssa.i, ptr %outstanding_ci.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 120, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_ib_create_gsi._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_ib_create_gsi._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_create_gsi.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 126, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 134, i32 3}
!13 = !{ptr @mlx5_ib_create_gsi._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx5_ib_create_gsi._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 150, i32 3}
!17 = !{ptr @mlx5_ib_create_gsi._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx5_ib_create_gsi._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 178, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_ib_destroy_gsi._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_ib_destroy_gsi._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 188, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 329, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_ib_gsi_modify_qp.__UNIQUE_ID_ddebug510, !27, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 333, i32 3}
!33 = !{ptr @mlx5_ib_gsi_modify_qp._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx5_ib_gsi_modify_qp._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 275, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @setup_qp._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @setup_qp._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 281, i32 3}
!42 = !{ptr @setup_qp.__UNIQUE_ID_ddebug508, !41, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 290, i32 3}
!45 = !{ptr @setup_qp.__UNIQUE_ID_ddebug509, !44, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 297, i32 3}
!48 = !{ptr @setup_qp._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @setup_qp._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 310, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 317, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 234, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @modify_to_rts._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @modify_to_rts._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 242, i32 3}
!62 = !{ptr @modify_to_rts._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @modify_to_rts._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 251, i32 3}
!66 = !{ptr @modify_to_rts._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @modify_to_rts._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 61, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/mlx5/gsi.c", i32 367, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mlx5_ib_add_outstanding_wr._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mlx5_ib_add_outstanding_wr._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148748397, i64 2148748402, i64 2148748415, i64 2148748459, i64 2148748493, i64 2148748514}
!88 = !{!"auto-init"}
