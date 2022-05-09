; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/cong.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/cong.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_ib_dbg_cc_params = type { ptr, [20 x %struct.mlx5_ib_dbg_param] }
%struct.mlx5_ib_dbg_param = type { i32, ptr, ptr, i32 }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@mlx5_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cc_params\00", [22 x i8] zeroinitializer }, align 32
@mlx5_ib_dbg_cc_name = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [48 x i8] zeroinitializer }, align 32
@dbg_cc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @get_param, ptr @set_param, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mlx5_ib_init_cong_debugfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): cong debugfs failure\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_ib_init_cong_debugfs\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/mlx5/cong.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_init_cong_debugfs._entry_ptr = internal global ptr @mlx5_ib_init_cong_debugfs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rp_clamp_tgt_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rp_clamp_tgt_rate_ati\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rp_time_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rp_byte_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rp_threshold\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rp_ai_rate\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rp_max_rate\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rp_hai_rate\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rp_min_dec_fac\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rp_min_rate\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rp_rate_to_set_on_first_cnp\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rp_dce_tcp_g\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rp_dce_tcp_rtt\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rp_rate_reduce_monitor_period\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rp_initial_alpha_value\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rp_gd\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"np_min_time_between_cnps\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"np_cnp_dscp\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"np_cnp_prio_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"np_cnp_prio\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.30 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 436, i32 43 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"mlx5_ib_dbg_cc_name\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 43, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"dbg_cc_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 393, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 455, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 44, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 45, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 46, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 47, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 48, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 49, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 50, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 51, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 52, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 53, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 54, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 55, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 56, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 57, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 58, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 59, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 60, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 61, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 62, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 2 }
@___asan_gen_.119 = private constant [37 x i8] c"../drivers/infiniband/hw/mlx5/cong.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 386, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 156, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @mlx5_ib_init_cong_debugfs._entry, ptr @mlx5_ib_init_cong_debugfs._entry_ptr, ptr @.str, ptr @mlx5_ib_dbg_cc_name, ptr @dbg_cc_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dbg_cc_name to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_cc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_init_cong_debugfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_cleanup_cong_debugfs(ptr nocapture noundef readonly %dev, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %dbg_cc_params = getelementptr %struct.mlx5_ib_port, ptr %2, i32 %port_num, i32 2
  %3 = ptrtoint ptr %dbg_cc_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg_cc_params, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debugfs_remove(ptr noundef nonnull %6) #8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %dbg_cc_params13 = getelementptr %struct.mlx5_ib_port, ptr %8, i32 %port_num, i32 2
  %9 = ptrtoint ptr %dbg_cc_params13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dbg_cc_params13, align 4
  tail call void @kfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 8
  %dbg_cc_params16 = getelementptr %struct.mlx5_ib_port, ptr %12, i32 %port_num, i32 2
  %13 = ptrtoint ptr %dbg_cc_params16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dbg_cc_params16, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_init_cong_debugfs(ptr noundef %dev, i32 noundef %port_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %port_num, 1
  %call = tail call ptr @mlx5_ib_get_native_port_mdev(ptr noundef %dev, i32 noundef %add, ptr noundef null) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %2, i32 11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = and i32 %4, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %5)
  %.not = icmp eq i32 %5, 1610612736
  br i1 %.not, label %if.end15, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 324) #11
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %do.end, label %if.end19

