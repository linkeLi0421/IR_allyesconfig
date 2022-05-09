; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/qpc.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/qpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_core_dct = type { %struct.mlx5_core_qp, %struct.completion }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_odp_caps = type { i64, %struct.anon.165 }
%struct.anon.165 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }

@mlx5_init_qp_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&table->lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/qpc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Event arrived for unknown resource type\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1290, i64 1292, i64 1294]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 16, i64 1282, i64 1283, i64 1284, i64 1285, i64 1294]
@__sancov_gen_cov_switch_values.6 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 3, i64 5, i64 7, i64 16, i64 17, i64 19, i64 28]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 488, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 87, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 378, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/qpc.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 86, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mlx5_init_qp_table.__key, ptr @.str, ptr @init_completion.__key, ptr @.str.1, ptr @xa_init_flags.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_qp_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_core_put_rsc(ptr noundef %common) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %common, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !24

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %free = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %common, i32 0, i32 2
  tail call void @complete(ptr noundef %free) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_dct(ptr noundef %dev, ptr noundef %dct, ptr noundef %in, i32 noundef %inlen, ptr noundef %out, i32 noundef %outlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drained = getelementptr inbounds %struct.mlx5_core_dct, ptr %dct, i32 0, i32 1
  %0 = ptrtoint ptr %drained to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %drained, align 4
  %wait.i = getelementptr inbounds %struct.mlx5_core_dct, ptr %dct, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 118489088
  store i32 %or, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef %inlen, ptr noundef %out, i32 noundef %outlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr i32, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6, align 4
  %and7 = and i32 %6, 16777215
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 2
  %7 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7, ptr %qpn, align 4
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in, align 4
  %conv = trunc i32 %9 to i16
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 5
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %uid, align 4
  %11 = ptrtoint ptr %dct to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %dct, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %tree.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  %or.i = or i32 %13, 100663296
  %call.i = tail call i32 @radix_tree_insert(ptr noundef %tree.i, i32 noundef %or.i, ptr noundef %dct) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %create_resource_common.exit.thread, label %err_cmd

create_resource_common.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %dct, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  %14 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount.i, align 4
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %dct, i32 0, i32 2
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %free.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %dct, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %pid5.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 4
  %22 = ptrtoint ptr %pid5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pid5.i, align 4
  br label %cleanup

err_cmd:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call fastcc i32 @_mlx5_core_destroy_dct(ptr noundef %dev, ptr noundef %dct, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %err_cmd, %create_resource_common.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_cmd ], [ %call, %entry.cleanup_crit_edge ], [ 0, %create_resource_common.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mlx5_core_destroy_dct(ptr noundef %dev, ptr noundef %dct, i1 noundef zeroext %need_cleanup) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %qpn.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 2
  %3 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qpn.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %4, 16777215
  %5 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %uid.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 5
  %6 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uid.i, align 4
  %conv.i = zext i16 %7 to i32
  %or32.i = or i32 %conv.i, 118620160
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %9 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %11, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev.i, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then.destroy_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.destroy_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %drained = getelementptr inbounds %struct.mlx5_core_dct, ptr %dct, i32 0, i32 1
  call void @wait_for_completion(ptr noundef %drained) #6
  br label %destroy

destroy:                                          ; preds = %if.end2, %if.then.destroy_crit_edge
  br i1 %need_cleanup, label %if.then4, label %destroy.do.body_crit_edge

destroy.do.body_crit_edge:                        ; preds = %destroy
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4:                                         ; preds = %destroy
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @destroy_resource_common(ptr noundef %dev, ptr noundef %dct)
  br label %do.body

do.body:                                          ; preds = %if.then4, %destroy.do.body_crit_edge
  %16 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qpn.i, align 4
  %add.ptr19 = getelementptr inbounds i32, ptr %in, i32 2
  %18 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr19, align 4
  %and20 = and i32 %19, -16777216
  %and21 = and i32 %17, 16777215
  %or23 = or i32 %and20, %and21
  store i32 %or23, ptr %add.ptr19, align 4
  %20 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %uid.i, align 4
  %conv = zext i16 %21 to i32
  %or38 = or i32 %conv, 118554624
  %22 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or38, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %23 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %24 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev.i, align 8
  %call47 = call i32 @mlx5_cmd_exec(ptr noundef %25, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %do.body ], [ %call.i, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_qpc_create_qp(ptr noundef %dev, ptr noundef %qp, ptr noundef %in, i32 noundef %inlen, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %din = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %din) #6
  %0 = call ptr @memset(ptr %din, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 83886080
  store i32 %or, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef %inlen, ptr noundef %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 4
  %conv = trunc i32 %6 to i16
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 5
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %uid, align 4
  %add.ptr8 = getelementptr i32, ptr %out, i32 2
  %8 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr8, align 4
  %and10 = and i32 %9, 16777215
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %10 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and10, ptr %qpn, align 4
  %11 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qp, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %tree.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  %call.i = tail call i32 @radix_tree_insert(ptr noundef %tree.i, i32 noundef %13, ptr noundef %qp) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %do.body17

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  %14 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount.i, align 4
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 2
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %free.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %pid5.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 4
  %22 = ptrtoint ptr %pid5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pid5.i, align 4
  %23 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdev, align 8
  %call16 = tail call i32 @mlx5_debug_qp_add(ptr noundef %24, ptr noundef %qp) #6
  br label %cleanup

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qpn, align 4
  %add.ptr38 = getelementptr inbounds i32, ptr %din, i32 2
  %27 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr38, align 4
  %and39 = and i32 %28, -16777216
  %and40 = and i32 %26, 16777215
  %or42 = or i32 %and39, %and40
  store i32 %or42, ptr %add.ptr38, align 4
  %29 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %uid, align 4
  %conv50 = zext i16 %30 to i32
  %or59 = or i32 %conv50, 83951616
  %31 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or59, ptr %din, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %32 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  %call68 = call i32 @mlx5_cmd_exec(ptr noundef %34, ptr noundef nonnull %din, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.body17 ], [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %din) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_debug_qp_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_dct(ptr noundef %dev, ptr noundef %dct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_mlx5_core_destroy_dct(ptr noundef %dev, ptr noundef %dct, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_qp(ptr noundef %dev, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_debug_qp_remove(ptr noundef %3, ptr noundef %qp) #6
  tail call fastcc void @destroy_resource_common(ptr noundef %dev, ptr noundef %qp)
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %4 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qpn, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %5, 16777215
  %6 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and15, ptr %add.ptr13, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 5
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %uid, align 4
  %conv = zext i16 %8 to i32
  %or32 = or i32 %conv, 83951616
  %9 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %10 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %12, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_debug_qp_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_resource_common(ptr noundef %dev, ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tree = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %0 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qpn, align 4
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qp, align 4
  %shl = shl i32 %3, 24
  %or = or i32 %shl, %1
  %call5 = tail call ptr @radix_tree_delete(ptr noundef %tree, i32 noundef %or) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_core_put_rsc.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %mlx5_core_put_rsc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 2
  tail call void @complete(ptr noundef %free.i) #6
  br label %mlx5_core_put_rsc.exit

mlx5_core_put_rsc.exit:                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge
  %free = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %qp, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %free) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_set_delay_drop(ptr nocapture noundef readonly %dev, i32 noundef %timeout_usec) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 152043520, ptr %in, align 4
  %div = udiv i32 %timeout_usec, 100
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 3
  %and15 = and i32 %div, 65535
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %6, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_qp_modify(ptr nocapture noundef readonly %dev, i16 noundef zeroext %opcode, i32 noundef %opt_param_mask, ptr nocapture noundef readonly %qpc, ptr nocapture noundef readonly %qp, ptr noundef %ece) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %0 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qpn, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 4
  %tobool.not = icmp eq ptr %ece, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ece to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ece, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %6 = zext i16 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %opcode, label %cond.end.cleanup_crit_edge [
    i16 1290, label %kzalloc.exit29.i.i
    i16 1287, label %kzalloc.exit29.i36.i
    i16 1282, label %kzalloc.exit29.i75.i
    i16 1283, label %kzalloc.exit29.i114.i
    i16 1284, label %kzalloc.exit29.i153.i
    i16 1285, label %kzalloc.exit29.i192.i
    i16 1286, label %kzalloc.exit29.i231.i
    i16 1292, label %kzalloc.exit29.i270.i
    i16 1294, label %kzalloc.exit29.i309.i
  ]

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

kzalloc.exit29.i.i:                               ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  %tobool8.not.i.i = icmp eq ptr %call7.i.i24.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool8.not.i.i
  br i1 %or.cond.i.i, label %mbox_alloc.exit.i, label %do.body1.i

mbox_alloc.exit.i:                                ; preds = %kzalloc.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i.i) #6
  br label %cleanup

do.body1.i:                                       ; preds = %kzalloc.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr16.i = getelementptr i32, ptr %call7.i.i.i.i, i32 2
  %9 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr16.i, align 8
  %and17.i = and i32 %10, -16777216
  %and18.i = and i32 %1, 16777215
  %or20.i = or i32 %and17.i, %and18.i
  store i32 %or20.i, ptr %add.ptr16.i, align 8
  %conv27.i = zext i16 %3 to i32
  %or36.i = or i32 %conv27.i, 84541440
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or36.i, ptr %call7.i.i.i.i, align 8
  br label %if.end

kzalloc.exit29.i36.i:                             ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i3.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i27.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i33.i = icmp eq ptr %call7.i.i.i3.i, null
  %tobool8.not.i34.i = icmp eq ptr %call7.i.i24.i27.i, null
  %or.cond.i35.i = select i1 %tobool.not.i33.i, i1 true, i1 %tobool8.not.i34.i
  br i1 %or.cond.i35.i, label %mbox_alloc.exit39.i, label %do.body49.i

mbox_alloc.exit39.i:                              ; preds = %kzalloc.exit29.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i3.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i27.i) #6
  br label %cleanup

do.body49.i:                                      ; preds = %kzalloc.exit29.i36.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr71.i = getelementptr i32, ptr %call7.i.i.i3.i, i32 2
  %14 = ptrtoint ptr %add.ptr71.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr71.i, align 8
  %and72.i = and i32 %15, -16777216
  %and73.i = and i32 %1, 16777215
  %or75.i = or i32 %and72.i, %and73.i
  store i32 %or75.i, ptr %add.ptr71.i, align 8
  %conv82.i = zext i16 %3 to i32
  %or91.i = or i32 %conv82.i, 84344832
  %16 = ptrtoint ptr %call7.i.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or91.i, ptr %call7.i.i.i3.i, align 8
  br label %if.end

kzalloc.exit29.i75.i:                             ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i42.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i66.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i72.i = icmp eq ptr %call7.i.i.i42.i, null
  %tobool8.not.i73.i = icmp eq ptr %call7.i.i24.i66.i, null
  %or.cond.i74.i = select i1 %tobool.not.i72.i, i1 true, i1 %tobool8.not.i73.i
  br i1 %or.cond.i74.i, label %mbox_alloc.exit78.i, label %do.body105.i

mbox_alloc.exit78.i:                              ; preds = %kzalloc.exit29.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i42.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i66.i) #6
  br label %cleanup

do.body105.i:                                     ; preds = %kzalloc.exit29.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr127.i = getelementptr i32, ptr %call7.i.i.i42.i, i32 2
  %19 = ptrtoint ptr %add.ptr127.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr127.i, align 8
  %and128.i = and i32 %20, -16777216
  %and129.i = and i32 %1, 16777215
  %or131.i = or i32 %and128.i, %and129.i
  store i32 %or131.i, ptr %add.ptr127.i, align 8
  %conv138.i = zext i16 %3 to i32
  %or147.i = or i32 %conv138.i, 84017152
  %21 = ptrtoint ptr %call7.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or147.i, ptr %call7.i.i.i42.i, align 8
  %add.ptr160.i = getelementptr i32, ptr %call7.i.i.i42.i, i32 4
  %22 = ptrtoint ptr %add.ptr160.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %opt_param_mask, ptr %add.ptr160.i, align 8
  %add.ptr170.i = getelementptr i8, ptr %call7.i.i.i42.i, i32 24
  %23 = call ptr @memcpy(ptr %add.ptr170.i, ptr %qpc, i32 232)
  %add.ptr179.i = getelementptr i32, ptr %call7.i.i.i42.i, i32 5
  %24 = ptrtoint ptr %add.ptr179.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %add.ptr179.i, align 4
  br label %if.end

kzalloc.exit29.i114.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i81.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i105.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i111.i = icmp eq ptr %call7.i.i.i81.i, null
  %tobool8.not.i112.i = icmp eq ptr %call7.i.i24.i105.i, null
  %or.cond.i113.i = select i1 %tobool.not.i111.i, i1 true, i1 %tobool8.not.i112.i
  br i1 %or.cond.i113.i, label %mbox_alloc.exit117.i, label %do.body195.i

mbox_alloc.exit117.i:                             ; preds = %kzalloc.exit29.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i81.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i105.i) #6
  br label %cleanup

do.body195.i:                                     ; preds = %kzalloc.exit29.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr217.i = getelementptr i32, ptr %call7.i.i.i81.i, i32 2
  %27 = ptrtoint ptr %add.ptr217.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr217.i, align 8
  %and218.i = and i32 %28, -16777216
  %and219.i = and i32 %1, 16777215
  %or221.i = or i32 %and218.i, %and219.i
  store i32 %or221.i, ptr %add.ptr217.i, align 8
  %conv228.i = zext i16 %3 to i32
  %or237.i = or i32 %conv228.i, 84082688
  %29 = ptrtoint ptr %call7.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or237.i, ptr %call7.i.i.i81.i, align 8
  %add.ptr250.i = getelementptr i32, ptr %call7.i.i.i81.i, i32 4
  %30 = ptrtoint ptr %add.ptr250.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %opt_param_mask, ptr %add.ptr250.i, align 8
  %add.ptr260.i = getelementptr i8, ptr %call7.i.i.i81.i, i32 24
  %31 = call ptr @memcpy(ptr %add.ptr260.i, ptr %qpc, i32 232)
  %add.ptr269.i = getelementptr i32, ptr %call7.i.i.i81.i, i32 5
  %32 = ptrtoint ptr %add.ptr269.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %add.ptr269.i, align 4
  br label %if.end

kzalloc.exit29.i153.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i120.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i144.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i150.i = icmp eq ptr %call7.i.i.i120.i, null
  %tobool8.not.i151.i = icmp eq ptr %call7.i.i24.i144.i, null
  %or.cond.i152.i = select i1 %tobool.not.i150.i, i1 true, i1 %tobool8.not.i151.i
  br i1 %or.cond.i152.i, label %mbox_alloc.exit156.i, label %do.body285.i

mbox_alloc.exit156.i:                             ; preds = %kzalloc.exit29.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i120.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i144.i) #6
  br label %cleanup

do.body285.i:                                     ; preds = %kzalloc.exit29.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr307.i = getelementptr i32, ptr %call7.i.i.i120.i, i32 2
  %35 = ptrtoint ptr %add.ptr307.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr307.i, align 8
  %and308.i = and i32 %36, -16777216
  %and309.i = and i32 %1, 16777215
  %or311.i = or i32 %and308.i, %and309.i
  store i32 %or311.i, ptr %add.ptr307.i, align 8
  %conv318.i = zext i16 %3 to i32
  %or327.i = or i32 %conv318.i, 84148224
  %37 = ptrtoint ptr %call7.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or327.i, ptr %call7.i.i.i120.i, align 8
  %add.ptr340.i = getelementptr i32, ptr %call7.i.i.i120.i, i32 4
  %38 = ptrtoint ptr %add.ptr340.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %opt_param_mask, ptr %add.ptr340.i, align 8
  %add.ptr350.i = getelementptr i8, ptr %call7.i.i.i120.i, i32 24
  %39 = call ptr @memcpy(ptr %add.ptr350.i, ptr %qpc, i32 232)
  %add.ptr359.i = getelementptr i32, ptr %call7.i.i.i120.i, i32 5
  %40 = ptrtoint ptr %add.ptr359.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %add.ptr359.i, align 4
  br label %if.end

kzalloc.exit29.i192.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i159.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i183.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i189.i = icmp eq ptr %call7.i.i.i159.i, null
  %tobool8.not.i190.i = icmp eq ptr %call7.i.i24.i183.i, null
  %or.cond.i191.i = select i1 %tobool.not.i189.i, i1 true, i1 %tobool8.not.i190.i
  br i1 %or.cond.i191.i, label %mbox_alloc.exit195.i, label %do.body375.i

mbox_alloc.exit195.i:                             ; preds = %kzalloc.exit29.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i159.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i183.i) #6
  br label %cleanup

do.body375.i:                                     ; preds = %kzalloc.exit29.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr397.i = getelementptr i32, ptr %call7.i.i.i159.i, i32 2
  %43 = ptrtoint ptr %add.ptr397.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr397.i, align 8
  %and398.i = and i32 %44, -16777216
  %and399.i = and i32 %1, 16777215
  %or401.i = or i32 %and398.i, %and399.i
  store i32 %or401.i, ptr %add.ptr397.i, align 8
  %conv408.i = zext i16 %3 to i32
  %or417.i = or i32 %conv408.i, 84213760
  %45 = ptrtoint ptr %call7.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or417.i, ptr %call7.i.i.i159.i, align 8
  %add.ptr430.i = getelementptr i32, ptr %call7.i.i.i159.i, i32 4
  %46 = ptrtoint ptr %add.ptr430.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %opt_param_mask, ptr %add.ptr430.i, align 8
  %add.ptr440.i = getelementptr i8, ptr %call7.i.i.i159.i, i32 24
  %47 = call ptr @memcpy(ptr %add.ptr440.i, ptr %qpc, i32 232)
  %add.ptr449.i = getelementptr i32, ptr %call7.i.i.i159.i, i32 5
  %48 = ptrtoint ptr %add.ptr449.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond, ptr %add.ptr449.i, align 4
  br label %if.end

kzalloc.exit29.i231.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i198.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i222.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i228.i = icmp eq ptr %call7.i.i.i198.i, null
  %tobool8.not.i229.i = icmp eq ptr %call7.i.i24.i222.i, null
  %or.cond.i230.i = select i1 %tobool.not.i228.i, i1 true, i1 %tobool8.not.i229.i
  br i1 %or.cond.i230.i, label %mbox_alloc.exit234.i, label %do.body465.i

mbox_alloc.exit234.i:                             ; preds = %kzalloc.exit29.i231.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i198.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i222.i) #6
  br label %cleanup

