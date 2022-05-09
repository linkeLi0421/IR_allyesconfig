; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/counters.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/counters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_ib_counter = type { ptr, i32, i32 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.176 = type { %struct.ib_core_device }
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
%struct.atomic_t = type { i32 }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
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
%struct.mlx5_ib_port = type { %struct.mlx5_ib_counters, %struct.mlx5_ib_multiport, ptr, %struct.mlx5_roce, ptr }
%struct.mlx5_ib_counters = type { ptr, ptr, i32, i32, i32, i32, i16, [3 x %struct.mlx5_ib_op_fc] }
%struct.mlx5_ib_op_fc = type { ptr, [2 x ptr] }
%struct.mlx5_ib_multiport = type { ptr, %struct.spinlock }
%struct.mlx5_roce = type { %struct.rwlock_t, ptr, %struct.notifier_block, %struct.atomic_t, i32, ptr, i32 }
%struct.mlx5_ib_create_flow = type { i32, i32, [0 x %struct.mlx5_ib_flow_counters_data] }
%struct.mlx5_ib_flow_counters_data = type { i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_ib_mcounters = type { %struct.ib_counters, i32, i32, ptr, ptr, i32, i32, ptr, %struct.mutex }
%struct.ib_counters = type { ptr, ptr, %struct.atomic_t }
%struct.mlx5_ib_flow_counters_desc = type { i32, i32 }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.rdma_stat_desc = type { ptr, i32, ptr }
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
%struct.mlx5_read_counters_attr = type { ptr, ptr, i32 }
%struct.ib_counters_read_attr = type { ptr, i32, i32 }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.rdma_counter = type { %struct.rdma_restrack_entry, ptr, i32, %struct.kref, %struct.rdma_counter_mode, %struct.mutex, ptr, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }

@counters_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_create_counters, ptr @mlx5_ib_destroy_counters, ptr @mlx5_ib_read_counters, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 132, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@hw_switchdev_stats_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_alloc_hw_device_stats, ptr null, ptr @mlx5_ib_get_hw_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_counter_bind_qp, ptr @mlx5_ib_counter_unbind_qp, ptr @mlx5_ib_counter_dealloc, ptr @mlx5_ib_counter_alloc_stats, ptr @mlx5_ib_counter_update_stats, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@hw_stats_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_alloc_hw_port_stats, ptr @mlx5_ib_get_hw_stats, ptr @mlx5_ib_modify_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_counter_bind_qp, ptr @mlx5_ib_counter_unbind_qp, ptr @mlx5_ib_counter_dealloc, ptr @mlx5_ib_counter_alloc_stats, ptr @mlx5_ib_counter_update_stats, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mlx5_ib_create_counters.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mcounters->mcntrs_mutex\00", [39 x i8] zeroinitializer }, align 32
@mlx5_ib_alloc_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 682, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): couldn't allocate queue counter for port %d, err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_ib_alloc_counters\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/infiniband/hw/mlx5/counters.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_alloc_counters._entry_ptr = internal global ptr @mlx5_ib_alloc_counters._entry, section ".printk_index", align 4
@basic_op_cnts = internal constant { [1 x %struct.mlx5_ib_counter], [20 x i8] } { [1 x %struct.mlx5_ib_counter] [%struct.mlx5_ib_counter { ptr @.str.37, i32 0, i32 0 }], [20 x i8] zeroinitializer }, align 32
@rdmarx_cnp_op_cnts = internal constant { [1 x %struct.mlx5_ib_counter], [20 x i8] } { [1 x %struct.mlx5_ib_counter] [%struct.mlx5_ib_counter { ptr @.str.38, i32 0, i32 1 }], [20 x i8] zeroinitializer }, align 32
@rdmatx_cnp_op_cnts = internal constant { [1 x %struct.mlx5_ib_counter], [20 x i8] } { [1 x %struct.mlx5_ib_counter] [%struct.mlx5_ib_counter { ptr @.str.39, i32 0, i32 2 }], [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_write_requests\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_read_requests\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_atomic_requests\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"out_of_buffer\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"out_of_sequence\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"duplicate_request\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rnr_nak_retry_err\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"packet_seq_err\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"implied_nak_seq_err\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"local_ack_timeout_err\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resp_local_length_error\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resp_cqe_error\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"req_cqe_error\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"req_remote_invalid_request\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"req_remote_access_errors\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resp_remote_access_errors\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resp_cqe_flush_error\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"req_cqe_flush_error\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"roce_adp_retrans\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"roce_adp_retrans_to\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"roce_slow_restart\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"roce_slow_restart_cnps\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"roce_slow_restart_trans\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rp_cnp_ignored\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rp_cnp_handled\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"np_ecn_marked_roce_packets\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"np_cnp_sent\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_icrc_encapsulated\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_rx_ce_pkts\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_rx_cnp_pkts\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_tx_cnp_pkts\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"counters_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 902, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"hw_switchdev_stats_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 892, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"hw_stats_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 880, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 230, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 214, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 156, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 152, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 680, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"basic_op_cnts\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 82, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"rdmarx_cnp_op_cnts\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 86, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"rdmatx_cnp_op_cnts\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 90, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 22, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 23, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 24, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 25, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 29, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 34, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 35, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 36, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 37, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 52, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 53, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 54, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 55, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 56, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 57, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 58, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 59, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 63, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 64, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 65, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 66, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 67, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 45, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 46, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 47, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 48, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 76, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 83, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 87, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [41 x i8] c"../drivers/infiniband/hw/mlx5/counters.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 91, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @mlx5_ib_alloc_counters._entry, ptr @mlx5_ib_alloc_counters._entry_ptr, ptr @counters_ops, ptr @hw_switchdev_stats_ops, ptr @hw_stats_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mlx5_ib_create_counters.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @basic_op_cnts, ptr @rdmarx_cnp_op_cnts, ptr @rdmatx_cnp_op_cnts, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counters_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_switchdev_stats_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_stats_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_counters.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_alloc_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @basic_op_cnts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmarx_cnp_op_cnts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmatx_cnp_op_cnts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mlx5_ib_get_counters_id(ptr nocapture noundef readonly %dev, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 8
  %cond.idx.i = select i1 %cmp.i.i, i32 0, i32 %port_num
  %set_id = getelementptr %struct.mlx5_ib_port, ptr %3, i32 %cond.idx.i, i32 0, i32 6
  %4 = ptrtoint ptr %set_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %set_id, align 4
  ret i16 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_flow_counters_set_data(ptr noundef %ibcounters, ptr noundef readonly %ucmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ucmd, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ucmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ucmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.mlx5_ib_create_flow, ptr %ucmd, i32 0, i32 2
  %ncounters = getelementptr inbounds %struct.mlx5_ib_create_flow, ptr %ucmd, i32 2
  %2 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncounters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %3)
  %cmp1 = icmp ugt i32 %3, 8191
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end7.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then
  %4 = shl nuw nsw i32 %3, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i.i
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %conv10 = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv10 to ptr
  %8 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ncounters, align 8
  %mul = shl i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end7
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.free_crit_edge, label %if.then27.i.i, !prof !116

land.rhs16.i.i.free_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %free

if.then.i.i.i:                                    ; preds = %if.end7
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %mul, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %mul, i32 -1226833920) #11, !srcloc !117
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !116

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i, i32 noundef %mul) #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !118
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i, ptr noundef %7, i32 noundef %mul) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end16_crit_edge, label %if.then11.i.i, !prof !116

if.end.i.i.if.end16_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i.i, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %free

if.end16:                                         ; preds = %if.end.i.i.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %cntrs_data.0 = phi ptr [ null, %land.lhs.true.if.end16_crit_edge ], [ null, %entry.if.end16_crit_edge ], [ %data, %if.end.i.i.if.end16_crit_edge ]
  %desc_data.0 = phi ptr [ null, %land.lhs.true.if.end16_crit_edge ], [ null, %entry.if.end16_crit_edge ], [ %call8.i.i, %if.end.i.i.if.end16_crit_edge ]
  %hw_cntrs_hndl = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 3
  %15 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_cntrs_hndl, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  %17 = ptrtoint ptr %ibcounters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ibcounters, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %call20 = tail call ptr @mlx5_fc_create(ptr noundef %20, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %hw_cntrs_hndl, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.then18.if.end28_crit_edge

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call20 to i32
  br label %free

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %desc_data.0, null
  %cntrs_max_index39 = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 5
  %23 = ptrtoint ptr %cntrs_max_index39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cntrs_max_index39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  br i1 %tobool40.not, label %if.end33, label %if.then30.free_hndl_crit_edge

if.then30.free_hndl_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_hndl

if.end33:                                         ; preds = %if.then30
  %ncounters34 = getelementptr inbounds %struct.mlx5_ib_flow_counters_data, ptr %cntrs_data.0, i32 0, i32 1
  %25 = ptrtoint ptr %ncounters34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ncounters34, align 8
  %type.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type.i, align 4
  %read_counters.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 4
  %28 = ptrtoint ptr %read_counters.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @read_flow_counters, ptr %read_counters.i, align 4
  %counters_num.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 2
  %29 = ptrtoint ptr %counters_num.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %counters_num.i, align 4
  %ncounters1.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 6
  %30 = ptrtoint ptr %ncounters1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %ncounters1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp22.not.i = icmp eq i32 %26, 0
  br i1 %cmp22.not.i, label %if.end33.counters_set_description.exit.thread_crit_edge, label %if.end33.for.body.i_crit_edge

if.end33.for.body.i_crit_edge:                    ; preds = %if.end33
  br label %for.body.i

if.end33.counters_set_description.exit.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %counters_set_description.exit.thread

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end33.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end33.for.body.i_crit_edge ]
  %cntrs_max_index.03.i = phi i32 [ %spec.select.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end33.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_ib_flow_counters_desc, ptr %desc_data.0, i32 %i.04.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp3.i = icmp ugt i32 %32, 1
  br i1 %cmp3.i, label %for.body.i.free_hndl_crit_edge, label %if.end5.i

for.body.i.free_hndl_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_hndl

if.end5.i:                                        ; preds = %for.body.i
  %index.i = getelementptr %struct.mlx5_ib_flow_counters_desc, ptr %desc_data.0, i32 %i.04.i, i32 1
  %33 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cntrs_max_index.03.i, i32 %34)
  %cmp7.not.i = icmp ugt i32 %cntrs_max_index.03.i, %34
  %add.i = add i32 %34, 1
  %spec.select.i = select i1 %cmp7.not.i, i32 %cntrs_max_index.03.i, i32 %add.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %if.end5.i.counters_set_description.exit.thread_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end5.i.counters_set_description.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %counters_set_description.exit.thread

counters_set_description.exit.thread:             ; preds = %if.end5.i.counters_set_description.exit.thread_crit_edge, %if.end33.counters_set_description.exit.thread_crit_edge
  %cntrs_max_index.0.lcssa.i = phi i32 [ 0, %if.end33.counters_set_description.exit.thread_crit_edge ], [ %spec.select.i, %if.end5.i.counters_set_description.exit.thread_crit_edge ]
  %mcntrs_mutex.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mcntrs_mutex.i, i32 noundef 0) #7
  %counters_data.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %ibcounters, i32 0, i32 7
  %35 = ptrtoint ptr %counters_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc_data.0, ptr %counters_data.i, align 4
  %36 = ptrtoint ptr %cntrs_max_index39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cntrs_max_index.0.lcssa.i, ptr %cntrs_max_index39, align 4
  tail call void @mutex_unlock(ptr noundef %mcntrs_mutex.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end28
  br i1 %tobool40.not, label %if.else.free_hndl_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.free_hndl_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_hndl

free_hndl:                                        ; preds = %if.else.free_hndl_crit_edge, %for.body.i.free_hndl_crit_edge, %if.then30.free_hndl_crit_edge
  br i1 %tobool17.not, label %if.then45, label %free_hndl.free_crit_edge

free_hndl.free_crit_edge:                         ; preds = %free_hndl
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.then45:                                        ; preds = %free_hndl
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ibcounters to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ibcounters, align 4
  %mdev48 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %mdev48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev48, align 8
  %41 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_cntrs_hndl, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %40, ptr noundef %42) #7
  %43 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %hw_cntrs_hndl, align 4
  br label %free