if.end19:                                         ; preds = %if.end15
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %dbg_cc_params21 = getelementptr %struct.mlx5_ib_port, ptr %8, i32 %port_num, i32 2
  %9 = ptrtoint ptr %dbg_cc_params21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %dbg_cc_params21, align 4
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 20
  %10 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbg_root, align 8
  %call22 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %11) #8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19
  %i.072 = phi i32 [ 0, %if.end19 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx23 = getelementptr %struct.mlx5_ib_dbg_cc_params, ptr %call7.i.i, i32 0, i32 1, i32 %i.072
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.072, ptr %arrayidx23, align 4
  %dev26 = getelementptr %struct.mlx5_ib_dbg_cc_params, ptr %call7.i.i, i32 0, i32 1, i32 %i.072, i32 1
  %14 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev26, align 8
  %port_num29 = getelementptr %struct.mlx5_ib_dbg_cc_params, ptr %call7.i.i, i32 0, i32 1, i32 %i.072, i32 3
  %15 = ptrtoint ptr %port_num29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %port_num, ptr %port_num29, align 8
  %arrayidx30 = getelementptr [20 x ptr], ptr @mlx5_ib_dbg_cc_name, i32 0, i32 %i.072
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx30, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call34 = tail call ptr @debugfs_create_file(ptr noundef %17, i16 noundef zeroext 384, ptr noundef %19, ptr noundef %arrayidx23, ptr noundef nonnull @dbg_cc_fops) #8
  %dentry = getelementptr %struct.mlx5_ib_dbg_cc_params, ptr %call7.i.i, i32 0, i32 1, i32 %i.072, i32 2
  %20 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call34, ptr %dentry, align 4
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %21 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %22 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 455, i32 noundef %27) #12
  tail call void @mlx5_ib_cleanup_cong_debugfs(ptr noundef %dev, i32 noundef %port_num)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %for.body.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  tail call void @mlx5_ib_put_native_port_mdev(ptr noundef %dev, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_ib_get_native_port_mdev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_put_native_port_mdev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_param(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %lbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %lbuf) #8
  %dev = getelementptr inbounds %struct.mlx5_ib_dbg_param, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %lbuf, i32 255, i32 11)
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %port_num = getelementptr inbounds %struct.mlx5_ib_dbg_param, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_num, align 4
  %add.i = add i32 %8, 1
  %call.i = tail call ptr @mlx5_ib_get_native_port_mdev(ptr noundef %6, i32 noundef %add.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #13
  %tobool2.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i, label %mlx5_ib_get_cc_params.exit.thread20, label %if.end4.i

mlx5_ib_get_cc_params.exit.thread20:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5_ib_put_native_port_mdev(ptr noundef %6, i32 noundef %add.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 16
  %retval.0.i.i = select i1 %cmp1.i.i, i32 1, i32 2
  %call6.i = tail call i32 @mlx5_cmd_query_cong_params(ptr noundef nonnull %call.i, i32 noundef %retval.0.i.i, ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.mlx5_ib_get_cc_params.exit_crit_edge

if.end4.i.mlx5_ib_get_cc_params.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_ib_get_cc_params.exit

if.end9.i:                                        ; preds = %if.end4.i
  %9 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end9.i.mlx5_ib_get_cc_params.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
    i32 5, label %sw.bb17.i.i
    i32 6, label %sw.bb21.i.i
    i32 7, label %sw.bb25.i.i
    i32 8, label %sw.bb29.i.i
    i32 9, label %sw.bb33.i.i
    i32 10, label %sw.bb37.i.i
    i32 11, label %sw.bb41.i.i
    i32 12, label %sw.bb45.i.i
    i32 13, label %sw.bb49.i.i
    i32 14, label %sw.bb53.i.i
    i32 15, label %sw.bb57.i.i
    i32 16, label %sw.bb61.i.i
    i32 17, label %sw.bb65.i.i
    i32 18, label %sw.bb69.i.i
    i32 19, label %sw.bb73.i.i
  ]

if.end9.i.mlx5_ib_get_cc_params.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_ib_get_cc_params.exit

sw.bb.i.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %11, 27
  %and.i.i = and i32 %shr.i.i, 1
  br label %mlx5_ib_get_cc_params.exit

sw.bb1.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %12 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr2.i.i, align 4
  %shr3.i.i = lshr i32 %13, 23
  %and4.i.i = and i32 %shr3.i.i, 1
  br label %mlx5_ib_get_cc_params.exit

sw.bb5.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6.i.i = getelementptr i8, ptr %call.i.i.i, i32 36
  %14 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr6.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb9.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.i.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %16 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr10.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb13.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr14.i.i = getelementptr i8, ptr %call.i.i.i, i32 44
  %18 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr14.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb17.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18.i.i = getelementptr i8, ptr %call.i.i.i, i32 52
  %20 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr18.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb21.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr22.i.i = getelementptr i8, ptr %call.i.i.i, i32 48
  %22 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr22.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb25.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr26.i.i = getelementptr i8, ptr %call.i.i.i, i32 56
  %24 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr26.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb29.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr30.i.i = getelementptr i8, ptr %call.i.i.i, i32 64
  %26 = ptrtoint ptr %add.ptr30.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr30.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb33.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr34.i.i = getelementptr i8, ptr %call.i.i.i, i32 68
  %28 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr34.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb37.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr38.i.i = getelementptr i8, ptr %call.i.i.i, i32 100
  %30 = ptrtoint ptr %add.ptr38.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr38.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb41.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i.i = getelementptr i8, ptr %call.i.i.i, i32 104
  %32 = ptrtoint ptr %add.ptr42.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr42.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb45.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr46.i.i = getelementptr i8, ptr %call.i.i.i, i32 108
  %34 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr46.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb49.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr50.i.i = getelementptr i8, ptr %call.i.i.i, i32 112
  %36 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr50.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb53.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr54.i.i = getelementptr i8, ptr %call.i.i.i, i32 120
  %38 = ptrtoint ptr %add.ptr54.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr54.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb57.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr58.i.i = getelementptr i8, ptr %call.i.i.i, i32 60
  %40 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr58.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb61.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr62.i.i = getelementptr i8, ptr %call.i.i.i, i32 36
  %42 = ptrtoint ptr %add.ptr62.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr62.i.i, align 4
  br label %mlx5_ib_get_cc_params.exit

sw.bb65.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr66.i.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %44 = ptrtoint ptr %add.ptr66.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr66.i.i, align 4
  %shr67.i.i = lshr i32 %45, 8
  %and68.i.i = and i32 %shr67.i.i, 63
  br label %mlx5_ib_get_cc_params.exit

sw.bb69.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr70.i.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %46 = ptrtoint ptr %add.ptr70.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr70.i.i, align 4
  %shr71.i.i = lshr i32 %47, 3
  %and72.i.i = and i32 %shr71.i.i, 1
  br label %mlx5_ib_get_cc_params.exit

sw.bb73.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr74.i.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %48 = ptrtoint ptr %add.ptr74.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr74.i.i, align 4
  %and76.i.i = and i32 %49, 7
  br label %mlx5_ib_get_cc_params.exit

mlx5_ib_get_cc_params.exit:                       ; preds = %sw.bb73.i.i, %sw.bb69.i.i, %sw.bb65.i.i, %sw.bb61.i.i, %sw.bb57.i.i, %sw.bb53.i.i, %sw.bb49.i.i, %sw.bb45.i.i, %sw.bb41.i.i, %sw.bb37.i.i, %sw.bb33.i.i, %sw.bb29.i.i, %sw.bb25.i.i, %sw.bb21.i.i, %sw.bb17.i.i, %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end9.i.mlx5_ib_get_cc_params.exit_crit_edge, %if.end4.i.mlx5_ib_get_cc_params.exit_crit_edge
  %var.0 = phi i32 [ 0, %if.end4.i.mlx5_ib_get_cc_params.exit_crit_edge ], [ %and76.i.i, %sw.bb73.i.i ], [ %and72.i.i, %sw.bb69.i.i ], [ %and68.i.i, %sw.bb65.i.i ], [ %43, %sw.bb61.i.i ], [ %41, %sw.bb57.i.i ], [ %39, %sw.bb53.i.i ], [ %37, %sw.bb49.i.i ], [ %35, %sw.bb45.i.i ], [ %33, %sw.bb41.i.i ], [ %31, %sw.bb37.i.i ], [ %29, %sw.bb33.i.i ], [ %27, %sw.bb29.i.i ], [ %25, %sw.bb25.i.i ], [ %23, %sw.bb21.i.i ], [ %21, %sw.bb17.i.i ], [ %19, %sw.bb13.i.i ], [ %17, %sw.bb9.i.i ], [ %15, %sw.bb5.i.i ], [ %and4.i.i, %sw.bb1.i.i ], [ %and.i.i, %sw.bb.i.i ], [ 0, %if.end9.i.mlx5_ib_get_cc_params.exit_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  tail call void @mlx5_ib_put_native_port_mdev(ptr noundef %6, i32 noundef %add.i) #8
  br i1 %tobool7.not.i, label %if.end, label %mlx5_ib_get_cc_params.exit.cleanup_crit_edge

mlx5_ib_get_cc_params.exit.cleanup_crit_edge:     ; preds = %mlx5_ib_get_cc_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mlx5_ib_get_cc_params.exit
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %lbuf, i32 noundef 11, ptr noundef nonnull @.str.26, i32 noundef %var.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %lbuf, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %mlx5_ib_get_cc_params.exit.cleanup_crit_edge, %mlx5_ib_get_cc_params.exit.thread20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %call6.i, %mlx5_ib_get_cc_params.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %mlx5_ib_get_cc_params.exit.thread20 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %lbuf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_param(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %_out.i = alloca [4 x i32], align 4
  %lbuf = alloca [11 x i8], align 1
  %var = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %lbuf) #8
  %4 = call ptr @memset(ptr %lbuf, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var) #8
  %5 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %var, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %count)
  %cmp = icmp ugt i32 %count, 11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %lbuf, i32 noundef %count, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #14, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !75

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lbuf, i32 noundef %count) #8
  %7 = call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !76
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %lbuf, ptr noundef %buf, i32 noundef %count) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !75

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %lbuf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds [11 x i8], ptr %lbuf, i32 0, i32 10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @kstrtouint(ptr noundef nonnull %lbuf, i32 noundef 0, ptr noundef nonnull %var) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.mlx5_ib_dbg_param, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %port_num = getelementptr inbounds %struct.mlx5_ib_dbg_param, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_num, align 4
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var, align 4
  %add.i = add i32 %15, 1
  %call.i20 = call ptr @mlx5_ib_get_native_port_mdev(ptr noundef %13, i32 noundef %add.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i20, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call.i.i.i21 = call noalias ptr @kvmalloc_node(i32 noundef 288, i32 noundef 3520, i32 noundef -1) #13
  %tobool2.not.i = icmp eq ptr %call.i.i.i21, null
  br i1 %tobool2.not.i, label %mlx5_ib_set_cc_params.exit.thread28, label %do.body.i

mlx5_ib_set_cc_params.exit.thread28:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mlx5_ib_put_native_port_mdev(ptr noundef %13, i32 noundef %add.i) #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %call.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i.i.i21, align 4
  %and.i = and i32 %19, 65535
  %or.i = or i32 %and.i, 136642560
  store i32 %or.i, ptr %call.i.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1.i.i22 = icmp ult i32 %3, 16
  %retval.0.i.i = select i1 %cmp1.i.i22, i32 1, i32 2
  %add.ptr16.i = getelementptr i32, ptr %call.i.i.i21, i32 2
  %20 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr16.i, align 4
  %and17.i = and i32 %21, -16
  %or20.i = or i32 %and17.i, %retval.0.i.i
  store i32 %or20.i, ptr %add.ptr16.i, align 4
  %22 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %do.body.i.mlx5_ib_set_cc_params.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb7.i.i
    i32 2, label %sw.bb22.i.i
    i32 3, label %sw.bb37.i.i
    i32 4, label %sw.bb52.i.i
    i32 5, label %sw.bb67.i.i
    i32 6, label %sw.bb82.i.i
    i32 7, label %sw.bb97.i.i
    i32 8, label %sw.bb112.i.i
    i32 9, label %sw.bb127.i.i
    i32 10, label %sw.bb142.i.i
    i32 11, label %sw.bb157.i.i
    i32 12, label %sw.bb172.i.i
    i32 13, label %sw.bb187.i.i
    i32 14, label %sw.bb202.i.i
    i32 15, label %sw.bb217.i.i
    i32 16, label %sw.bb232.i.i
    i32 17, label %sw.bb247.i.i
    i32 18, label %sw.bb262.i.i
    i32 19, label %sw.bb277.i.i
  ]