do.body465.i:                                     ; preds = %kzalloc.exit29.i231.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr487.i = getelementptr i32, ptr %call7.i.i.i198.i, i32 2
  %51 = ptrtoint ptr %add.ptr487.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr487.i, align 8
  %and488.i = and i32 %52, -16777216
  %and489.i = and i32 %1, 16777215
  %or491.i = or i32 %and488.i, %and489.i
  store i32 %or491.i, ptr %add.ptr487.i, align 8
  %conv498.i = zext i16 %3 to i32
  %or507.i = or i32 %conv498.i, 84279296
  %53 = ptrtoint ptr %call7.i.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or507.i, ptr %call7.i.i.i198.i, align 8
  %add.ptr520.i = getelementptr i32, ptr %call7.i.i.i198.i, i32 4
  %54 = ptrtoint ptr %add.ptr520.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %opt_param_mask, ptr %add.ptr520.i, align 8
  %add.ptr530.i = getelementptr i8, ptr %call7.i.i.i198.i, i32 24
  %55 = call ptr @memcpy(ptr %add.ptr530.i, ptr %qpc, i32 232)
  br label %if.end

kzalloc.exit29.i270.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i237.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i261.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i267.i = icmp eq ptr %call7.i.i.i237.i, null
  %tobool8.not.i268.i = icmp eq ptr %call7.i.i24.i261.i, null
  %or.cond.i269.i = select i1 %tobool.not.i267.i, i1 true, i1 %tobool8.not.i268.i
  br i1 %or.cond.i269.i, label %mbox_alloc.exit273.i, label %do.body540.i

