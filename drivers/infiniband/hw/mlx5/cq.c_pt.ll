; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/cq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.mlx5_ib_delay_drop = type { ptr, %struct.work_struct, %struct.mutex, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.mlx5_ib_lb_state = type { %struct.mutex, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_dm = type { ptr, %struct.spinlock, [8 x i32] }
%struct.mlx5_srq_table = type { %struct.notifier_block, %struct.xarray }
%struct.mlx5_qp_table = type { %struct.notifier_block, %struct.spinlock, %struct.xarray }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.mlx5_devx_event_table = type { %struct.mlx5_nb, %struct.mutex, %struct.xarray }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5_var_table = type { %struct.mutex, ptr, i64, i32, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_ib_cq = type { %struct.ib_cq, %struct.mlx5_core_cq, %struct.mlx5_ib_cq_buf, %struct.mlx5_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.work_struct, i16 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.187, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.187 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.201, i32, %struct.list_head, ptr, i16 }
%struct.anon.201 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_ib_cq_buf = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, i32, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.202, i32, i32 }
%union.anon.202 = type { ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.189, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.191, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.189 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.190] }
%struct.anon.190 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.146 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.146 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.191 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.ib_wc = type { %union.anon.160, i32, i32, i32, i32, ptr, %union.anon.161, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.160 = type { i64 }
%union.anon.161 = type { i32 }
%struct.wr_list = type { i16, i16 }
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
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.205, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.208, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i8, i8, i16, i32 }
%union.anon.208 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.203, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%union.anon.203 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.mlx5_ib_srq = type { %struct.ib_srq, %struct.mlx5_core_srq, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_frag_buf_ctrl, ptr, %struct.spinlock, i32, i32, i16, ptr, %struct.mutex, i32 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.mlx5_core_srq = type { %struct.mlx5_core_rsc_common, i32, i32, i32, i32, i32, ptr, i16 }
%struct.mlx5_err_cqe = type { [32 x i8], i32, [18 x i8], i8, i8, i32, i16, i8, i8 }
%struct.mlx5_sig_err_cqe = type { [16 x i8], i32, i32, i32, i32, i16, [2 x i8], i32, i64, [8 x i8], i32, [2 x i8], i8, i8 }
%struct.mlx5_core_sig_ctx = type { %struct.mlx5_core_psv, %struct.mlx5_core_psv, %struct.ib_sig_err, i8, i8, i32 }
%struct.mlx5_core_psv = type { i32, %struct.psv_layout }
%struct.psv_layout = type { i32, i16, i16, i16, i16, i32 }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.mlx5_ib_create_cq = type { i64, i64, i32, i8, i8, i16, i16, i16, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.170 }
%union.anon.170 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.171, i16, i16, i8 }
%union.anon.171 = type { i64 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mlx5_ib_resize_cq = type { i64, i16, i16, i32 }
%struct.mlx5_ib_wc = type { %struct.ib_wc, %struct.list_head }

@mlx5_ib_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cq->resize_mutex\00", [46 x i8] zeroinitializer }, align 32
@mlx5_ib_create_cq.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cq->lock\00", [22 x i8] zeroinitializer }, align 32
@mlx5_ib_create_cq.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&cq->notify_work)\00", [60 x i8] zeroinitializer }, align 32
@mlx5_ib_create_cq.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_ib_create_cq\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx5/cq.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d:(pid %d): cqn 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_ib_modify_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 1140, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): modify cq 0x%x failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_ib_modify_cq\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_modify_cq._entry_ptr = internal global ptr @mlx5_ib_modify_cq._entry, section ".printk_index", align 4
@mlx5_ib_resize_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Firmware does not support resize CQ\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_ib_resize_cq\00", [46 x i8] zeroinitializer }, align 32
@mlx5_ib_resize_cq._entry_ptr = internal global ptr @mlx5_ib_resize_cq._entry, section ".printk_index", align 4
@mlx5_ib_resize_cq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 1279, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): wrong entries number %d, max %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_ib_resize_cq._entry_ptr.17 = internal global ptr @mlx5_ib_resize_cq._entry.15, section ".printk_index", align 4
@poll_soft_wc.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.7, ptr @.str.19, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poll_soft_wc\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): polled software generated completion on CQ 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_poll_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 482, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): unexpected resize cqe\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5_poll_one\00", [18 x i8] zeroinitializer }, align 32
@mlx5_poll_one._entry_ptr = internal global ptr @mlx5_poll_one._entry, section ".printk_index", align 4
@mlx5_poll_one.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): %s error cqe on cqn 0x%x:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Requestor\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Responder\00", [22 x i8] zeroinitializer }, align 32
@mlx5_poll_one.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.21, ptr @.str.7, ptr @.str.25, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): syndrome 0x%x, vendor syndrome 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5_poll_one._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.7, i32 564, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s:%d:(pid %d): CQN: 0x%x Got SIGERR on key: 0x%x err_type %x err_offset %llx expected %x actual %x\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_poll_one._entry_ptr.28 = internal global ptr @mlx5_poll_one._entry.26, section ".printk_index", align 4
@get_umr_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014unknown completion status\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_umr_comp\00", [19 x i8] zeroinitializer }, align 32
@get_umr_comp._entry_ptr = internal global ptr @get_umr_comp._entry, section ".printk_index", align 4
@mlx5_handle_error_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 333, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): WC error: %d, Message: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_handle_error_cqe\00", [42 x i8] zeroinitializer }, align 32
@mlx5_handle_error_cqe._entry_ptr = internal global ptr @mlx5_handle_error_cqe._entry, section ".printk_index", align 4
@dump_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 272, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:(pid %d): dump error cqe\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_cqe\00", [23 x i8] zeroinitializer }, align 32
@dump_cqe._entry_ptr = internal global ptr @dump_cqe._entry, section ".printk_index", align 4
@.str.35 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@get_sig_err_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Got signature completion error with bad syndrome %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_sig_err_item\00", [47 x i8] zeroinitializer }, align 32
@get_sig_err_item._entry_ptr = internal global ptr @get_sig_err_item._entry, section ".printk_index", align 4
@create_cq_user.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_cq_user\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): addr 0x%llx, size %u, npages %zu, page_size %lu, ncont %d\0A\00", [53 x i8] zeroinitializer }, align 32
@create_cq_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.7, i32 802, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): CQE compression is not supported for size %d!\0A\00", [33 x i8] zeroinitializer }, align 32
@create_cq_user._entry_ptr = internal global ptr @create_cq_user._entry, section ".printk_index", align 4
@create_cq_user.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.38, ptr @.str.7, ptr @.str.41, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): CQE compression res format %d error: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@create_cq_user._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.7, i32 826, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): CQE padding is not supported for CQE size of %dB!\0A\00", [61 x i8] zeroinitializer }, align 32
@create_cq_user._entry_ptr.44 = internal global ptr @create_cq_user._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mlx5_ib_cq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 57, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Unexpected event type %d on CQ %06x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_ib_cq_event\00", [47 x i8] zeroinitializer }, align 32
@mlx5_ib_cq_event._entry_ptr = internal global ptr @mlx5_ib_cq_event._entry, section ".printk_index", align 4
@copy_resize_cqes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.7, i32 1216, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): resize from different cqe size is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"copy_resize_cqes\00", [47 x i8] zeroinitializer }, align 32
@copy_resize_cqes._entry_ptr = internal global ptr @copy_resize_cqes._entry, section ".printk_index", align 4
@copy_resize_cqes._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.7, i32 1225, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): expected cqe in sw ownership\0A\00", [50 x i8] zeroinitializer }, align 32
@copy_resize_cqes._entry_ptr.54 = internal global ptr @copy_resize_cqes._entry.52, section ".printk_index", align 4
@copy_resize_cqes._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.7, i32 1241, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@copy_resize_cqes._entry_ptr.56 = internal global ptr @copy_resize_cqes._entry.55, section ".printk_index", align 4
@copy_resize_cqes._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.7, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014resize CQ failed to get resize CQE, CQN 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@copy_resize_cqes._entry_ptr.59 = internal global ptr @copy_resize_cqes._entry.57, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 8, i64 9, i64 10, i64 11, i64 16, i64 17, i64 18, i64 20, i64 21, i64 37]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 32, i64 240]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 4, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 34]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 966, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 967, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 986, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1011, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1140, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1271, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1277, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 585, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 482, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 521, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 524, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 559, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 112, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 332, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 272, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"../include/linux/mlx5/cq.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 199, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 383, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 762, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 801, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 811, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 824, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 230, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 214, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 156, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 56, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1216, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1225, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1241, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/cq.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1246, i32 4 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @copy_resize_cqes._entry, ptr @copy_resize_cqes._entry.52, ptr @copy_resize_cqes._entry.55, ptr @copy_resize_cqes._entry.57, ptr @copy_resize_cqes._entry_ptr, ptr @copy_resize_cqes._entry_ptr.54, ptr @copy_resize_cqes._entry_ptr.56, ptr @copy_resize_cqes._entry_ptr.59, ptr @create_cq_user._entry, ptr @create_cq_user._entry.42, ptr @create_cq_user._entry_ptr, ptr @create_cq_user._entry_ptr.44, ptr @dump_cqe._entry, ptr @dump_cqe._entry_ptr, ptr @get_sig_err_item._entry, ptr @get_sig_err_item._entry_ptr, ptr @get_umr_comp._entry, ptr @get_umr_comp._entry_ptr, ptr @mlx5_handle_error_cqe._entry, ptr @mlx5_handle_error_cqe._entry_ptr, ptr @mlx5_ib_cq_event._entry, ptr @mlx5_ib_cq_event._entry_ptr, ptr @mlx5_ib_modify_cq._entry, ptr @mlx5_ib_modify_cq._entry_ptr, ptr @mlx5_ib_resize_cq._entry, ptr @mlx5_ib_resize_cq._entry.15, ptr @mlx5_ib_resize_cq._entry_ptr, ptr @mlx5_ib_resize_cq._entry_ptr.17, ptr @mlx5_poll_one._entry, ptr @mlx5_poll_one._entry.26, ptr @mlx5_poll_one._entry_ptr, ptr @mlx5_poll_one._entry_ptr.28, ptr @mlx5_ib_create_cq.__key, ptr @.str, ptr @mlx5_ib_create_cq.__key.1, ptr @.str.2, ptr @mlx5_ib_create_cq.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.58], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_cq.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_cq.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_modify_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_resize_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_resize_cq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_poll_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_poll_one._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_umr_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_handle_error_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sig_err_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_cq_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_cq_user._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_cq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_resize_cqes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_resize_cqes._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_resize_cqes._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_resize_cqes._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc) local_unnamed_addr #0 align 64 {
entry:
  %cur_qp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_qp) #11
  %0 = ptrtoint ptr %cur_qp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cur_qp, align 4
  %1 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibcq, align 8
  %mdev3 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev3, align 8
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp9 = icmp eq i32 %6, 2
  %wc_list = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12
  %7 = ptrtoint ptr %wc_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %wc_list, align 4
  %cmp.i.not = icmp eq ptr %8, %wc_list
  br i1 %cmp9, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then15, !prof !127

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call fastcc i32 @poll_soft_wc(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then.if.end_crit_edge
  %soft_polled.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.then.if.end_crit_edge ]
  %sub = sub i32 %num_entries, %soft_polled.0
  %add.ptr = getelementptr %struct.ib_wc, ptr %wc, i32 %soft_polled.0
  %list_send_qp.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw_comp.exit.i.for.cond.i_crit_edge, %if.end
  %npolled.0 = phi i32 [ 0, %if.end ], [ %npolled.1, %sw_comp.exit.i.for.cond.i_crit_edge ]
  %.pn.in.i = phi ptr [ %list_send_qp.i, %if.end ], [ %.pn.i, %sw_comp.exit.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list_send_qp.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %qp.0.i = getelementptr i8, ptr %.pn.i, i32 -956
  %head.i.i = getelementptr i8, ptr %.pn.i, i32 -160
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i.i, align 4
  %tail.i.i = getelementptr i8, ptr %.pn.i, i32 -156
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i.i, align 4
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i.i = icmp ne i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %npolled.0, i32 %sub)
  %cmp246.i.i = icmp slt i32 %npolled.0, %sub
  %or.cond = select i1 %cmp.i.i, i1 %cmp246.i.i, i1 false
  br i1 %or.cond, label %for.body.lr.ph.i.i, label %for.body.i.sw_comp.exit.i_crit_edge

for.body.i.sw_comp.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw_comp.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %add.ptr2.i = getelementptr %struct.ib_wc, ptr %add.ptr, i32 %npolled.0
  %last_poll.i.i = getelementptr i8, ptr %.pn.i, i32 -150
  %wqe_cnt.i.i = getelementptr i8, ptr %.pn.i, i32 -180
  %wrid.i.i = getelementptr i8, ptr %.pn.i, i32 -244
  %w_list.i.i = getelementptr i8, ptr %.pn.i, i32 -236
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.050.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc18.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %np.049.i.i = phi i32 [ %npolled.0, %for.body.lr.ph.i.i ], [ %inc16.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %wc.addr.048.i.i = phi ptr [ %add.ptr2.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %last_poll.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_poll.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %wqe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wqe_cnt.i.i, align 4
  %sub9.i.i = add i32 %17, 65535
  %and.i.i = and i32 %sub9.i.i, %conv.i.i
  %18 = ptrtoint ptr %wrid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wrid.i.i, align 4
  %arrayidx.i.i = getelementptr i64, ptr %19, i32 %and.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.i, align 8
  %22 = ptrtoint ptr %wc.addr.048.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %wc.addr.048.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %status.i.i, align 8
  %vendor_err.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %vendor_err.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %vendor_err.i.i, align 8
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tail.i.i, align 4
  %inc.i.i = add i32 %26, 1
  store i32 %inc.i.i, ptr %tail.i.i, align 4
  %27 = ptrtoint ptr %w_list.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %w_list.i.i, align 4
  %next.i.i = getelementptr %struct.wr_list, ptr %28, i32 %and.i.i, i32 1
  %29 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next.i.i, align 2
  store i16 %30, ptr %last_poll.i.i, align 2
  %inc16.i.i = add nsw i32 %np.049.i.i, 1
  %qp17.i.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %qp17.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %qp.0.i, ptr %qp17.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.ib_wc, ptr %wc.addr.048.i.i, i32 1
  %inc18.i.i = add nuw i32 %i.050.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18.i.i, i32 %sub.i.i)
  %cmp1.i.i = icmp ult i32 %inc18.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i.i, i32 %sub)
  %cmp2.i.i = icmp slt i32 %inc16.i.i, %sub
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sw_comp.exit.i_crit_edge

for.body.i.i.sw_comp.exit.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw_comp.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

sw_comp.exit.i:                                   ; preds = %for.body.i.i.sw_comp.exit.i_crit_edge, %for.body.i.sw_comp.exit.i_crit_edge
  %npolled.1 = phi i32 [ %npolled.0, %for.body.i.sw_comp.exit.i_crit_edge ], [ %inc16.i.i, %for.body.i.i.sw_comp.exit.i_crit_edge ]
  %cmp3.not.i = icmp slt i32 %npolled.1, %sub
  br i1 %cmp3.not.i, label %sw_comp.exit.i.for.cond.i_crit_edge, label %sw_comp.exit.i.out_crit_edge

sw_comp.exit.i.out_crit_edge:                     ; preds = %sw_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw_comp.exit.i.for.cond.i_crit_edge:              ; preds = %sw_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %list_recv_qp.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 10
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %sw_comp.exit80.i.for.cond13.i_crit_edge, %for.end.i
  %npolled.2 = phi i32 [ %npolled.0, %for.end.i ], [ %npolled.3, %sw_comp.exit80.i.for.cond13.i_crit_edge ]
  %.pn47.in.i = phi ptr [ %list_recv_qp.i, %for.end.i ], [ %.pn47.i, %sw_comp.exit80.i.for.cond13.i_crit_edge ]
  %32 = ptrtoint ptr %.pn47.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn47.i = load ptr, ptr %.pn47.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn47.i, %list_recv_qp.i
  br i1 %cmp15.not.i, label %for.cond13.i.out_crit_edge, label %for.body17.i

for.cond13.i.out_crit_edge:                       ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body17.i:                                     ; preds = %for.cond13.i
  %qp.1.i = getelementptr i8, ptr %.pn47.i, i32 -948
  %head.i50.i = getelementptr i8, ptr %.pn47.i, i32 -272
  %33 = ptrtoint ptr %head.i50.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %head.i50.i, align 4
  %tail.i51.i = getelementptr i8, ptr %.pn47.i, i32 -268
  %35 = ptrtoint ptr %tail.i51.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail.i51.i, align 4
  %sub.i52.i = sub i32 %34, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.i53.i = icmp ne i32 %34, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %npolled.2, i32 %sub)
  %cmp246.i54.i = icmp slt i32 %npolled.2, %sub
  %or.cond72 = select i1 %cmp.i53.i, i1 %cmp246.i54.i, i1 false
  br i1 %or.cond72, label %for.body.lr.ph.i60.i, label %for.body17.i.sw_comp.exit80.i_crit_edge

for.body17.i.sw_comp.exit80.i_crit_edge:          ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw_comp.exit80.i

for.body.lr.ph.i60.i:                             ; preds = %for.body17.i
  %add.ptr18.i = getelementptr %struct.ib_wc, ptr %add.ptr, i32 %npolled.2
  %wqe_cnt.i57.i = getelementptr i8, ptr %.pn47.i, i32 -292
  %wrid.i58.i = getelementptr i8, ptr %.pn47.i, i32 -356
  br label %for.body.i64.i

