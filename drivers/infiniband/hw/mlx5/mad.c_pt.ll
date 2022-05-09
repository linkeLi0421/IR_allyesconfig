; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/mad.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/mad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
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
%struct.ib_mad = type { %struct.ib_mad_hdr, [232 x i8] }
%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
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
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }

@mlx5_query_mad_ifc_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%d:(pid %d): err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_query_mad_ifc_port\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/mad.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_query_mad_ifc_port._entry_ptr = internal global ptr @mlx5_query_mad_ifc_port._entry, section ".printk_index", align 4
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 4, i64 9, i64 10, i64 33, i64 129]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 29]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/mad.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 539, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 4605, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mlx5_query_mad_ifc_port._entry, ptr @mlx5_query_mad_ifc_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_query_mad_ifc_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_process_mad(ptr noundef %ibdev, i32 noundef %mad_flags, i32 noundef %port_num, ptr noundef readonly %in_wc, ptr nocapture noundef readnone %in_grh, ptr noundef %in, ptr noundef %out, ptr nocapture noundef readnone %out_mad_size, ptr nocapture noundef readnone %out_mad_pkey_index) local_unnamed_addr #0 align 64 {
entry:
  %mdev_port_num.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_class1 = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %mgmt_class1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgmt_class1, align 1
  %method3 = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 3
  %2 = ptrtoint ptr %method3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %method3, align 1
  %tobool.not = icmp eq ptr %in_wc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.true:                                        ; preds = %entry
  %slid4 = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 8
  %4 = ptrtoint ptr %slid4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slid4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not.i = icmp ult i32 %5, 65536
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %land.rhs.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.rhs.i:                                       ; preds = %cond.true
  %.b39.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.cond.end_crit_edge, label %if.then.i, !prof !21

land.rhs.i.cond.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 4605, i32 noundef 9, ptr noundef null) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then.i, %land.rhs.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %conv.i = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool9.not = icmp eq i16 %conv.i, 0
  %or.cond = select i1 %cmp, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.sw.bb_crit_edge
    i8 -127, label %if.end.sw.bb_crit_edge104
    i8 4, label %sw.bb30
    i8 9, label %if.end.sw.bb39_crit_edge
    i8 10, label %if.end.sw.bb39_crit_edge105
    i8 33, label %if.end.sw.bb39_crit_edge106
  ]

if.end.sw.bb39_crit_edge106:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.end.sw.bb39_crit_edge105:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.end.sw.bb39_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.end.sw.bb_crit_edge104:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge104
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %sw.bb.cleanup_crit_edge [
    i8 1, label %sw.bb.if.end23_crit_edge
    i8 2, label %sw.bb.if.end23_crit_edge107
    i8 7, label %sw.bb.if.end23_crit_edge108
  ]

sw.bb.if.end23_crit_edge108:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

sw.bb.if.end23_crit_edge107:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

sw.bb.if.end23_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.bb.if.end23_crit_edge, %sw.bb.if.end23_crit_edge107, %sw.bb.if.end23_crit_edge108
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %8 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %attr_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %9)
  %cmp26 = icmp eq i16 %9, 32
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %13, i32 12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp34 = icmp eq i8 %3, 1
  %or.cond93 = select i1 %tobool31.not, i1 %cmp34, i1 false
  br i1 %or.cond93, label %if.then36, label %sw.bb30.sw.bb39_crit_edge

sw.bb30.sw.bb39_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.then36:                                        ; preds = %sw.bb30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mdev_port_num.i) #7
  %17 = ptrtoint ptr %mdev_port_num.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %mdev_port_num.i, align 4, !annotation !22
  %call.i = call ptr @mlx5_ib_get_native_port_mdev(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %mdev_port_num.i) #7
  %tobool.not.i94 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i94, label %if.then.i95, label %if.then36.if.end.i_crit_edge

if.then36.if.end.i_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i95:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 8
  %20 = ptrtoint ptr %mdev_port_num.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %mdev_port_num.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i95, %if.then36.if.end.i_crit_edge
  %mdev.0.i = phi ptr [ %call.i, %if.then36.if.end.i_crit_edge ], [ %19, %if.then.i95 ]
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %21 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %attr_id.i, align 8
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %22, label %if.else.i [
    i16 1, label %if.then3.i
    i16 29, label %if.then10.i
  ]

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 40
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %add.ptr.i, align 1
  %cpi.sroa.4.0.add.ptr.sroa_idx.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 42
  %25 = ptrtoint ptr %cpi.sroa.4.0.add.ptr.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 512, ptr %cpi.sroa.4.0.add.ptr.sroa_idx.i, align 1
  %cpi.sroa.5.0.add.ptr.sroa_idx.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 44
  %26 = call ptr @memset(ptr %cpi.sroa.5.0.add.ptr.sroa_idx.i, i32 0, i32 68)
  br label %done.i

if.then10.i:                                      ; preds = %if.end.i
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 528, i32 noundef 3520, i32 noundef -1) #10
  %tobool15.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i, label %if.then10.i.done.i_crit_edge, label %if.end17.i