mbox_alloc.exit273.i:                             ; preds = %kzalloc.exit29.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i237.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i261.i) #6
  br label %cleanup

do.body540.i:                                     ; preds = %kzalloc.exit29.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr562.i = getelementptr i32, ptr %call7.i.i.i237.i, i32 2
  %58 = ptrtoint ptr %add.ptr562.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr562.i, align 8
  %and563.i = and i32 %59, -16777216
  %and564.i = and i32 %1, 16777215
  %or566.i = or i32 %and563.i, %and564.i
  store i32 %or566.i, ptr %add.ptr562.i, align 8
  %conv573.i = zext i16 %3 to i32
  %or582.i = or i32 %conv573.i, 84672512
  %60 = ptrtoint ptr %call7.i.i.i237.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or582.i, ptr %call7.i.i.i237.i, align 8
  %add.ptr595.i = getelementptr i32, ptr %call7.i.i.i237.i, i32 4
  %61 = ptrtoint ptr %add.ptr595.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %opt_param_mask, ptr %add.ptr595.i, align 8
  %add.ptr605.i = getelementptr i8, ptr %call7.i.i.i237.i, i32 24
  %62 = call ptr @memcpy(ptr %add.ptr605.i, ptr %qpc, i32 232)
  br label %if.end

kzalloc.exit29.i309.i:                            ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i276.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 272) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24.i300.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i306.i = icmp eq ptr %call7.i.i.i276.i, null
  %tobool8.not.i307.i = icmp eq ptr %call7.i.i24.i300.i, null
  %or.cond.i308.i = select i1 %tobool.not.i306.i, i1 true, i1 %tobool8.not.i307.i
  br i1 %or.cond.i308.i, label %mbox_alloc.exit312.i, label %do.body615.i