for.body.i64.i:                                   ; preds = %for.body.i64.i.for.body.i64.i_crit_edge, %for.body.lr.ph.i60.i
  %i.050.i61.i = phi i32 [ 0, %for.body.lr.ph.i60.i ], [ %inc18.i74.i, %for.body.i64.i.for.body.i64.i_crit_edge ]
  %np.049.i62.i = phi i32 [ %npolled.2, %for.body.lr.ph.i60.i ], [ %inc16.i71.i, %for.body.i64.i.for.body.i64.i_crit_edge ]
  %wc.addr.048.i63.i = phi ptr [ %add.ptr18.i, %for.body.lr.ph.i60.i ], [ %incdec.ptr.i73.i, %for.body.i64.i.for.body.i64.i_crit_edge ]
  %37 = ptrtoint ptr %tail.i51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tail.i51.i, align 4
  %39 = ptrtoint ptr %wqe_cnt.i57.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wqe_cnt.i57.i, align 4
  %sub9.i65.i = add i32 %40, -1
  %and.i66.i = and i32 %sub9.i65.i, %38
  %41 = ptrtoint ptr %wrid.i58.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wrid.i58.i, align 4
  %arrayidx.i67.i = getelementptr i64, ptr %42, i32 %and.i66.i
  %43 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i67.i, align 8
  %45 = ptrtoint ptr %wc.addr.048.i63.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %wc.addr.048.i63.i, align 8
  %status.i68.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i63.i, i32 0, i32 1
  %46 = ptrtoint ptr %status.i68.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %status.i68.i, align 8
  %vendor_err.i69.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i63.i, i32 0, i32 3
  %47 = ptrtoint ptr %vendor_err.i69.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %vendor_err.i69.i, align 8
  %48 = load i32, ptr %tail.i51.i, align 4
  %inc.i70.i = add i32 %48, 1
  store i32 %inc.i70.i, ptr %tail.i51.i, align 4
  %inc16.i71.i = add nsw i32 %np.049.i62.i, 1
  %qp17.i72.i = getelementptr inbounds %struct.ib_wc, ptr %wc.addr.048.i63.i, i32 0, i32 5
  %49 = ptrtoint ptr %qp17.i72.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %qp.1.i, ptr %qp17.i72.i, align 8
  %incdec.ptr.i73.i = getelementptr %struct.ib_wc, ptr %wc.addr.048.i63.i, i32 1
  %inc18.i74.i = add nuw i32 %i.050.i61.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18.i74.i, i32 %sub.i52.i)
  %cmp1.i75.i = icmp ult i32 %inc18.i74.i, %sub.i52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i71.i, i32 %sub)
  %cmp2.i76.i = icmp slt i32 %inc16.i71.i, %sub
  %or.cond.i77.i = select i1 %cmp1.i75.i, i1 %cmp2.i76.i, i1 false
  br i1 %or.cond.i77.i, label %for.body.i64.i.for.body.i64.i_crit_edge, label %for.body.i64.i.sw_comp.exit80.i_crit_edge

for.body.i64.i.sw_comp.exit80.i_crit_edge:        ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw_comp.exit80.i

for.body.i64.i.for.body.i64.i_crit_edge:          ; preds = %for.body.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i64.i

sw_comp.exit80.i:                                 ; preds = %for.body.i64.i.sw_comp.exit80.i_crit_edge, %for.body17.i.sw_comp.exit80.i_crit_edge
  %npolled.3 = phi i32 [ %npolled.2, %for.body17.i.sw_comp.exit80.i_crit_edge ], [ %inc16.i71.i, %for.body.i64.i.sw_comp.exit80.i_crit_edge ]
  %cmp19.not.i = icmp slt i32 %npolled.3, %sub
  br i1 %cmp19.not.i, label %sw_comp.exit80.i.for.cond13.i_crit_edge, label %sw_comp.exit80.i.out_crit_edge

sw_comp.exit80.i.out_crit_edge:                   ; preds = %sw_comp.exit80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw_comp.exit80.i.for.cond13.i_crit_edge:          ; preds = %sw_comp.exit80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond13.i

if.end17:                                         ; preds = %entry
  br i1 %cmp.i.not, label %if.end17.if.end31_crit_edge, label %if.then29, !prof !127

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call fastcc i32 @poll_soft_wc(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc, i1 noundef zeroext false)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end17.if.end31_crit_edge
  %soft_polled.1 = phi i32 [ %call30, %if.then29 ], [ 0, %if.end17.if.end31_crit_edge ]
  %add.ptr35 = getelementptr %struct.ib_wc, ptr %wc, i32 %soft_polled.1
  %sub32 = sub i32 %num_entries, %soft_polled.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp3375 = icmp sgt i32 %sub32, 0
  br i1 %cmp3375, label %if.end31.for.body_crit_edge, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31.for.body_crit_edge
  %storemerge76 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %add.ptr36 = getelementptr %struct.ib_wc, ptr %add.ptr35, i32 %storemerge76
  %call37 = call fastcc i32 @mlx5_poll_one(ptr noundef %ibcq, ptr noundef nonnull %cur_qp, ptr noundef %add.ptr36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %storemerge76, 1
  %exitcond.not = icmp eq i32 %inc, %sub32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %storemerge.lcssa = phi i32 [ %sub32, %for.inc.for.end_crit_edge ], [ %storemerge76, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.lcssa)
  %tobool41.not = icmp eq i32 %storemerge.lcssa, 0
  br i1 %tobool41.not, label %for.end.out_crit_edge, label %if.then42

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %cons_index.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 11
  %50 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cons_index.i, align 4
  %and.i = and i32 %51, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_ci_db.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.i, ptr %53, align 4
  br label %out

out:                                              ; preds = %if.then42, %for.end.out_crit_edge, %if.end31.out_crit_edge, %sw_comp.exit80.i.out_crit_edge, %for.cond13.i.out_crit_edge, %sw_comp.exit.i.out_crit_edge
  %npolled.5 = phi i32 [ 0, %for.end.out_crit_edge ], [ %storemerge.lcssa, %if.then42 ], [ 0, %if.end31.out_crit_edge ], [ %npolled.3, %sw_comp.exit80.i.out_crit_edge ], [ %npolled.2, %for.cond13.i.out_crit_edge ], [ %npolled.1, %sw_comp.exit.i.out_crit_edge ]
  %soft_polled.2 = phi i32 [ %soft_polled.1, %for.end.out_crit_edge ], [ %soft_polled.1, %if.then42 ], [ %soft_polled.1, %if.end31.out_crit_edge ], [ %soft_polled.0, %for.cond13.i.out_crit_edge ], [ %soft_polled.0, %sw_comp.exit80.i.out_crit_edge ], [ %soft_polled.0, %sw_comp.exit.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #11
  %add = add i32 %soft_polled.2, %npolled.5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_qp) #11
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_soft_wc(ptr noundef readonly %cq, i32 noundef %num_entries, ptr nocapture noundef writeonly %wc, i1 noundef zeroext %is_fatal_err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wc_list = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 12
  %0 = ptrtoint ptr %wc_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc_list, align 8
  %cmp.not52 = icmp ne ptr %1, %wc_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp8.not53 = icmp sgt i32 %num_entries, 0
  %or.cond54 = and i1 %cmp.not52, %cmp8.not53
  br i1 %or.cond54, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %4 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.lr.ph
  %.pn.in56 = phi ptr [ %1, %do.body.lr.ph ], [ %.pn59, %list_del.exit.do.body_crit_edge ]
  %npolled.055 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %list_del.exit.do.body_crit_edge ]
  %soft_wc.058 = getelementptr i8, ptr %.pn.in56, i32 -64
  %5 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn59 = load ptr, ptr %.pn.in56, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_soft_wc.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_soft_wc, %if.then15)) #11
          to label %do.end [label %if.then15], !srcloc !128

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !117) #11
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
  %12 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mcq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_soft_wc.__UNIQUE_ID_ddebug510, ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 586, i32 noundef %11, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  br i1 %is_fatal_err, label %if.then25, label %do.end.if.end28_crit_edge, !prof !129

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr i8, ptr %.pn.in56, i32 -56
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %status, align 8
  %vendor_err = getelementptr i8, ptr %.pn.in56, i32 -48
  %15 = ptrtoint ptr %vendor_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %vendor_err, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.end.if.end28_crit_edge
  %inc = add nuw nsw i32 %npolled.055, 1
  %arrayidx = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.055
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %soft_wc.058, i32 64)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_del.exit_crit_edge

if.end28.list_del.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in56, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in56, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end28.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in56, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in56, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %soft_wc.058) #11
  %cmp.not = icmp ne ptr %.pn59, %wc_list
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_entries)
  %cmp8.not = icmp slt i32 %inc, %num_entries
  %or.cond = select i1 %cmp.not, i1 %cmp8.not, i1 false
  br i1 %or.cond, label %list_del.exit.do.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %npolled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %list_del.exit.for.end_crit_edge ]
  ret i32 %npolled.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_poll_one(ptr noundef %cq, ptr nocapture noundef %cur_qp, ptr noundef %wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %cons_index.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 11
  %cqe1.i.i = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %buf.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 3
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 6
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 2
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 5
  %cqe_sz.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 1
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1
  %resize_buf = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 6
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %frag_buf.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 1
  %2 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %tree = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 35, i32 2
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %sig_mrs = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 39
  br label %repoll

repoll:                                           ; preds = %repoll.backedge, %entry
  %3 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cons_index.i, align 8
  %5 = ptrtoint ptr %cqe1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cqe1.i.i, align 4
  %and.i.i = and i32 %6, %4
  %7 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %add.i.i.i.i = add i32 %and.i.i, %conv.i.i.i.i
  %9 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %10 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %11 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %12, i32 %shr.i.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %15 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %16 to i32
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %17 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %18 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %shl.i.i.i.i
  %19 = ptrtoint ptr %cqe_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe_sz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 64
  %cond.idx.i.i = select i1 %cmp.i.i, i32 0, i32 64
  %cond.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %cond.idx.i.i
  %op_own.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 23
  %21 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %op_own.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %22)
  %cmp3.not.i.i = icmp ugt i8 %22, -17
  br i1 %cmp3.not.i.i, label %repoll.cleanup_crit_edge, label %land.lhs.true.i.i, !prof !129

repoll.cleanup_crit_edge:                         ; preds = %repoll
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %repoll
  %add.i.i = add i32 %6, 1
  %and10.i.i = and i32 %add.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.i.i = icmp ne i32 %and10.i.i, 0
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp ne i8 %23, 0
  %tobool16.not.i.i.not = xor i1 %tobool11.i.i, %24
  %tobool.not = icmp eq ptr %add.ptr.i.i.i.i, null
  %or.cond = select i1 %tobool16.not.i.i.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %land.lhs.true.i.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i
  %inc = add i32 %4, 1
  %25 = ptrtoint ptr %cons_index.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc, ptr %cons_index.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !130
  %26 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %op_own.i.i.i, align 1
  %28 = lshr i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp4 = icmp eq i8 %28, 5
  br i1 %cmp4, label %if.then8, label %if.end.if.end23_crit_edge, !prof !129

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then8:                                         ; preds = %if.end
  %29 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resize_buf, align 8
  %tobool9.not = icmp eq ptr %30, null
  br i1 %tobool9.not, label %do.end, label %if.then16, !prof !129

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev.i, align 8
  tail call void @mlx5_frag_buf_free(ptr noundef %32, ptr noundef %frag_buf.i) #11
  %33 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resize_buf, align 8
  %35 = call ptr @memcpy(ptr %buf.i.i.i, ptr %34, i32 44)
  tail call void @kfree(ptr noundef %34) #11
  %36 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %resize_buf, align 8
  br label %repoll.backedge

repoll.backedge:                                  ; preds = %get_sig_err_item.exit, %if.then16
  br label %repoll

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %37 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 482, i32 noundef %42) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end.if.end23_crit_edge
  %sop_drop_qpn = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 20
  %43 = ptrtoint ptr %sop_drop_qpn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sop_drop_qpn, align 4
  %and = and i32 %44, 16777215
  %45 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur_qp, align 4
  %tobool24.not = icmp eq ptr %46, null
  br i1 %tobool24.not, label %if.end23.if.then27_crit_edge, label %lor.lhs.false

if.end23.if.then27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end23
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qp_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %48)
  %cmp25.not = icmp eq i32 %and, %48
  br i1 %cmp25.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end23.if.then27_crit_edge
  %call28 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %and) #11
  %add.ptr.i = getelementptr i8, ptr %call28, i32 -4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %51 = ptrtoint ptr %cur_qp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %cur_qp, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %lor.lhs.false.if.end30_crit_edge
  %52 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_qp, align 4
  %54 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %qp, align 8
  %trunc = trunc i8 %28 to i4
  %55 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %if.end30.cleanup_crit_edge [
    i4 0, label %sw.bb
    i4 1, label %if.end30.sw.bb37_crit_edge
    i4 2, label %if.end30.sw.bb37_crit_edge328
    i4 3, label %if.end30.sw.bb37_crit_edge329
    i4 4, label %if.end30.sw.bb37_crit_edge330
    i4 -4, label %sw.bb123
    i4 -3, label %if.end30.sw.bb39_crit_edge
    i4 -2, label %if.end30.sw.bb39_crit_edge331
  ]

if.end30.sw.bb39_crit_edge331:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

if.end30.sw.bb39_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

if.end30.sw.bb37_crit_edge330:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end30.sw.bb37_crit_edge329:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end30.sw.bb37_crit_edge328:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end30.sw.bb37_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end30
  %sop_drop_qpn.le = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 20
  %56 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur_qp, align 4
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 21
  %58 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %wqe_counter, align 4
  %conv33 = zext i16 %59 to i32
  %wqe_cnt = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 7
  %60 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wqe_cnt, align 4
  %sub = add i32 %61, 65535
  %and34 = and i32 %sub, %conv33
  %wc_flags.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %62 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %wc_flags.i, align 8
  %63 = ptrtoint ptr %sop_drop_qpn.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sop_drop_qpn.le, align 4
  %shr.i = lshr i32 %64, 24
  %trunc.i = trunc i32 %shr.i to i8
  %65 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i, label %sw.bb.handle_good_req.exit_crit_edge [
    i8 9, label %sw.bb.i
    i8 8, label %sw.bb.sw.bb2.i_crit_edge
    i8 11, label %sw.bb3.i
    i8 10, label %sw.bb.sw.bb6.i_crit_edge
    i8 1, label %sw.bb.sw.bb6.i_crit_edge332
    i8 16, label %sw.bb8.i
    i8 17, label %sw.bb10.i
    i8 18, label %sw.bb13.i
    i8 20, label %sw.bb16.i
    i8 21, label %sw.bb19.i
    i8 37, label %sw.bb22.i
  ]

sw.bb.sw.bb6.i_crit_edge332:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

sw.bb.sw.bb6.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

sw.bb.sw.bb2.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

sw.bb.handle_good_req.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_good_req.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %wc_flags.i, align 8
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %sw.bb.sw.bb2.i_crit_edge
  %opcode.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %67 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %opcode.i, align 4
  br label %handle_good_req.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %wc_flags.i, align 8
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb3.i, %sw.bb.sw.bb6.i_crit_edge, %sw.bb.sw.bb6.i_crit_edge332
  %opcode7.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %69 = ptrtoint ptr %opcode7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %opcode7.i, align 4
  br label %handle_good_req.exit

sw.bb8.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %opcode9.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %70 = ptrtoint ptr %opcode9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %opcode9.i, align 4
  %byte_cnt.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 17
  %71 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %byte_cnt.i, align 4
  %byte_len.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %73 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %byte_len.i, align 4
  br label %handle_good_req.exit

sw.bb10.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %opcode11.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %74 = ptrtoint ptr %opcode11.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %opcode11.i, align 4
  %byte_len12.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %75 = ptrtoint ptr %byte_len12.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %byte_len12.i, align 4
  br label %handle_good_req.exit

sw.bb13.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %opcode14.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %76 = ptrtoint ptr %opcode14.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %opcode14.i, align 4
  %byte_len15.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %77 = ptrtoint ptr %byte_len15.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %byte_len15.i, align 4
  br label %handle_good_req.exit

sw.bb16.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %opcode17.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %78 = ptrtoint ptr %opcode17.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 9, ptr %opcode17.i, align 4
  %byte_len18.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %79 = ptrtoint ptr %byte_len18.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %byte_len18.i, align 4
  br label %handle_good_req.exit

sw.bb19.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %opcode20.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %80 = ptrtoint ptr %opcode20.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 10, ptr %opcode20.i, align 4
  %byte_len21.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %81 = ptrtoint ptr %byte_len21.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %byte_len21.i, align 4
  br label %handle_good_req.exit

sw.bb22.i:                                        ; preds = %sw.bb
  %wr_data.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %wr_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wr_data.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %83, i32 %and34
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %85, label %do.end.i.i [
    i32 240, label %sw.bb22.i.get_umr_comp.exit.i_crit_edge
    i32 7, label %sw.bb1.i.i
    i32 32, label %sw.bb2.i.i
  ]

sw.bb22.i.get_umr_comp.exit.i_crit_edge:          ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_umr_comp.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_umr_comp.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_umr_comp.exit.i

do.end.i.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %get_umr_comp.exit.i

get_umr_comp.exit.i:                              ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb22.i.get_umr_comp.exit.i_crit_edge
  %retval.0.i.i243 = phi i32 [ 0, %do.end.i.i ], [ 8, %sw.bb2.i.i ], [ 6, %sw.bb1.i.i ], [ 0, %sw.bb22.i.get_umr_comp.exit.i_crit_edge ]
  %opcode23.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %87 = ptrtoint ptr %opcode23.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i.i243, ptr %opcode23.i, align 4
  br label %handle_good_req.exit

handle_good_req.exit:                             ; preds = %get_umr_comp.exit.i, %sw.bb19.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb8.i, %sw.bb6.i, %sw.bb2.i, %sw.bb.handle_good_req.exit_crit_edge
  %88 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur_qp, align 4
  %last_poll = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 15
  %90 = ptrtoint ptr %last_poll to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %last_poll, align 2
  %conv35 = trunc i32 %and34 to i16
  %wqe_cnt.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %89, i32 0, i32 7, i32 7
  %92 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wqe_cnt.i, align 8
  %94 = trunc i32 %93 to i16
  %95 = add i16 %94, -1
  %conv11.i = and i16 %95, %91
  %conv22.i = zext i16 %conv11.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv11.i, i16 %conv35)
  %cmp3.i = icmp eq i16 %conv11.i, %conv35
  br i1 %cmp3.i, label %handle_good_req.exit.handle_atomics.exit_crit_edge, label %if.end.lr.ph.i