free:                                             ; preds = %if.then45, %free_hndl.free_crit_edge, %if.then24, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.free_crit_edge
  %desc_data.1 = phi ptr [ %desc_data.0, %if.then45 ], [ %desc_data.0, %free_hndl.free_crit_edge ], [ %desc_data.0, %if.then24 ], [ %call8.i.i, %land.rhs16.i.i.free_crit_edge ], [ %call8.i.i, %if.then27.i.i ], [ %call8.i.i, %if.then11.i.i ]
  %ret.1 = phi i32 [ -22, %if.then45 ], [ -22, %free_hndl.free_crit_edge ], [ %22, %if.then24 ], [ -14, %land.rhs16.i.i.free_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i ]
  tail call void @kfree(ptr noundef %desc_data.1) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %if.else.cleanup_crit_edge, %counters_set_description.exit.thread, %if.end7.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %counters_set_description.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fc_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_counters_clear_description(ptr noundef %counters) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %counters, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %usecnt = getelementptr inbounds %struct.ib_counters, ptr %counters, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #7
  %0 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %mcntrs_mutex = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mcntrs_mutex, i32 noundef 0) #7
  %counters_data = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 7
  %2 = ptrtoint ptr %counters_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counters_data, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %counters_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %counters_data, align 4
  %cntrs_max_index = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 5
  %5 = ptrtoint ptr %cntrs_max_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cntrs_max_index, align 4
  tail call void @mutex_unlock(ptr noundef %mcntrs_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_counters_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @counters_ops) #7
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  %hw_switchdev_stats_ops.hw_stats_ops = select i1 %cmp.i, ptr @hw_switchdev_stats_ops, ptr @hw_stats_ops
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull %hw_switchdev_stats_ops.hw_stats_ops) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #7
  %7 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #7
  %8 = getelementptr inbounds i8, ptr %in.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 124846080, ptr %in.i, align 4
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps.i, align 8
  %add.ptr8.i = getelementptr i32, ptr %14, i32 35
  %15 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr8.i, align 4
  %17 = and i32 %16, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  br i1 %cmp.i.i, label %if.end.for.body.lr.ph.i_crit_edge, label %cond.end.i

if.end.for.body.lr.ph.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

cond.end.i:                                       ; preds = %if.end
  %num_ports.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1191.i = icmp sgt i32 %19, 0
  br i1 %cmp1191.i, label %cond.end.i.for.body.lr.ph.i_crit_edge, label %cond.end.i.mlx5_ib_alloc_counters.exit_crit_edge

cond.end.i.mlx5_ib_alloc_counters.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_alloc_counters.exit

cond.end.i.for.body.lr.ph.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cond.end.i.for.body.lr.ph.i_crit_edge, %if.end.for.body.lr.ph.i_crit_edge
  %cond102.i = phi i32 [ %19, %cond.end.i.for.body.lr.ph.i_crit_edge ], [ 1, %if.end.for.body.lr.ph.i_crit_edge ]
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %cond23.i = select i1 %cmp.not.i, i32 0, i32 65535
  %add.ptr49.i = getelementptr inbounds i32, ptr %out.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end47.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i, align 8
  %arrayidx12.i = getelementptr %struct.mlx5_ib_port, ptr %21, i32 %i.092.i
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %25, i32 12
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not.i.i = icmp sgt i32 %27, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 4, i32 5
  %28 = and i32 %27, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i.i = icmp eq i32 %28, 0
  %add12.i.i = add nuw nsw i32 %spec.select.i.i, 5
  %num_counters.1.i.i = select i1 %tobool10.not.i.i, i32 %spec.select.i.i, i32 %add12.i.i
  %add.ptr20.i.i = getelementptr i32, ptr %25, i32 13
  %29 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr20.i.i, align 4
  %31 = and i32 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool23.not.i.i = icmp eq i32 %31, 0
  %add25.i.i = add nuw nsw i32 %num_counters.1.i.i, 8
  %num_counters.2.i.i = select i1 %tobool23.not.i.i, i32 %num_counters.1.i.i, i32 %add25.i.i
  %add.ptr33.i.i = getelementptr i32, ptr %25, i32 10
  %32 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr33.i.i, align 4
  %34 = and i32 %33, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool36.not.i.i = icmp eq i32 %34, 0
  %add38.i.i = add nuw nsw i32 %num_counters.2.i.i, 5
  %num_counters.3.i.i = select i1 %tobool36.not.i.i, i32 %num_counters.2.i.i, i32 %add38.i.i
  %num_q_counters.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx12.i, i32 0, i32 2
  %35 = ptrtoint ptr %num_q_counters.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %num_counters.3.i.i, ptr %num_q_counters.i.i, align 4
  %36 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdev, align 8
  %caps41.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %caps41.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %caps41.i.i, align 8
  %add.ptr46.i.i = getelementptr i32, ptr %39, i32 11
  %40 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr46.i.i, align 4
  %42 = and i32 %41, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool49.not.i.i, label %for.body.i.if.end52.i.i_crit_edge, label %if.then50.i.i

for.body.i.if.end52.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i

if.then50.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_cong_counters.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx12.i, i32 0, i32 3
  %43 = ptrtoint ptr %num_cong_counters.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %num_cong_counters.i.i, align 4
  %add51.i.i = add nuw nsw i32 %num_counters.3.i.i, 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then50.i.i, %for.body.i.if.end52.i.i_crit_edge
  %num_counters.4.i.i = phi i32 [ %add51.i.i, %if.then50.i.i ], [ %num_counters.3.i.i, %for.body.i.if.end52.i.i_crit_edge ]
  %44 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev, align 8
  %add.ptr56.i.i = getelementptr %struct.mlx5_core_dev, ptr %45, i32 0, i32 8, i32 1, i32 13
  %46 = ptrtoint ptr %add.ptr56.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr56.i.i, align 4
  %48 = and i32 %47, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool59.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool59.not.i.i, label %if.end52.i.i.if.end62.i.i_crit_edge, label %if.then60.i.i

if.end52.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i.i

if.then60.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_ext_ppcnt_counters.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx12.i, i32 0, i32 4
  %49 = ptrtoint ptr %num_ext_ppcnt_counters.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %num_ext_ppcnt_counters.i.i, align 4
  %add61.i.i = add nuw nsw i32 %num_counters.4.i.i, 1
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then60.i.i, %if.end52.i.i.if.end62.i.i_crit_edge
  %num_counters.5.i.i = phi i32 [ %add61.i.i, %if.then60.i.i ], [ %num_counters.4.i.i, %if.end52.i.i.if.end62.i.i_crit_edge ]
  %50 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdev, align 8
  %arrayidx66.i.i = getelementptr %struct.mlx5_core_dev, ptr %51, i32 0, i32 8, i32 0, i32 7
  %52 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx66.i.i, align 4
  %add.ptr69.i.i = getelementptr i32, ptr %53, i32 168
  %54 = ptrtoint ptr %add.ptr69.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr69.i.i, align 4
  %56 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool72.not.i.i = icmp eq i32 %56, 0
  %spec.select131.i.i = select i1 %tobool72.not.i.i, i32 1, i32 2
  %add.ptr82.i.i = getelementptr i32, ptr %53, i32 192
  %57 = ptrtoint ptr %add.ptr82.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr82.i.i, align 4
  %59 = lshr i32 %58, 17
  %.lobit.i.i = and i32 %59, 1
  %num_op_counters.1.i.i = add nuw nsw i32 %spec.select131.i.i, %.lobit.i.i
  %num_op_counters89.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx12.i, i32 0, i32 5
  %60 = ptrtoint ptr %num_op_counters89.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %num_op_counters.1.i.i, ptr %num_op_counters89.i.i, align 4
  %add90.i.i = add nuw nsw i32 %num_op_counters.1.i.i, %num_counters.5.i.i
  %61 = mul nuw nsw i32 %add90.i.i, 12
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #10
  %62 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call8.i.i.i.i, ptr %arrayidx12.i, align 4
  %tobool92.not172.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool92.not172.i.i, label %if.end62.i.i.err_alloc.i_crit_edge, label %if.end7.i.i162.i.i

if.end62.i.i.err_alloc.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_alloc.i

if.end7.i.i162.i.i:                               ; preds = %if.end62.i.i
  %63 = shl nuw nsw i32 %add90.i.i, 2
  %call8.i.i161.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #10
  %offsets.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx12.i, i32 0, i32 1
  %64 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i.i161.i.i, ptr %offsets.i.i, align 4
  %tobool97.not.i.i = icmp eq ptr %call8.i.i161.i.i, null
  br i1 %tobool97.not.i.i, label %err.i.i, label %if.end.i

err.i.i:                                          ; preds = %if.end7.i.i162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx12.i, align 4
  call void @kfree(ptr noundef %66) #7
  %67 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx12.i, align 4
  br label %err_alloc.i