mbox_alloc.exit312.i:                             ; preds = %kzalloc.exit29.i309.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call7.i.i.i276.i) #6
  tail call void @kfree(ptr noundef %call7.i.i24.i300.i) #6
  br label %cleanup

do.body615.i:                                     ; preds = %kzalloc.exit29.i309.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr637.i = getelementptr i32, ptr %call7.i.i.i276.i, i32 2
  %65 = ptrtoint ptr %add.ptr637.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr637.i, align 8
  %and638.i = and i32 %66, -16777216
  %and639.i = and i32 %1, 16777215
  %or641.i = or i32 %and638.i, %and639.i
  store i32 %or641.i, ptr %add.ptr637.i, align 8
  %conv648.i = zext i16 %3 to i32
  %or657.i = or i32 %conv648.i, 84803584
  %67 = ptrtoint ptr %call7.i.i.i276.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or657.i, ptr %call7.i.i.i276.i, align 8
  %add.ptr670.i = getelementptr i32, ptr %call7.i.i.i276.i, i32 4
  %68 = ptrtoint ptr %add.ptr670.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %opt_param_mask, ptr %add.ptr670.i, align 8
  %add.ptr680.i = getelementptr i8, ptr %call7.i.i.i276.i, i32 24
  %69 = call ptr @memcpy(ptr %add.ptr680.i, ptr %qpc, i32 232)
  %add.ptr689.i = getelementptr i32, ptr %call7.i.i.i276.i, i32 5
  %70 = ptrtoint ptr %add.ptr689.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond, ptr %add.ptr689.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body615.i, %do.body540.i, %do.body465.i, %do.body375.i, %do.body285.i, %do.body195.i, %do.body105.i, %do.body49.i, %do.body1.i
  %mbox.sroa.93.0 = phi i32 [ 272, %do.body615.i ], [ 272, %do.body540.i ], [ 272, %do.body465.i ], [ 272, %do.body375.i ], [ 272, %do.body285.i ], [ 272, %do.body195.i ], [ 272, %do.body105.i ], [ 16, %do.body49.i ], [ 16, %do.body1.i ]
  %mbox.sroa.70.0 = phi ptr [ %call7.i.i24.i300.i, %do.body615.i ], [ %call7.i.i24.i261.i, %do.body540.i ], [ %call7.i.i24.i222.i, %do.body465.i ], [ %call7.i.i24.i183.i, %do.body375.i ], [ %call7.i.i24.i144.i, %do.body285.i ], [ %call7.i.i24.i105.i, %do.body195.i ], [ %call7.i.i24.i66.i, %do.body105.i ], [ %call7.i.i24.i27.i, %do.body49.i ], [ %call7.i.i24.i.i, %do.body1.i ]
  %mbox.sroa.0.0 = phi ptr [ %call7.i.i.i276.i, %do.body615.i ], [ %call7.i.i.i237.i, %do.body540.i ], [ %call7.i.i.i198.i, %do.body465.i ], [ %call7.i.i.i159.i, %do.body375.i ], [ %call7.i.i.i120.i, %do.body285.i ], [ %call7.i.i.i81.i, %do.body195.i ], [ %call7.i.i.i42.i, %do.body105.i ], [ %call7.i.i.i3.i, %do.body49.i ], [ %call7.i.i.i.i, %do.body1.i ]
  %71 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mdev, align 8
  %call3 = tail call i32 @mlx5_cmd_exec(ptr noundef %72, ptr noundef nonnull %mbox.sroa.0.0, i32 noundef %mbox.sroa.93.0, ptr noundef nonnull %mbox.sroa.70.0, i32 noundef 16) #6
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %73 = zext i16 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %opcode, label %if.then5.get_ece_from_mbox.exit_crit_edge [
    i16 1294, label %if.then5.sw.epilog.sink.split.i_crit_edge
    i16 1283, label %if.then5.sw.epilog.sink.split.i_crit_edge101
    i16 1284, label %if.then5.sw.epilog.sink.split.i_crit_edge102
    i16 1285, label %if.then5.sw.epilog.sink.split.i_crit_edge103
    i16 1282, label %if.then5.sw.epilog.sink.split.i_crit_edge104
  ]