handle_good_req.exit.handle_atomics.exit_crit_edge: ; preds = %handle_good_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_atomics.exit

if.end.lr.ph.i:                                   ; preds = %handle_good_req.exit
  %w_list.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %89, i32 0, i32 7, i32 3
  %96 = ptrtoint ptr %w_list.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %w_list.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %conv24.i = phi i32 [ %conv22.i, %if.end.lr.ph.i ], [ %conv2.i, %if.end.i.if.end.i_crit_edge ]
  %next.i = getelementptr %struct.wr_list, ptr %97, i32 %conv24.i, i32 1
  %98 = ptrtoint ptr %next.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %next.i, align 2
  %conv1.i = and i16 %99, %95
  %conv2.i = zext i16 %conv1.i to i32
  %cmp.i = icmp eq i16 %conv1.i, %conv35
  br i1 %cmp.i, label %if.end.i.handle_atomics.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.handle_atomics.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_atomics.exit

handle_atomics.exit:                              ; preds = %if.end.i.handle_atomics.exit_crit_edge, %handle_good_req.exit.handle_atomics.exit_crit_edge
  %conv2.lcssa.i = phi i32 [ %conv22.i, %handle_good_req.exit.handle_atomics.exit_crit_edge ], [ %conv2.i, %if.end.i.handle_atomics.exit_crit_edge ]
  %w_list7.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %89, i32 0, i32 7, i32 3
  %100 = ptrtoint ptr %w_list7.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %w_list7.i, align 8
  %next10.i = getelementptr %struct.wr_list, ptr %101, i32 %conv2.lcssa.i, i32 1
  %102 = ptrtoint ptr %next10.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %next10.i, align 2
  %last_poll.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %89, i32 0, i32 7, i32 15
  %104 = ptrtoint ptr %last_poll.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %last_poll.i, align 2
  %wrid = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 1
  %105 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wrid, align 4
  %arrayidx = getelementptr i64, ptr %106, i32 %and34
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx, align 8
  %109 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %wc, align 8
  %wqe_head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 4
  %110 = ptrtoint ptr %wqe_head to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wqe_head, align 4
  %arrayidx36 = getelementptr i32, ptr %111, i32 %and34
  %112 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx36, align 4
  %add = add i32 %113, 1
  %tail = getelementptr inbounds %struct.mlx5_ib_qp, ptr %57, i32 0, i32 7, i32 13
  %114 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add, ptr %tail, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %115 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %status, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %if.end30.sw.bb37_crit_edge, %if.end30.sw.bb37_crit_edge328, %if.end30.sw.bb37_crit_edge329, %if.end30.sw.bb37_crit_edge330
  %116 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur_qp, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %call.i = tail call i32 @rdma_port_get_link_layer(ptr noundef %119, i32 noundef 1) #11
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %117, align 8
  %srq5.i = getelementptr inbounds %struct.ib_qp, ptr %117, i32 0, i32 8
  %122 = ptrtoint ptr %srq5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %srq5.i, align 8
  %tobool.not.i = icmp eq ptr %123, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb37.if.then.i_crit_edge

sw.bb37.if.then.i_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb37
  %xrcd.i = getelementptr inbounds %struct.ib_qp, ptr %117, i32 0, i32 9
  %124 = ptrtoint ptr %xrcd.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xrcd.i, align 4
  %tobool7.not.i = icmp eq ptr %125, null
  br i1 %tobool7.not.i, label %if.else26.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb37.if.then.i_crit_edge
  %xrcd9.i = getelementptr inbounds %struct.ib_qp, ptr %117, i32 0, i32 9
  %126 = ptrtoint ptr %xrcd9.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %xrcd9.i, align 4
  %tobool10.not.i = icmp eq ptr %127, null
  br i1 %tobool10.not.i, label %if.then.i.if.end19.i_crit_edge, label %if.then11.i

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.then.i
  %srqn.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 14
  %128 = ptrtoint ptr %srqn.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %srqn.i, align 4
  %call12.i = tail call ptr @mlx5_cmd_get_srq(ptr noundef %121, i32 noundef %129) #11
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.if.end30.i_crit_edge, label %if.then14.i

if.then11.i.if.end30.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %call12.i, i32 -124
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.then.i.if.end19.i_crit_edge
  %srq.0.i = phi ptr [ %add.ptr.i.i, %if.then14.i ], [ %123, %if.then.i.if.end19.i_crit_edge ]
  %msrq.0.i = phi ptr [ %call12.i, %if.then14.i ], [ null, %if.then.i.if.end19.i_crit_edge ]
  %tobool20.not.i = icmp eq ptr %srq.0.i, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end30.i_crit_edge, label %if.then21.i

if.end19.i.if.end30.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then21.i:                                      ; preds = %if.end19.i
  %wqe_counter.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 21
  %130 = ptrtoint ptr %wqe_counter.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %wqe_counter.i, align 4
  %wrid.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq.0.i, i32 0, i32 5
  %132 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wrid.i, align 4
  %idxprom.i = zext i16 %131 to i32
  %arrayidx.i = getelementptr i64, ptr %133, i32 %idxprom.i
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx.i, align 8
  %136 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %wc, align 8
  tail call void @mlx5_ib_free_srq_wqe(ptr noundef nonnull %srq.0.i, i32 noundef %idxprom.i) #11
  %tobool22.not.i = icmp eq ptr %msrq.0.i, null
  br i1 %tobool22.not.i, label %if.then21.i.if.end30.i_crit_edge, label %if.then23.i

if.then21.i.if.end30.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_core_res_put(ptr noundef nonnull %msrq.0.i) #11
  br label %if.end30.i

if.else26.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %wrid27.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %117, i32 0, i32 4, i32 1
  %137 = ptrtoint ptr %wrid27.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wrid27.i, align 4
  %tail.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %117, i32 0, i32 4, i32 13
  %139 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tail.i, align 4
  %wqe_cnt.i244 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %117, i32 0, i32 4, i32 7
  %141 = ptrtoint ptr %wqe_cnt.i244 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %wqe_cnt.i244, align 4
  %sub.i = add i32 %142, -1
  %and.i245 = and i32 %sub.i, %140
  %arrayidx28.i = getelementptr i64, ptr %138, i32 %and.i245
  %143 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx28.i, align 8
  %145 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %wc, align 8
  %146 = load i32, ptr %tail.i, align 4
  %inc.i = add i32 %146, 1
  store i32 %inc.i, ptr %tail.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else26.i, %if.then23.i, %if.then21.i.if.end30.i_crit_edge, %if.end19.i.if.end30.i_crit_edge, %if.then11.i.if.end30.i_crit_edge
  %byte_cnt.i246 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 17
  %147 = ptrtoint ptr %byte_cnt.i246 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %byte_cnt.i246, align 4
  %byte_len.i247 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %149 = ptrtoint ptr %byte_len.i247 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %byte_len.i247, align 4
  %150 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %op_own.i.i.i, align 1
  %152 = lshr i8 %151, 4
  %trunc.i248 = trunc i8 %152 to i4
  %153 = zext i4 %trunc.i248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.62)
  switch i4 %trunc.i248, label %if.end30.i.sw.epilog.i_crit_edge [
    i4 1, label %sw.bb.i251
    i4 2, label %sw.bb33.i
    i4 3, label %sw.bb49.i
    i4 4, label %sw.bb53.i
  ]

if.end30.i.sw.epilog.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i251:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode.i249 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %154 = ptrtoint ptr %opcode.i249 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 129, ptr %opcode.i249, align 4
  %wc_flags.i250 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %155 = ptrtoint ptr %wc_flags.i250 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 2, ptr %wc_flags.i250, align 8
  %156 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 15
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %ex.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %159 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %ex.i, align 4
  br label %sw.epilog.i

sw.bb33.i:                                        ; preds = %if.end30.i
  %opcode34.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %160 = ptrtoint ptr %opcode34.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 128, ptr %opcode34.i, align 4
  %wc_flags35.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %161 = ptrtoint ptr %wc_flags35.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 8, ptr %wc_flags35.i, align 8
  %hds_ip_ext.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 11
  %162 = ptrtoint ptr %hds_ip_ext.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %hds_ip_ext.i, align 4
  %164 = and i8 %163, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %164)
  %.not191.i = icmp eq i8 %164, 6
  br i1 %.not191.i, label %sw.bb33.i.sw.epilog.i_crit_edge, label %if.then46.i, !prof !127

sw.bb33.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then46.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %wc_flags35.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %wc_flags35.i, align 8
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode50.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %166 = ptrtoint ptr %opcode50.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 128, ptr %opcode50.i, align 4
  %wc_flags51.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %167 = ptrtoint ptr %wc_flags51.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 2, ptr %wc_flags51.i, align 8
  %168 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 15
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %ex52.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %171 = ptrtoint ptr %ex52.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %ex52.i, align 4
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %opcode54.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %172 = ptrtoint ptr %opcode54.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 128, ptr %opcode54.i, align 4
  %wc_flags55.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %173 = ptrtoint ptr %wc_flags55.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4, ptr %wc_flags55.i, align 8
  %174 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 15
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 4
  %ex56.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %177 = ptrtoint ptr %ex56.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %ex56.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb53.i, %sw.bb49.i, %if.then46.i, %sw.bb33.i.sw.epilog.i_crit_edge, %sw.bb.i251, %if.end30.i.sw.epilog.i_crit_edge
  %flags_rqpn.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 10
  %178 = ptrtoint ptr %flags_rqpn.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags_rqpn.i, align 4
  %and57.i = and i32 %179, 16777215
  %src_qp.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %180 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %and57.i, ptr %src_qp.i, align 8
  %ml_path.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 6
  %181 = ptrtoint ptr %ml_path.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ml_path.i, align 1
  %dlid_path_bits.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 12
  %183 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %dlid_path_bits.i, align 1
  %184 = load i32, ptr %flags_rqpn.i, align 4
  %185 = and i32 %184, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool62.not.i = icmp ne i32 %185, 0
  %cond.i = zext i1 %tobool62.not.i to i32
  %wc_flags63.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %186 = ptrtoint ptr %wc_flags63.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %wc_flags63.i, align 8
  %or.i = or i32 %187, %cond.i
  store i32 %or.i, ptr %wc_flags63.i, align 8
  %type.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %117, i32 0, i32 22
  %188 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %type.i, align 8
  %190 = and i32 %189, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %.not.i = icmp eq i32 %190, 1
  br i1 %.not.i, label %if.then66.i, label %if.else70.i

if.then66.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %191 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 15
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %conv68.i = trunc i32 %193 to i16
  %port.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %117, i32 0, i32 10
  %194 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %port.i, align 4
  %pkey_index.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %call69.i = tail call i32 @ib_find_cached_pkey(ptr noundef %121, i32 noundef %195, i16 noundef zeroext %conv68.i, ptr noundef %pkey_index.i) #11
  br label %if.end72.i

if.else70.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %pkey_index71.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 10
  %196 = ptrtoint ptr %pkey_index71.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %pkey_index71.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else70.i, %if.then66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end81.i, label %if.then74.i

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %slid.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 9
  %197 = ptrtoint ptr %slid.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %slid.i, align 2
  %conv75.i = zext i16 %198 to i32
  %slid76.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %199 = ptrtoint ptr %slid76.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv75.i, ptr %slid76.i, align 4
  %200 = ptrtoint ptr %flags_rqpn.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %flags_rqpn.i, align 4
  %shr78.i = lshr i32 %201, 24
  %202 = trunc i32 %shr78.i to i8
  %conv80.i = and i8 %202, 15
  %sl.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 11
  %203 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv80.i, ptr %sl.i, align 2
  br label %handle_responder.exit

if.end81.i:                                       ; preds = %if.end72.i
  %slid82.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %204 = ptrtoint ptr %slid82.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %slid82.i, align 4
  %l4_l3_hdr_type.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 12
  %205 = ptrtoint ptr %l4_l3_hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %l4_l3_hdr_type.i, align 1
  %207 = and i8 %206, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool85.not.i = icmp eq i8 %207, 0
  %208 = ptrtoint ptr %flags_rqpn.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags_rqpn.i, align 4
  %shr87.i = lshr i32 %209, 24
  %conv89.i = and i32 %shr87.i, 3
  br i1 %tobool85.not.i, label %if.end81.i.if.end105.i_crit_edge, label %if.then91.i

if.end81.i.if.end105.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105.i

if.then91.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_info.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 13
  %210 = ptrtoint ptr %vlan_info.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %vlan_info.i, align 2
  %212 = and i16 %211, 4095
  %vlan_id.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 15
  %213 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %vlan_id.i, align 2
  %214 = load i16, ptr %vlan_info.i, align 2
  %215 = lshr i16 %214, 13
  %conv99.i = trunc i16 %215 to i8
  %216 = ptrtoint ptr %wc_flags63.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %wc_flags63.i, align 8
  %or102.i = or i32 %217, 32
  store i32 %or102.i, ptr %wc_flags63.i, align 8
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then91.i, %if.end81.i.if.end105.i_crit_edge
  %conv99.sink.i = phi i8 [ %conv99.i, %if.then91.i ], [ 0, %if.end81.i.if.end105.i_crit_edge ]
  %218 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 11
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv99.sink.i, ptr %218, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv89.i)
  %.not = icmp eq i32 %conv89.i, 3
  br i1 %.not, label %if.end105.i.sw.epilog112.i_crit_edge, label %switch.lookup

if.end105.i.sw.epilog112.i_crit_edge:             ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog112.i

switch.lookup:                                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.cast = trunc i32 %conv89.i to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 131841, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %network_hdr_type111.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 16
  %220 = ptrtoint ptr %network_hdr_type111.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %switch.masked, ptr %network_hdr_type111.i, align 4
  br label %sw.epilog112.i

sw.epilog112.i:                                   ; preds = %switch.lookup, %if.end105.i.sw.epilog112.i_crit_edge
  %221 = ptrtoint ptr %wc_flags63.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wc_flags63.i, align 8
  %or114.i = or i32 %222, 64
  store i32 %or114.i, ptr %wc_flags63.i, align 8
  br label %handle_responder.exit

handle_responder.exit:                            ; preds = %sw.epilog112.i, %if.then74.i
  %status38 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %223 = ptrtoint ptr %status38 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %status38, align 8
  br label %cleanup

sw.bb39:                                          ; preds = %if.end30.sw.bb39_crit_edge, %if.end30.sw.bb39_crit_edge331
  %syndrome.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 4
  %224 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %syndrome.i, align 1
  %226 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %225, label %sw.default.i [
    i8 1, label %sw.bb39.sw.epilog.i256_crit_edge
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb3.i252
    i8 5, label %sw.bb5.i
    i8 6, label %sw.bb39.do.end.i_crit_edge
    i8 16, label %sw.bb9.i
    i8 17, label %sw.bb11.i
    i8 18, label %sw.bb13.i253
    i8 19, label %sw.bb15.i
    i8 20, label %sw.bb17.i
    i8 21, label %sw.bb19.i254
    i8 22, label %sw.bb21.i
    i8 34, label %sw.bb23.i
  ]

sw.bb39.do.end.i_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb39.sw.epilog.i256_crit_edge:                 ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i256

sw.bb1.i:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i256

sw.bb3.i252:                                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i256

sw.bb5.i:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %status6.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %227 = ptrtoint ptr %status6.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 5, ptr %status6.i, align 8
  %vendor_err_synd.c85.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %228 = ptrtoint ptr %vendor_err_synd.c85.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %vendor_err_synd.c85.i, align 2
  %conv26.c86.i = zext i8 %229 to i32
  %vendor_err.c87.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %230 = ptrtoint ptr %vendor_err.c87.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %conv26.c86.i, ptr %vendor_err.c87.i, align 8
  br label %mlx5_handle_error_cqe.exit

sw.bb9.i:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb11.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb13.i253:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb15.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb17.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb19.i254:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %status20.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %231 = ptrtoint ptr %status20.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 12, ptr %status20.i, align 8
  %vendor_err_synd.c57.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %232 = ptrtoint ptr %vendor_err_synd.c57.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %vendor_err_synd.c57.i, align 2
  %conv26.c58.i = zext i8 %233 to i32
  %vendor_err.c59.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %234 = ptrtoint ptr %vendor_err.c59.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv26.c58.i, ptr %vendor_err.c59.i, align 8
  br label %mlx5_handle_error_cqe.exit

sw.bb21.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %status22.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %235 = ptrtoint ptr %status22.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 13, ptr %status22.i, align 8
  %vendor_err_synd.c53.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %236 = ptrtoint ptr %vendor_err_synd.c53.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %vendor_err_synd.c53.i, align 2
  %conv26.c54.i = zext i8 %237 to i32
  %vendor_err.c55.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %238 = ptrtoint ptr %vendor_err.c55.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv26.c54.i, ptr %vendor_err.c55.i, align 8
  br label %mlx5_handle_error_cqe.exit