if.end.i:                                         ; preds = %if.end7.i.i162.i.i
  %68 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port.i, align 8
  %arrayidx15.i = getelementptr %struct.mlx5_ib_port, ptr %69, i32 %i.092.i
  %70 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx15.i, align 4
  %offsets.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx15.i, i32 0, i32 1
  %72 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %offsets.i, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.9, ptr %71, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 16, ptr %73, align 4
  %arrayidx1.1.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 1
  %76 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.10, ptr %arrayidx1.1.i.i, align 4
  %arrayidx4.1.i.i = getelementptr i32, ptr %73, i32 1
  %77 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 24, ptr %arrayidx4.1.i.i, align 4
  %arrayidx1.2.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 2
  %78 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.11, ptr %arrayidx1.2.i.i, align 4
  %arrayidx4.2.i.i = getelementptr i32, ptr %73, i32 2
  %79 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 32, ptr %arrayidx4.2.i.i, align 4
  %arrayidx1.3.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 3
  %80 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.12, ptr %arrayidx1.3.i.i, align 4
  %arrayidx4.3.i.i = getelementptr i32, ptr %73, i32 3
  %81 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 48, ptr %arrayidx4.3.i.i, align 4
  %82 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev, align 8
  %caps.i81.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %caps.i81.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %caps.i81.i, align 8
  %add.ptr.i82.i = getelementptr i32, ptr %85, i32 12
  %86 = ptrtoint ptr %add.ptr.i82.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %tobool.not.i83.i = icmp sgt i32 %87, -1
  br i1 %tobool.not.i83.i, label %if.end.i.if.end.i.i_crit_edge, label %for.body9.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.body9.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 4
  %88 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.13, ptr %arrayidx12.i.i, align 4
  %arrayidx16.i.i = getelementptr i32, ptr %73, i32 4
  %89 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 56, ptr %arrayidx16.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body9.i.i, %if.end.i.if.end.i.i_crit_edge
  %j.2.i.i = phi i32 [ 4, %if.end.i.if.end.i.i_crit_edge ], [ 5, %for.body9.i.i ]
  %90 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mdev, align 8
  %caps22.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %caps22.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %caps22.i.i, align 8
  %add.ptr27.i.i = getelementptr i32, ptr %93, i32 12
  %94 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr27.i.i, align 4
  %96 = and i32 %95, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool30.not.i.i = icmp eq i32 %96, 0
  br i1 %tobool30.not.i.i, label %if.end.i.i.if.end46.i.i_crit_edge, label %for.body34.preheader.i.i

if.end.i.i.if.end46.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

for.body34.preheader.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.2.i.i
  %97 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.14, ptr %arrayidx37.i.i, align 4
  %arrayidx41.i.i = getelementptr i32, ptr %73, i32 %j.2.i.i
  %98 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 64, ptr %arrayidx41.i.i, align 4
  %inc44.i.i = add nuw nsw i32 %j.2.i.i, 1
  %arrayidx37.1.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc44.i.i
  %99 = ptrtoint ptr %arrayidx37.1.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.15, ptr %arrayidx37.1.i.i, align 4
  %arrayidx41.1.i.i = getelementptr i32, ptr %73, i32 %inc44.i.i
  %100 = ptrtoint ptr %arrayidx41.1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 72, ptr %arrayidx41.1.i.i, align 4
  %inc44.1.i.i = or i32 %j.2.i.i, 2
  %arrayidx37.2.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc44.1.i.i
  %101 = ptrtoint ptr %arrayidx37.2.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @.str.16, ptr %arrayidx37.2.i.i, align 4
  %arrayidx41.2.i.i = getelementptr i32, ptr %73, i32 %inc44.1.i.i
  %102 = ptrtoint ptr %arrayidx41.2.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 80, ptr %arrayidx41.2.i.i, align 4
  %inc44.2.i.i = add nuw nsw i32 %j.2.i.i, 3
  %arrayidx37.3.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc44.2.i.i
  %103 = ptrtoint ptr %arrayidx37.3.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.17, ptr %arrayidx37.3.i.i, align 4
  %arrayidx41.3.i.i = getelementptr i32, ptr %73, i32 %inc44.2.i.i
  %104 = ptrtoint ptr %arrayidx41.3.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 88, ptr %arrayidx41.3.i.i, align 4
  %inc44.3.i.i = add nuw nsw i32 %j.2.i.i, 4
  %arrayidx37.4.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc44.3.i.i
  %105 = ptrtoint ptr %arrayidx37.4.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.18, ptr %arrayidx37.4.i.i, align 4
  %arrayidx41.4.i.i = getelementptr i32, ptr %73, i32 %inc44.3.i.i
  %106 = ptrtoint ptr %arrayidx41.4.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 96, ptr %arrayidx41.4.i.i, align 4
  %inc44.4.i.i = add nuw nsw i32 %j.2.i.i, 5
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %for.body34.preheader.i.i, %if.end.i.i.if.end46.i.i_crit_edge
  %j.4.i.i = phi i32 [ %j.2.i.i, %if.end.i.i.if.end46.i.i_crit_edge ], [ %inc44.4.i.i, %for.body34.preheader.i.i ]
  %107 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mdev, align 8
  %caps48.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %caps48.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %caps48.i.i, align 8
  %add.ptr53.i.i = getelementptr i32, ptr %110, i32 13
  %111 = ptrtoint ptr %add.ptr53.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr53.i.i, align 4
  %113 = and i32 %112, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool56.not.i.i = icmp eq i32 %113, 0
  br i1 %tobool56.not.i.i, label %if.end46.i.i.if.end72.i.i_crit_edge, label %for.body60.preheader.i.i

if.end46.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i.i

for.body60.preheader.i.i:                         ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx63.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.4.i.i
  %114 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.19, ptr %arrayidx63.i.i, align 4
  %arrayidx67.i.i = getelementptr i32, ptr %73, i32 %j.4.i.i
  %115 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 120, ptr %arrayidx67.i.i, align 4
  %inc70.i.i = add nuw nsw i32 %j.4.i.i, 1
  %arrayidx63.1.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.i.i
  %116 = ptrtoint ptr %arrayidx63.1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @.str.20, ptr %arrayidx63.1.i.i, align 4
  %arrayidx67.1.i.i = getelementptr i32, ptr %73, i32 %inc70.i.i
  %117 = ptrtoint ptr %arrayidx67.1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 144, ptr %arrayidx67.1.i.i, align 4
  %inc70.1.i.i = add nuw nsw i32 %j.4.i.i, 2
  %arrayidx63.2.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.1.i.i
  %118 = ptrtoint ptr %arrayidx63.2.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.21, ptr %arrayidx63.2.i.i, align 4
  %arrayidx67.2.i.i = getelementptr i32, ptr %73, i32 %inc70.1.i.i
  %119 = ptrtoint ptr %arrayidx67.2.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 148, ptr %arrayidx67.2.i.i, align 4
  %inc70.2.i.i = add nuw nsw i32 %j.4.i.i, 3
  %arrayidx63.3.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.2.i.i
  %120 = ptrtoint ptr %arrayidx63.3.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.22, ptr %arrayidx63.3.i.i, align 4
  %arrayidx67.3.i.i = getelementptr i32, ptr %73, i32 %inc70.2.i.i
  %121 = ptrtoint ptr %arrayidx67.3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 160, ptr %arrayidx67.3.i.i, align 4
  %inc70.3.i.i = add nuw nsw i32 %j.4.i.i, 4
  %arrayidx63.4.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.3.i.i
  %122 = ptrtoint ptr %arrayidx63.4.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.23, ptr %arrayidx63.4.i.i, align 4
  %arrayidx67.4.i.i = getelementptr i32, ptr %73, i32 %inc70.3.i.i
  %123 = ptrtoint ptr %arrayidx67.4.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 168, ptr %arrayidx67.4.i.i, align 4
  %inc70.4.i.i = add nuw nsw i32 %j.4.i.i, 5
  %arrayidx63.5.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.4.i.i
  %124 = ptrtoint ptr %arrayidx63.5.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.24, ptr %arrayidx63.5.i.i, align 4
  %arrayidx67.5.i.i = getelementptr i32, ptr %73, i32 %inc70.4.i.i
  %125 = ptrtoint ptr %arrayidx67.5.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 172, ptr %arrayidx67.5.i.i, align 4
  %inc70.5.i.i = add nuw nsw i32 %j.4.i.i, 6
  %arrayidx63.6.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.5.i.i
  %126 = ptrtoint ptr %arrayidx63.6.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @.str.25, ptr %arrayidx63.6.i.i, align 4
  %arrayidx67.6.i.i = getelementptr i32, ptr %73, i32 %inc70.5.i.i
  %127 = ptrtoint ptr %arrayidx67.6.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 188, ptr %arrayidx67.6.i.i, align 4
  %inc70.6.i.i = add nuw nsw i32 %j.4.i.i, 7
  %arrayidx63.7.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc70.6.i.i
  %128 = ptrtoint ptr %arrayidx63.7.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.26, ptr %arrayidx63.7.i.i, align 4
  %arrayidx67.7.i.i = getelementptr i32, ptr %73, i32 %inc70.6.i.i
  %129 = ptrtoint ptr %arrayidx67.7.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 192, ptr %arrayidx67.7.i.i, align 4
  %inc70.7.i.i = add nuw nsw i32 %j.4.i.i, 8
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %for.body60.preheader.i.i, %if.end46.i.i.if.end72.i.i_crit_edge
  %j.6.i.i = phi i32 [ %j.4.i.i, %if.end46.i.i.if.end72.i.i_crit_edge ], [ %inc70.7.i.i, %for.body60.preheader.i.i ]
  %130 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mdev, align 8
  %caps74.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %caps74.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %caps74.i.i, align 8
  %add.ptr79.i.i = getelementptr i32, ptr %133, i32 10
  %134 = ptrtoint ptr %add.ptr79.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr79.i.i, align 4
  %136 = and i32 %135, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool82.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool82.not.i.i, label %if.end72.i.i.if.end98.i.i_crit_edge, label %for.body86.preheader.i.i

if.end72.i.i.if.end98.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i.i

for.body86.preheader.i.i:                         ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx89.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.6.i.i
  %137 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.27, ptr %arrayidx89.i.i, align 4
  %arrayidx93.i.i = getelementptr i32, ptr %73, i32 %j.6.i.i
  %138 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 200, ptr %arrayidx93.i.i, align 4
  %inc96.i.i = add nuw nsw i32 %j.6.i.i, 1
  %arrayidx89.1.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc96.i.i
  %139 = ptrtoint ptr %arrayidx89.1.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.28, ptr %arrayidx89.1.i.i, align 4
  %arrayidx93.1.i.i = getelementptr i32, ptr %73, i32 %inc96.i.i
  %140 = ptrtoint ptr %arrayidx93.1.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 204, ptr %arrayidx93.1.i.i, align 4
  %inc96.1.i.i = add nuw nsw i32 %j.6.i.i, 2
  %arrayidx89.2.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc96.1.i.i
  %141 = ptrtoint ptr %arrayidx89.2.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.29, ptr %arrayidx89.2.i.i, align 4
  %arrayidx93.2.i.i = getelementptr i32, ptr %73, i32 %inc96.1.i.i
  %142 = ptrtoint ptr %arrayidx93.2.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 208, ptr %arrayidx93.2.i.i, align 4
  %inc96.2.i.i = add nuw nsw i32 %j.6.i.i, 3
  %arrayidx89.3.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc96.2.i.i
  %143 = ptrtoint ptr %arrayidx89.3.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.30, ptr %arrayidx89.3.i.i, align 4
  %arrayidx93.3.i.i = getelementptr i32, ptr %73, i32 %inc96.2.i.i
  %144 = ptrtoint ptr %arrayidx93.3.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 212, ptr %arrayidx93.3.i.i, align 4
  %inc96.3.i.i = add nuw nsw i32 %j.6.i.i, 4
  %arrayidx89.4.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc96.3.i.i
  %145 = ptrtoint ptr %arrayidx89.4.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.31, ptr %arrayidx89.4.i.i, align 4
  %arrayidx93.4.i.i = getelementptr i32, ptr %73, i32 %inc96.3.i.i
  %146 = ptrtoint ptr %arrayidx93.4.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 216, ptr %arrayidx93.4.i.i, align 4
  %inc96.4.i.i = add nuw nsw i32 %j.6.i.i, 5
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %for.body86.preheader.i.i, %if.end72.i.i.if.end98.i.i_crit_edge
  %j.8.i.i = phi i32 [ %j.6.i.i, %if.end72.i.i.if.end98.i.i_crit_edge ], [ %inc96.4.i.i, %for.body86.preheader.i.i ]
  %147 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev, align 8
  %caps100.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %148, i32 0, i32 8
  %149 = ptrtoint ptr %caps100.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %caps100.i.i, align 8
  %add.ptr105.i.i = getelementptr i32, ptr %150, i32 11
  %151 = ptrtoint ptr %add.ptr105.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr105.i.i, align 4
  %153 = and i32 %152, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool108.not.i.i = icmp eq i32 %153, 0
  br i1 %tobool108.not.i.i, label %if.end98.i.i.if.end124.i.i_crit_edge, label %for.body112.preheader.i.i