if.then5.sw.epilog.sink.split.i_crit_edge104:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then5.sw.epilog.sink.split.i_crit_edge103:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then5.sw.epilog.sink.split.i_crit_edge102:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then5.sw.epilog.sink.split.i_crit_edge101:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then5.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.then5.get_ece_from_mbox.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ece_from_mbox.exit

sw.epilog.sink.split.i:                           ; preds = %if.then5.sw.epilog.sink.split.i_crit_edge, %if.then5.sw.epilog.sink.split.i_crit_edge101, %if.then5.sw.epilog.sink.split.i_crit_edge102, %if.then5.sw.epilog.sink.split.i_crit_edge103, %if.then5.sw.epilog.sink.split.i_crit_edge104
  %add.ptr14.i = getelementptr i32, ptr %mbox.sroa.70.0, i32 3
  %74 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr14.i, align 4
  br label %get_ece_from_mbox.exit

get_ece_from_mbox.exit:                           ; preds = %sw.epilog.sink.split.i, %if.then5.get_ece_from_mbox.exit_crit_edge
  %ece.0.i = phi i32 [ 0, %if.then5.get_ece_from_mbox.exit_crit_edge ], [ %75, %sw.epilog.sink.split.i ]
  %76 = ptrtoint ptr %ece to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %ece.0.i, ptr %ece, align 4
  br label %if.end8