sw.bb23.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.default.i:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.epilog.i256:                                   ; preds = %sw.bb3.i252, %sw.bb1.i, %sw.bb39.sw.epilog.i256_crit_edge
  %.sink.i255 = phi i32 [ 4, %sw.bb3.i252 ], [ 2, %sw.bb1.i ], [ 1, %sw.bb39.sw.epilog.i256_crit_edge ]
  br label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i256, %sw.default.i, %sw.bb23.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i253, %sw.bb11.i, %sw.bb9.i, %sw.bb39.do.end.i_crit_edge
  %.sink.sink.i = phi i32 [ %.sink.i255, %sw.epilog.i256 ], [ 7, %sw.bb9.i ], [ 8, %sw.bb11.i ], [ 9, %sw.bb13.i253 ], [ 10, %sw.bb15.i ], [ 11, %sw.bb17.i ], [ 16, %sw.bb23.i ], [ 21, %sw.default.i ], [ 6, %sw.bb39.do.end.i_crit_edge ]
  %status4.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %239 = ptrtoint ptr %status4.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %.sink.sink.i, ptr %status4.i, align 8
  %vendor_err_synd.i = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %240 = ptrtoint ptr %vendor_err_synd.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %vendor_err_synd.i, align 2
  %conv26.i = zext i8 %241 to i32
  %vendor_err.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %242 = ptrtoint ptr %vendor_err.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %conv26.i, ptr %vendor_err.i, align 8
  %243 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i.i257 = and i32 %243, -16384
  %244 = inttoptr i32 %and.i.i257 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 2
  %245 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %246, i32 0, i32 68
  %247 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %pid.i, align 8
  %call29.i = tail call ptr @ib_wc_status_msg(i32 noundef %.sink.sink.i) #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 333, i32 noundef %248, i32 noundef %.sink.sink.i, ptr noundef %call29.i) #14
  %249 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i.i.i = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %252, i32 0, i32 68
  %253 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 272, i32 noundef %254) #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %cond.i.i, i32 noundef 64, i1 noundef zeroext false) #11
  br label %mlx5_handle_error_cqe.exit

mlx5_handle_error_cqe.exit:                       ; preds = %do.end.i, %sw.bb21.i, %sw.bb19.i254, %sw.bb5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_poll_one.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_poll_one, %if.then49)) #11
          to label %do.body62 [label %if.then49], !srcloc !128

if.then49:                                        ; preds = %mlx5_handle_error_cqe.exit
  call void @__sanitizer_cov_trace_pc() #13
  %255 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i259 = and i32 %255, -16384
  %256 = inttoptr i32 %and.i259 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %task52, align 8
  %pid53 = getelementptr inbounds %struct.task_struct, ptr %258, i32 0, i32 68
  %259 = ptrtoint ptr %pid53 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pid53, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp55 = icmp eq i8 %28, 13
  %cond57 = select i1 %cmp55, ptr @.str.23, ptr @.str.24
  %261 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %mcq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_poll_one.__UNIQUE_ID_ddebug508, ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 523, i32 noundef %260, ptr noundef nonnull %cond57, i32 noundef %262) #11
  br label %do.body62

do.body62:                                        ; preds = %if.then49, %mlx5_handle_error_cqe.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_poll_one.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_poll_one, %if.then74)) #11
          to label %do.end83 [label %if.then74], !srcloc !128

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %263 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i260 = and i32 %263, -16384
  %264 = inttoptr i32 %and.i260 to ptr
  %task77 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %task77 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %task77, align 8
  %pid78 = getelementptr inbounds %struct.task_struct, ptr %266, i32 0, i32 68
  %267 = ptrtoint ptr %pid78 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %pid78, align 8
  %269 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %syndrome.i, align 1
  %conv79 = zext i8 %270 to i32
  %vendor_err_synd = getelementptr inbounds %struct.mlx5_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %271 = ptrtoint ptr %vendor_err_synd to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %vendor_err_synd, align 2
  %conv80 = zext i8 %272 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_poll_one.__UNIQUE_ID_ddebug509, ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef 525, i32 noundef %268, i32 noundef %conv79, i32 noundef %conv80) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then74, %do.body62
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp85 = icmp eq i8 %28, 13
  %273 = ptrtoint ptr %cur_qp to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %cur_qp, align 4
  br i1 %cmp85, label %if.then87, label %if.else100

if.then87:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  %wqe_counter89 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 21
  %275 = ptrtoint ptr %wqe_counter89 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %wqe_counter89, align 4
  %conv90 = zext i16 %276 to i32
  %wqe_cnt91 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 7, i32 7
  %277 = ptrtoint ptr %wqe_cnt91 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %wqe_cnt91, align 4
  %sub92 = add i32 %278, 65535
  %and93 = and i32 %sub92, %conv90
  %wrid94 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 7, i32 1
  %279 = ptrtoint ptr %wrid94 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %wrid94, align 4
  %arrayidx95 = getelementptr i64, ptr %280, i32 %and93
  %281 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %arrayidx95, align 8
  %283 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %282, ptr %wc, align 8
  %wqe_head96 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 7, i32 4
  %284 = ptrtoint ptr %wqe_head96 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wqe_head96, align 4
  %arrayidx97 = getelementptr i32, ptr %285, i32 %and93
  %286 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx97, align 4
  %add98 = add i32 %287, 1
  %tail99 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 7, i32 13
  %288 = ptrtoint ptr %tail99 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %add98, ptr %tail99, align 4
  br label %cleanup

if.else100:                                       ; preds = %do.end83
  %srq102 = getelementptr inbounds %struct.ib_qp, ptr %274, i32 0, i32 8
  %289 = ptrtoint ptr %srq102 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %srq102, align 8
  %tobool103.not = icmp eq ptr %290, null
  br i1 %tobool103.not, label %if.else112, label %if.then104

if.then104:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  %wqe_counter108 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 21
  %291 = ptrtoint ptr %wqe_counter108 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %wqe_counter108, align 4
  %wrid109 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %290, i32 0, i32 5
  %293 = ptrtoint ptr %wrid109 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %wrid109, align 4
  %idxprom = zext i16 %292 to i32
  %arrayidx110 = getelementptr i64, ptr %294, i32 %idxprom
  %295 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %arrayidx110, align 8
  %297 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %297)
  store i64 %296, ptr %wc, align 8
  tail call void @mlx5_ib_free_srq_wqe(ptr noundef nonnull %290, i32 noundef %idxprom) #11
  br label %cleanup

if.else112:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #13
  %wrid113 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 4, i32 1
  %298 = ptrtoint ptr %wrid113 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %wrid113, align 4
  %tail114 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 4, i32 13
  %300 = ptrtoint ptr %tail114 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %tail114, align 4
  %wqe_cnt115 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %274, i32 0, i32 4, i32 7
  %302 = ptrtoint ptr %wqe_cnt115 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %wqe_cnt115, align 4
  %sub116 = add i32 %303, -1
  %and117 = and i32 %sub116, %301
  %arrayidx118 = getelementptr i64, ptr %299, i32 %and117
  %304 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %arrayidx118, align 8
  %306 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 %305, ptr %wc, align 8
  %307 = load i32, ptr %tail114, align 4
  %inc120 = add i32 %307, 1
  store i32 %inc120, ptr %tail114, align 4
  br label %cleanup

sw.bb123:                                         ; preds = %if.end30
  tail call void @_raw_spin_lock(ptr noundef %sig_mrs) #11
  %mkey = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 7
  %308 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %mkey, align 4
  %and.i261 = and i32 %309, -256
  %call126 = tail call ptr @xa_load(ptr noundef %sig_mrs, i32 noundef %and.i261) #11
  %err_item = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2
  %syndrome1.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 5
  %310 = ptrtoint ptr %syndrome1.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %syndrome1.i, align 8
  %conv.i = zext i16 %311 to i32
  %and.i262 = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263 = icmp eq i32 %and.i262, 0
  br i1 %tobool.not.i263, label %if.else.i, label %if.then.i265

if.then.i265:                                     ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #13
  %312 = ptrtoint ptr %err_item to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %err_item, align 8
  %expected_trans_sig.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 1
  %313 = ptrtoint ptr %expected_trans_sig.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %expected_trans_sig.i, align 8
  %shr.i264 = lshr i32 %314, 16
  %expected.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 1
  %315 = ptrtoint ptr %expected.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %shr.i264, ptr %expected.i, align 4
  %actual_trans_sig.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 2
  %316 = ptrtoint ptr %actual_trans_sig.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %actual_trans_sig.i, align 4
  %shr2.i = lshr i32 %317, 16
  %actual.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 2
  %318 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %shr2.i, ptr %actual.i, align 8
  br label %get_sig_err_item.exit

if.else.i:                                        ; preds = %sw.bb123
  %and4.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %319 = ptrtoint ptr %err_item to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 1, ptr %err_item, align 8
  %expected_reftag.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 3
  %320 = ptrtoint ptr %expected_reftag.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %expected_reftag.i, align 8
  %expected8.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 1
  %322 = ptrtoint ptr %expected8.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %expected8.i, align 4
  %actual_reftag.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 4
  %323 = ptrtoint ptr %actual_reftag.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %actual_reftag.i, align 4
  %actual9.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 2
  %325 = ptrtoint ptr %actual9.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %actual9.i, align 8
  br label %get_sig_err_item.exit

if.else10.i:                                      ; preds = %if.else.i
  %and12.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i266 = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i266, label %do.end.i269, label %if.then14.i267

if.then14.i267:                                   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  %326 = ptrtoint ptr %err_item to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 2, ptr %err_item, align 8
  %expected_trans_sig16.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 1
  %327 = ptrtoint ptr %expected_trans_sig16.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %expected_trans_sig16.i, align 8
  %and17.i = and i32 %328, 65535
  %expected18.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 1
  %329 = ptrtoint ptr %expected18.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %and17.i, ptr %expected18.i, align 4
  %actual_trans_sig19.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 2
  %330 = ptrtoint ptr %actual_trans_sig19.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %actual_trans_sig19.i, align 4
  %and20.i = and i32 %331, 65535
  %actual21.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 2
  %332 = ptrtoint ptr %actual21.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %and20.i, ptr %actual21.i, align 8
  br label %get_sig_err_item.exit

do.end.i269:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv.i) #14
  br label %get_sig_err_item.exit

get_sig_err_item.exit:                            ; preds = %do.end.i269, %if.then14.i267, %if.then6.i, %if.then.i265
  %err_offset.i = getelementptr inbounds %struct.mlx5_sig_err_cqe, ptr %cond.i.i, i32 0, i32 8
  %333 = ptrtoint ptr %err_offset.i to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %err_offset.i, align 8
  %sig_err_offset.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 3
  %335 = ptrtoint ptr %sig_err_offset.i to i32
  call void @__asan_store8_noabort(i32 %335)
  store i64 %334, ptr %sig_err_offset.i, align 8
  %336 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %mkey, align 4
  %key.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 4
  %338 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %key.i, align 8
  %sig_err_exists = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 4
  %339 = ptrtoint ptr %sig_err_exists to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 1, ptr %sig_err_exists, align 1
  %sigerr_count = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 5
  %340 = ptrtoint ptr %sigerr_count to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %sigerr_count, align 4
  %inc127 = add i32 %341, 1
  store i32 %inc127, ptr %sigerr_count, align 4
  %342 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i270 = and i32 %342, -16384
  %343 = inttoptr i32 %and.i270 to ptr
  %task133 = getelementptr inbounds %struct.thread_info, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %task133 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %task133, align 8
  %pid134 = getelementptr inbounds %struct.task_struct, ptr %345, i32 0, i32 68
  %346 = ptrtoint ptr %pid134 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pid134, align 8
  %348 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %mcq, align 8
  %350 = ptrtoint ptr %err_item to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %err_item, align 8
  %expected = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 1
  %352 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %expected, align 4
  %actual = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %call126, i32 0, i32 2, i32 2
  %354 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %actual, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef 564, i32 noundef %347, i32 noundef %349, i32 noundef %337, i32 noundef %351, i64 noundef %334, i32 noundef %353, i32 noundef %355) #14
  tail call void @_raw_spin_unlock(ptr noundef %sig_mrs) #11
  br label %repoll.backedge

cleanup:                                          ; preds = %if.else112, %if.then104, %if.then87, %handle_responder.exit, %handle_atomics.exit, %if.end30.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %repoll.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then104 ], [ 0, %if.else112 ], [ 0, %if.then87 ], [ 0, %handle_responder.exit ], [ 0, %handle_atomics.exit ], [ -11, %land.lhs.true.i.i.cleanup_crit_edge ], [ -11, %repoll.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_arm_cq(ptr noundef %ibcq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %mdev1 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 8
  %uar = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 39
  %4 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uar, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %notify_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 13
  %8 = ptrtoint ptr %notify_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %notify_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8.not = icmp eq i32 %9, 2
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %flags, 3
  %10 = ptrtoint ptr %notify_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %notify_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and11 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %wc_list = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12
  %11 = ptrtoint ptr %wc_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %wc_list, align 4
  %cmp.i.not = icmp ne ptr %12, %wc_list
  %spec.select = zext i1 %cmp.i.not to i32
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end.if.end15_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1
  %and17 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 1
  %cond = select i1 %cmp18, i32 16777216, i32 0
  %cons_index = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 11
  %13 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cons_index, align 8
  %arm_sn.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %arm_sn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arm_sn.i, align 4
  %and1.i = and i32 %14, 16777215
  %and.i = shl i32 %16, 28
  %shl.i = and i32 %and.i, 805306368
  %or.i = or i32 %and1.i, %cond
  %or2.i = or i32 %or.i, %shl.i
  %arm_db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arm_db.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or2.i, ptr %18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mcq, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or2.i) #11, !srcloc !132
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #11, !srcloc !132
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %index = alloca i32, align 4
  %inlen = alloca i32, align 4
  %cqb = alloca ptr, align 4
  %cqe_size = alloca i32, align 4
  %eqn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_vector, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #11
  %6 = call ptr @memset(ptr %out, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %index, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inlen) #11
  %8 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %inlen, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cqb) #11
  %9 = ptrtoint ptr %cqb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cqb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cqe_size) #11
  %10 = ptrtoint ptr %cqe_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %cqe_size, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eqn) #11
  %11 = ptrtoint ptr %eqn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %eqn, align 4, !annotation !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %15, i32 6
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %17, 16
  %and = and i32 %shr, 255
  %shl = shl nuw i32 1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp2 = icmp sgt i32 %3, %shl
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %tobool.not = icmp ult i32 %19, 4
  br i1 %tobool.not, label %cond.false29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false29:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 true) #11, !range !134
  %sub.i.i.i = sub nuw nsw i32 32, %20
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %cmp7, i32 1, i32 %sub.i.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %shl)
  %cmp44 = icmp sgt i32 %shl.i, %shl
  br i1 %cmp44, label %cond.false29.cleanup_crit_edge, label %if.end47

cond.false29.cleanup_crit_edge:                   ; preds = %cond.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %cond.false29
  %sub48 = add i32 %shl.i, -1
  %cqe50 = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %21 = ptrtoint ptr %cqe50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub48, ptr %cqe50, align 4
  %resize_mutex = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %resize_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_ib_create_cq.__key) #11
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5_ib_create_cq.__key.1, i16 noundef signext 3) #11
  %resize_buf = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 6
  %22 = ptrtoint ptr %resize_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %resize_buf, align 8
  %resize_umem = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 7
  %23 = ptrtoint ptr %resize_umem to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %resize_umem, align 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %create_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 11
  %26 = ptrtoint ptr %create_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %create_flags, align 4
  %list_send_qp = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 9
  %27 = ptrtoint ptr %list_send_qp to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list_send_qp, ptr %list_send_qp, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list_send_qp, ptr %prev.i, align 4
  %list_recv_qp = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 10
  %29 = ptrtoint ptr %list_recv_qp to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list_recv_qp, ptr %list_recv_qp, align 4
  %prev.i315 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list_recv_qp, ptr %prev.i315, align 4
  %tobool56.not = icmp eq ptr %udata, null
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end47
  %call58 = call fastcc i32 @create_cq_user(ptr noundef %1, ptr noundef nonnull %udata, ptr noundef %ibcq, i32 noundef %shl.i, ptr noundef nonnull %cqb, ptr noundef nonnull %cqe_size, ptr noundef nonnull %index, ptr noundef nonnull %inlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.if.end74_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then57.if.end74_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.else:                                          ; preds = %if.end47
  %31 = ptrtoint ptr %cqe_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %cqe_size, align 4
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 8
  %db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 3
  %call.i = tail call i32 @mlx5_db_alloc(ptr noundef %33, ptr noundef %db.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %34 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db.i, align 8
  %set_ci_db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %set_ci_db.i, align 8
  %add.ptr.i = getelementptr i32, ptr %35, i32 1
  %arm_db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %arm_db.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %arm_db.i, align 4
  %cqe_sz.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %cqe_sz.i, align 4
  %buf.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2
  %frag_buf1.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev, align 8
  %mul.i.i = shl i32 %shl.i, 7
  %numa_node.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %40, i32 0, i32 17, i32 17
  %41 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %numa_node.i.i, align 8
  %call12.i.i = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %40, i32 noundef %mul.i.i, ptr noundef %frag_buf1.i.i, i32 noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i.i316 = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i.i316, label %if.end10.i, label %if.end.i.err_db.i_crit_edge

if.end.i.err_db.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_db.i

if.end10.i:                                       ; preds = %if.end.i
  %43 = ptrtoint ptr %frag_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %frag_buf1.i.i, align 4
  %45 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %buf.i, align 4
  %log_stride2.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 5
  %46 = ptrtoint ptr %log_stride2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 7, ptr %log_stride2.i.i.i.i, align 1
  %log_sz3.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 4
  %47 = ptrtoint ptr %log_sz3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 7, ptr %log_sz3.i.i.i.i, align 4
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 1
  %48 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 127, ptr %sz_m1.i.i.i.i, align 4
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 6
  %49 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %log_frag_strides.i.i.i.i, align 2
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 31, ptr %frag_sz_m1.i.i.i.i, align 4
  %strides_offset14.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 0, i32 3
  %51 = ptrtoint ptr %strides_offset14.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %strides_offset14.i.i.i.i, align 2
  %cqe_size13.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %cqe_size13.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 128, ptr %cqe_size13.i.i, align 4
  %nent14.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %nent14.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl.i, ptr %nent14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp7.i.i = icmp sgt i32 %shl.i, 0
  br i1 %cmp7.i.i, label %if.end10.i.for.body.i.i_crit_edge, label %if.end10.i.init_cq_frag_buf.exit.i_crit_edge

if.end10.i.init_cq_frag_buf.exit.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_cq_frag_buf.exit.i

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %strides_offset14.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %strides_offset14.i.i.i.i, align 2
  %conv.i.i.i = zext i16 %55 to i32
  %add.i.i.i = add nuw i32 %i.08.i.i, %conv.i.i.i
  %56 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i = zext i8 %57 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %58 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %59, i32 %shr.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %62 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i = zext i16 %63 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %64 = ptrtoint ptr %log_stride2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %log_stride2.i.i.i.i, align 1
  %conv3.i.i.i = zext i8 %65 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 %shl.i.i.i
  %66 = ptrtoint ptr %cqe_size13.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqe_size13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %67)
  %cmp1.i.i = icmp eq i32 %67, 64
  %cond.idx.i.i = select i1 %cmp1.i.i, i32 0, i32 64
  %cond.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %cond.idx.i.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 23
  %68 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -16, ptr %op_own.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %69 = ptrtoint ptr %nent14.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nent14.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %70
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.init_cq_frag_buf.exit.i_crit_edge

for.body.i.i.init_cq_frag_buf.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_cq_frag_buf.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

init_cq_frag_buf.exit.i:                          ; preds = %for.body.i.i.init_cq_frag_buf.exit.i_crit_edge, %if.end10.i.init_cq_frag_buf.exit.i_crit_edge
  %npages.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1, i32 1
  %71 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %npages.i, align 4
  %mul.i = shl i32 %72, 3
  %add.i = add i32 %mul.i, 272
  %73 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i, ptr %inlen, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3520, i32 noundef -1) #16
  %74 = ptrtoint ptr %cqb to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i.i, ptr %cqb, align 4
  %tobool14.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %do.body66