if.end98.i.i.if.end124.i.i_crit_edge:             ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i.i

for.body112.preheader.i.i:                        ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx115.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.8.i.i
  %154 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.32, ptr %arrayidx115.i.i, align 4
  %arrayidx119.i.i = getelementptr i32, ptr %73, i32 %j.8.i.i
  %155 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 24, ptr %arrayidx119.i.i, align 4
  %inc122.i.i = add nuw nsw i32 %j.8.i.i, 1
  %arrayidx115.1.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc122.i.i
  %156 = ptrtoint ptr %arrayidx115.1.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @.str.33, ptr %arrayidx115.1.i.i, align 4
  %arrayidx119.1.i.i = getelementptr i32, ptr %73, i32 %inc122.i.i
  %157 = ptrtoint ptr %arrayidx119.1.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 32, ptr %arrayidx119.1.i.i, align 4
  %inc122.1.i.i = add nuw nsw i32 %j.8.i.i, 2
  %arrayidx115.2.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc122.1.i.i
  %158 = ptrtoint ptr %arrayidx115.2.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str.34, ptr %arrayidx115.2.i.i, align 4
  %arrayidx119.2.i.i = getelementptr i32, ptr %73, i32 %inc122.1.i.i
  %159 = ptrtoint ptr %arrayidx119.2.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 84, ptr %arrayidx119.2.i.i, align 4
  %inc122.2.i.i = add nuw nsw i32 %j.8.i.i, 3
  %arrayidx115.3.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc122.2.i.i
  %160 = ptrtoint ptr %arrayidx115.3.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @.str.35, ptr %arrayidx115.3.i.i, align 4
  %arrayidx119.3.i.i = getelementptr i32, ptr %73, i32 %inc122.2.i.i
  %161 = ptrtoint ptr %arrayidx119.3.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 92, ptr %arrayidx119.3.i.i, align 4
  %inc122.3.i.i = add nuw nsw i32 %j.8.i.i, 4
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %for.body112.preheader.i.i, %if.end98.i.i.if.end124.i.i_crit_edge
  %j.10.i.i = phi i32 [ %j.8.i.i, %if.end98.i.i.if.end124.i.i_crit_edge ], [ %inc122.3.i.i, %for.body112.preheader.i.i ]
  %162 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mdev, align 8
  %add.ptr128.i.i = getelementptr %struct.mlx5_core_dev, ptr %163, i32 0, i32 8, i32 1, i32 13
  %164 = ptrtoint ptr %add.ptr128.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr128.i.i, align 4
  %166 = and i32 %165, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool131.not.i.i = icmp eq i32 %166, 0
  br i1 %tobool131.not.i.i, label %if.end124.i.i.for.body150.i.i_crit_edge, label %for.body135.i.i

if.end124.i.i.for.body150.i.i_crit_edge:          ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body150.i.i

for.body135.i.i:                                  ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx138.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.10.i.i
  %167 = ptrtoint ptr %arrayidx138.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.36, ptr %arrayidx138.i.i, align 4
  %arrayidx142.i.i = getelementptr i32, ptr %73, i32 %j.10.i.i
  %168 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 64, ptr %arrayidx142.i.i, align 4
  %inc145.i.i = add nuw nsw i32 %j.10.i.i, 1
  br label %for.body150.i.i

for.body150.i.i:                                  ; preds = %for.body135.i.i, %if.end124.i.i.for.body150.i.i_crit_edge
  %j.12.i.i = phi i32 [ %j.10.i.i, %if.end124.i.i.for.body150.i.i_crit_edge ], [ %inc145.i.i, %for.body135.i.i ]
  %arrayidx153.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.12.i.i
  %169 = ptrtoint ptr %arrayidx153.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.37, ptr %arrayidx153.i.i, align 4
  %flags.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.12.i.i, i32 1
  %170 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %171, 1
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %priv.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.12.i.i, i32 2
  %172 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr getelementptr inbounds ([1 x %struct.mlx5_ib_counter], ptr @basic_op_cnts, i32 0, i32 0, i32 2), ptr %priv.i.i, align 4
  %inc160.i.i = add nuw nsw i32 %j.12.i.i, 1
  %173 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mdev, align 8
  %arrayidx165.i.i = getelementptr %struct.mlx5_core_dev, ptr %174, i32 0, i32 8, i32 0, i32 7
  %175 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx165.i.i, align 4
  %add.ptr168.i.i = getelementptr i32, ptr %176, i32 168
  %177 = ptrtoint ptr %add.ptr168.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr168.i.i, align 4
  %179 = and i32 %178, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool171.not.i.i = icmp eq i32 %179, 0
  br i1 %tobool171.not.i.i, label %for.body150.i.i.if.end191.i.i_crit_edge, label %for.body175.i.i

for.body150.i.i.if.end191.i.i_crit_edge:          ; preds = %for.body150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191.i.i

for.body175.i.i:                                  ; preds = %for.body150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc160.i.i
  %180 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @.str.38, ptr %arrayidx178.i.i, align 4
  %flags181.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc160.i.i, i32 1
  %181 = ptrtoint ptr %flags181.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags181.i.i, align 4
  %or182.i.i = or i32 %182, 1
  store i32 %or182.i.i, ptr %flags181.i.i, align 4
  %priv186.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %inc160.i.i, i32 2
  %183 = ptrtoint ptr %priv186.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr getelementptr inbounds ([1 x %struct.mlx5_ib_counter], ptr @rdmarx_cnp_op_cnts, i32 0, i32 0, i32 2), ptr %priv186.i.i, align 4
  %inc189.i.i = add nuw nsw i32 %j.12.i.i, 2
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %for.body175.i.i, %for.body150.i.i.if.end191.i.i_crit_edge
  %j.15.i.i = phi i32 [ %inc160.i.i, %for.body150.i.i.if.end191.i.i_crit_edge ], [ %inc189.i.i, %for.body175.i.i ]
  %184 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mdev, align 8
  %arrayidx195.i.i = getelementptr %struct.mlx5_core_dev, ptr %185, i32 0, i32 8, i32 0, i32 7
  %186 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx195.i.i, align 4
  %add.ptr198.i.i = getelementptr i32, ptr %187, i32 192
  %188 = ptrtoint ptr %add.ptr198.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr198.i.i, align 4
  %190 = and i32 %189, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool201.not.i.i = icmp eq i32 %190, 0
  br i1 %tobool201.not.i.i, label %if.end191.i.i.mlx5_ib_fill_counters.exit.i_crit_edge, label %for.body205.i.i

if.end191.i.i.mlx5_ib_fill_counters.exit.i_crit_edge: ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_fill_counters.exit.i

for.body205.i.i:                                  ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx208.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.15.i.i
  %191 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @.str.39, ptr %arrayidx208.i.i, align 4
  %flags211.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.15.i.i, i32 1
  %192 = ptrtoint ptr %flags211.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %flags211.i.i, align 4
  %or212.i.i = or i32 %193, 1
  store i32 %or212.i.i, ptr %flags211.i.i, align 4
  %priv216.i.i = getelementptr %struct.rdma_stat_desc, ptr %71, i32 %j.15.i.i, i32 2
  %194 = ptrtoint ptr %priv216.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr getelementptr inbounds ([1 x %struct.mlx5_ib_counter], ptr @rdmatx_cnp_op_cnts, i32 0, i32 0, i32 2), ptr %priv216.i.i, align 4
  br label %mlx5_ib_fill_counters.exit.i

mlx5_ib_fill_counters.exit.i:                     ; preds = %for.body205.i.i, %if.end191.i.i.mlx5_ib_fill_counters.exit.i_crit_edge
  %195 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %in.i, align 4
  %and29.i = and i32 %196, -65536
  %or32.i = or i32 %and29.i, %cond23.i
  store i32 %or32.i, ptr %in.i, align 4
  %197 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mdev, align 8
  %call40.i = call i32 @mlx5_cmd_exec(ptr noundef %198, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end47.i, label %do.end45.i

do.end45.i:                                       ; preds = %mlx5_ib_fill_counters.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %200 = call i32 @llvm.read_register.i32(metadata !106) #7
  %and.i.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 68
  %204 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pid.i, align 8
  %add.i = add nuw nsw i32 %i.092.i, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %199, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 682, i32 noundef %205, i32 noundef %add.i, i32 noundef %call40.i) #12
  br label %err_alloc.i

if.end47.i:                                       ; preds = %mlx5_ib_fill_counters.exit.i
  %206 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %add.ptr49.i, align 4
  %208 = trunc i32 %207 to i16
  %conv.i = and i16 %208, 255
  %209 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %port.i, align 8
  %set_id.i = getelementptr %struct.mlx5_ib_port, ptr %210, i32 %i.092.i, i32 0, i32 6
  %211 = ptrtoint ptr %set_id.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv.i, ptr %set_id.i, align 4
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond102.i
  br i1 %exitcond.not.i, label %if.end47.i.mlx5_ib_alloc_counters.exit_crit_edge, label %if.end47.i.for.body.i_crit_edge

if.end47.i.for.body.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end47.i.mlx5_ib_alloc_counters.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_alloc_counters.exit

err_alloc.i:                                      ; preds = %do.end45.i, %err.i.i, %if.end62.i.i.err_alloc.i_crit_edge
  %err.0.i = phi i32 [ %call40.i, %do.end45.i ], [ -12, %err.i.i ], [ -12, %if.end62.i.i.err_alloc.i_crit_edge ]
  call fastcc void @mlx5_ib_dealloc_counters(ptr noundef %dev) #7
  br label %mlx5_ib_alloc_counters.exit