if.end8:                                          ; preds = %get_ece_from_mbox.exit, %if.end.if.end8_crit_edge
  tail call void @kfree(ptr noundef nonnull %mbox.sroa.0.0) #6
  tail call void @kfree(ptr noundef nonnull %mbox.sroa.70.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mbox_alloc.exit312.i, %mbox_alloc.exit273.i, %mbox_alloc.exit234.i, %mbox_alloc.exit195.i, %mbox_alloc.exit156.i, %mbox_alloc.exit117.i, %mbox_alloc.exit78.i, %mbox_alloc.exit39.i, %mbox_alloc.exit.i, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end8 ], [ -22, %cond.end.cleanup_crit_edge ], [ -12, %mbox_alloc.exit312.i ], [ -12, %mbox_alloc.exit273.i ], [ -12, %mbox_alloc.exit234.i ], [ -12, %mbox_alloc.exit195.i ], [ -12, %mbox_alloc.exit156.i ], [ -12, %mbox_alloc.exit117.i ], [ -12, %mbox_alloc.exit78.i ], [ -12, %mbox_alloc.exit39.i ], [ -12, %mbox_alloc.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_init_qp_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35
  %lock = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_init_qp_table.__key, i16 noundef signext 3) #6
  %tree = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tree, ptr noundef nonnull @.str.2, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %0 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %1 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_qp_debugfs_init(ptr noundef %3) #6
  %4 = ptrtoint ptr %qp_table to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rsc_event_notifier, ptr %qp_table, align 4
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call3 = tail call i32 @mlx5_notifier_register(ptr noundef %6, ptr noundef %qp_table) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_qp_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsc_event_notifier(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = and i32 %type, 255
  %trunc = trunc i32 %type to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 28, label %sw.bb
    i8 1, label %entry.sw.bb3_crit_edge
    i8 2, label %entry.sw.bb3_crit_edge45
    i8 3, label %entry.sw.bb3_crit_edge46
    i8 19, label %entry.sw.bb3_crit_edge47
    i8 5, label %entry.sw.bb3_crit_edge48
    i8 7, label %entry.sw.bb3_crit_edge49
    i8 16, label %entry.sw.bb3_crit_edge50
    i8 17, label %entry.sw.bb3_crit_edge51
  ]

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dctn = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 8
  %1 = ptrtoint ptr %dctn to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %dctn, align 1
  %and = and i32 %2, 16777215
  %or = or i32 %and, 100663296
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49, %entry.sw.bb3_crit_edge50, %entry.sw.bb3_crit_edge51
  %qp_srq_n = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 8
  %3 = ptrtoint ptr %qp_srq_n to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %qp_srq_n, align 1
  %and5 = and i32 %4, 16777215
  %type7 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 1, i32 4
  %5 = ptrtoint ptr %type7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type7, align 1
  %conv8 = zext i8 %6 to i32
  %shl = shl nuw i32 %conv8, 24
  %or9 = or i32 %shl, %and5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %rsn.0 = phi i32 [ %or9, %sw.bb3 ], [ %or, %sw.bb ]
  %call = tail call fastcc ptr @mlx5_get_rsc(ptr noundef %nb, i32 noundef %rsn.0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %shr = lshr i32 %rsn.0, 24
  %trunc44 = trunc i32 %shr to i8
  %7 = zext i8 %trunc44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %trunc44, label %is_event_type_allowed.exit.thread [
    i8 0, label %is_event_type_allowed.exit
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb7.i
    i8 6, label %sw.bb13.i
  ]

sw.bb1.i:                                         ; preds = %if.end
  %shl2.i = shl nuw i32 1, %conv1
  %8 = and i32 %shl2.i, 524320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.i.not = icmp eq i32 %8, 0
  br i1 %tobool6.i.not, label %sw.bb1.i.out_crit_edge, label %sw.bb1.i.if.end13_crit_edge

sw.bb1.i.if.end13_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

sw.bb1.i.out_crit_edge:                           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv1)
  %tobool12.i = icmp eq i32 %conv1, 5
  br i1 %tobool12.i, label %sw.bb7.i.if.end13_crit_edge, label %sw.bb7.i.out_crit_edge