if.then15.i:                                      ; preds = %init_cq_frag_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_frag_buf_free(ptr noundef %76, ptr noundef %frag_buf1.i.i) #11
  br label %err_db.i

err_db.i:                                         ; preds = %if.then15.i, %if.end.i.err_db.i_crit_edge
  %err.0.i = phi i32 [ -12, %if.then15.i ], [ %call12.i.i, %if.end.i.err_db.i_crit_edge ]
  %77 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_db_free(ptr noundef %78, ptr noundef %db.i) #11
  br label %cleanup

do.body66:                                        ; preds = %init_cq_frag_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr17.i = getelementptr i8, ptr %call.i.i.i, i32 272
  tail call void @mlx5_fill_page_frag_array(ptr noundef %frag_buf1.i.i, ptr noundef %add.ptr17.i) #11
  %page_shift.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 1, i32 3
  %79 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %page_shift.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %81 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr24.i, align 4
  %and.i317 = and i32 %82, -520093697
  %83 = add i8 %80, 20
  %84 = and i8 %83, 31
  %and25.i = zext i8 %84 to i32
  %shl.i318 = shl nuw nsw i32 %and25.i, 24
  %or.i = or i32 %shl.i318, %and.i317
  store i32 %or.i, ptr %add.ptr24.i, align 4
  %85 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev, align 8
  %uar.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %86, i32 0, i32 17, i32 39
  %87 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %uar.i, align 4
  %index30.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %index30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index30.i, align 4
  %91 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %index, align 4
  %notify_work = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14
  tail call void @__init_work(ptr noundef %notify_work, i32 noundef 0) #11
  %92 = ptrtoint ptr %notify_work to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -64, ptr %notify_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5_ib_create_cq.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry70 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14, i32 1
  %93 = ptrtoint ptr %entry70 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %entry70, ptr %entry70, align 4
  %prev.i320 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14, i32 1, i32 1
  %94 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %entry70, ptr %prev.i320, align 4
  %func = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14, i32 2
  %95 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @notify_soft_wc_handler, ptr %func, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.body66, %if.then57.if.end74_crit_edge
  %96 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdev, align 8
  %call76 = call i32 @mlx5_vector2eqn(ptr noundef %97, i32 noundef %5, ptr noundef nonnull %eqn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.err_cqb_crit_edge

if.end74.err_cqb_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cqb

if.end79:                                         ; preds = %if.end74
  %98 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cqe_size, align 4
  %cqe_size80 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 8
  %100 = ptrtoint ptr %cqe_size80 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %cqe_size80, align 8
  %101 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cqb, align 4
  %add.ptr81 = getelementptr i8, ptr %102, i32 16
  %conv83 = trunc i32 %99 to i8
  %private_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 15
  %103 = ptrtoint ptr %private_flags to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %private_flags, align 8
  %105 = and i16 %104, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i321 = icmp eq i16 %105, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv83)
  %cmp.i.not = icmp eq i8 %conv83, 64
  %106 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr81, align 4
  %and91 = and i32 %107, -14680065
  %cond.i.op = select i1 %cmp.i.not, i32 0, i32 2097152
  %and92 = select i1 %tobool.not.i321, i32 %cond.i.op, i32 4194304
  %or = or i32 %and92, %and91
  store i32 %or, ptr %add.ptr81, align 4
  %108 = call i32 @llvm.ctlz.i32(i32 %shl.i, i1 true) #11, !range !134
  %add.ptr116 = getelementptr i8, ptr %102, i32 28
  %109 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr116, align 4
  %and117 = and i32 %110, -536870912
  %sub.i.op.i322 = shl nuw nsw i32 %108, 24
  %111 = or i32 %sub.i.op.i322, %and117
  %112 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index, align 4
  %and131 = and i32 %113, 16777215
  %114 = or i32 %111, %and131
  %or133 = xor i32 %114, 520093696
  store i32 %or133, ptr %add.ptr116, align 4
  %115 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %eqn, align 4
  %add.ptr142 = getelementptr i8, ptr %102, i32 36
  %117 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %add.ptr142, align 4
  %dma = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 3, i32 2
  %118 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma, align 8
  %conv158 = zext i32 %119 to i64
  %add.ptr159 = getelementptr i8, ptr %102, i32 72
  %120 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv158, ptr %add.ptr159, align 8
  %121 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %create_flags, align 4
  %and165 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end79.if.end181_crit_edge, label %do.body168

if.end79.if.end181_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

do.body168:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %or177 = or i32 %or, 131072
  %123 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %or177, ptr %add.ptr81, align 4
  br label %if.end181

if.end181:                                        ; preds = %do.body168, %if.end79.if.end181_crit_edge
  %124 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mdev, align 8
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1
  %126 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %inlen, align 4
  %call184 = call i32 @mlx5_core_create_cq(ptr noundef %125, ptr noundef %mcq, ptr noundef %102, i32 noundef %127, ptr noundef nonnull %out, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %do.body188, label %if.end181.err_cqb_crit_edge

if.end181.err_cqb_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cqb

do.body188:                                       ; preds = %if.end181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_cq.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_cq, %if.then193)) #11
          to label %do.end198 [label %if.then193], !srcloc !128

if.then193:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  %128 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %129 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i323 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i323 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 68
  %133 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pid, align 8
  %135 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mcq, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_cq.__UNIQUE_ID_ddebug528, ptr noundef %128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 1011, i32 noundef %134, i32 noundef %136) #11
  br label %do.end198

do.end198:                                        ; preds = %if.then193, %do.body188
  br i1 %tobool56.not, label %if.else202, label %if.then200

if.then200:                                       ; preds = %do.end198
  %comp = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 15, i32 1
  %137 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @mlx5_ib_cq_comp, ptr %comp, align 8
  %event.c313 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 10
  %138 = ptrtoint ptr %event.c313 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @mlx5_ib_cq_event, ptr %event.c313, align 4
  %wc_list.c314 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12
  %139 = ptrtoint ptr %wc_list.c314 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %wc_list.c314, ptr %wc_list.c314, align 4
  %prev.i324 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12, i32 1
  %140 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %wc_list.c314, ptr %prev.i324, align 4
  %call211 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef %mcq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.then200.if.end215_crit_edge, label %err_cqb.thread

if.then200.if.end215_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.else202:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #13
  %comp204 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 9
  %141 = ptrtoint ptr %comp204 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @mlx5_ib_cq_comp, ptr %comp204, align 8
  %event.c = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1, i32 10
  %142 = ptrtoint ptr %event.c to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @mlx5_ib_cq_event, ptr %event.c, align 4
  %wc_list.c = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12
  %143 = ptrtoint ptr %wc_list.c to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %wc_list.c, ptr %wc_list.c, align 4
  %prev.i325 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12, i32 1
  %144 = ptrtoint ptr %prev.i325 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %wc_list.c, ptr %prev.i325, align 4
  br label %if.end215

err_cqb.thread:                                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mdev, align 8
  %call218 = call i32 @mlx5_core_destroy_cq(ptr noundef %146, ptr noundef %mcq) #11
  %147 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cqb, align 4
  call void @kvfree(ptr noundef %148) #11
  br label %if.then220

if.end215:                                        ; preds = %if.else202, %if.then200.if.end215_crit_edge
  call void @kvfree(ptr noundef %102) #11
  br label %cleanup

err_cqb:                                          ; preds = %if.end181.err_cqb_crit_edge, %if.end74.err_cqb_crit_edge
  %err.0 = phi i32 [ %call76, %if.end74.err_cqb_crit_edge ], [ %call184, %if.end181.err_cqb_crit_edge ]
  %149 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cqb, align 4
  call void @kvfree(ptr noundef %150) #11
  br i1 %tobool56.not, label %if.else221, label %err_cqb.if.then220_crit_edge

err_cqb.if.then220_crit_edge:                     ; preds = %err_cqb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then220

if.then220:                                       ; preds = %err_cqb.if.then220_crit_edge, %err_cqb.thread
  %err.0330 = phi i32 [ -14, %err_cqb.thread ], [ %err.0, %err_cqb.if.then220_crit_edge ]
  call fastcc void @destroy_cq_user(ptr noundef %ibcq, ptr noundef nonnull %udata)
  br label %cleanup

if.else221:                                       ; preds = %err_cqb
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @destroy_cq_kernel(ptr noundef %1, ptr noundef %ibcq)
  br label %cleanup

cleanup:                                          ; preds = %if.else221, %if.then220, %if.end215, %err_db.i, %if.else.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %cond.false29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end215 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %cond.false29.cleanup_crit_edge ], [ %call58, %if.then57.cleanup_crit_edge ], [ %err.0, %if.else221 ], [ %err.0330, %if.then220 ], [ %call.i, %if.else.cleanup_crit_edge ], [ %err.0.i, %err_db.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eqn) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cqe_size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cqb) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inlen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_cq_user(ptr noundef %dev, ptr noundef readonly %udata, ptr noundef %cq, i32 noundef %entries, ptr nocapture noundef %cqb, ptr nocapture noundef %cqe_size, ptr nocapture noundef writeonly %index, ptr nocapture noundef writeonly %inlen) unnamed_addr #0 align 64 {
entry:
  %ucmd = alloca %struct.mlx5_ib_create_cq, align 8
  %page_offset_quantized = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucmd) #11
  %0 = call ptr @memset(ptr %ucmd, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_offset_quantized) #11
  %1 = ptrtoint ptr %page_offset_quantized to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %page_offset_quantized, align 4, !annotation !133
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %2 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %inlen2 = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %4 = ptrtoint ptr %inlen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inlen2, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %6)
  %cmp8 = icmp ult i32 %6, 22
  br i1 %cmp8, label %cond.end.cleanup292_crit_edge, label %if.end

cond.end.cleanup292_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

if.end:                                           ; preds = %cond.end
  %call9 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %ucmd, ptr noundef %udata, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup292_crit_edge

if.end.cleanup292_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

if.end12:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %tobool13.not = icmp ult i16 %8, 8
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup292_crit_edge

if.end12.cleanup292_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

if.end15:                                         ; preds = %if.end12
  %cqe_size16 = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 2
  %9 = ptrtoint ptr %cqe_size16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cqe_size16, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %10, label %if.end15.cleanup292_crit_edge [
    i32 64, label %if.end15.lor.lhs.false_crit_edge
    i32 128, label %if.end15.lor.lhs.false_crit_edge394
  ]

if.end15.lor.lhs.false_crit_edge394:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end15.lor.lhs.false_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end15.cleanup292_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

lor.lhs.false:                                    ; preds = %if.end15.lor.lhs.false_crit_edge, %if.end15.lor.lhs.false_crit_edge394
  %reserved0 = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 7
  %12 = ptrtoint ptr %reserved0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reserved0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool23.not = icmp eq i16 %13, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false.cleanup292_crit_edge

lor.lhs.false.cleanup292_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %reserved1 = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 8
  %14 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reserved1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false24.cleanup292_crit_edge

lor.lhs.false24.cleanup292_crit_edge:             ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup292

if.end27:                                         ; preds = %lor.lhs.false24
  %16 = ptrtoint ptr %cqe_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %cqe_size, align 4
  %17 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ucmd, align 8
  %conv29 = trunc i64 %18 to i32
  %mul = mul i32 %10, %entries
  %call31 = call ptr @ib_umem_get(ptr noundef %dev, i32 noundef %conv29, i32 noundef %mul, i32 noundef 1) #11
  %umem = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %umem, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call31 to i32
  br label %cleanup292

if.end39:                                         ; preds = %if.end27
  %call43 = call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef %call31, i32 noundef -4096, i32 noundef 6, i64 noundef 0, i32 noundef 64, ptr noundef nonnull %page_offset_quantized) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end39.err_umem_crit_edge, label %if.end46

if.end39.err_umem_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem

if.end46:                                         ; preds = %if.end39
  %db_addr = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 1
  %21 = ptrtoint ptr %db_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %db_addr, align 8
  %conv47 = trunc i64 %22 to i32
  %db = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 3
  %call48 = call i32 @mlx5_ib_db_map_user(ptr noundef %cond, i32 noundef %conv47, ptr noundef %db) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.err_umem_crit_edge

if.end46.err_umem_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_umem

if.end51:                                         ; preds = %if.end46
  %23 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %umem, align 4
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %28 to i64
  %conv1.i = zext i32 %call43 to i64
  %sub.i = add nsw i64 %conv1.i, -1
  %add.i = add i64 %26, %sub.i
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %call43, -1
  %conv7.i = zext i32 %sub6.i to i64
  %sub8.i = sub nsw i64 %sub.i, %conv7.i
  %add11.i = add i64 %sub8.i, %26
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %call43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_cq_user.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_cq_user, %if.then60)) #11
          to label %do.end [label %if.then60], !srcloc !128

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %29 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %30 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i372 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i372 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 8
  %36 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ucmd, align 8
  %38 = ptrtoint ptr %cqe_size16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cqe_size16, align 8
  %mul65 = mul i32 %39, %entries
  %40 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %umem, align 4
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %45 to i64
  %add.i.i = add i64 %43, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %43, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_cq_user.__UNIQUE_ID_ddebug513, ptr noundef %29, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 766, i32 noundef %35, i64 noundef %37, i32 noundef %mul65, i32 noundef %div.i1.i, i32 noundef %call43, i32 noundef %div.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.end51
  %mul70 = shl i32 %div.i, 3
  %add = add i32 %mul70, 272
  %46 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %inlen, align 4
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #16
  %47 = ptrtoint ptr %cqb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %cqb, align 4
  %tobool72.not = icmp eq ptr %call.i.i, null
  br i1 %tobool72.not, label %do.end.err_db_crit_edge, label %if.end74

do.end.err_db_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_db

if.end74:                                         ; preds = %do.end
  %add.ptr75 = getelementptr i8, ptr %call.i.i, i32 272
  %48 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %umem, align 4
  call void @mlx5_ib_populate_pas(ptr noundef %49, i32 noundef %call43, ptr noundef %add.ptr75, i64 noundef 0) #11
  %50 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cqb, align 4
  %add.ptr78 = getelementptr i8, ptr %51, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp.i374 = icmp ugt i32 %call43, 1
  %52 = call i32 @llvm.ctlz.i32(i32 %sub6.i, i1 true) #11, !range !134
  %sub.i.op.i.i = shl nuw nsw i32 %52, 24
  %add.i377 = xor i32 %sub.i.op.i.i, 520093696
  %phi.bo393 = add nuw nsw i32 %add.i377, 352321536
  %phi.bo = and i32 %phi.bo393, 520093696
  %cond110 = select i1 %cmp.i374, i32 %phi.bo, i32 335544320
  %add.ptr115 = getelementptr i8, ptr %51, i32 40
  %53 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr115, align 4
  %and116 = and i32 %54, -520093697
  %or = or i32 %cond110, %and116
  store i32 %or, ptr %add.ptr115, align 4
  %55 = ptrtoint ptr %page_offset_quantized to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_offset_quantized, align 4
  %add.ptr126 = getelementptr i8, ptr %51, i32 24
  %57 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr126, align 4
  %and127 = and i32 %58, -4033
  %and128 = shl i32 %56, 6
  %shl129 = and i32 %and128, 4032
  %or130 = or i32 %and127, %shl129
  store i32 %or130, ptr %add.ptr126, align 4
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags, align 2
  %61 = and i16 %60, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool137.not = icmp eq i16 %61, 0
  br i1 %tobool137.not, label %if.else, label %if.then138

if.then138:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %uar_page_index = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 6
  %62 = ptrtoint ptr %uar_page_index to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %uar_page_index, align 8
  %conv139 = zext i16 %63 to i32
  br label %if.end145

if.else:                                          ; preds = %if.end74
  %lib_uar_dyn = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %lib_uar_dyn to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %lib_uar_dyn, align 4
  %65 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool140.not = icmp eq i8 %65, 0
  br i1 %tobool140.not, label %if.else142, label %if.else.err_cqb_crit_edge

if.else.err_cqb_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cqb

if.else142:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %bfregi = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 3
  %66 = ptrtoint ptr %bfregi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bfregi, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then138
  %storemerge = phi i32 [ %69, %if.else142 ], [ %conv139, %if.then138 ]
  %70 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge, ptr %index, align 4
  %cqe_comp_en = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 3
  %71 = ptrtoint ptr %cqe_comp_en to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cqe_comp_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp147 = icmp eq i8 %72, 1
  br i1 %cmp147, label %if.then149, label %if.end145.if.end233_crit_edge