if.then10.i.done.i_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end17.i:                                       ; preds = %if.then10.i
  %27 = ptrtoint ptr %mdev_port_num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mdev_port_num.i, align 4
  %conv18.i = trunc i32 %28 to i8
  %call19.i = call i32 @mlx5_core_query_vport_counter(ptr noundef %mdev.0.i, i8 noundef zeroext 0, i32 noundef 0, i8 noundef zeroext %conv18.i, ptr noundef nonnull %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end17.i.if.end41.i_crit_edge

if.end17.i.if.end41.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i64, ptr %call.i.i.i, i32 9
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i.i, align 8
  %add.ptr1.i.i = getelementptr i64, ptr %call.i.i.i, i32 13
  %31 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr1.i.i, align 8
  %add.i.i = add i64 %32, %30
  %shr.i.i = lshr i64 %add.i.i, 2
  %port_xmit_data.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 48
  %33 = ptrtoint ptr %port_xmit_data.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %shr.i.i, ptr %port_xmit_data.i.i, align 1
  %add.ptr2.i.i = getelementptr i64, ptr %call.i.i.i, i32 7
  %34 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr2.i.i, align 8
  %add.ptr3.i.i = getelementptr i64, ptr %call.i.i.i, i32 11
  %36 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr3.i.i, align 8
  %add4.i.i = add i64 %37, %35
  %shr5.i.i = lshr i64 %add4.i.i, 2
  %port_rcv_data.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 56
  %38 = ptrtoint ptr %port_rcv_data.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %shr5.i.i, ptr %port_rcv_data.i.i, align 1
  %add.ptr6.i.i = getelementptr i64, ptr %call.i.i.i, i32 8
  %39 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr6.i.i, align 8
  %add.ptr7.i.i = getelementptr i64, ptr %call.i.i.i, i32 12
  %41 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr7.i.i, align 8
  %add8.i.i = add i64 %42, %40
  %port_xmit_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 64
  %43 = ptrtoint ptr %port_xmit_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %add8.i.i, ptr %port_xmit_packets.i.i, align 1
  %add.ptr9.i.i = getelementptr i64, ptr %call.i.i.i, i32 6
  %44 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr9.i.i, align 8
  %add.ptr10.i.i = getelementptr i64, ptr %call.i.i.i, i32 10
  %46 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr10.i.i, align 8
  %add11.i.i = add i64 %47, %45
  %port_rcv_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 72
  %48 = ptrtoint ptr %port_rcv_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %add11.i.i, ptr %port_rcv_packets.i.i, align 1
  %port_unicast_xmit_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 80
  %49 = ptrtoint ptr %port_unicast_xmit_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %40, ptr %port_unicast_xmit_packets.i.i, align 1
  %port_unicast_rcv_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 88
  %50 = ptrtoint ptr %port_unicast_rcv_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %45, ptr %port_unicast_rcv_packets.i.i, align 1
  %port_multicast_xmit_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 96
  %51 = ptrtoint ptr %port_multicast_xmit_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %42, ptr %port_multicast_xmit_packets.i.i, align 1
  %port_multicast_rcv_packets.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 104
  %52 = ptrtoint ptr %port_multicast_rcv_packets.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %47, ptr %port_multicast_rcv_packets.i.i, align 1
  br label %79

if.else.i:                                        ; preds = %if.end.i
  %call.i.i76.i = call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #10
  %tobool29.not.i = icmp eq ptr %call.i.i76.i, null
  br i1 %tobool29.not.i, label %if.else.i.done.i_crit_edge, label %if.end31.i

if.else.i.done.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end31.i:                                       ; preds = %if.else.i
  %53 = ptrtoint ptr %mdev_port_num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mdev_port_num.i, align 4
  %conv32.i = trunc i32 %54 to i8
  %call33.i = call i32 @mlx5_core_query_ib_ppcnt(ptr noundef %mdev.0.i, i8 noundef zeroext %conv32.i, ptr noundef nonnull %call.i.i76.i, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end31.i.if.end41.i_crit_edge

if.end31.i.if.end41.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i77.i = getelementptr i8, ptr %call.i.i76.i, i32 8
  %55 = ptrtoint ptr %add.ptr.i77.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i77.i, align 4
  %shr.i78.i = lshr i32 %56, 16
  %conv.i.i = trunc i32 %shr.i78.i to i16
  %symbol_error_counter.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 44
  %57 = ptrtoint ptr %symbol_error_counter.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %conv.i.i, ptr %symbol_error_counter.i.i, align 1
  %shr5.i79.i = lshr i32 %56, 8
  %conv7.i.i = trunc i32 %shr5.i79.i to i8
  %link_error_recovery_counter.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 46
  %58 = ptrtoint ptr %link_error_recovery_counter.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv7.i.i, ptr %link_error_recovery_counter.i.i, align 1
  %conv13.i.i = trunc i32 %56 to i8
  %link_downed_counter.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 47
  %59 = ptrtoint ptr %link_downed_counter.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv13.i.i, ptr %link_downed_counter.i.i, align 1
  %add.ptr16.i.i = getelementptr i8, ptr %call.i.i76.i, i32 12
  %60 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr16.i.i, align 4
  %shr17.i.i = lshr i32 %61, 16
  %conv19.i.i = trunc i32 %shr17.i.i to i16
  %port_rcv_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 48
  %62 = ptrtoint ptr %port_rcv_errors.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %conv19.i.i, ptr %port_rcv_errors.i.i, align 1
  %conv25.i.i = trunc i32 %61 to i16
  %port_rcv_remphys_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 50
  %63 = ptrtoint ptr %port_rcv_remphys_errors.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %conv25.i.i, ptr %port_rcv_remphys_errors.i.i, align 1
  %add.ptr28.i.i = getelementptr i8, ptr %call.i.i76.i, i32 16
  %64 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr28.i.i, align 4
  %shr29.i.i = lshr i32 %65, 16
  %conv31.i.i = trunc i32 %shr29.i.i to i16
  %port_rcv_switch_relay_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 52
  %66 = ptrtoint ptr %port_rcv_switch_relay_errors.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %conv31.i.i, ptr %port_rcv_switch_relay_errors.i.i, align 1
  %conv37.i.i = trunc i32 %65 to i16
  %port_xmit_discards.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 54
  %67 = ptrtoint ptr %port_xmit_discards.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %conv37.i.i, ptr %port_xmit_discards.i.i, align 1
  %add.ptr40.i.i = getelementptr i8, ptr %call.i.i76.i, i32 20
  %68 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr40.i.i, align 4
  %shr41.i.i = lshr i32 %69, 24
  %conv43.i.i = trunc i32 %shr41.i.i to i8
  %port_xmit_constraint_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 56
  %70 = ptrtoint ptr %port_xmit_constraint_errors.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv43.i.i, ptr %port_xmit_constraint_errors.i.i, align 1
  %add.ptr46.i.i = getelementptr i8, ptr %call.i.i76.i, i32 44
  %71 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr46.i.i, align 4
  %port_xmit_wait.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 80
  %73 = ptrtoint ptr %port_xmit_wait.i.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %port_xmit_wait.i.i, align 1
  %shr52.i.i = lshr i32 %69, 16
  %conv54.i.i = trunc i32 %shr52.i.i to i8
  %port_rcv_constraint_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 57
  %74 = ptrtoint ptr %port_rcv_constraint_errors.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv54.i.i, ptr %port_rcv_constraint_errors.i.i, align 1
  %conv60.i.i = trunc i32 %69 to i8
  %link_overrun_errors.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 59
  %75 = ptrtoint ptr %link_overrun_errors.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv60.i.i, ptr %link_overrun_errors.i.i, align 1
  %add.ptr63.i.i = getelementptr i8, ptr %call.i.i76.i, i32 24
  %76 = ptrtoint ptr %add.ptr63.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr63.i.i, align 4
  %conv66.i.i = trunc i32 %77 to i16
  %vl15_dropped.i.i = getelementptr %struct.ib_mad, ptr %out, i32 0, i32 1, i32 62
  %78 = ptrtoint ptr %vl15_dropped.i.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %conv66.i.i, ptr %vl15_dropped.i.i, align 1
  br label %79

if.end41.i:                                       ; preds = %if.end31.i.if.end41.i_crit_edge, %if.end17.i.if.end41.i_crit_edge
  %out_cnt.0.i = phi ptr [ %call.i.i.i, %if.end17.i.if.end41.i_crit_edge ], [ %call.i.i76.i, %if.end31.i.if.end41.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %out_cnt.0.i) #7
  br label %done.i

79:                                               ; preds = %if.then35.i, %if.then21.i
  %out_cnt.0.ph.i = phi ptr [ %call.i.i76.i, %if.then35.i ], [ %call.i.i.i, %if.then21.i ]
  call void @kvfree(ptr noundef nonnull %out_cnt.0.ph.i) #7
  br label %done.i

done.i:                                           ; preds = %79, %if.end41.i, %if.else.i.done.i_crit_edge, %if.then10.i.done.i_crit_edge, %if.then3.i
  %err.3.i = phi i32 [ 3, %if.then3.i ], [ 0, %if.then10.i.done.i_crit_edge ], [ 0, %if.else.i.done.i_crit_edge ], [ 3, %79 ], [ 0, %if.end41.i ]
  br i1 %tobool.not.i94, label %done.i.process_pma_cmd.exit_crit_edge, label %if.then45.i

done.i.process_pma_cmd.exit_crit_edge:            ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_pma_cmd.exit

if.then45.i:                                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_ib_put_native_port_mdev(ptr noundef %ibdev, i32 noundef %port_num) #7
  br label %process_pma_cmd.exit

process_pma_cmd.exit:                             ; preds = %if.then45.i, %done.i.process_pma_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mdev_port_num.i) #7
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb30.sw.bb39_crit_edge, %if.end.sw.bb39_crit_edge, %if.end.sw.bb39_crit_edge105, %if.end.sw.bb39_crit_edge106
  %.off = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb39.sw.epilog_crit_edge, label %sw.bb39.cleanup_crit_edge

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge
  %and50 = and i32 %mad_flags, 1
  %and51 = and i32 %mad_flags, 2
  %80 = ptrtoint ptr %mgmt_class1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %mgmt_class1, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %81, label %sw.epilog.mlx5_MAD_IFC.exit_crit_edge [
    i8 1, label %sw.epilog.can_do_mad_ifc.exit.i_crit_edge
    i8 -127, label %sw.epilog.can_do_mad_ifc.exit.i_crit_edge109
  ]

sw.epilog.can_do_mad_ifc.exit.i_crit_edge109:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_do_mad_ifc.exit.i

sw.epilog.can_do_mad_ifc.exit.i_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_do_mad_ifc.exit.i

sw.epilog.mlx5_MAD_IFC.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i:                            ; preds = %sw.epilog.can_do_mad_ifc.exit.i_crit_edge, %sw.epilog.can_do_mad_ifc.exit.i_crit_edge109
  %sub.i.i = add i32 %port_num, -1
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub.i.i
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i.not.i = icmp eq i8 %84, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.cleanup_crit_edge, label %can_do_mad_ifc.exit.i.mlx5_MAD_IFC.exit_crit_edge

can_do_mad_ifc.exit.i.mlx5_MAD_IFC.exit_crit_edge: ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.cleanup_crit_edge:          ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i.mlx5_MAD_IFC.exit_crit_edge, %sw.epilog.mlx5_MAD_IFC.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool.not.i96 = icmp ne i32 %and50, 0
  %or.cond.i = or i1 %tobool.not.i96, %tobool.not
  %op_modifier.0.i = zext i1 %or.cond.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool5.not.i = icmp ne i32 %and51, 0
  %or.cond1.i = or i1 %tobool5.not.i, %tobool.not
  %85 = or i8 %op_modifier.0.i, 2
  %op_modifier.1.i = select i1 %or.cond1.i, i8 %85, i8 %op_modifier.0.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %86 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mdev.i, align 8
  %conv13.i = zext i8 %op_modifier.1.i to i16
  %conv14.i = trunc i32 %port_num to i8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %87, ptr noundef %in, ptr noundef %out, i16 noundef zeroext %conv13.i, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool53.not = icmp eq i32 %call15.i, 0
  br i1 %tobool53.not, label %if.end55, label %mlx5_MAD_IFC.exit.cleanup_crit_edge

mlx5_MAD_IFC.exit.cleanup_crit_edge:              ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %1)
  %cmp57 = icmp eq i8 %1, -127
  br i1 %cmp57, label %if.then59, label %if.end55.if.end63_crit_edge

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 4
  %88 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %status, align 4
  %90 = or i16 %89, -32768
  store i16 %90, ptr %status, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end55.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp65 = icmp eq i8 %3, 7
  %. = select i1 %cmp65, i32 5, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %mlx5_MAD_IFC.exit.cleanup_crit_edge, %can_do_mad_ifc.exit.i.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %process_pma_cmd.exit, %if.end23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3.i, %process_pma_cmd.exit ], [ 5, %cond.end.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ], [ 1, %sw.bb39.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %mlx5_MAD_IFC.exit.cleanup_crit_edge ], [ %., %if.end63 ], [ 0, %can_do_mad_ifc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_ext_port_caps(ptr nocapture noundef %dev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -112, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %attr_mod, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 40, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.land.end_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.land.end_crit_edge:         ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev.i, align 8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool4.not = icmp eq i32 %call15.i, 0
  br i1 %tobool4.not, label %land.rhs, label %mlx5_MAD_IFC.exit.land.end_crit_edge

mlx5_MAD_IFC.exit.land.end_crit_edge:             ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not = icmp eq i16 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %mlx5_MAD_IFC.exit.land.end_crit_edge, %can_do_mad_ifc.exit.i.land.end_crit_edge
  %retval.0.i19 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.land.end_crit_edge ], [ 0, %land.rhs ], [ -1, %can_do_mad_ifc.exit.i.land.end_crit_edge ]
  %11 = phi i1 [ false, %mlx5_MAD_IFC.exit.land.end_crit_edge ], [ %tobool5.not, %land.rhs ], [ false, %can_do_mad_ifc.exit.i.land.end_crit_edge ]
  %conv = zext i1 %11 to i8
  %sub = add i32 %port, -1
  %ext_port_cap = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 40, i32 %sub, i32 1
  %12 = ptrtoint ptr %ext_port_cap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %ext_port_cap, align 1
  br label %out

out:                                              ; preds = %land.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i19, %land.end ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_system_image_guid(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef writeonly %sys_image_guid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %can_do_mad_ifc.exit.i.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i.i:                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17, ptr %attr_id.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread13, label %mlx5_query_mad_ifc_smp_attr_node_info.exit

mlx5_query_mad_ifc_smp_attr_node_info.exit.thread13: ; preds = %can_do_mad_ifc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %out

mlx5_query_mad_ifc_smp_attr_node_info.exit:       ; preds = %can_do_mad_ifc.exit.i.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i.i, align 8
  %call15.i.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %7, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool2.not = icmp eq i32 %call15.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge

mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge: ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %sys_image_guid, align 8
  br label %out

out:                                              ; preds = %if.end4, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread13, %if.end.out_crit_edge
  %retval.0.i12 = phi i32 [ %call15.i.i, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge ], [ 0, %if.end4 ], [ -1, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread13 ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i12, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_max_pkeys(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef writeonly %max_pkeys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %can_do_mad_ifc.exit.i.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i.i:                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17, ptr %attr_id.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14, label %mlx5_query_mad_ifc_smp_attr_node_info.exit

mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14: ; preds = %can_do_mad_ifc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %out

mlx5_query_mad_ifc_smp_attr_node_info.exit:       ; preds = %can_do_mad_ifc.exit.i.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i.i, align 8
  %call15.i.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %7, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool2.not = icmp eq i32 %call15.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge

mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge: ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 28
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_pkeys, align 2
  br label %out

out:                                              ; preds = %if.end4, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14, %if.end.out_crit_edge
  %retval.0.i13 = phi i32 [ %call15.i.i, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge ], [ 0, %if.end4 ], [ -1, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14 ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i13, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_vendor_id(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef writeonly %vendor_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 256) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %can_do_mad_ifc.exit.i.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i.i:                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17, ptr %attr_id.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i.i, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14, label %mlx5_query_mad_ifc_smp_attr_node_info.exit

mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14: ; preds = %can_do_mad_ifc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %out

mlx5_query_mad_ifc_smp_attr_node_info.exit:       ; preds = %can_do_mad_ifc.exit.i.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i.i, align 8
  %call15.i.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %7, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool2.not = icmp eq i32 %call15.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge

mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge: ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %mlx5_query_mad_ifc_smp_attr_node_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 36
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and = and i32 %9, 65535
  %10 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %vendor_id, align 4
  br label %out

out:                                              ; preds = %if.end4, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14, %if.end.out_crit_edge
  %retval.0.i13 = phi i32 [ %call15.i.i, %mlx5_query_mad_ifc_smp_attr_node_info.exit.out_crit_edge ], [ 0, %if.end4 ], [ -1, %mlx5_query_mad_ifc_smp_attr_node_info.exit.thread14 ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i13, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_node_desc(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %node_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %attr_id, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 40, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.out_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.out_crit_edge:              ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool4.not = icmp eq i32 %call15.i, 0
  br i1 %tobool4.not, label %if.end6, label %mlx5_MAD_IFC.exit.out_crit_edge

mlx5_MAD_IFC.exit.out_crit_edge:                  ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %8 = call ptr @memcpy(ptr %node_desc, ptr %data, i32 64)
  br label %out

out:                                              ; preds = %if.end6, %mlx5_MAD_IFC.exit.out_crit_edge, %can_do_mad_ifc.exit.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.out_crit_edge ], [ 0, %if.end6 ], [ -12, %entry.out_crit_edge ], [ -1, %can_do_mad_ifc.exit.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_node_guid(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %node_guid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 17, ptr %attr_id, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 40, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not.i = icmp eq i8 %5, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.out_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.out_crit_edge:              ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool4.not = icmp eq i32 %call15.i, 0
  br i1 %tobool4.not, label %if.end6, label %mlx5_MAD_IFC.exit.out_crit_edge

mlx5_MAD_IFC.exit.out_crit_edge:                  ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end6:                                          ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %node_guid to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %node_guid, align 8
  br label %out

out:                                              ; preds = %if.end6, %mlx5_MAD_IFC.exit.out_crit_edge, %can_do_mad_ifc.exit.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.out_crit_edge ], [ 0, %if.end6 ], [ -12, %entry.out_crit_edge ], [ -1, %can_do_mad_ifc.exit.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_pkey(ptr nocapture noundef readonly %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 22, ptr %attr_id, align 8
  %conv = zext i16 %index to i32
  %div19 = lshr i32 %conv, 5
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div19, ptr %attr_mod, align 4
  %sub.i.i = add i32 %port, -1
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.out_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.out_crit_edge:              ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev.i, align 8
  %conv14.i = trunc i32 %port to i8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool5.not = icmp eq i32 %call15.i, 0
  br i1 %tobool5.not, label %if.end7, label %mlx5_MAD_IFC.exit.out_crit_edge

mlx5_MAD_IFC.exit.out_crit_edge:                  ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %rem = and i32 %conv, 31
  %arrayidx = getelementptr i16, ptr %data, i32 %rem
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %pkey, align 2
  br label %out

out:                                              ; preds = %if.end7, %mlx5_MAD_IFC.exit.out_crit_edge, %can_do_mad_ifc.exit.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.out_crit_edge ], [ 0, %if.end7 ], [ -12, %entry.out_crit_edge ], [ -1, %can_do_mad_ifc.exit.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_gids(ptr nocapture noundef readonly %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 21, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %attr_mod, align 4
  %sub.i.i = add i32 %port, -1
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.out_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.out_crit_edge:              ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev.i, align 8
  %conv14.i = trunc i32 %port to i8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool5.not = icmp eq i32 %call15.i, 0
  br i1 %tobool5.not, label %can_do_mad_ifc.exit.i46, label %mlx5_MAD_IFC.exit.out_crit_edge

mlx5_MAD_IFC.exit.out_crit_edge:                  ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i46:                          ; preds = %mlx5_MAD_IFC.exit
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %gid, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16843009, ptr %call7.i.i, align 8
  %13 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 20, ptr %attr_id, align 8
  %div = sdiv i32 %index, 8
  %14 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %attr_mod, align 4
  %sub.i.i43 = add i32 %port, -1
  %arrayidx.i.i44 = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub.i.i43
  %15 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i44, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.not.i45 = icmp eq i8 %16, 0
  br i1 %tobool.i.not.i45, label %can_do_mad_ifc.exit.i46.out_crit_edge, label %mlx5_MAD_IFC.exit52

can_do_mad_ifc.exit.i46.out_crit_edge:            ; preds = %can_do_mad_ifc.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit52:                              ; preds = %can_do_mad_ifc.exit.i46
  %17 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev.i, align 8
  %call15.i49 = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %18, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i49)
  %tobool13.not = icmp eq i32 %call15.i49, 0
  br i1 %tobool13.not, label %if.end15, label %mlx5_MAD_IFC.exit52.out_crit_edge

mlx5_MAD_IFC.exit52.out_crit_edge:                ; preds = %mlx5_MAD_IFC.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %mlx5_MAD_IFC.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %add.ptr17 = getelementptr i8, ptr %gid, i32 8
  %19 = mul i32 %div, 8
  %rem.decomposed = sub i32 %index, %19
  %mul = shl nsw i32 %rem.decomposed, 3
  %add.ptr20 = getelementptr i8, ptr %data, i32 %mul
  %20 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr20, align 8
  %22 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %add.ptr17, align 1
  br label %out

out:                                              ; preds = %if.end15, %mlx5_MAD_IFC.exit52.out_crit_edge, %can_do_mad_ifc.exit.i46.out_crit_edge, %mlx5_MAD_IFC.exit.out_crit_edge, %can_do_mad_ifc.exit.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.out_crit_edge ], [ %call15.i49, %mlx5_MAD_IFC.exit52.out_crit_edge ], [ 0, %if.end15 ], [ -12, %entry.out_crit_edge ], [ -1, %can_do_mad_ifc.exit.i.out_crit_edge ], [ -1, %can_do_mad_ifc.exit.i46.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_mad_ifc_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef %props) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.out_crit_edge, label %can_do_mad_ifc.exit.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i:                            ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 21, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port, ptr %attr_mod, align 4
  %sub.i.i = add i32 %port, -1
  %arrayidx.i.i = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not.i = icmp eq i8 %8, 0
  br i1 %tobool.i.not.i, label %can_do_mad_ifc.exit.i.do.end_crit_edge, label %mlx5_MAD_IFC.exit

can_do_mad_ifc.exit.i.do.end_crit_edge:           ; preds = %can_do_mad_ifc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

mlx5_MAD_IFC.exit:                                ; preds = %can_do_mad_ifc.exit.i
  %9 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev1, align 8
  %conv14.i = trunc i32 %port to i8
  %call15.i = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %10, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool6.not = icmp eq i32 %call15.i, 0
  br i1 %tobool6.not, label %if.end9, label %mlx5_MAD_IFC.exit.do.end_crit_edge

mlx5_MAD_IFC.exit.do.end_crit_edge:               ; preds = %mlx5_MAD_IFC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mlx5_MAD_IFC.exit.do.end_crit_edge, %can_do_mad_ifc.exit.i.do.end_crit_edge
  %retval.0.i259 = phi i32 [ %call15.i, %mlx5_MAD_IFC.exit.do.end_crit_edge ], [ -1, %can_do_mad_ifc.exit.i.do.end_crit_edge ]
  %11 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13
  %12 = tail call i32 @llvm.read_register.i32(metadata !11) #7
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 539, i32 noundef %17, i32 noundef %retval.0.i259) #12
  br label %out

if.end9:                                          ; preds = %mlx5_MAD_IFC.exit
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 16
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr, align 8
  %conv = zext i16 %19 to i32
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %20 = ptrtoint ptr %lid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %lid, align 8
  %arrayidx = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 34
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  %23 = and i8 %22, 7
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %24 = ptrtoint ptr %lmc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %lmc, align 4
  %add.ptr16 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 18
  %25 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr16, align 2
  %conv18 = zext i16 %26 to i32
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %27 = ptrtoint ptr %sm_lid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv18, ptr %sm_lid, align 4
  %arrayidx20 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 36
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20, align 4
  %30 = and i8 %29, 15
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %31 = ptrtoint ptr %sm_sl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %sm_sl, align 2
  %arrayidx25 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 32
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx25, align 8
  %34 = and i8 %33, 15
  %and27 = zext i8 %34 to i32
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and27, ptr %state, align 8
  %arrayidx29 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 33
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx29, align 1
  %38 = lshr i8 %37, 4
  %phys_state = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %39 = ptrtoint ptr %phys_state to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %phys_state, align 4
  %add.ptr34 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 20
  %40 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr34, align 4
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %42 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %port_cap_flags, align 8
  %arrayidx37 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 50
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx37, align 2
  %conv38 = zext i8 %44 to i32
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %45 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv38, ptr %gid_tbl_len, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %caps, align 8
  %add.ptr41 = getelementptr i32, ptr %47, i32 14
  %48 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr41, align 4
  %shr42 = lshr i32 %49, 24
  %and43 = and i32 %shr42, 31
  %shl = shl nuw i32 1, %and43
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %50 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl, ptr %max_msg_sz, align 4
  %pkey_table_len = getelementptr inbounds %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 41
  %51 = ptrtoint ptr %pkey_table_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pkey_table_len, align 8
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %53 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %pkey_tbl_len, align 8
  %add.ptr46 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 46
  %54 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr46, align 2
  %conv48 = zext i16 %55 to i32
  %bad_pkey_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 9
  %56 = ptrtoint ptr %bad_pkey_cntr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv48, ptr %bad_pkey_cntr, align 8
  %add.ptr51 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 48
  %57 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr51, align 8
  %conv53 = zext i16 %58 to i32
  %qkey_viol_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %59 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv53, ptr %qkey_viol_cntr, align 4
  %arrayidx55 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 31
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx55, align 1
  %62 = and i8 %61, 15
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %63 = ptrtoint ptr %active_width to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %active_width, align 1
  %arrayidx60 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 35
  %64 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx60, align 1
  %66 = lshr i8 %65, 4
  %conv63 = zext i8 %66 to i16
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %67 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv63, ptr %active_speed, align 2
  %arrayidx65 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 41
  %68 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx65, align 1
  %70 = and i8 %69, 15
  %and67 = zext i8 %70 to i32
  %max_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %71 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and67, ptr %max_mtu, align 4
  %72 = lshr i8 %29, 4
  %73 = zext i8 %72 to i32
  %active_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %74 = ptrtoint ptr %active_mtu to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %active_mtu, align 8
  %arrayidx73 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 51
  %75 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx73, align 1
  %77 = and i8 %76, 31
  %subnet_timeout = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 17
  %78 = ptrtoint ptr %subnet_timeout to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %subnet_timeout, align 1
  %arrayidx78 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 37
  %79 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx78, align 1
  %81 = lshr i8 %80, 4
  %max_vl_num = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %82 = ptrtoint ptr %max_vl_num to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %max_vl_num, align 1
  %83 = lshr i8 %69, 4
  %init_type_reply = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 18
  %84 = ptrtoint ptr %init_type_reply to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %init_type_reply, align 8
  %and88 = and i32 %41, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end9.if.end107_crit_edge, label %if.then90

if.end9.if.end107_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then90:                                        ; preds = %if.end9
  %add.ptr93 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 60
  %85 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr93, align 4
  %port_cap_flags2 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 22
  %87 = ptrtoint ptr %port_cap_flags2 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %port_cap_flags2, align 2
  %88 = and i16 %86, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool98.not = icmp eq i16 %88, 0
  br i1 %tobool98.not, label %if.then90.if.end107_crit_edge, label %if.then99

if.then90.if.end107_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then99:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %89 = and i8 %61, 31
  %90 = ptrtoint ptr %active_width to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %active_width, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then99, %if.then90.if.end107_crit_edge, %if.end9.if.end107_crit_edge
  %and109 = and i32 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end142_crit_edge, label %if.then111

if.end107.if.end142_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then111:                                       ; preds = %if.end107
  %arrayidx113 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 62
  %91 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx113, align 2
  %93 = lshr i8 %92, 4
  %94 = zext i8 %93 to i32
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %94, label %if.then111.if.end142_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb117
    i32 4, label %sw.bb119
    i32 8, label %sw.bb130
  ]

if.then111.if.end142_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

sw.bb:                                            ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 16, ptr %active_speed, align 2
  br label %out

sw.bb117:                                         ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 32, ptr %active_speed, align 2
  br label %out

sw.bb119:                                         ; preds = %if.then111
  br i1 %tobool89.not, label %sw.bb119.if.end142_crit_edge, label %land.lhs.true

sw.bb119.if.end142_crit_edge:                     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

land.lhs.true:                                    ; preds = %sw.bb119
  %port_cap_flags2123 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 22
  %98 = ptrtoint ptr %port_cap_flags2123 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %port_cap_flags2123, align 2
  %100 = and i16 %99, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool126.not = icmp eq i16 %100, 0
  br i1 %tobool126.not, label %land.lhs.true.if.end142_crit_edge, label %if.then127

land.lhs.true.if.end142_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then127:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 64, ptr %active_speed, align 2
  br label %out

sw.bb130:                                         ; preds = %if.then111
  br i1 %tobool89.not, label %sw.bb130.if.end142_crit_edge, label %land.lhs.true134

sw.bb130.if.end142_crit_edge:                     ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

land.lhs.true134:                                 ; preds = %sw.bb130
  %port_cap_flags2135 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 22
  %102 = ptrtoint ptr %port_cap_flags2135 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %port_cap_flags2135, align 2
  %104 = and i16 %103, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool138.not = icmp eq i16 %104, 0
  br i1 %tobool138.not, label %land.lhs.true134.if.end142_crit_edge, label %if.then139

land.lhs.true134.if.end142_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then139:                                       ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 128, ptr %active_speed, align 2
  br label %out

if.end142:                                        ; preds = %land.lhs.true134.if.end142_crit_edge, %sw.bb130.if.end142_crit_edge, %land.lhs.true.if.end142_crit_edge, %sw.bb119.if.end142_crit_edge, %if.then111.if.end142_crit_edge, %if.end107.if.end142_crit_edge
  %106 = ptrtoint ptr %active_speed to i32
  call void @__asan_load2_noabort(i32 %106)
  %.pr = load i16, ptr %active_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.pr)
  %cmp = icmp eq i16 %.pr, 4
  br i1 %cmp, label %if.then146, label %if.end142.out_crit_edge

if.end142.out_crit_edge:                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then146:                                       ; preds = %if.end142
  %sub = add i32 %port, -1
  %ext_port_cap = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub, i32 1
  %107 = ptrtoint ptr %ext_port_cap to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ext_port_cap, align 1
  %109 = and i8 %108, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool150.not = icmp eq i8 %109, 0
  br i1 %tobool150.not, label %if.then146.out_crit_edge, label %can_do_mad_ifc.exit.i250

if.then146.out_crit_edge:                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

can_do_mad_ifc.exit.i250:                         ; preds = %if.then146
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 16843009, ptr %call7.i.i, align 8
  %111 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -112, ptr %attr_id, align 8
  %112 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %port, ptr %attr_mod, align 4
  %arrayidx.i.i248 = getelementptr %struct.mlx5_ib_dev, ptr %ibdev, i32 0, i32 40, i32 %sub
  %113 = ptrtoint ptr %arrayidx.i.i248 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i248, align 2, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.i.not.i249 = icmp eq i8 %114, 0
  br i1 %tobool.i.not.i249, label %can_do_mad_ifc.exit.i250.out_crit_edge, label %mlx5_MAD_IFC.exit256

can_do_mad_ifc.exit.i250.out_crit_edge:           ; preds = %can_do_mad_ifc.exit.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

mlx5_MAD_IFC.exit256:                             ; preds = %can_do_mad_ifc.exit.i250
  %115 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdev1, align 8
  %call15.i253 = tail call i32 @mlx5_cmd_mad_ifc(ptr noundef %116, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i8 noundef zeroext %conv14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i253)
  %tobool155.not = icmp eq i32 %call15.i253, 0
  br i1 %tobool155.not, label %if.end157, label %mlx5_MAD_IFC.exit256.out_crit_edge

mlx5_MAD_IFC.exit256.out_crit_edge:               ; preds = %mlx5_MAD_IFC.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end157:                                        ; preds = %mlx5_MAD_IFC.exit256
  %arrayidx159 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 15
  %117 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx159, align 1
  %119 = and i8 %118, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool162.not = icmp eq i8 %119, 0
  br i1 %tobool162.not, label %if.end157.out_crit_edge, label %if.then163

if.end157.out_crit_edge:                          ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 8, ptr %active_speed, align 2
  br label %out

out:                                              ; preds = %if.then163, %if.end157.out_crit_edge, %mlx5_MAD_IFC.exit256.out_crit_edge, %can_do_mad_ifc.exit.i250.out_crit_edge, %if.then146.out_crit_edge, %if.end142.out_crit_edge, %if.then139, %if.then127, %sw.bb117, %sw.bb, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i259, %do.end ], [ %call15.i253, %mlx5_MAD_IFC.exit256.out_crit_edge ], [ 0, %if.then163 ], [ 0, %if.end157.out_crit_edge ], [ 0, %if.then146.out_crit_edge ], [ 0, %if.end142.out_crit_edge ], [ -12, %entry.out_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb117 ], [ 0, %if.then127 ], [ 0, %if.then139 ], [ -1, %can_do_mad_ifc.exit.i250.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  tail call void @kfree(ptr noundef %call7.i) #7
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_ib_get_native_port_mdev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_vport_counter(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_ib_ppcnt(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_put_native_port_mdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_mad_ifc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/mad.c", i32 539, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_query_mad_ifc_port._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_query_mad_ifc_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