sw.bb7.i.out_crit_edge:                           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb7.i.if.end13_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %conv1)
  %tobool18.i = icmp eq i32 %conv1, 28
  br i1 %tobool18.i, label %sw.bb13.i.if.end13_crit_edge, label %sw.bb13.i.out_crit_edge

sw.bb13.i.out_crit_edge:                          ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb13.i.if.end13_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

is_event_type_allowed.exit.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %out

is_event_type_allowed.exit:                       ; preds = %if.end
  %shl.i = shl nuw i32 1, %conv1
  %9 = and i32 %shl.i, 721070
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %is_event_type_allowed.exit.out_crit_edge, label %is_event_type_allowed.exit.if.end13_crit_edge

is_event_type_allowed.exit.if.end13_crit_edge:    ; preds = %is_event_type_allowed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

is_event_type_allowed.exit.out_crit_edge:         ; preds = %is_event_type_allowed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %is_event_type_allowed.exit.if.end13_crit_edge, %sw.bb13.i.if.end13_crit_edge, %sw.bb7.i.if.end13_crit_edge, %sw.bb1.i.if.end13_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %11, label %if.end13.out_crit_edge [
    i32 0, label %if.end13.sw.bb14_crit_edge
    i32 1, label %if.end13.sw.bb14_crit_edge52
    i32 2, label %if.end13.sw.bb14_crit_edge53
    i32 6, label %sw.bb16
  ]

if.end13.sw.bb14_crit_edge53:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end13.sw.bb14_crit_edge52:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end13.sw.bb14_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb14:                                          ; preds = %if.end13.sw.bb14_crit_edge, %if.end13.sw.bb14_crit_edge52, %if.end13.sw.bb14_crit_edge53
  %event = getelementptr inbounds %struct.mlx5_core_qp, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event, align 4
  tail call void %14(ptr noundef nonnull %call, i32 noundef %conv1) #6
  br label %out

sw.bb16:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 28
  br i1 %cmp, label %if.then19, label %sw.bb16.out_crit_edge

sw.bb16.out_crit_edge:                            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %drained = getelementptr inbounds %struct.mlx5_core_dct, ptr %call, i32 0, i32 1
  tail call void @complete(ptr noundef %drained) #6
  br label %out