if.end145.if.end233_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then149:                                       ; preds = %if.end145
  %73 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cqe_size, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %74, label %if.then149.if.then171_crit_edge [
    i32 128, label %land.lhs.true152
    i32 64, label %land.lhs.true160
  ]

if.then149.if.then171_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then171

land.lhs.true152:                                 ; preds = %if.then149
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %76 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %caps, align 8
  %add.ptr154 = getelementptr i32, ptr %79, i32 45
  %80 = ptrtoint ptr %add.ptr154 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr154, align 4
  %82 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool156.not = icmp eq i32 %82, 0
  br i1 %tobool156.not, label %land.lhs.true152.if.then171_crit_edge, label %land.lhs.true152.if.end179_crit_edge

land.lhs.true152.if.end179_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

land.lhs.true152.if.then171_crit_edge:            ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then171

land.lhs.true160:                                 ; preds = %if.then149
  %mdev161 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %83 = ptrtoint ptr %mdev161 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mdev161, align 8
  %caps162 = getelementptr inbounds %struct.mlx5_core_dev, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %caps162 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %caps162, align 8
  %add.ptr167 = getelementptr i32, ptr %86, i32 45
  %87 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr167, align 4
  %and169 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.lhs.true160.if.then171_crit_edge, label %land.lhs.true160.if.end179_crit_edge

land.lhs.true160.if.end179_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

land.lhs.true160.if.then171_crit_edge:            ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then171

if.then171:                                       ; preds = %land.lhs.true160.if.then171_crit_edge, %land.lhs.true152.if.then171_crit_edge, %if.then149.if.then171_crit_edge
  %89 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %90 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i378 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i378 to ptr
  %task177 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task177 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task177, align 8
  %pid178 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 68
  %94 = ptrtoint ptr %pid178 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pid178, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 802, i32 noundef %95, i32 noundef %74) #14
  br label %err_cqb

if.end179:                                        ; preds = %land.lhs.true160.if.end179_crit_edge, %land.lhs.true152.if.end179_crit_edge
  %cqe_comp_res_format = getelementptr inbounds %struct.mlx5_ib_create_cq, ptr %ucmd, i32 0, i32 4
  %96 = ptrtoint ptr %cqe_comp_res_format to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cqe_comp_res_format, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %97, label %if.end179.if.then183_crit_edge [
    i8 1, label %if.end179.cleanup.thread390_crit_edge
    i8 2, label %sw.bb1.i
    i8 4, label %sw.bb2.i
  ]

if.end179.cleanup.thread390_crit_edge:            ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread390

if.end179.if.then183_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

sw.bb1.i:                                         ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread390

sw.bb2.i:                                         ; preds = %if.end179
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %99 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %102, i32 45
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i, align 4
  %105 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i, label %sw.bb2.i.if.then183_crit_edge, label %sw.bb2.i.cleanup.thread390_crit_edge

sw.bb2.i.cleanup.thread390_crit_edge:             ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread390

sw.bb2.i.if.then183_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then183

if.then183:                                       ; preds = %sw.bb2.i.if.then183_crit_edge, %if.end179.if.then183_crit_edge
  %retval.0.i379 = phi i32 [ -22, %if.end179.if.then183_crit_edge ], [ -95, %sw.bb2.i.if.then183_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_cq_user.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_cq_user, %if.then196)) #11
          to label %err_cqb [label %if.then196], !srcloc !128

if.then196:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  %106 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %107 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i380 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i380 to ptr
  %task199 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task199 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task199, align 8
  %pid200 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 68
  %111 = ptrtoint ptr %pid200 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pid200, align 8
  %113 = ptrtoint ptr %cqe_comp_res_format to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cqe_comp_res_format, align 1
  %conv202 = zext i8 %114 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_cq_user.__UNIQUE_ID_ddebug516, ptr noundef %106, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.38, i32 noundef 812, i32 noundef %112, i32 noundef %conv202, i32 noundef %retval.0.i379) #11
  br label %err_cqb

cleanup.thread390:                                ; preds = %sw.bb2.i.cleanup.thread390_crit_edge, %sw.bb1.i, %if.end179.cleanup.thread390_crit_edge
  %retval.0.i379.ph = phi i32 [ 28672, %sw.bb2.i.cleanup.thread390_crit_edge ], [ 16384, %if.end179.cleanup.thread390_crit_edge ], [ 20480, %sw.bb1.i ]
  %115 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr78, align 4
  %or216 = and i32 %116, -28673
  %or229 = or i32 %retval.0.i379.ph, %or216
  store i32 %or229, ptr %add.ptr78, align 4
  br label %if.end233

if.end233:                                        ; preds = %cleanup.thread390, %if.end145.if.end233_crit_edge
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %flags, align 2
  %119 = and i16 %118, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool237.not = icmp eq i16 %119, 0
  br i1 %tobool237.not, label %if.end233.if.end264_crit_edge, label %if.then238

if.end233.if.end264_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end264

if.then238:                                       ; preds = %if.end233
  %120 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cqe_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %121)
  %cmp239.not = icmp eq i32 %121, 128
  br i1 %cmp239.not, label %lor.lhs.false241, label %if.then238.if.then252_crit_edge

if.then238.if.then252_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then252

lor.lhs.false241:                                 ; preds = %if.then238
  %mdev242 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %122 = ptrtoint ptr %mdev242 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mdev242, align 8
  %caps243 = getelementptr inbounds %struct.mlx5_core_dev, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %caps243 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %caps243, align 8
  %add.ptr248 = getelementptr i32, ptr %125, i32 45
  %126 = ptrtoint ptr %add.ptr248 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr248, align 4
  %128 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool251.not = icmp eq i32 %128, 0
  br i1 %tobool251.not, label %lor.lhs.false241.if.then252_crit_edge, label %if.end260

lor.lhs.false241.if.then252_crit_edge:            ; preds = %lor.lhs.false241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then252

if.then252:                                       ; preds = %lor.lhs.false241.if.then252_crit_edge, %if.then238.if.then252_crit_edge
  %129 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %130 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i381 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i381 to ptr
  %task258 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task258 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task258, align 8
  %pid259 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 68
  %134 = ptrtoint ptr %pid259 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pid259, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, i32 noundef 826, i32 noundef %135, i32 noundef %121) #14
  br label %err_cqb

if.end260:                                        ; preds = %lor.lhs.false241
  call void @__sanitizer_cov_trace_pc() #13
  %private_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 15
  %136 = ptrtoint ptr %private_flags to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %private_flags, align 8
  %138 = or i16 %137, 1
  store i16 %138, ptr %private_flags, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.end260, %if.end233.if.end264_crit_edge
  %139 = and i16 %118, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool268.not = icmp eq i16 %139, 0
  br i1 %tobool268.not, label %if.end264.do.body275_crit_edge, label %if.then269

if.end264.do.body275_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body275

if.then269:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #13
  %private_flags270 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 15
  %140 = ptrtoint ptr %private_flags270 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %private_flags270, align 8
  %142 = or i16 %141, 2
  store i16 %142, ptr %private_flags270, align 8
  br label %do.body275

do.body275:                                       ; preds = %if.then269, %if.end264.do.body275_crit_edge
  %devx_uid = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %143 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %devx_uid, align 8
  %conv277 = zext i16 %144 to i32
  %145 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cqb, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %and282 = and i32 %148, -65536
  %or285 = or i32 %and282, %conv277
  store i32 %or285, ptr %146, align 4
  br label %cleanup292

err_cqb:                                          ; preds = %if.then252, %if.then196, %if.then183, %if.then171, %if.else.err_cqb_crit_edge
  %err.1 = phi i32 [ -95, %if.then252 ], [ -22, %if.else.err_cqb_crit_edge ], [ %retval.0.i379, %if.then183 ], [ %retval.0.i379, %if.then196 ], [ -95, %if.then171 ]
  %149 = ptrtoint ptr %cqb to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cqb, align 4
  call void @kvfree(ptr noundef %150) #11
  br label %err_db

err_db:                                           ; preds = %err_cqb, %do.end.err_db_crit_edge
  %err.2 = phi i32 [ %err.1, %err_cqb ], [ -12, %do.end.err_db_crit_edge ]
  call void @mlx5_ib_db_unmap_user(ptr noundef %cond, ptr noundef %db) #11
  br label %err_umem

err_umem:                                         ; preds = %err_db, %if.end46.err_umem_crit_edge, %if.end39.err_umem_crit_edge
  %err.3 = phi i32 [ %call48, %if.end46.err_umem_crit_edge ], [ %err.2, %err_db ], [ -22, %if.end39.err_umem_crit_edge ]
  %151 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %152) #11
  br label %cleanup292

cleanup292:                                       ; preds = %err_umem, %do.body275, %if.then35, %lor.lhs.false24.cleanup292_crit_edge, %lor.lhs.false.cleanup292_crit_edge, %if.end15.cleanup292_crit_edge, %if.end12.cleanup292_crit_edge, %if.end.cleanup292_crit_edge, %cond.end.cleanup292_crit_edge
  %retval.0 = phi i32 [ %20, %if.then35 ], [ %err.3, %err_umem ], [ 0, %do.body275 ], [ -22, %cond.end.cleanup292_crit_edge ], [ -14, %if.end.cleanup292_crit_edge ], [ -22, %if.end12.cleanup292_crit_edge ], [ -22, %if.end15.cleanup292_crit_edge ], [ -22, %lor.lhs.false24.cleanup292_crit_edge ], [ -22, %lor.lhs.false.cleanup292_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_offset_quantized) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @notify_soft_wc_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -596
  %comp_handler = getelementptr i8, ptr %work, i32 -588
  %0 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr i8, ptr %work, i32 -580
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  tail call void %1(ptr noundef %add.ptr, ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vector2eqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_cq_comp(ptr noundef %cq, ptr nocapture noundef readnone %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cq, i32 -208
  %comp_handler = getelementptr i8, ptr %cq, i32 -200
  %0 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr i8, ptr %cq, i32 -192
  %2 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_context, align 8
  tail call void %1(ptr noundef %add.ptr.i, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_cq_event(ptr noundef %mcq, i32 noundef %type) #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mcq, i32 -208
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #11
  %2 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %5 = tail call i32 @llvm.read_register.i32(metadata !117) #11
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
  %11 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 57, i32 noundef %10, i32 noundef %type, i32 noundef %12) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_handler = getelementptr i8, ptr %mcq, i32 -196
  %13 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %event, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %3, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %2, align 4
  %cq_context = getelementptr i8, ptr %mcq, i32 -192
  %18 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cq_context, align 8
  call void %14(ptr noundef nonnull %event, ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #17, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef 4) #11
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_cq_user(ptr noundef %cq, ptr noundef readonly %udata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %db = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 3
  tail call void @mlx5_ib_db_unmap_user(ptr noundef %cond, ptr noundef %db) #11
  %umem = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umem, align 4
  tail call void @ib_umem_release(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_cq_kernel(ptr nocapture noundef readonly %dev, ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %frag_buf.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 1
  tail call void @mlx5_frag_buf_free(ptr noundef %1, ptr noundef %frag_buf.i) #11
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 8
  %db = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 3
  tail call void @mlx5_db_free(ptr noundef %3, ptr noundef %db) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_destroy_cq(ptr noundef %cq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %mcq2 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1
  %call3 = tail call i32 @mlx5_core_destroy_cq(ptr noundef %3, ptr noundef %mcq2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %udata, null
  br i1 %tobool4.not, label %if.else, label %destroy_cq_user.exit

destroy_cq_user.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %4 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context1.i, align 4
  %db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 3
  tail call void @mlx5_ib_db_unmap_user(ptr noundef %5, ptr noundef %db.i) #11
  %umem.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %umem.i, align 4
  tail call void @ib_umem_release(ptr noundef %7) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %frag_buf.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 1
  tail call void @mlx5_frag_buf_free(ptr noundef %9, ptr noundef %frag_buf.i.i) #11
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 8
  %db.i15 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 3
  tail call void @mlx5_db_free(ptr noundef %11, ptr noundef %db.i15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %destroy_cq_user.exit, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mlx5_ib_cq_clean(ptr noundef %cq, i32 noundef %rsn, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cons_index = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cons_index, align 8
  %cqe1.i = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %2 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 6
  %6 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %11 to i32
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 5
  %12 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %13 to i32
  %cqe_sz.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cqe_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp.i = icmp eq i32 %15, 64
  %cond.idx.i = select i1 %cmp.i, i32 0, i32 64
  %and.i120 = and i32 %3, %1
  %add.i.i.i121 = add i32 %and.i120, %conv.i.i.i
  %shr.i.i.i122 = lshr i32 %add.i.i.i121, %conv1.i.i.i
  %arrayidx.i.i.i123 = getelementptr %struct.mlx5_buf_list, ptr %9, i32 %shr.i.i.i122
  %16 = ptrtoint ptr %arrayidx.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i123, align 4
  %and.i.i.i124 = and i32 %add.i.i.i121, %conv2.i.i.i
  %shl.i.i.i125 = shl i32 %and.i.i.i124, %conv3.i.i.i
  %add.ptr.i.i.i126 = getelementptr i8, ptr %17, i32 %shl.i.i.i125
  %cond.i127 = getelementptr i8, ptr %add.ptr.i.i.i126, i32 %cond.idx.i
  %op_own.i.i128 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i127, i32 0, i32 23
  %18 = ptrtoint ptr %op_own.i.i128 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %op_own.i.i128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %19)
  %cmp3.not.i129 = icmp ugt i8 %19, -17
  br i1 %cmp3.not.i129, label %if.end.for.end_crit_edge, label %land.lhs.true.i.lr.ph, !prof !129

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %add.i = add i32 %3, 1
  %add = add i32 %3, %1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %20 = phi i8 [ %19, %land.lhs.true.i.lr.ph ], [ %26, %for.inc.land.lhs.true.i_crit_edge ]
  %add.ptr.i.i.i131 = phi ptr [ %add.ptr.i.i.i126, %land.lhs.true.i.lr.ph ], [ %add.ptr.i.i.i, %for.inc.land.lhs.true.i_crit_edge ]
  %prod_index.0130 = phi i32 [ %1, %land.lhs.true.i.lr.ph ], [ %inc, %for.inc.land.lhs.true.i_crit_edge ]
  %and10.i = and i32 %add.i, %prod_index.0130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.i = icmp ne i32 %and10.i, 0
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %22 = icmp ne i8 %21, 0
  %tobool16.not.i.not = xor i1 %tobool11.i, %22
  %tobool1.not = icmp eq ptr %add.ptr.i.i.i131, null
  %or.cond = select i1 %tobool16.not.i.not, i1 true, i1 %tobool1.not
  call void @__sanitizer_cov_trace_cmp4(i32 %prod_index.0130, i32 %add)
  %cmp = icmp eq i32 %prod_index.0130, %add
  %or.cond119 = select i1 %or.cond, i1 true, i1 %cmp
  br i1 %or.cond119, label %land.lhs.true.i.for.end_crit_edge, label %for.inc

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.i
  %inc = add i32 %prod_index.0130, 1
  %and.i = and i32 %3, %inc
  %add.i.i.i = add i32 %and.i, %conv.i.i.i
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %9, i32 %shr.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %shl.i.i.i
  %cond.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %cond.idx.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i, i32 0, i32 23
  %25 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %op_own.i.i, align 1
  %cmp3.not.i = icmp ugt i8 %26, -17
  br i1 %cmp3.not.i, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true.i_crit_edge, !prof !129

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %prod_index.0.lcssa = phi i32 [ %1, %if.end.for.end_crit_edge ], [ %prod_index.0130, %land.lhs.true.i.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %dec139 = add i32 %prod_index.0.lcssa, -1
  %27 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cons_index, align 8
  %sub140 = sub i32 %dec139, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub140)
  %cmp9141 = icmp sgt i32 %sub140, -1
  br i1 %cmp9141, label %while.body.lr.ph, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.end
  %tobool18.not = icmp eq ptr %srq, null
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %dec143 = phi i32 [ %dec139, %while.body.lr.ph ], [ %dec, %if.end52.while.body_crit_edge ]
  %nfreed.0142 = phi i32 [ 0, %while.body.lr.ph ], [ %nfreed.1, %if.end52.while.body_crit_edge ]
  %29 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cqe1.i, align 4
  %and = and i32 %30, %dec143
  %31 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %add.i.i = add i32 %and, %conv.i.i
  %33 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i = zext i8 %34 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %35 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %36, i32 %shr.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i = zext i16 %40 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %41 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i = zext i8 %42 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %shl.i.i
  %43 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cqe_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %44)
  %cmp14 = icmp eq i32 %44, 64
  %cond.idx = select i1 %cmp14, i32 0, i32 64
  %cond = getelementptr i8, ptr %add.ptr.i.i, i32 %cond.idx
  %sop_drop_qpn.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond, i32 0, i32 20
  %45 = ptrtoint ptr %sop_drop_qpn.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sop_drop_qpn.i, align 4
  %and.i99 = and i32 %46, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i99, i32 %rsn)
  %cmp.i100.not = icmp eq i32 %and.i99, %rsn
  br i1 %cmp.i100.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %while.body
  br i1 %tobool18.not, label %if.then17.if.end22_crit_edge, label %land.lhs.true

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then17
  %srqn = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond, i32 0, i32 14
  %47 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %srqn, align 4
  %and19 = and i32 %48, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %if.then21

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wqe_counter = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond, i32 0, i32 21
  %49 = ptrtoint ptr %wqe_counter to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %wqe_counter, align 4
  %conv = zext i16 %50 to i32
  tail call void @mlx5_ib_free_srq_wqe(ptr noundef nonnull %srq, i32 noundef %conv) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true.if.end22_crit_edge, %if.then17.if.end22_crit_edge
  %inc23 = add i32 %nfreed.0142, 1
  br label %if.end52

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.0142)
  %tobool24.not = icmp eq i32 %nfreed.0142, 0
  br i1 %tobool24.not, label %if.else.if.end52_crit_edge, label %if.then25

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add26 = add i32 %dec143, %nfreed.0142
  %and29 = and i32 %30, %add26
  %add.i.i104 = add i32 %and29, %conv.i.i
  %shr.i.i107 = lshr i32 %add.i.i104, %conv1.i.i
  %arrayidx.i.i108 = getelementptr %struct.mlx5_buf_list, ptr %36, i32 %shr.i.i107
  %51 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i108, align 4
  %and.i.i111 = and i32 %add.i.i104, %conv2.i.i
  %shl.i.i114 = shl i32 %and.i.i111, %conv3.i.i
  %add.ptr.i.i115 = getelementptr i8, ptr %52, i32 %shl.i.i114
  %cond39 = getelementptr i8, ptr %add.ptr.i.i115, i32 %cond.idx
  %op_own = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond39, i32 0, i32 23
  %53 = ptrtoint ptr %op_own to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %op_own, align 1
  %55 = and i8 %54, 1
  %56 = call ptr @memcpy(ptr %add.ptr.i.i115, ptr %add.ptr.i.i, i32 %44)
  %57 = load i8, ptr %op_own, align 1
  %58 = and i8 %57, -2
  %or98 = or i8 %58, %55
  store i8 %or98, ptr %op_own, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then25, %if.else.if.end52_crit_edge, %if.end22
  %nfreed.1 = phi i32 [ %inc23, %if.end22 ], [ %nfreed.0142, %if.then25 ], [ 0, %if.else.if.end52_crit_edge ]
  %dec = add i32 %dec143, -1
  %59 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cons_index, align 8
  %sub = sub i32 %dec, %60
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.end52.while.body_crit_edge, label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.1)
  %tobool53.not = icmp eq i32 %nfreed.1, 0
  br i1 %tobool53.not, label %while.end.cleanup_crit_edge, label %if.then54

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %add57 = add i32 %60, %nfreed.1
  %61 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add57, ptr %cons_index, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cons_index, align 4
  %and.i116 = and i32 %63, 16777215
  %set_ci_db.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_ci_db.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i116, ptr %65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %while.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_free_srq_wqe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_cq_clean(ptr noundef %cq, i32 noundef %qpn, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cq, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  tail call void @__mlx5_ib_cq_clean(ptr noundef nonnull %cq, i32 noundef %qpn, ptr noundef %srq)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_modify_cq(ptr noundef %cq, i16 noundef zeroext %cq_count, i16 noundef zeroext %cq_period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 17
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %cq_period)
  %cmp = icmp ugt i16 %cq_period, 4095
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mcq6 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1
  %call7 = tail call i32 @mlx5_core_modify_cq_moderation(ptr noundef %3, ptr noundef %mcq6, i16 noundef zeroext %cq_period, i16 noundef zeroext %cq_count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %9 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %10 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %16 = ptrtoint ptr %mcq6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mcq6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1140, i32 noundef %15, i32 noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call7, %do.end ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_cq_moderation(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_resize_cq(ptr noundef %ibcq, i32 noundef %entries, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %ucmd.i = alloca %struct.mlx5_ib_resize_cq, align 8
  %page_offset_quantized = alloca i32, align 4
  %tbuf = alloca %struct.mlx5_ib_cq_buf, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_offset_quantized) #11
  %2 = ptrtoint ptr %page_offset_quantized to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %page_offset_quantized, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %6, i32 17
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  br label %cleanup313

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %entries)
  %cmp = icmp slt i32 %entries, 1
  br i1 %cmp, label %if.end.do.end16_crit_edge, label %lor.lhs.false

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr9 = getelementptr i32, ptr %6, i32 6
  %10 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr9, align 4
  %shr10 = lshr i32 %11, 16
  %and11 = and i32 %shr10, 255
  %shl = shl nuw i32 1, %and11
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %entries)
  %cmp12 = icmp slt i32 %shl, %entries
  br i1 %cmp12, label %lor.lhs.false.do.end16_crit_edge, label %cond.false52

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end.do.end16_crit_edge
  %12 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %13 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  %add.ptr24 = getelementptr i32, ptr %6, i32 6
  %19 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr24, align 4
  %shr25 = lshr i32 %20, 16
  %and26 = and i32 %shr25, 255
  %shl27 = shl nuw i32 1, %and26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 1279, i32 noundef %18, i32 noundef %entries, i32 noundef %shl27) #14
  br label %cleanup313

cond.false52:                                     ; preds = %lor.lhs.false
  %21 = tail call i32 @llvm.ctlz.i32(i32 %entries, i1 true) #11, !range !134
  %sub.i.i.i = sub nuw nsw i32 32, %21
  %cond56 = shl nuw i32 1, %sub.i.i.i
  %add67 = add nuw i32 %shl, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond56, i32 %add67)
  %cmp68 = icmp sgt i32 %cond56, %add67
  br i1 %cmp68, label %cond.false52.cleanup313_crit_edge, label %if.end71

cond.false52.cleanup313_crit_edge:                ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup313

if.end71:                                         ; preds = %cond.false52
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %22 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cqe, align 4
  %add72 = add i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond56, i32 %add72)
  %cmp73 = icmp eq i32 %cond56, %add72
  br i1 %cmp73, label %if.end71.cleanup313_crit_edge, label %if.end76

if.end71.cleanup313_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup313

if.end76:                                         ; preds = %if.end71
  %resize_mutex = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %resize_mutex, i32 noundef 0) #11
  %tobool77.not = icmp eq ptr %udata, null
  br i1 %tobool77.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ucmd.i) #11
  %24 = getelementptr inbounds %struct.mlx5_ib_resize_cq, ptr %ucmd.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mlx5_ib_resize_cq, ptr %ucmd.i, i32 0, i32 2
  %26 = getelementptr inbounds %struct.mlx5_ib_resize_cq, ptr %ucmd.i, i32 0, i32 3
  %27 = call ptr @memset(ptr %ucmd.i, i32 255, i32 16)
  %28 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.then78.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then78.if.then11.i.i.i.i_crit_edge:            ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then78
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 16, i32 -1226833920) #17, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd.i, i32 noundef 16) #11
  %31 = call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !138
  %and.i.i.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd.i, ptr noundef %29, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #11, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !127

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then78.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i32.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 16, %if.then78.if.then11.i.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 16, %res.0.i.i.i32.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ucmd.i, i32 %sub.i.i.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i32.i)
  br label %resize_user.exit.thread