mlx5_ib_alloc_counters.exit:                      ; preds = %err_alloc.i, %if.end47.i.mlx5_ib_alloc_counters.exit_crit_edge, %cond.end.i.mlx5_ib_alloc_counters.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err_alloc.i ], [ 0, %cond.end.i.mlx5_ib_alloc_counters.exit_crit_edge ], [ 0, %if.end47.i.mlx5_ib_alloc_counters.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #7
  br label %return

return:                                           ; preds = %mlx5_ib_alloc_counters.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx5_ib_alloc_counters.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_counters_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mlx5_ib_dealloc_counters(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_ib_dealloc_counters(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #7
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 8
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  br i1 %cmp.i, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in, align 4
  %and101 = and i32 %4, 65535
  %or102 = or i32 %and101, 124911616
  store i32 %or102, ptr %in, align 4
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %num_ports = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports, align 8
  %7 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in, align 4
  %and = and i32 %8, 65535
  %or = or i32 %and, 124911616
  store i32 %or, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp98 = icmp sgt i32 %6, 0
  br i1 %cmp98, label %cond.end.for.body.lr.ph_crit_edge, label %cond.end.for.end68_crit_edge

cond.end.for.end68_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

cond.end.for.body.lr.ph_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cond.end.for.body.lr.ph_crit_edge, %cond.end.thread
  %cond104 = phi i32 [ 1, %cond.end.thread ], [ %6, %cond.end.for.body.lr.ph_crit_edge ]
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %add.ptr17 = getelementptr inbounds i32, ptr %in, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.2.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %for.inc.2.for.body_crit_edge ]
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 8
  %set_id = getelementptr %struct.mlx5_ib_port, ptr %10, i32 %i.099, i32 0, i32 6
  %11 = ptrtoint ptr %set_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %set_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.body7

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr17, align 4
  %and18 = and i32 %14, -256
  %15 = and i16 %12, 255
  %and19 = zext i16 %15 to i32
  %or21 = or i32 %and18, %and19
  store i32 %or21, ptr %add.ptr17, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #7
  %16 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 8
  %call30 = call i32 @mlx5_cmd_exec(ptr noundef %18, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #7
  br label %if.end

if.end:                                           ; preds = %do.body7, %for.body.if.end_crit_edge
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %arrayidx32 = getelementptr %struct.mlx5_ib_port, ptr %20, i32 %i.099
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32, align 4
  call void @kfree(ptr noundef %22) #7
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %offsets = getelementptr %struct.mlx5_ib_port, ptr %24, i32 %i.099, i32 0, i32 1
  %25 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %offsets, align 4
  call void @kfree(ptr noundef %26) #7
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 8
  %arrayidx44 = getelementptr %struct.mlx5_ib_port, ptr %28, i32 %i.099, i32 0, i32 7, i32 0
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %if.end.for.inc_crit_edge, label %if.end47

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_ib_fs_remove_op_fc(ptr noundef %dev, ptr noundef %arrayidx44, i32 noundef 0) #7
  %31 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev, align 8
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 8
  %arrayidx58 = getelementptr %struct.mlx5_ib_port, ptr %34, i32 %i.099, i32 0, i32 7, i32 0
  %35 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx58, align 4
  call void @mlx5_fc_destroy(ptr noundef %32, ptr noundef %36) #7
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %arrayidx64 = getelementptr %struct.mlx5_ib_port, ptr %38, i32 %i.099, i32 0, i32 7, i32 0
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx64, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.end.for.inc_crit_edge
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  %arrayidx44.1 = getelementptr %struct.mlx5_ib_port, ptr %41, i32 %i.099, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx44.1, align 4
  %tobool45.not.1 = icmp eq ptr %43, null
  br i1 %tobool45.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end47.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end47.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_ib_fs_remove_op_fc(ptr noundef %dev, ptr noundef %arrayidx44.1, i32 noundef 1) #7
  %44 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev, align 8
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port, align 8
  %arrayidx58.1 = getelementptr %struct.mlx5_ib_port, ptr %47, i32 %i.099, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx58.1, align 4
  call void @mlx5_fc_destroy(ptr noundef %45, ptr noundef %49) #7
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port, align 8
  %arrayidx64.1 = getelementptr %struct.mlx5_ib_port, ptr %51, i32 %i.099, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx64.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end47.1, %for.inc.for.inc.1_crit_edge
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port, align 8
  %arrayidx44.2 = getelementptr %struct.mlx5_ib_port, ptr %54, i32 %i.099, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx44.2, align 4
  %tobool45.not.2 = icmp eq ptr %56, null
  br i1 %tobool45.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end47.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end47.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_ib_fs_remove_op_fc(ptr noundef %dev, ptr noundef %arrayidx44.2, i32 noundef 2) #7
  %57 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev, align 8
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 8
  %arrayidx58.2 = getelementptr %struct.mlx5_ib_port, ptr %60, i32 %i.099, i32 0, i32 7, i32 2
  %61 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx58.2, align 4
  call void @mlx5_fc_destroy(ptr noundef %58, ptr noundef %62) #7
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port, align 8
  %arrayidx64.2 = getelementptr %struct.mlx5_ib_port, ptr %64, i32 %i.099, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx64.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end47.2, %for.inc.1.for.inc.2_crit_edge
  %inc67 = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc67, %cond104
  br i1 %exitcond.not, label %for.inc.2.for.end68_crit_edge, label %for.inc.2.for.body_crit_edge

for.inc.2.for.body_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.2.for.end68_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

for.end68:                                        ; preds = %for.inc.2.for.end68_crit_edge, %cond.end.for.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_flow_counters(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef readonly %read_attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %read_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_attr, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %out = getelementptr inbounds %struct.mlx5_read_counters_attr, ptr %read_attr, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %arrayidx2 = getelementptr i64, ptr %5, i32 1
  %call3 = tail call i32 @mlx5_fc_query(ptr noundef %3, ptr noundef %1, ptr noundef %5, ptr noundef %arrayidx2) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_create_counters(ptr noundef %counters, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcntrs_mutex = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mcntrs_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @mlx5_ib_create_counters.__key) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_destroy_counters(ptr noundef %counters) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %counters, null
  br i1 %tobool.not.i, label %entry.mlx5_ib_counters_clear_description.exit_crit_edge, label %lor.lhs.false.i

entry.mlx5_ib_counters_clear_description.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_counters_clear_description.exit

lor.lhs.false.i:                                  ; preds = %entry
  %usecnt.i = getelementptr inbounds %struct.ib_counters, ptr %counters, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt.i, i32 noundef 4) #7
  %0 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.mlx5_ib_counters_clear_description.exit_crit_edge

lor.lhs.false.i.mlx5_ib_counters_clear_description.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_counters_clear_description.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %mcntrs_mutex.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mcntrs_mutex.i, i32 noundef 0) #7
  %counters_data.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 7
  %2 = ptrtoint ptr %counters_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counters_data.i, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %counters_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %counters_data.i, align 4
  %cntrs_max_index.i = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 5
  %5 = ptrtoint ptr %cntrs_max_index.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cntrs_max_index.i, align 4
  tail call void @mutex_unlock(ptr noundef %mcntrs_mutex.i) #7
  br label %mlx5_ib_counters_clear_description.exit

mlx5_ib_counters_clear_description.exit:          ; preds = %if.end.i, %lor.lhs.false.i.mlx5_ib_counters_clear_description.exit_crit_edge, %entry.mlx5_ib_counters_clear_description.exit_crit_edge
  %hw_cntrs_hndl = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 3
  %6 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_cntrs_hndl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %mlx5_ib_counters_clear_description.exit.if.end_crit_edge, label %if.then

mlx5_ib_counters_clear_description.exit.if.end_crit_edge: ; preds = %mlx5_ib_counters_clear_description.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %mlx5_ib_counters_clear_description.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %counters, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_fc_destroy(ptr noundef %11, ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_ib_counters_clear_description.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_read_counters(ptr noundef %counters, ptr nocapture noundef readonly %read_attr, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  %mread_attr = alloca %struct.mlx5_read_counters_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mread_attr) #7
  %0 = call ptr @memset(ptr %mread_attr, i32 0, i32 12)
  %mcntrs_mutex = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mcntrs_mutex, i32 noundef 0) #7
  %cntrs_max_index = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 5
  %1 = ptrtoint ptr %cntrs_max_index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cntrs_max_index, align 4
  %ncounters = getelementptr inbounds %struct.ib_counters_read_attr, ptr %read_attr, i32 0, i32 1
  %3 = ptrtoint ptr %ncounters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncounters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %entry.err_bound_crit_edge, label %if.end

entry.err_bound_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bound

if.end:                                           ; preds = %entry
  %counters_num = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 2
  %5 = ptrtoint ptr %counters_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %counters_num, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !121

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %out35 = getelementptr inbounds %struct.mlx5_read_counters_attr, ptr %mread_attr, i32 0, i32 1
  %9 = ptrtoint ptr %out35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %out35, align 4
  br label %err_bound

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #10
  %out = getelementptr inbounds %struct.mlx5_read_counters_attr, ptr %mread_attr, i32 0, i32 1
  %11 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %out, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.err_bound_crit_edge, label %if.end4

if.end7.i.i.err_bound_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bound

if.end4:                                          ; preds = %if.end7.i.i
  %hw_cntrs_hndl = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 3
  %12 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_cntrs_hndl, align 4
  %14 = ptrtoint ptr %mread_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mread_attr, align 4
  %flags = getelementptr inbounds %struct.ib_counters_read_attr, ptr %read_attr, i32 0, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags6 = getelementptr inbounds %struct.mlx5_read_counters_attr, ptr %mread_attr, i32 0, i32 2
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags6, align 4
  %read_counters = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 4
  %18 = ptrtoint ptr %read_counters to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_counters, align 4
  %20 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %counters, align 4
  %call7 = call i32 %19(ptr noundef %21, ptr noundef nonnull %mread_attr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.err_read_crit_edge

if.end4.err_read_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_read

if.end10:                                         ; preds = %if.end4
  %counters_data = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 7
  %22 = ptrtoint ptr %counters_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %counters_data, align 4
  %ncounters11 = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %counters, i32 0, i32 6
  %24 = ptrtoint ptr %ncounters11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ncounters11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1242.not = icmp eq i32 %25, 0
  br i1 %cmp1242.not, label %if.end10.err_read_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.err_read_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_read

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %arrayidx = getelementptr %struct.mlx5_ib_flow_counters_desc, ptr %23, i32 %i.043
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr i64, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx14, align 8
  %32 = ptrtoint ptr %read_attr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_attr, align 4
  %index = getelementptr %struct.mlx5_ib_flow_counters_desc, ptr %23, i32 %i.043, i32 1
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %arrayidx16 = getelementptr i64, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx16, align 8
  %add = add i64 %37, %31
  store i64 %add, ptr %arrayidx16, align 8
  %inc = add nuw i32 %i.043, 1
  %38 = ptrtoint ptr %ncounters11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ncounters11, align 4
  %cmp12 = icmp ult i32 %inc, %39
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.err_read_crit_edge

for.body.err_read_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_read

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_read:                                         ; preds = %for.body.err_read_crit_edge, %if.end10.err_read_crit_edge, %if.end4.err_read_crit_edge
  %40 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out, align 4
  call void @kfree(ptr noundef %41) #7
  br label %err_bound

err_bound:                                        ; preds = %err_read, %if.end7.i.i.err_bound_crit_edge, %kcalloc.exit.thread, %entry.err_bound_crit_edge
  %ret.0 = phi i32 [ %call7, %err_read ], [ -22, %entry.err_bound_crit_edge ], [ -12, %if.end7.i.i.err_bound_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @mutex_unlock(ptr noundef %mcntrs_mutex) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mread_attr) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ib_alloc_hw_device_stats(ptr nocapture noundef readonly %ibdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %num_q_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_q_counters.i, align 4
  %num_cong_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_cong_counters.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cong_counters.i, align 4
  %add.i = add i32 %5, %3
  %num_ext_ppcnt_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_ext_ppcnt_counters.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ext_ppcnt_counters.i, align 4
  %add1.i = add i32 %add.i, %7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %num_op_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_op_counters.i, align 4
  %add2.i = add i32 %11, %add1.i
  %call.i = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef %9, i32 noundef %add2.i, i32 noundef 10) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do_alloc_stats.exit_crit_edge, label %for.cond.preheader.i

entry.do_alloc_stats.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.cond.preheader.i:                             ; preds = %entry
  %12 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_op_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not.i = icmp eq i32 %13, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do_alloc_stats.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %is_disabled.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add4.i = add i32 %i.018.i, %add1.i
  %14 = ptrtoint ptr %is_disabled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %is_disabled.i, align 8
  tail call void @_set_bit(i32 noundef %add4.i, ptr noundef %15) #7
  %inc.i = add nuw i32 %i.018.i, 1
  %16 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_op_counters.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do_alloc_stats.exit_crit_edge

for.body.i.do_alloc_stats.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_alloc_stats.exit:                              ; preds = %for.body.i.do_alloc_stats.exit_crit_edge, %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, %entry.do_alloc_stats.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_get_hw_stats(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %port_num, i32 noundef %index) #0 align 64 {
entry:
  %packets.i.i = alloca i64, align 8
  %bytes.i.i = alloca i64, align 8
  %packets.i = alloca i64, align 8
  %bytes.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %port_num, -1
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 22
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 8
  %cond.idx.i = select i1 %cmp.i.i, i32 0, i32 %sub
  %cond.i = getelementptr %struct.mlx5_ib_port, ptr %3, i32 %cond.idx.i
  %num_q_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 2
  %4 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_q_counters, align 4
  %num_cong_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 3
  %6 = ptrtoint ptr %num_cong_counters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cong_counters, align 4
  %add = add i32 %7, %5
  %num_ext_ppcnt_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_ext_ppcnt_counters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ext_ppcnt_counters, align 4
  %add2 = add i32 %add, %9
  %num_op_counters3 = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 5
  %10 = ptrtoint ptr %num_op_counters3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_op_counters3, align 4
  %add4 = add i32 %add2, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp slt i32 %index, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %index)
  %cmp5 = icmp slt i32 %add4, %index
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp6 = icmp ne i32 %index, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %index)
  %cmp7 = icmp sgt i32 %add2, %index
  %or.cond61 = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond61, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @do_get_hw_stats(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %port_num)
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %index)
  %cmp11.not = icmp sle i32 %add2, %index
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %index)
  %cmp13 = icmp sgt i32 %add4, %index
  %or.cond62 = select i1 %cmp11.not, i1 %cmp13, i1 false
  br i1 %or.cond62, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets.i) #7
  %12 = ptrtoint ptr %packets.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %packets.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes.i) #7
  %13 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %bytes.i, align 8, !annotation !122
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 8
  %call.i.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i)
  %cmp.i.i.i = icmp eq i8 %call.i.i.i, 2
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port.i, align 8
  %cond.idx.i.i = select i1 %cmp.i.i.i, i32 0, i32 %sub
  %cond.i.i = getelementptr %struct.mlx5_ib_port, ptr %17, i32 %cond.idx.i.i
  %18 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cond.i.i, align 4
  %priv.i = getelementptr %struct.rdma_stat_desc, ptr %19, i32 %index, i32 2
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp ugt i32 %23, 2
  br i1 %cmp.i, label %if.then14.do_get_op_stat.exit_crit_edge, label %if.end.i