out:                                              ; preds = %if.then19, %sw.bb16.out_crit_edge, %sw.bb14, %if.end13.out_crit_edge, %is_event_type_allowed.exit.out_crit_edge, %is_event_type_allowed.exit.thread, %sw.bb13.i.out_crit_edge, %sw.bb7.i.out_crit_edge, %sw.bb1.i.out_crit_edge
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %call, i32 0, i32 2
  tail call void @complete(ptr noundef %free.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ], [ 1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cleanup_qp_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_notifier_unregister(ptr noundef %1, ptr noundef %qp_table) #6
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_qp_debugfs_cleanup(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_qp_debugfs_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_qp_query(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %qp, ptr noundef %out, i32 noundef %outlen) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 84606976, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %3 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qpn, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %4, 16777215
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and15, ptr %add.ptr13, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef %outlen) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_dct_query(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dct, ptr noundef %out, i32 noundef %outlen) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 118685696, ptr %in, align 4
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %dct, i32 0, i32 2
  %3 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qpn, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %4, 16777215
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and15, ptr %add.ptr13, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef %outlen) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_xrcd_alloc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %xrcdn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 135135232, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %5, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr10 = getelementptr inbounds i32, ptr %out, i32 2
  %6 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr10, align 4
  %and11 = and i32 %7, 16777215
  %8 = ptrtoint ptr %xrcdn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and11, ptr %xrcdn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_xrcd_dealloc(ptr nocapture noundef readonly %dev, i32 noundef %xrcdn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 135200768, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %xrcdn, 16777215
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and15, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %6, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_rq_tracked(ptr noundef %dev, ptr noundef %in, i32 noundef %inlen, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %rqn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rqn) #6
  %0 = ptrtoint ptr %rqn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rqn, align 4, !annotation !26
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_core_create_rq(ptr noundef %2, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %rqn) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in, align 4
  %conv = trunc i32 %4 to i16
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %rq, i32 0, i32 5
  %5 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %uid, align 4
  %6 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rqn, align 4
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %rq, i32 0, i32 2
  %8 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %qpn, align 4
  %9 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rq, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %tree.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  %10 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qpn, align 4
  %or.i = or i32 %11, 16777216
  %call.i = call i32 @radix_tree_insert(ptr noundef %tree.i, i32 noundef %or.i, ptr noundef %rq) #6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %create_resource_common.exit.thread, label %err_destroy_rq

create_resource_common.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %rq, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  %12 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %refcount.i, align 4
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %rq, i32 0, i32 2
  %13 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %free.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %rq, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %14 = call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i, align 8
  %pid5.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %rq, i32 0, i32 4
  %20 = ptrtoint ptr %pid5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pid5.i, align 4
  br label %cleanup

err_destroy_rq:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn, align 4
  %23 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %uid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %25 = getelementptr inbounds i8, ptr %in.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 12)
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %22, 16777215
  %27 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %conv.i = zext i16 %24 to i32
  %or32.i = or i32 %conv.i, 151650304
  %28 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %29 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %30 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev, align 8
  %call.i18 = call i32 @mlx5_cmd_exec(ptr noundef %31, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_rq, %create_resource_common.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_destroy_rq ], [ %call, %entry.cleanup_crit_edge ], [ 0, %create_resource_common.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqn) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_rq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_rq_tracked(ptr noundef %dev, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @destroy_resource_common(ptr noundef %dev, ptr noundef %rq)
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qpn, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %rq, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %1, 16777215
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %conv.i = zext i16 %3 to i32
  %or32.i = or i32 %conv.i, 151650304
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %8 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %10, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_sq_tracked(ptr noundef %dev, ptr noundef %in, i32 noundef %inlen, ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 151257088
  store i32 %or, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr inbounds i32, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7, align 4
  %and8 = and i32 %6, 16777215
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %sq, i32 0, i32 2
  %7 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and8, ptr %qpn, align 4
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in, align 4
  %conv = trunc i32 %9 to i16
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %sq, i32 0, i32 5
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %uid, align 4
  %11 = ptrtoint ptr %sq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %sq, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %tree.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35, i32 2
  %12 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qpn, align 4
  %or.i = or i32 %13, 33554432
  %call.i = call i32 @radix_tree_insert(ptr noundef %tree.i, i32 noundef %or.i, ptr noundef %sq) #6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %create_resource_common.exit.thread, label %err_destroy_sq

create_resource_common.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %sq, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  %14 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount.i, align 4
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %sq, i32 0, i32 2
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %free.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %sq, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %16 = call i32 @llvm.read_register.i32(metadata !12) #6
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %pid5.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %sq, i32 0, i32 4
  %22 = ptrtoint ptr %pid5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pid5.i, align 4
  br label %cleanup

err_destroy_sq:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qpn, align 4
  %25 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %uid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %27 = getelementptr inbounds i8, ptr %in.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 12)
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %24, 16777215
  %29 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %conv.i = zext i16 %26 to i32
  %or32.i = or i32 %conv.i, 151388160
  %30 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %31 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 8
  %call.i31 = call i32 @mlx5_cmd_exec(ptr noundef %33, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_sq, %create_resource_common.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_destroy_sq ], [ %call, %entry.cleanup_crit_edge ], [ 0, %create_resource_common.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_core_destroy_sq_tracked(ptr noundef %dev, ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @destroy_resource_common(ptr noundef %dev, ptr noundef %sq)
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %sq, i32 0, i32 2
  %0 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qpn, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_qp, ptr %sq, i32 0, i32 5
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and15.i = and i32 %1, 16777215
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %conv.i = zext i16 %3 to i32
  %or32.i = or i32 %conv.i, 151388160
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or32.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %8 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %10, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_core_res_hold(ptr noundef %dev, i32 noundef %res_num, i32 noundef %res_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %res_type, 24
  %or = or i32 %shl, %res_num
  %qp_table = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 35
  %call = tail call fastcc ptr @mlx5_get_rsc(ptr noundef %qp_table, i32 noundef %or)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_get_rsc(ptr noundef %table, i32 noundef %rsn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_qp_table, ptr %table, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tree = getelementptr inbounds %struct.mlx5_qp_table, ptr %table, i32 0, i32 2
  %call5 = tail call ptr @radix_tree_lookup(ptr noundef %tree, i32 noundef %rsn) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %call5, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #6, !srcloc !27
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !28

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !24

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret ptr %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_core_res_put(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %res, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge, label %if.then10.i.i.i.i, !prof !24

if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_core_put_rsc.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #6
  br label %mlx5_core_put_rsc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %free.i = getelementptr inbounds %struct.mlx5_core_rsc_common, ptr %res, i32 0, i32 2
  tail call void @complete(ptr noundef %free.i) #6
  br label %mlx5_core_put_rsc.exit

mlx5_core_put_rsc.exit:                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_core_put_rsc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @mlx5_init_qp_table.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/qpc.c", i32 488, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_completion.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../include/linux/completion.h", i32 87, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xa_init_flags.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mlx5/qpc.c", i32 86, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148660834}
!23 = !{i64 2148575274, i64 2148575306, i64 2148575335, i64 2148575369, i64 2148575400, i64 2148575423}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2149858607}
!26 = !{!"auto-init"}
!27 = !{i64 2148572809, i64 2148572841, i64 2148572870, i64 2148572904, i64 2148572935, i64 2148572958}
!28 = !{!"branch_weights", i32 1, i32 2000}