if.end.i:                                         ; preds = %if.end.i.i.i.i
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool1.not.i = icmp eq i16 %36, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.end.i.resize_user.exit.thread_crit_edge

if.end.i.resize_user.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resize_user.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %lor.lhs.false.i.resize_user.exit.thread_crit_edge

lor.lhs.false.i.resize_user.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resize_user.exit.thread

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool7.not.i = icmp eq i16 %40, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %conv6.i = zext i16 %40 to i32
  %div.i = udiv i32 -1, %conv6.i
  %div.i.highbits = lshr i32 %div.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.highbits)
  %cmp.not.i.not = icmp eq i32 %div.i.highbits, 0
  br i1 %cmp.not.i.not, label %land.lhs.true.i.resize_user.exit.thread_crit_edge, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

land.lhs.true.i.resize_user.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %resize_user.exit.thread

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %conv15.pre-phi.i = phi i32 [ %conv6.i, %land.lhs.true.i.if.end12.i_crit_edge ], [ 0, %if.end4.i.if.end12.i_crit_edge ]
  %41 = ptrtoint ptr %ucmd.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ucmd.i, align 8
  %conv13.i = trunc i64 %42 to i32
  %mul.i = shl i32 %conv15.pre-phi.i, %sub.i.i.i
  %call16.i = call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv13.i, i32 noundef %mul.i, i32 noundef 1) #11
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %resize_user.exit, label %resize_user.exit.thread450

resize_user.exit.thread450:                       ; preds = %if.end12.i
  %resize_umem.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 7
  %43 = ptrtoint ptr %resize_umem.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call16.i, ptr %resize_umem.i, align 4
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %24, align 8
  %conv22.i = trunc i16 %45 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd.i) #11
  %call84 = call i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef %call16.i, i32 noundef -4096, i32 noundef 6, i64 noundef 0, i32 noundef 64, ptr noundef nonnull %page_offset_quantized) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %resize_user.exit.thread450.ex_resize.thread_crit_edge, label %if.end87

resize_user.exit.thread450.ex_resize.thread_crit_edge: ; preds = %resize_user.exit.thread450
  call void @__sanitizer_cov_trace_pc() #13
  br label %ex_resize.thread

resize_user.exit.thread:                          ; preds = %land.lhs.true.i.resize_user.exit.thread_crit_edge, %lor.lhs.false.i.resize_user.exit.thread_crit_edge, %if.end.i.resize_user.exit.thread_crit_edge, %if.then11.i.i.i.i
  %retval.0.i.ph = phi i32 [ -14, %if.then11.i.i.i.i ], [ -22, %land.lhs.true.i.resize_user.exit.thread_crit_edge ], [ -22, %if.end.i.resize_user.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.resize_user.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd.i) #11
  br label %ex

resize_user.exit:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call16.i to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ucmd.i) #11
  br label %ex

if.end87:                                         ; preds = %resize_user.exit.thread450
  %47 = ptrtoint ptr %resize_umem.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resize_umem.i, align 4
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %52 to i64
  %conv1.i = zext i32 %call84 to i64
  %sub.i428 = add nsw i64 %conv1.i, -1
  %add.i = add i64 %50, %sub.i428
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i429 = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %call84, -1
  %conv7.i = zext i32 %sub6.i to i64
  %sub8.i = sub nsw i64 %sub.i428, %conv7.i
  %add11.i = add i64 %sub8.i, %50
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i429, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i430 = udiv i32 %conv17.i, %call84
  %mul478 = shl i32 %div.i430, 3
  %add134479 = add i32 %mul478, 272
  %call.i.i480 = call noalias ptr @kvmalloc_node(i32 noundef %add134479, i32 noundef 3520, i32 noundef -1) #16
  %tobool136.not481 = icmp eq ptr %call.i.i480, null
  br i1 %tobool136.not481, label %if.end87.ex_resize.thread_crit_edge, label %if.then141

if.end87.ex_resize.thread_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %ex_resize.thread

if.else:                                          ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 44) #18
  %resize_buf.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 6
  %54 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %resize_buf.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.else.ex_crit_edge, label %if.end.i438

if.else.ex_crit_edge:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %ex

if.end.i438:                                      ; preds = %if.else
  %frag_buf1.i.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %call7.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev, align 8
  %mul.i.i = shl i32 %cond56, 6
  %numa_node.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %56, i32 0, i32 17, i32 17
  %57 = ptrtoint ptr %numa_node.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %numa_node.i.i, align 8
  %call12.i.i = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %56, i32 noundef %mul.i.i, ptr noundef %frag_buf1.i.i, i32 noundef %58) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i.i437 = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i.i437, label %if.end6.i, label %ex.i

if.end6.i:                                        ; preds = %if.end.i438
  %59 = ptrtoint ptr %frag_buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %frag_buf1.i.i, align 8
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %call7.i.i.i, align 8
  %log_stride2.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %log_stride2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 6, ptr %log_stride2.i.i.i.i, align 1
  %log_sz3.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %log_sz3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %log_sz3.i.i.i.i, align 4
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 63, ptr %sz_m1.i.i.i.i, align 4
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %log_frag_strides.i.i.i.i, align 2
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 63, ptr %frag_sz_m1.i.i.i.i, align 8
  %strides_offset14.i.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %call7.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %strides_offset14.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %strides_offset14.i.i.i.i, align 2
  %cqe_size13.i.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %call7.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %cqe_size13.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 64, ptr %cqe_size13.i.i, align 4
  %nent14.i.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %call7.i.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %nent14.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond56, ptr %nent14.i.i, align 8
  %70 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resize_buf.i, align 8
  %nent.i.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp7.i.i = icmp sgt i32 %73, 0
  br i1 %cmp7.i.i, label %for.body.lr.ph.i.i, label %if.end6.i.if.end133_crit_edge

if.end6.i.if.end133_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %71, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %71, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %71, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %71, i32 0, i32 5
  %cqe_size.i.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %71, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %74 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %75 to i32
  %add.i.i.i = add nuw i32 %i.08.i.i, %conv.i.i.i
  %76 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %77 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %71, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %79, i32 %shr.i.i.i
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i.i, align 4
  %82 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %83 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %84 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %85 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 %shl.i.i.i
  %86 = ptrtoint ptr %cqe_size.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cqe_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %87)
  %cmp1.i.i = icmp eq i32 %87, 64
  %cond.idx.i.i = select i1 %cmp1.i.i, i32 0, i32 64
  %cond.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %cond.idx.i.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i.i, i32 0, i32 23
  %88 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -16, ptr %op_own.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %89 = ptrtoint ptr %nent.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nent.i.i, align 4
  %cmp.i.i439 = icmp slt i32 %inc.i.i, %90
  br i1 %cmp.i.i439, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end133_crit_edge

for.body.i.i.if.end133_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

ex.i:                                             ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %resize_buf.i, align 8
  tail call void @kfree(ptr noundef %92) #11
  br label %ex

if.end133:                                        ; preds = %for.body.i.i.if.end133_crit_edge, %if.end6.i.if.end133_crit_edge
  %93 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %resize_buf.i, align 8
  %npages = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %94, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %npages, align 4
  %page_shift128 = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %94, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %page_shift128 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %page_shift128, align 4
  %mul = shl i32 %96, 3
  %add134 = add i32 %mul, 272
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add134, i32 noundef 3520, i32 noundef -1) #16
  %tobool136.not = icmp eq ptr %call.i.i, null
  br i1 %tobool136.not, label %if.end133.ex_resize_crit_edge, label %if.else144

if.end133.ex_resize_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %ex_resize

if.then141:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84)
  %cmp.i.not = icmp eq i32 %call84, 1
  %99 = call i32 @llvm.ctlz.i32(i32 %sub6.i, i1 true) #11, !range !134
  %add.i436 = sub nuw nsw i32 32, %99
  %page_shift.0.ph = select i1 %cmp.i.not, i32 0, i32 %add.i436
  %add.ptr139491 = getelementptr i8, ptr %call.i.i480, i32 272
  %resize_umem142 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 7
  %100 = ptrtoint ptr %resize_umem142 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %resize_umem142, align 4
  %shl143 = shl nuw i32 1, %page_shift.0.ph
  call void @mlx5_ib_populate_pas(ptr noundef %101, i32 noundef %shl143, ptr noundef %add.ptr139491, i64 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv22.i)
  %phi.cmp = icmp eq i8 %conv22.i, 64
  %phi.sel = select i1 %phi.cmp, i32 0, i32 2097152
  br label %do.body148

if.else144:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %conv129 = zext i8 %98 to i32
  %add.ptr139 = getelementptr i8, ptr %call.i.i, i32 272
  %102 = ptrtoint ptr %resize_buf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %resize_buf.i, align 8
  %frag_buf146 = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %103, i32 0, i32 1
  tail call void @mlx5_fill_page_frag_array(ptr noundef %frag_buf146, ptr noundef %add.ptr139) #11
  br label %do.body148

do.body148:                                       ; preds = %if.else144, %if.then141
  %cqe_size.1482497 = phi i32 [ %phi.sel, %if.then141 ], [ 0, %if.else144 ]
  %add134485494 = phi i32 [ %add134479, %if.then141 ], [ %add134, %if.else144 ]
  %call.i.i486492 = phi ptr [ %call.i.i480, %if.then141 ], [ %call.i.i, %if.else144 ]
  %page_shift.2484 = phi i32 [ %page_shift.0.ph, %if.then141 ], [ %conv129, %if.else144 ]
  %add.ptr152 = getelementptr i32, ptr %call.i.i486492, i32 3
  %104 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 7, ptr %add.ptr152, align 4
  %add.ptr159 = getelementptr i8, ptr %call.i.i486492, i32 16
  %add.ptr166 = getelementptr i8, ptr %call.i.i486492, i32 40
  %105 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr166, align 4
  %and167 = and i32 %106, -520093697
  %sub162 = shl i32 %page_shift.2484, 24
  %and168 = add i32 %sub162, 335544320
  %shl169 = and i32 %and168, 520093696
  %or170 = or i32 %and167, %shl169
  store i32 %or170, ptr %add.ptr166, align 4
  %107 = ptrtoint ptr %page_offset_quantized to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %page_offset_quantized, align 4
  %add.ptr179 = getelementptr i8, ptr %call.i.i486492, i32 24
  %109 = ptrtoint ptr %add.ptr179 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr179, align 4
  %and180 = and i32 %110, -4033
  %and181 = shl i32 %108, 6
  %shl182 = and i32 %and181, 4032
  %or183 = or i32 %and180, %shl182
  store i32 %or183, ptr %add.ptr179, align 4
  %private_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 15
  %111 = ptrtoint ptr %private_flags to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %private_flags, align 8
  %113 = and i16 %112, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i441 = icmp eq i16 %113, 0
  %114 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr159, align 4
  %and197 = and i32 %115, -14680065
  %and198 = select i1 %tobool.not.i441, i32 %cqe_size.1482497, i32 4194304
  %or200 = or i32 %and198, %and197
  store i32 %or200, ptr %add.ptr159, align 4
  %116 = call i32 @llvm.ctlz.i32(i32 %cond56, i1 true) #11, !range !134
  %add.ptr223 = getelementptr i8, ptr %call.i.i486492, i32 28
  %117 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr223, align 4
  %and224 = and i32 %118, -520093697
  %sub.i.op.i443 = shl nuw nsw i32 %116, 24
  %119 = or i32 %sub.i.op.i443, %and224
  %or227 = xor i32 %119, 520093696
  store i32 %or227, ptr %add.ptr223, align 4
  %add.ptr236 = getelementptr i32, ptr %call.i.i486492, i32 1
  %120 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr236, align 4
  %and237 = and i32 %121, -65536
  %or240 = or i32 %and237, 1
  store i32 %or240, ptr %add.ptr236, align 4
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 1
  %122 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mcq, align 8
  %add.ptr249 = getelementptr i32, ptr %call.i.i486492, i32 2
  %124 = ptrtoint ptr %add.ptr249 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr249, align 4
  %and250 = and i32 %125, -16777216
  %and251 = and i32 %123, 16777215
  %or253 = or i32 %and250, %and251
  store i32 %or253, ptr %add.ptr249, align 4
  %126 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mdev, align 8
  %call259 = call i32 @mlx5_core_modify_cq(ptr noundef %127, ptr noundef %mcq, ptr noundef nonnull %call.i.i486492, i32 noundef %add134485494) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end262, label %ex_alloc