if.then14.do_get_op_stat.exit_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit

if.end.i:                                         ; preds = %if.then14
  %opfcs2.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i, i32 0, i32 7
  %arrayidx3.i = getelementptr %struct.mlx5_ib_op_fc, ptr %opfcs2.i, i32 %23
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i.out.i_crit_edge, label %if.end5.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev.i, align 8
  %call8.i = call i32 @mlx5_fc_query(ptr noundef %27, ptr noundef nonnull %25, ptr noundef nonnull %packets.i, ptr noundef nonnull %bytes.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end5.i.out.i_crit_edge, label %if.end5.i.do_get_op_stat.exit_crit_edge

if.end5.i.do_get_op_stat.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.i:                                            ; preds = %if.end5.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %28 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %packets.i, align 8
  %arrayidx12.i = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %index
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx12.i, align 8
  br label %do_get_op_stat.exit

do_get_op_stat.exit:                              ; preds = %out.i, %if.end5.i.do_get_op_stat.exit_crit_edge, %if.then14.do_get_op_stat.exit_crit_edge
  %retval.0.i = phi i32 [ %index, %out.i ], [ -22, %if.then14.do_get_op_stat.exit_crit_edge ], [ %call8.i, %if.end5.i.do_get_op_stat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets.i) #7
  br label %cleanup

if.end17:                                         ; preds = %if.else10
  %call18 = tail call fastcc i32 @do_get_hw_stats(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %port_num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %31 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev.i, align 8
  %call.i.i.i65 = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i65)
  %cmp.i.i.i66 = icmp eq i8 %call.i.i.i65, 2
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port.i, align 8
  %cond.idx.i.i68 = select i1 %cmp.i.i.i66, i32 0, i32 %sub
  %cond.i.i69 = getelementptr %struct.mlx5_ib_port, ptr %34, i32 %cond.idx.i.i68
  %num_q_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i69, i32 0, i32 2
  %35 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_q_counters.i, align 4
  %num_cong_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i69, i32 0, i32 3
  %37 = ptrtoint ptr %num_cong_counters.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_cong_counters.i, align 4
  %add.i = add i32 %38, %36
  %num_ext_ppcnt_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i69, i32 0, i32 4
  %39 = ptrtoint ptr %num_ext_ppcnt_counters.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ext_ppcnt_counters.i, align 4
  %add2.i = add i32 %add.i, %40
  %num_op_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i69, i32 0, i32 5
  %41 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_op_counters.i, align 4
  %add324.i = add i32 %42, %add2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %add324.i)
  %cmp25.i = icmp ult i32 %add2.i, %add324.i
  br i1 %cmp25.i, label %if.end21.for.body.i_crit_edge, label %if.end21.do_get_op_stats.exit_crit_edge

if.end21.do_get_op_stats.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stats.exit

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %index.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %add2.i, %if.end21.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets.i.i) #7
  %43 = ptrtoint ptr %packets.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %packets.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes.i.i) #7
  %44 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %bytes.i.i, align 8, !annotation !122
  %45 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mdev.i, align 8
  %call.i.i.i.i = call zeroext i8 @mlx5_eswitch_mode(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i8 %call.i.i.i.i, 2
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port.i, align 8
  %cond.idx.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %sub
  %cond.i.i.i = getelementptr %struct.mlx5_ib_port, ptr %48, i32 %cond.idx.i.i.i
  %49 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cond.i.i.i, align 4
  %priv.i.i = getelementptr %struct.rdma_stat_desc, ptr %50, i32 %index.026.i, i32 2
  %51 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp.i.i70 = icmp ugt i32 %54, 2
  br i1 %cmp.i.i70, label %for.body.i.do_get_op_stat.exit.i_crit_edge, label %if.end.i.i

for.body.i.do_get_op_stat.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %opfcs2.i.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i.i.i, i32 0, i32 7
  %arrayidx3.i.i = getelementptr %struct.mlx5_ib_op_fc, ptr %opfcs2.i.i, i32 %54
  %55 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i.do_get_op_stat.exit.thread.i_crit_edge, label %if.end5.i.i

if.end.i.i.do_get_op_stat.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %57 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev.i, align 8
  %call8.i.i = call i32 @mlx5_fc_query(ptr noundef %58, ptr noundef nonnull %56, ptr noundef nonnull %packets.i.i, ptr noundef nonnull %bytes.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end5.i.i.do_get_op_stat.exit.thread.i_crit_edge, label %if.end5.i.i.do_get_op_stat.exit.i_crit_edge

if.end5.i.i.do_get_op_stat.exit.i_crit_edge:      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit.i

if.end5.i.i.do_get_op_stat.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stat.exit.thread.i

do_get_op_stat.exit.thread.i:                     ; preds = %if.end5.i.i.do_get_op_stat.exit.thread.i_crit_edge, %if.end.i.i.do_get_op_stat.exit.thread.i_crit_edge
  %59 = ptrtoint ptr %packets.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %packets.i.i, align 8
  %arrayidx12.i.i = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %index.026.i
  %61 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx12.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets.i.i) #7
  br label %for.inc.i

do_get_op_stat.exit.i:                            ; preds = %if.end5.i.i.do_get_op_stat.exit.i_crit_edge, %for.body.i.do_get_op_stat.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %for.body.i.do_get_op_stat.exit.i_crit_edge ], [ %call8.i.i, %if.end5.i.i.do_get_op_stat.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %index.026.i)
  %cmp5.not.i = icmp eq i32 %retval.0.i.i, %index.026.i
  br i1 %cmp5.not.i, label %do_get_op_stat.exit.i.for.inc.i_crit_edge, label %do_get_op_stat.exit.i.do_get_op_stats.exit_crit_edge

do_get_op_stat.exit.i.do_get_op_stats.exit_crit_edge: ; preds = %do_get_op_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stats.exit

do_get_op_stat.exit.i.for.inc.i_crit_edge:        ; preds = %do_get_op_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do_get_op_stat.exit.i.for.inc.i_crit_edge, %do_get_op_stat.exit.thread.i
  %inc.i = add nuw i32 %index.026.i, 1
  %62 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_op_counters.i, align 4
  %add3.i = add i32 %63, %add2.i
  %cmp.i71 = icmp ult i32 %inc.i, %add3.i
  br i1 %cmp.i71, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_get_op_stats.exit_crit_edge