do.body.i.mlx5_ib_set_cc_params.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_ib_set_cc_params.exit

sw.bb.i.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i23 = getelementptr i8, ptr %call.i.i.i21, i32 44
  %23 = ptrtoint ptr %add.ptr.i.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i23, align 4
  %and.i.i = and i32 %24, -134217729
  %and2.i.i = shl i32 %17, 27
  %shl.i.i = and i32 %and2.i.i, 134217728
  %or3.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or3.i.i, ptr %add.ptr.i.i23, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb7.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr14.i.i = getelementptr i8, ptr %call.i.i.i21, i32 44
  %25 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr14.i.i, align 4
  %and15.i.i = and i32 %26, -8388609
  %and16.i.i = shl i32 %17, 23
  %shl17.i.i = and i32 %and16.i.i, 8388608
  %or18.i.i = or i32 %and15.i.i, %shl17.i.i
  store i32 %or18.i.i, ptr %add.ptr14.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb22.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr29.i.i = getelementptr i8, ptr %call.i.i.i21, i32 52
  %27 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %17, ptr %add.ptr29.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb37.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr44.i.i = getelementptr i8, ptr %call.i.i.i21, i32 56
  %28 = ptrtoint ptr %add.ptr44.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %17, ptr %add.ptr44.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb52.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr59.i.i = getelementptr i8, ptr %call.i.i.i21, i32 60
  %29 = ptrtoint ptr %add.ptr59.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %add.ptr59.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb67.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr74.i.i = getelementptr i8, ptr %call.i.i.i21, i32 68
  %30 = ptrtoint ptr %add.ptr74.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %17, ptr %add.ptr74.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb82.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr89.i.i = getelementptr i8, ptr %call.i.i.i21, i32 64
  %31 = ptrtoint ptr %add.ptr89.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %17, ptr %add.ptr89.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb97.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr104.i.i = getelementptr i8, ptr %call.i.i.i21, i32 72
  %32 = ptrtoint ptr %add.ptr104.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %17, ptr %add.ptr104.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb112.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr119.i.i = getelementptr i8, ptr %call.i.i.i21, i32 80
  %33 = ptrtoint ptr %add.ptr119.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %17, ptr %add.ptr119.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb127.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr134.i.i = getelementptr i8, ptr %call.i.i.i21, i32 84
  %34 = ptrtoint ptr %add.ptr134.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %17, ptr %add.ptr134.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb142.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr149.i.i = getelementptr i8, ptr %call.i.i.i21, i32 116
  %35 = ptrtoint ptr %add.ptr149.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %17, ptr %add.ptr149.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb157.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr164.i.i = getelementptr i8, ptr %call.i.i.i21, i32 120
  %36 = ptrtoint ptr %add.ptr164.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %17, ptr %add.ptr164.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb172.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr179.i.i = getelementptr i8, ptr %call.i.i.i21, i32 124
  %37 = ptrtoint ptr %add.ptr179.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %17, ptr %add.ptr179.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb187.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr194.i.i = getelementptr i8, ptr %call.i.i.i21, i32 128
  %38 = ptrtoint ptr %add.ptr194.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %17, ptr %add.ptr194.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb202.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr209.i.i = getelementptr i8, ptr %call.i.i.i21, i32 136
  %39 = ptrtoint ptr %add.ptr209.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %17, ptr %add.ptr209.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb217.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr224.i.i = getelementptr i8, ptr %call.i.i.i21, i32 76
  %40 = ptrtoint ptr %add.ptr224.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %17, ptr %add.ptr224.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb232.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr239.i.i = getelementptr i8, ptr %call.i.i.i21, i32 52
  %41 = ptrtoint ptr %add.ptr239.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %17, ptr %add.ptr239.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb247.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr254.i.i = getelementptr i8, ptr %call.i.i.i21, i32 56
  %42 = ptrtoint ptr %add.ptr254.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr254.i.i, align 4
  %and255.i.i = and i32 %43, -16129
  %and256.i.i = shl i32 %17, 8
  %shl257.i.i = and i32 %and256.i.i, 16128
  %or258.i.i = or i32 %and255.i.i, %shl257.i.i
  store i32 %or258.i.i, ptr %add.ptr254.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb262.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr269.i.i = getelementptr i8, ptr %call.i.i.i21, i32 56
  %44 = ptrtoint ptr %add.ptr269.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr269.i.i, align 4
  %and270.i.i = and i32 %45, -9
  %and271.i.i = shl i32 %17, 3
  %shl272.i.i = and i32 %and271.i.i, 8
  %or273.i.i = or i32 %and270.i.i, %shl272.i.i
  store i32 %or273.i.i, ptr %add.ptr269.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