if.end262:                                        ; preds = %do.body148
  br i1 %tobool77.not, label %if.else272, label %if.then264

if.then264:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  %sub265 = add i32 %cond56, -1
  %128 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %sub265, ptr %cqe, align 4
  %umem = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2, i32 2
  %129 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %130) #11
  %resize_umem268 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 7
  %131 = ptrtoint ptr %resize_umem268 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %resize_umem268, align 4
  %133 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %umem, align 4
  store ptr null, ptr %resize_umem268, align 4
  br label %if.end304

if.else272:                                       ; preds = %if.end262
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tbuf) #11
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 4
  %call279 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %resize_buf284 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 6
  %134 = ptrtoint ptr %resize_buf284 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %resize_buf284, align 8
  %tobool285.not = icmp eq ptr %135, null
  br i1 %tobool285.not, label %if.end296, label %if.then286

if.then286:                                       ; preds = %if.else272
  %call287 = call fastcc i32 @copy_resize_cqes(ptr noundef %ibcq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.then289, label %if.end303.critedge

if.then289:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  %buf290 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 2
  %136 = call ptr @memcpy(ptr %tbuf, ptr %buf290, i32 44)
  %137 = ptrtoint ptr %resize_buf284 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %resize_buf284, align 8
  %139 = call ptr @memcpy(ptr %buf290, ptr %138, i32 44)
  call void @kfree(ptr noundef %138) #11
  %140 = ptrtoint ptr %resize_buf284 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %resize_buf284, align 8
  %sub297.c425 = add i32 %cond56, -1
  %141 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub297.c425, ptr %cqe, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call279) #11
  %142 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mdev, align 8
  %frag_buf.i = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %tbuf, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %143, ptr noundef %frag_buf.i) #11
  br label %if.end303

if.end296:                                        ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #13
  %sub297 = add i32 %cond56, -1
  %144 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub297, ptr %cqe, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call279) #11
  br label %if.end303

if.end303.critedge:                               ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #13
  %sub297.c = add i32 %cond56, -1
  %145 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub297.c, ptr %cqe, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call279) #11
  br label %if.end303

if.end303:                                        ; preds = %if.end303.critedge, %if.end296, %if.then289
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tbuf) #11
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.then264
  call void @mutex_unlock(ptr noundef %resize_mutex) #11
  call void @kvfree(ptr noundef nonnull %call.i.i486492) #11
  br label %cleanup313

ex_alloc:                                         ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  call void @kvfree(ptr noundef nonnull %call.i.i486492) #11
  br label %ex_resize

ex_resize.thread:                                 ; preds = %if.end87.ex_resize.thread_crit_edge, %resize_user.exit.thread450.ex_resize.thread_crit_edge
  %err.1.ph = phi i32 [ -12, %if.end87.ex_resize.thread_crit_edge ], [ -22, %resize_user.exit.thread450.ex_resize.thread_crit_edge ]
  %146 = ptrtoint ptr %resize_umem.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %resize_umem.i, align 4
  call void @ib_umem_release(ptr noundef %147) #11
  br label %ex

ex_resize:                                        ; preds = %ex_alloc, %if.end133.ex_resize_crit_edge
  %err.1 = phi i32 [ %call259, %ex_alloc ], [ -12, %if.end133.ex_resize_crit_edge ]
  %resize_umem306 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 7
  %148 = ptrtoint ptr %resize_umem306 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %resize_umem306, align 4
  call void @ib_umem_release(ptr noundef %149) #11
  br i1 %tobool77.not, label %if.then308, label %ex_resize.ex_crit_edge

ex_resize.ex_crit_edge:                           ; preds = %ex_resize
  call void @__sanitizer_cov_trace_pc() #13
  br label %ex

if.then308:                                       ; preds = %ex_resize
  call void @__sanitizer_cov_trace_pc() #13
  %resize_buf309 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 6
  %150 = ptrtoint ptr %resize_buf309 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %resize_buf309, align 8
  %152 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mdev, align 8
  %frag_buf.i445 = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %151, i32 0, i32 1
  call void @mlx5_frag_buf_free(ptr noundef %153, ptr noundef %frag_buf.i445) #11
  %154 = ptrtoint ptr %resize_buf309 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %resize_buf309, align 8
  br label %ex

ex:                                               ; preds = %if.then308, %ex_resize.ex_crit_edge, %ex_resize.thread, %ex.i, %if.else.ex_crit_edge, %resize_user.exit, %resize_user.exit.thread
  %err.2 = phi i32 [ %err.1, %ex_resize.ex_crit_edge ], [ %err.1, %if.then308 ], [ %err.1.ph, %ex_resize.thread ], [ %retval.0.i.ph, %resize_user.exit.thread ], [ %46, %resize_user.exit ], [ -12, %if.else.ex_crit_edge ], [ %call12.i.i, %ex.i ]
  call void @mutex_unlock(ptr noundef %resize_mutex) #11
  br label %cleanup313

cleanup313:                                       ; preds = %ex, %if.end304, %if.end71.cleanup313_crit_edge, %cond.false52.cleanup313_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end16 ], [ %err.2, %ex ], [ 0, %if.end304 ], [ -38, %do.end ], [ -22, %cond.false52.cleanup313_crit_edge ], [ 0, %if.end71.cleanup313_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_offset_quantized) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_populate_pas(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_cq(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_resize_cqes(ptr nocapture noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %cqe_size = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe_size, align 4
  %resize_buf = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 6
  %4 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resize_buf, align 8
  %cqe_size1 = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cqe_size1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqe_size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp eq i32 %3, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %9 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 1216, i32 noundef %14) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcq = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1
  %cons_index = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 11
  %15 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cons_index, align 8
  %cqe1.i = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %17 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cqe1.i, align 4
  %and.i108 = and i32 %18, %16
  %buf.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %add.i.i.i = add i32 %and.i108, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 6
  %21 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %22 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %24, i32 %shr.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 2
  %27 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %28 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 2, i32 0, i32 5
  %29 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %30 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %shl.i.i.i
  %cqe_sz.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %cq, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqe_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp.i = icmp eq i32 %32, 64
  %cond.idx.i = select i1 %cmp.i, i32 0, i32 64
  %cond.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %cond.idx.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i, i32 0, i32 23
  %33 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %op_own.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %34)
  %cmp3.not.i = icmp ugt i8 %34, -17
  br i1 %cmp3.not.i, label %if.end.do.end8_crit_edge, label %land.lhs.true.i, !prof !129

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true.i:                                  ; preds = %if.end
  %add.i = add i32 %18, 1
  %and10.i = and i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.i = icmp ne i32 %and10.i, 0
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %36 = icmp ne i8 %35, 0
  %tobool16.not.i.not = xor i1 %tobool11.i, %36
  %tobool.not = icmp eq ptr %add.ptr.i.i.i, null
  %or.cond155 = select i1 %tobool16.not.i.not, i1 true, i1 %tobool.not
  br i1 %or.cond155, label %land.lhs.true.i.do.end8_crit_edge, label %while.cond.preheader

land.lhs.true.i.do.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

while.cond.preheader:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp4 = icmp eq i32 %3, 64
  %cond.idx = select i1 %cmp4, i32 0, i32 64
  br label %while.cond

do.end8:                                          ; preds = %land.lhs.true.i.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %37 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %38 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i109 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i109 to ptr
  %task11 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task11, align 8
  %pid12 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef 1225, i32 noundef %43) #14
  br label %cleanup

while.cond:                                       ; preds = %if.end53.while.cond_crit_edge, %while.cond.preheader
  %scqe.0 = phi ptr [ %add.ptr.i.i.i130, %if.end53.while.cond_crit_edge ], [ %add.ptr.i.i.i, %while.cond.preheader ]
  %i.0 = phi i32 [ %add, %if.end53.while.cond_crit_edge ], [ %16, %while.cond.preheader ]
  %scqe64.0 = getelementptr i8, ptr %scqe.0, i32 %cond.idx
  %op_own.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %scqe64.0, i32 0, i32 23
  %44 = ptrtoint ptr %op_own.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %op_own.i, align 1
  %.mask = and i8 %45, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask)
  %cmp15.not = icmp eq i8 %.mask, 80
  br i1 %cmp15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %46 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resize_buf, align 8
  %add = add i32 %i.0, 1
  %nent = getelementptr inbounds %struct.mlx5_ib_cq_buf, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %nent to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nent, align 4
  %and = and i32 %49, %add
  %strides_offset.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %strides_offset.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %strides_offset.i, align 2
  %conv.i = zext i16 %51 to i32
  %add.i110 = add i32 %and, %conv.i
  %log_frag_strides.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %47, i32 0, i32 6
  %52 = ptrtoint ptr %log_frag_strides.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %log_frag_strides.i, align 2
  %conv1.i = zext i8 %53 to i32
  %shr.i = lshr i32 %add.i110, %conv1.i
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %47, align 4
  %arrayidx.i = getelementptr %struct.mlx5_buf_list, ptr %55, i32 %shr.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %frag_sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %47, i32 0, i32 2
  %58 = ptrtoint ptr %frag_sz_m1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %frag_sz_m1.i, align 4
  %conv2.i = zext i16 %59 to i32
  %and.i111 = and i32 %add.i110, %conv2.i
  %log_stride.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %47, i32 0, i32 5
  %60 = ptrtoint ptr %log_stride.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %log_stride.i, align 1
  %conv3.i = zext i8 %61 to i32
  %shl.i = shl i32 %and.i111, %conv3.i
  %add.ptr.i = getelementptr i8, ptr %57, i32 %shl.i
  %cond26 = getelementptr i8, ptr %add.ptr.i, i32 %cond.idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp ne i32 %and, 0
  %conv.i113 = zext i1 %tobool.not.i to i8
  %62 = call ptr @memcpy(ptr %add.ptr.i, ptr %scqe.0, i32 %3)
  %op_own = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond26, i32 0, i32 23
  %63 = ptrtoint ptr %op_own to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %op_own, align 1
  %65 = and i8 %64, -2
  %or107 = or i8 %65, %conv.i113
  store i8 %or107, ptr %op_own, align 1
  %66 = ptrtoint ptr %cqe1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqe1.i, align 4
  %and.i115 = and i32 %67, %add
  %68 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i118 = zext i16 %69 to i32
  %add.i.i.i119 = add i32 %and.i115, %conv.i.i.i118
  %70 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i121 = zext i8 %71 to i32
  %shr.i.i.i122 = lshr i32 %add.i.i.i119, %conv1.i.i.i121
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf.i.i, align 4
  %arrayidx.i.i.i123 = getelementptr %struct.mlx5_buf_list, ptr %73, i32 %shr.i.i.i122
  %74 = ptrtoint ptr %arrayidx.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i.i123, align 4
  %76 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i125 = zext i16 %77 to i32
  %and.i.i.i126 = and i32 %add.i.i.i119, %conv2.i.i.i125
  %78 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i128 = zext i8 %79 to i32
  %shl.i.i.i129 = shl i32 %and.i.i.i126, %conv3.i.i.i128
  %add.ptr.i.i.i130 = getelementptr i8, ptr %75, i32 %shl.i.i.i129
  %80 = ptrtoint ptr %cqe_sz.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cqe_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %81)
  %cmp.i132 = icmp eq i32 %81, 64
  %cond.idx.i133 = select i1 %cmp.i132, i32 0, i32 64
  %cond.i134 = getelementptr i8, ptr %add.ptr.i.i.i130, i32 %cond.idx.i133
  %op_own.i.i135 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cond.i134, i32 0, i32 23
  %82 = ptrtoint ptr %op_own.i.i135 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %op_own.i.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %83)
  %cmp3.not.i136 = icmp ugt i8 %83, -17
  br i1 %cmp3.not.i136, label %while.body.do.end48_crit_edge, label %land.lhs.true.i141, !prof !129

while.body.do.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

land.lhs.true.i141:                               ; preds = %while.body
  %add.i137 = add i32 %67, 1
  %and10.i138 = and i32 %add.i137, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i138)
  %tobool11.i139 = icmp ne i32 %and10.i138, 0
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %85 = icmp ne i8 %84, 0
  %tobool16.not.i140.not = xor i1 %tobool11.i139, %85
  %tobool44.not = icmp eq ptr %add.ptr.i.i.i130, null
  %or.cond = select i1 %tobool16.not.i140.not, i1 true, i1 %tobool44.not
  br i1 %or.cond, label %land.lhs.true.i141.do.end48_crit_edge, label %if.end53

land.lhs.true.i141.do.end48_crit_edge:            ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.end48:                                         ; preds = %land.lhs.true.i141.do.end48_crit_edge, %while.body.do.end48_crit_edge
  %86 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %87 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i145 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i145 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid52, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef 1241, i32 noundef %92) #14
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true.i141
  %cmp54 = icmp eq ptr %add.ptr.i.i.i130, %add.ptr.i.i.i
  br i1 %cmp54, label %do.end59, label %if.end53.while.cond_crit_edge

if.end53.while.cond_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mcq, align 8
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %94) #14
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cons_index, align 8
  %inc65 = add i32 %96, 1
  store i32 %inc65, ptr %cons_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end59, %do.end48, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end59 ], [ -22, %do.end48 ], [ 0, %while.end ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_ib_get_cqe_size(ptr noundef readonly %ibcq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ibcq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cqe_size = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 8
  %0 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ 128, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_generate_wc(ptr noundef %ibcq, ptr nocapture noundef readonly %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 72) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i, ptr %wc, i32 64)
  %lock = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %list = getelementptr inbounds %struct.mlx5_ib_wc, ptr %call7.i, i32 0, i32 1
  %wc_list = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %wc_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wc_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mlx5_ib_wc, ptr %call7.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %notify_flags = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 13
  %8 = ptrtoint ptr %notify_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %notify_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %list_add_tail.exit.if.then12_crit_edge, label %lor.lhs.false

list_add_tail.exit.if.then12_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not = icmp eq i32 %11, 0
  br i1 %cmp10.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %list_add_tail.exit.if.then12_crit_edge
  %12 = ptrtoint ptr %notify_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %notify_flags, align 8
  %notify_work = getelementptr inbounds %struct.mlx5_ib_cq, ptr %ibcq, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i27 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %notify_work) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %lor.lhs.false.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_cmd_get_srq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_res_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_cached_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_from_udata(ptr noundef %dest, ptr nocapture noundef readonly %udata, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udata, align 4
  tail call void @__check_object_size(ptr noundef %dest, i32 noundef %len, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #17, !srcloc !137
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dest, i32 noundef %len) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !117) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !138
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dest, ptr noundef %1, i32 noundef %len) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !127

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dest, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %7 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_db_map_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_db_unmap_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_db_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_db_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_frag_buf_alloc_node(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_frag_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @mlx5_ib_create_cq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 966, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5_ib_create_cq.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 967, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_ib_create_cq.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 986, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1011, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx5_ib_create_cq.__UNIQUE_ID_ddebug528, !10, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1140, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5_ib_modify_cq._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5_ib_modify_cq._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1271, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5_ib_resize_cq._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5_ib_resize_cq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1277, i32 3}
!29 = !{ptr @mlx5_ib_resize_cq._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_ib_resize_cq._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 585, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @poll_soft_wc.__UNIQUE_ID_ddebug510, !32, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 482, i32 4}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mlx5_poll_one._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx5_poll_one._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 521, i32 3}
!42 = !{ptr @mlx5_poll_one.__UNIQUE_ID_ddebug508, !41, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!43 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 524, i32 3}
!47 = !{ptr @mlx5_poll_one.__UNIQUE_ID_ddebug509, !46, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 559, i32 3}
!50 = !{ptr @mlx5_poll_one._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx5_poll_one._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 112, i32 3}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @get_umr_comp._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @get_umr_comp._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 332, i32 3}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mlx5_handle_error_cqe._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mlx5_handle_error_cqe._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 272, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dump_cqe._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dump_cqe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mlx5/cq.h", i32 199, i32 31}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 383, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @get_sig_err_item._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @get_sig_err_item._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 762, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @create_cq_user.__UNIQUE_ID_ddebug513, !75, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 801, i32 4}
!80 = !{ptr @create_cq_user._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @create_cq_user._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 811, i32 4}
!84 = !{ptr @create_cq_user.__UNIQUE_ID_ddebug516, !83, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 824, i32 4}
!87 = !{ptr @create_cq_user._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @create_cq_user._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 56, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mlx5_ib_cq_event._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mlx5_ib_cq_event._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1216, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @copy_resize_cqes._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @copy_resize_cqes._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1225, i32 3}
!108 = !{ptr @copy_resize_cqes._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @copy_resize_cqes._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @copy_resize_cqes._entry.55, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1241, i32 4}
!112 = !{ptr @copy_resize_cqes._entry_ptr.56, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/mlx5/cq.c", i32 1246, i32 4}
!115 = !{ptr @copy_resize_cqes._entry.57, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @copy_resize_cqes._entry_ptr.59, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2148339528, i64 2148339533, i64 2148339546, i64 2148339590, i64 2148339624, i64 2148339645}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2158941503}
!131 = !{i64 2158727381}
!132 = !{i64 5824820}
!133 = !{!"auto-init"}
!134 = !{i32 0, i32 33}
!135 = !{i64 2152784959, i64 2152784984}
!136 = !{i64 2159060716}
!137 = !{i64 2152784278, i64 2152784303}
!138 = !{i64 5279833}
!139 = !{i64 5280030}
!140 = !{i64 2152765263}