for.inc.i.do_get_op_stats.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_get_op_stats.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_get_op_stats.exit:                             ; preds = %for.inc.i.do_get_op_stats.exit_crit_edge, %do_get_op_stat.exit.i.do_get_op_stats.exit_crit_edge, %if.end21.do_get_op_stats.exit_crit_edge
  %retval.0.i72 = phi i32 [ %42, %if.end21.do_get_op_stats.exit_crit_edge ], [ %retval.0.i.i, %do_get_op_stat.exit.i.do_get_op_stats.exit_crit_edge ], [ %63, %for.inc.i.do_get_op_stats.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72)
  %cmp23 = icmp slt i32 %retval.0.i72, 0
  %add26 = select i1 %cmp23, i32 0, i32 %call18
  %spec.select = add i32 %add26, %retval.0.i72
  br label %cleanup

cleanup:                                          ; preds = %do_get_op_stats.exit, %if.end17.cleanup_crit_edge, %do_get_op_stat.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ %retval.0.i, %do_get_op_stat.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %spec.select, %do_get_op_stats.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_counter_bind_qp(ptr noundef %counter, ptr noundef %qp) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #7
  %4 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #7
  %5 = getelementptr inbounds i8, ptr %in, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 124911615, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %call24 = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end, label %cleanup39.critedge

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr28 = getelementptr inbounds i32, ptr %out, i32 2
  %10 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr28, align 4
  %and29 = and i32 %11, 255
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and29, ptr %id, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end, %entry.if.end32_crit_edge
  %call33 = call i32 @mlx5_ib_qp_set_counter(ptr noundef %qp, ptr noundef %counter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup39_crit_edge, label %fail_set_counter

if.end32.cleanup39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

fail_set_counter:                                 ; preds = %if.end32
  %device.i = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 1
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #7
  %15 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %fail_set_counter.mlx5_ib_counter_dealloc.exit_crit_edge, label %do.body.i

fail_set_counter.mlx5_ib_counter_dealloc.exit_crit_edge: ; preds = %fail_set_counter
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_counter_dealloc.exit

do.body.i:                                        ; preds = %fail_set_counter
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in.i, align 4
  %and.i = and i32 %19, 65535
  %or.i = or i32 %and.i, 124911616
  store i32 %or.i, ptr %in.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %20 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr14.i, align 4
  %and15.i = and i32 %21, -256
  %and16.i = and i32 %17, 255
  %or18.i = or i32 %and15.i, %and16.i
  store i32 %or18.i, ptr %add.ptr14.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #7
  %22 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdev.i, align 8
  %call26.i = call i32 @mlx5_cmd_exec(ptr noundef %24, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #7
  br label %mlx5_ib_counter_dealloc.exit

mlx5_ib_counter_dealloc.exit:                     ; preds = %do.body.i, %fail_set_counter.mlx5_ib_counter_dealloc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %id, align 4
  br label %cleanup39

cleanup39.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #7
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.critedge, %mlx5_ib_counter_dealloc.exit, %if.end32.cleanup39_crit_edge
  %retval.1 = phi i32 [ %call33, %mlx5_ib_counter_dealloc.exit ], [ %call24, %cleanup39.critedge ], [ 0, %if.end32.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_counter_unbind_qp(ptr noundef %qp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_ib_qp_set_counter(ptr noundef %qp, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_counter_dealloc(ptr nocapture noundef readonly %counter) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #7
  %2 = call ptr @memset(ptr %in, i32 0, i32 16)
  %id = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 4
  %and = and i32 %6, 65535
  %or = or i32 %and, 124911616
  store i32 %or, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %8, -256
  %and16 = and i32 %4, 255
  %or18 = or i32 %and15, %and16
  store i32 %or18, ptr %add.ptr14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #7
  %9 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 8
  %call26 = call i32 @mlx5_cmd_exec(ptr noundef %11, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ib_counter_alloc_stats(ptr nocapture noundef readonly %counter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %sub = add i32 %3, -1
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 8
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 8
  %cond.idx.i = select i1 %cmp.i.i, i32 0, i32 %sub
  %cond.i = getelementptr %struct.mlx5_ib_port, ptr %7, i32 %cond.idx.i
  %num_q_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_q_counters.i, align 4
  %num_cong_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_cong_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cong_counters.i, align 4
  %add.i = add i32 %11, %9
  %num_ext_ppcnt_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 4
  %12 = ptrtoint ptr %num_ext_ppcnt_counters.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ext_ppcnt_counters.i, align 4
  %add1.i = add i32 %add.i, %13
  %14 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cond.i, align 4
  %num_op_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 5
  %16 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_op_counters.i, align 4
  %add2.i = add i32 %17, %add1.i
  %call.i = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef %15, i32 noundef %add2.i, i32 noundef 10) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do_alloc_stats.exit_crit_edge, label %for.cond.preheader.i

entry.do_alloc_stats.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.cond.preheader.i:                             ; preds = %entry
  %18 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_op_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.not.i = icmp eq i32 %19, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do_alloc_stats.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %is_disabled.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add4.i = add i32 %i.018.i, %add1.i
  %20 = ptrtoint ptr %is_disabled.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %is_disabled.i, align 8
  tail call void @_set_bit(i32 noundef %add4.i, ptr noundef %21) #7
  %inc.i = add nuw i32 %i.018.i, 1
  %22 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_op_counters.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do_alloc_stats.exit_crit_edge

for.body.i.do_alloc_stats.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_alloc_stats.exit:                              ; preds = %for.body.i.do_alloc_stats.exit_crit_edge, %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, %entry.do_alloc_stats.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_counter_update_stats(ptr nocapture noundef readonly %counter) #0 align 64 {
entry:
  %out.i = alloca [64 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %port = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %sub = add i32 %3, -1
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 8
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 8
  %cond.idx.i = select i1 %cmp.i.i, i32 0, i32 %sub
  %cond.i = getelementptr %struct.mlx5_ib_port, ptr %7, i32 %cond.idx.i
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 8
  %stats = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 6
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats, align 4
  %id = getelementptr inbounds %struct.rdma_counter, ptr %counter, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %out.i) #7
  %14 = call ptr @memset(ptr %out.i, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #7
  %15 = getelementptr inbounds i8, ptr %in.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 24)
  %17 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 124977152, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 7
  %18 = and i32 %13, 255
  %19 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr13.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %entry.mlx5_ib_query_q_counters.exit_crit_edge

entry.mlx5_ib_query_q_counters.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_query_q_counters.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_q_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 2
  %20 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_q_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp38.not.i = icmp eq i32 %21, 0
  br i1 %cmp38.not.i, label %for.cond.preheader.i.mlx5_ib_query_q_counters.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.mlx5_ib_query_q_counters.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_query_q_counters.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %offsets.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 %i.039.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %out.i, i32 %25
  %26 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr26.i, align 4
  %conv27.i = zext i32 %27 to i64
  %arrayidx28.i = getelementptr %struct.rdma_hw_stats, ptr %11, i32 0, i32 6, i32 %i.039.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv27.i, ptr %arrayidx28.i, align 8
  %inc.i = add nuw i32 %i.039.i, 1
  %29 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_q_counters.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mlx5_ib_query_q_counters.exit_crit_edge

for.body.i.mlx5_ib_query_q_counters.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_ib_query_q_counters.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlx5_ib_query_q_counters.exit:                    ; preds = %for.body.i.mlx5_ib_query_q_counters.exit_crit_edge, %for.cond.preheader.i.mlx5_ib_query_q_counters.exit_crit_edge, %entry.mlx5_ib_query_q_counters.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.mlx5_ib_query_q_counters.exit_crit_edge ], [ 0, %for.cond.preheader.i.mlx5_ib_query_q_counters.exit_crit_edge ], [ 0, %for.body.i.mlx5_ib_query_q_counters.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_hw_stats_struct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_get_hw_stats(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %port_num) unnamed_addr #0 align 64 {
entry:
  %in.i1 = alloca [64 x i32], align 4
  %out.i = alloca [64 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  %mdev_port_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %port_num, -1
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %port.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 22
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 8
  %cond.idx.i = select i1 %cmp.i.i, i32 0, i32 %sub
  %cond.i = getelementptr %struct.mlx5_ib_port, ptr %3, i32 %cond.idx.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdev_port_num) #7
  %4 = ptrtoint ptr %mdev_port_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mdev_port_num, align 4, !annotation !122
  %tobool.not = icmp eq ptr %stats, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_q_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 2
  %5 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_q_counters, align 4
  %num_cong_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 3
  %7 = ptrtoint ptr %num_cong_counters to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cong_counters, align 4
  %add = add i32 %8, %6
  %num_ext_ppcnt_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 4
  %9 = ptrtoint ptr %num_ext_ppcnt_counters to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_ext_ppcnt_counters, align 4
  %add2 = add i32 %add, %10
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 8
  %set_id = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 6
  %13 = ptrtoint ptr %set_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %set_id, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %out.i) #7
  %15 = call ptr @memset(ptr %out.i, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #7
  %16 = getelementptr inbounds i8, ptr %in.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 24)
  %18 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 124977152, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 7
  %19 = and i16 %14, 255
  %and15.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %12, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %mlx5_ib_query_q_counters.exit

for.cond.preheader.i:                             ; preds = %if.end
  %21 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_q_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp38.not.i = icmp eq i32 %22, 0
  br i1 %cmp38.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %offsets.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %offsets.i, align 4
  %arrayidx.i = getelementptr i32, ptr %24, i32 %i.039.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %out.i, i32 %26
  %27 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr26.i, align 4
  %conv27.i = zext i32 %28 to i64
  %arrayidx28.i = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %i.039.i
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv27.i, ptr %arrayidx28.i, align 8
  %inc.i = add nuw i32 %i.039.i, 1
  %30 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_q_counters, align 4
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7_crit_edge

for.body.i.if.end7_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlx5_ib_query_q_counters.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #7
  br label %cleanup

if.end7:                                          ; preds = %for.body.i.if.end7_crit_edge, %for.cond.preheader.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #7
  %32 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i, align 8
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %33, i32 0, i32 8, i32 1, i32 13
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 4
  %36 = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not = icmp eq i32 %36, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %37 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_q_counters, align 4
  %39 = ptrtoint ptr %num_cong_counters to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_cong_counters, align 4
  %add.i = add i32 %40, %38
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i1) #7
  %41 = call ptr @memset(ptr %in.i1, i32 0, i32 256)
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not.i3 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i3, label %mlx5_ib_query_ext_ppcnt_counters.exit.thread, label %do.body.i

mlx5_ib_query_ext_ppcnt_counters.exit.thread:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i1) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then10
  %42 = ptrtoint ptr %in.i1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in.i1, align 4
  %and.i = and i32 %43, -16711744
  %or17.i = or i32 %and.i, 65541
  store i32 %or17.i, ptr %in.i1, align 4
  %44 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev.i, align 8
  %call23.i = call i32 @mlx5_core_access_reg(ptr noundef %45, ptr noundef nonnull %in.i1, i32 noundef 256, ptr noundef nonnull %call.i.i.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %for.cond.preheader.i5, label %mlx5_ib_query_ext_ppcnt_counters.exit.thread19

mlx5_ib_query_ext_ppcnt_counters.exit.thread19:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i1) #7
  br label %cleanup

for.cond.preheader.i5:                            ; preds = %do.body.i
  %46 = ptrtoint ptr %num_ext_ppcnt_counters to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_ext_ppcnt_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp50.not.i = icmp eq i32 %47, 0
  br i1 %cmp50.not.i, label %mlx5_ib_query_ext_ppcnt_counters.exit.thread17, label %for.body.lr.ph.i7

mlx5_ib_query_ext_ppcnt_counters.exit.thread17:   ; preds = %for.cond.preheader.i5
  call void @__sanitizer_cov_trace_pc() #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i1) #7
  br label %if.end15

for.body.lr.ph.i7:                                ; preds = %for.cond.preheader.i5
  %offsets.i6 = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 1
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %for.body.lr.ph.i7
  %i.051.i = phi i32 [ 0, %for.body.lr.ph.i7 ], [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ]
  %48 = ptrtoint ptr %offsets.i6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %offsets.i6, align 4
  %add27.i = add i32 %add.i, %i.051.i
  %arrayidx.i8 = getelementptr i32, ptr %49, i32 %add27.i
  %50 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i8, align 4
  %add.ptr28.i = getelementptr i8, ptr %call.i.i.i, i32 %51
  %52 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr28.i, align 8
  %arrayidx31.i = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %add27.i
  %54 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx31.i, align 8
  %inc.i9 = add nuw i32 %i.051.i, 1
  %55 = ptrtoint ptr %num_ext_ppcnt_counters to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_ext_ppcnt_counters, align 4
  %cmp.i10 = icmp ult i32 %inc.i9, %56
  br i1 %cmp.i10, label %for.body.i11.for.body.i11_crit_edge, label %mlx5_ib_query_ext_ppcnt_counters.exit

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i11

mlx5_ib_query_ext_ppcnt_counters.exit:            ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i1) #7
  br label %if.end15

if.end15:                                         ; preds = %mlx5_ib_query_ext_ppcnt_counters.exit, %mlx5_ib_query_ext_ppcnt_counters.exit.thread17, %if.end7.if.end15_crit_edge
  %57 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev.i, align 8
  %caps17 = getelementptr inbounds %struct.mlx5_core_dev, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %caps17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %caps17, align 8
  %add.ptr19 = getelementptr i32, ptr %60, i32 11
  %61 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr19, align 4
  %63 = and i32 %62, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool22.not = icmp eq i32 %63, 0
  br i1 %tobool22.not, label %if.end15.done_crit_edge, label %if.then23

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then23:                                        ; preds = %if.end15
  %call24 = call ptr @mlx5_ib_get_native_port_mdev(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %mdev_port_num) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.done_crit_edge, label %if.end27

if.then23.done_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end27:                                         ; preds = %if.then23
  %64 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdev.i, align 8
  %value = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6
  %66 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_q_counters, align 4
  %add.ptr31 = getelementptr i64, ptr %value, i32 %67
  %68 = ptrtoint ptr %num_cong_counters to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_cong_counters, align 4
  %offsets = getelementptr inbounds %struct.mlx5_ib_counters, ptr %cond.i, i32 0, i32 1
  %70 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %offsets, align 4
  %add.ptr34 = getelementptr i32, ptr %71, i32 %67
  %call35 = call i32 @mlx5_lag_query_cong_counters(ptr noundef %65, ptr noundef %add.ptr31, i32 noundef %69, ptr noundef %add.ptr34) #7
  call void @mlx5_ib_put_native_port_mdev(ptr noundef %ibdev, i32 noundef %port_num) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end27.done_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.done_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done:                                             ; preds = %if.end27.done_crit_edge, %if.then23.done_crit_edge, %if.end15.done_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end27.cleanup_crit_edge, %mlx5_ib_query_ext_ppcnt_counters.exit.thread19, %mlx5_ib_query_ext_ppcnt_counters.exit.thread, %mlx5_ib_query_q_counters.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add2, %done ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %mlx5_ib_query_q_counters.exit ], [ %call35, %if.end27.cleanup_crit_edge ], [ -12, %mlx5_ib_query_ext_ppcnt_counters.exit.thread ], [ %call23.i, %mlx5_ib_query_ext_ppcnt_counters.exit.thread19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdev_port_num) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_ib_get_native_port_mdev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_lag_query_cong_counters(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_put_native_port_mdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_qp_set_counter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ib_alloc_hw_port_stats(ptr nocapture noundef readonly %ibdev, i32 noundef %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 22
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %sub = add i32 %port_num, -1
  %arrayidx = getelementptr %struct.mlx5_ib_port, ptr %1, i32 %sub
  %num_q_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %num_q_counters.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_q_counters.i, align 4
  %num_cong_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 3
  %4 = ptrtoint ptr %num_cong_counters.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cong_counters.i, align 4
  %add.i = add i32 %5, %3
  %num_ext_ppcnt_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 4
  %6 = ptrtoint ptr %num_ext_ppcnt_counters.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ext_ppcnt_counters.i, align 4
  %add1.i = add i32 %add.i, %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %num_op_counters.i = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 5
  %10 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_op_counters.i, align 4
  %add2.i = add i32 %11, %add1.i
  %call.i = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef %9, i32 noundef %add2.i, i32 noundef 10) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do_alloc_stats.exit_crit_edge, label %for.cond.preheader.i

entry.do_alloc_stats.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.cond.preheader.i:                             ; preds = %entry
  %12 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_op_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not.i = icmp eq i32 %13, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do_alloc_stats.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %is_disabled.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add4.i = add i32 %i.018.i, %add1.i
  %14 = ptrtoint ptr %is_disabled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %is_disabled.i, align 8
  tail call void @_set_bit(i32 noundef %add4.i, ptr noundef %15) #7
  %inc.i = add nuw i32 %i.018.i, 1
  %16 = ptrtoint ptr %num_op_counters.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_op_counters.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do_alloc_stats.exit_crit_edge

for.body.i.do_alloc_stats.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_alloc_stats.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_alloc_stats.exit:                              ; preds = %for.body.i.do_alloc_stats.exit_crit_edge, %for.cond.preheader.i.do_alloc_stats.exit_crit_edge, %entry.do_alloc_stats.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_modify_stat(ptr noundef %device, i32 noundef %port, i32 noundef %index, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 22
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 8
  %sub = add i32 %port, -1
  %arrayidx = getelementptr %struct.mlx5_ib_port, ptr %1, i32 %sub
  %num_q_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %num_q_counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_q_counters, align 4
  %num_cong_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 3
  %4 = ptrtoint ptr %num_cong_counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cong_counters, align 4
  %add = add i32 %5, %3
  %num_ext_ppcnt_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 4
  %6 = ptrtoint ptr %num_ext_ppcnt_counters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ext_ppcnt_counters, align 4
  %add3 = add i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %index)
  %cmp = icmp ugt i32 %add3, %index
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_op_counters = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %num_op_counters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_op_counters, align 4
  %add4 = add i32 %9, %add3
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %index)
  %cmp5.not = icmp ugt i32 %add4, %index
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr %struct.rdma_stat_desc, ptr %11, i32 %index, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv = getelementptr %struct.rdma_stat_desc, ptr %11, i32 %index, i32 2
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp11 = icmp ugt i32 %17, 2
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %opfcs = getelementptr inbounds %struct.mlx5_ib_counters, ptr %arrayidx, i32 0, i32 7
  %arrayidx14 = getelementptr [3 x %struct.mlx5_ib_op_fc], ptr %opfcs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %enable, label %if.then16, label %if.end35

if.then16:                                        ; preds = %if.end13
  br i1 %tobool17.not, label %if.end19, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then16
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 8
  %call20 = tail call ptr @mlx5_fc_create(ptr noundef %21, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call20, ptr %arrayidx14, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %call28 = tail call i32 @mlx5_ib_fs_add_op_fc(ptr noundef %device, i32 noundef %port, ptr noundef %arrayidx14, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 8
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %25, ptr noundef %27) #7
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx14, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end13
  br i1 %tobool17.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_ib_fs_remove_op_fc(ptr noundef %device, ptr noundef %arrayidx14, i32 noundef %17) #7
  %mdev40 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 1
  %29 = ptrtoint ptr %mdev40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev40, align 8
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx14, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %30, ptr noundef %32) #7
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end35.cleanup_crit_edge, %if.then30, %if.end27.cleanup_crit_edge, %if.then24, %if.then16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then24 ], [ 0, %if.end39 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -17, %if.then16.cleanup_crit_edge ], [ %call28, %if.then30 ], [ 0, %if.end27.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_fs_add_op_fc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_fs_remove_op_fc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!7 = !{ptr @counters_ops, !8, !"counters_ops", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 902, i32 35}
!9 = !{ptr @mlx5_ib_create_counters.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 152, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hw_switchdev_stats_ops, !13, !"hw_switchdev_stats_ops", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 892, i32 35}
!14 = !{ptr @hw_stats_ops, !15, !"hw_stats_ops", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 880, i32 35}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 680, i32 4}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_ib_alloc_counters._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_ib_alloc_counters._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 22, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 23, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 24, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 25, i32 2}
!32 = distinct !{null, !33, !"basic_q_cnts", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 21, i32 37}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 29, i32 2}
!36 = distinct !{null, !37, !"out_of_seq_q_cnts", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 28, i32 37}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 33, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 34, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 35, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 36, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 37, i32 2}
!48 = distinct !{null, !49, !"retrans_q_cnts", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 32, i32 37}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 52, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 53, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 54, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 55, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 56, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 57, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 58, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 59, i32 2}
!66 = distinct !{null, !67, !"extended_err_cnts", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 51, i32 37}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 63, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 64, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 65, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 66, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 67, i32 2}
!78 = distinct !{null, !79, !"roce_accl_cnts", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 62, i32 37}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 45, i32 2}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 46, i32 2}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 47, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 48, i32 2}
!88 = distinct !{null, !89, !"cong_cnts", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 44, i32 37}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 76, i32 2}
!92 = distinct !{null, !93, !"ext_ppcnt_cnts", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 75, i32 37}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 83, i32 2}
!96 = !{ptr @basic_op_cnts, !97, !"basic_op_cnts", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 82, i32 37}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 87, i32 2}
!100 = !{ptr @rdmarx_cnp_op_cnts, !101, !"rdmarx_cnp_op_cnts", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 86, i32 37}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 91, i32 2}
!104 = !{ptr @rdmatx_cnp_op_cnts, !105, !"rdmatx_cnp_op_cnts", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/mlx5/counters.c", i32 90, i32 37}
!106 = !{!"sp"}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2152510058, i64 2152510083}
!118 = !{i64 5005613}
!119 = !{i64 5005810}
!120 = !{i64 2152491043}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"auto-init"}