sw.bb277.i.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr284.i.i = getelementptr i8, ptr %call.i.i.i21, i32 56
  %46 = ptrtoint ptr %add.ptr284.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr284.i.i, align 4
  %and298.i.i = and i32 %47, -16
  %and299.i.i = and i32 %17, 7
  %or301.i.i = or i32 %and298.i.i, %and299.i.i
  store i32 %or301.i.i, ptr %add.ptr284.i.i, align 4
  br label %mlx5_ib_set_cc_params.exit

mlx5_ib_set_cc_params.exit:                       ; preds = %sw.bb277.i.i, %sw.bb262.i.i, %sw.bb247.i.i, %sw.bb232.i.i, %sw.bb217.i.i, %sw.bb202.i.i, %sw.bb187.i.i, %sw.bb172.i.i, %sw.bb157.i.i, %sw.bb142.i.i, %sw.bb127.i.i, %sw.bb112.i.i, %sw.bb97.i.i, %sw.bb82.i.i, %sw.bb67.i.i, %sw.bb52.i.i, %sw.bb37.i.i, %sw.bb22.i.i, %sw.bb7.i.i, %sw.bb.i.i, %do.body.i.mlx5_ib_set_cc_params.exit_crit_edge
  %attr_mask.0.i = phi i32 [ 0, %do.body.i.mlx5_ib_set_cc_params.exit_crit_edge ], [ 16, %sw.bb277.i.i ], [ 16, %sw.bb262.i.i ], [ 8, %sw.bb247.i.i ], [ 4, %sw.bb232.i.i ], [ 65536, %sw.bb217.i.i ], [ 32768, %sw.bb202.i.i ], [ 16384, %sw.bb187.i.i ], [ 8192, %sw.bb172.i.i ], [ 4096, %sw.bb157.i.i ], [ 2048, %sw.bb142.i.i ], [ 1024, %sw.bb127.i.i ], [ 512, %sw.bb112.i.i ], [ 256, %sw.bb97.i.i ], [ 64, %sw.bb82.i.i ], [ 128, %sw.bb67.i.i ], [ 32, %sw.bb52.i.i ], [ 16, %sw.bb37.i.i ], [ 8, %sw.bb22.i.i ], [ 4, %sw.bb7.i.i ], [ 2, %sw.bb.i.i ]
  %add.ptr25.i = getelementptr i8, ptr %call.i.i.i21, i32 12
  %48 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %attr_mask.0.i, ptr %add.ptr25.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #8
  %49 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev40.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %13, i32 0, i32 1
  %50 = ptrtoint ptr %mdev40.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdev40.i, align 8
  %call41.i = call i32 @mlx5_cmd_exec(ptr noundef %51, ptr noundef nonnull %call.i.i.i21, i32 noundef 288, ptr noundef nonnull %_out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #8
  call void @kvfree(ptr noundef nonnull %call.i.i.i21) #8
  call void @mlx5_ib_put_native_port_mdev(ptr noundef %13, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool10.not = icmp eq i32 %call41.i, 0
  %spec.select = select i1 %tobool10.not, i32 %count, i32 %call41.i
  br label %cleanup

cleanup:                                          ; preds = %mlx5_ib_set_cc_params.exit, %mlx5_ib_set_cc_params.exit.thread28, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %mlx5_ib_set_cc_params.exit.thread28 ], [ -14, %if.then11.i.i ], [ -19, %if.end8.cleanup_crit_edge ], [ %spec.select, %mlx5_ib_set_cc_params.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var) #8
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %lbuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_query_cong_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 436, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 455, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_init_cong_debugfs._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlx5_ib_init_cong_debugfs._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 44, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 45, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 46, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 47, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 48, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 49, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 50, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 51, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 52, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 53, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 54, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 55, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 56, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 57, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 58, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 59, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 60, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 61, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 62, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 63, i32 2}
!50 = !{ptr @mlx5_ib_dbg_cc_name, !51, !"mlx5_ib_dbg_cc_name", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 43, i32 27}
!52 = !{ptr @dbg_cc_fops, !53, !"dbg_cc_fops", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 393, i32 37}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/cong.c", i32 386, i32 37}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2152188119, i64 2152188144}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 4683674}
!77 = !{i64 4683871}
!78 = !{i64 2152169104}
