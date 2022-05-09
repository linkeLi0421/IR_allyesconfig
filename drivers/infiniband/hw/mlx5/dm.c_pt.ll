; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/dm.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.185 = type { i16 }
%union.anon.187 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon.184, %union.anon.187 }
%union.anon.184 = type { %struct.anon.186 }
%struct.anon.186 = type { i16, i8, i8, i8 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.188, %union.anon.192 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16, i16 }
%union.anon.192 = type { %struct.anon.193, [4 x i8] }
%struct.anon.193 = type { ptr }
%struct.anon.190 = type { i16, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_dm = type { ptr, %struct.spinlock, [8 x i32] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.183, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.183 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.ib_odp_caps = type { i64, %struct.anon.174 }
%struct.anon.174 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.ib_dm_alloc_attr = type { i64, i32, i32 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.mlx5_ib_delay_drop = type { ptr, %struct.work_struct, %struct.mutex, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.mlx5_ib_lb_state = type { %struct.mutex, i32, i32, i8 }
%struct.mlx5_srq_table = type { %struct.notifier_block, %struct.xarray }
%struct.mlx5_qp_table = type { %struct.notifier_block, %struct.spinlock, %struct.xarray }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.mlx5_devx_event_table = type { %struct.mlx5_nb, %struct.mutex, %struct.xarray }
%struct.mlx5_var_table = type { %struct.mutex, ptr, i64, i32, i64 }
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_ib_dm = type { %struct.ib_dm, i32, i32, i32 }
%struct.ib_dm = type { ptr, i32, i32, ptr, %struct.atomic_t }
%struct.mlx5_ib_dm_memic = type { %struct.mlx5_ib_dm, %struct.mlx5_user_mmap_entry, %struct.xarray, %struct.mutex, %struct.kref, i32 }
%struct.mlx5_user_mmap_entry = type { %struct.rdma_user_mmap_entry, i8, i64, i32 }
%struct.rdma_user_mmap_entry = type { %struct.kref, ptr, i32, i32, i8 }
%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }
%struct.mlx5_ib_dm_icm = type { %struct.mlx5_ib_dm, i32 }
%struct.mlx5_ib_dm_op_entry = type { %struct.mlx5_user_mmap_entry, i32, ptr, i8 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.159 }
%union.anon.159 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.160, i16, i16, i8 }
%union.anon.160 = type { i64 }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }

@mlx5_ib_alloc_dm.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_ib_alloc_dm\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx5/dm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): alloc_dm req: dm_type=%d user_length=0x%llx log_alignment=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_ib_dm = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 14, ptr null, i32 1, ptr @_object_methods_UVERBS_OBJECT_DM558 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_object_UVERBS_OBJECT_DM = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 14, ptr null, i32 2, ptr @_object_methods_UVERBS_OBJECT_DM578 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_dm_defs = dso_local constant { <{ { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 }, { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 }, %struct.uapi_definition }>, [60 x i8] } { <{ { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 }, { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 } { i8 3, i8 0, { %struct.anon.185, [4 x i8] } { %struct.anon.185 { i16 14 }, [4 x i8] undef }, %union.anon.187 { ptr @mlx5_ib_dm } }, { i8, i8, { %struct.anon.185, [4 x i8] }, %union.anon.187 } { i8 3, i8 0, { %struct.anon.185, [4 x i8] } { %struct.anon.185 { i16 14 }, [4 x i8] undef }, %union.anon.187 { ptr @mlx5_ib_object_UVERBS_OBJECT_DM } }, %struct.uapi_definition zeroinitializer }>, [60 x i8] zeroinitializer }, align 32
@mlx5_ib_dev_dm_ops = dso_local constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_alloc_dm, ptr @mlx5_ib_dealloc_dm, ptr @mlx5_ib_reg_dm_mr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@handle_alloc_dm_memic.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dm->ops_xa_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_DM558 = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @mlx5_ib_method_UVERBS_METHOD_DM_ALLOC], [28 x i8] zeroinitializer }, align 32
@mlx5_ib_method_UVERBS_METHOD_DM_ALLOC = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 0, i32 0, i32 3, ptr @_method_attrs_UVERBS_METHOD_DM_ALLOC, ptr null }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_UVERBS_METHOD_DM_ALLOC = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral, ptr @.compoundliteral.6, ptr @.compoundliteral.7], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4096, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.188 { %struct.anon.189 { i16 8, i16 8 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.188 { %struct.anon.189 { i16 2, i16 2 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.188 { %struct.anon.189 { i16 8, i16 8 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_DM578 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR, ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 4, ptr @_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DM_MAP_OP_ADDR }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 4, ptr @_method_attrs_MLX5_IB_METHOD_DM_QUERY, ptr @mlx5_ib_handler_MLX5_IB_METHOD_DM_QUERY }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { { i16, { i8, i8, { %struct.anon.190 }, %union.anon.192 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.190 }, %union.anon.192 } } { i16 4096, { i8, i8, { %struct.anon.190 }, %union.anon.192 } { i8 3, i8 32, { %struct.anon.190 } { %struct.anon.190 { i16 14, i8 0 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.188 { %struct.anon.189 { i16 1, i16 1 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.188 { %struct.anon.189 { i16 8, i16 8 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 2, i8 0, %union.anon.188 { %struct.anon.189 { i16 2, i16 2 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DM_QUERY = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { { i16, { i8, i8, { %struct.anon.190 }, %union.anon.192 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.190 }, %union.anon.192 } } { i16 4096, { i8, i8, { %struct.anon.190 }, %union.anon.192 } { i8 3, i8 32, { %struct.anon.190 } { %struct.anon.190 { i16 14, i8 0 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.188 { %struct.anon.189 { i16 8, i16 8 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.188 { %struct.anon.189 { i16 2, i16 2 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 2, i8 32, %union.anon.188 { %struct.anon.189 { i16 8, i16 8 } }, %union.anon.192 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 416, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"mlx5_ib_dm\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"mlx5_ib_object_UVERBS_OBJECT_DM\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mlx5_ib_dm_defs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 580, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"mlx5_ib_dev_dm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 586, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 298, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 378, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_DM558\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [38 x i8] c"mlx5_ib_method_UVERBS_METHOD_DM_ALLOC\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [37 x i8] c"_method_attrs_UVERBS_METHOD_DM_ALLOC\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 551, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [36 x i8] c"_object_methods_UVERBS_OBJECT_DM578\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 576, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [45 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [39 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [44 x i8] c"_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 560, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [38 x i8] c"_method_attrs_MLX5_IB_METHOD_DM_QUERY\00", align 1
@___asan_gen_.86 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/dm.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 540, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx5_ib_dm, ptr @mlx5_ib_object_UVERBS_OBJECT_DM, ptr @mlx5_ib_dm_defs, ptr @mlx5_ib_dev_dm_ops, ptr @handle_alloc_dm_memic.__key, ptr @.str.4, ptr @xa_init_flags.__key, ptr @.str.5, ptr @_object_methods_UVERBS_OBJECT_DM558, ptr @mlx5_ib_method_UVERBS_METHOD_DM_ALLOC, ptr @_method_attrs_UVERBS_METHOD_DM_ALLOC, ptr @.compoundliteral, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @_object_methods_UVERBS_OBJECT_DM578, ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR, ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY, ptr @_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @_method_attrs_MLX5_IB_METHOD_DM_QUERY, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_UVERBS_OBJECT_DM to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dm_defs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dev_dm_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_alloc_dm_memic.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_DM558 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_UVERBS_METHOD_DM_ALLOC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_UVERBS_METHOD_DM_ALLOC to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_DM578 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DM_QUERY to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_dealloc_memic(ptr noundef %dm, i32 noundef %addr, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i64, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #8
  %6 = getelementptr inbounds i8, ptr %in, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 28)
  %bar_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %bar_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bar_addr, align 8
  %sub2 = sub i32 %addr, %9
  %conv3 = zext i32 %sub2 to i64
  %10 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 33947648, ptr %in, align 4
  %add.ptr23 = getelementptr inbounds i64, ptr %in, i32 2
  %11 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv3, ptr %add.ptr23, align 8
  %conv30 = trunc i64 %length to i32
  %add.ptr35 = getelementptr inbounds i32, ptr %in, i32 6
  %12 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv30, ptr %add.ptr35, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %13 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub4 = sub i64 %conv3, %5
  %shr = lshr i64 %sub4, 12
  %sub = add i64 %length, 4095
  %div63 = lshr i64 %sub, 12
  %conv = trunc i64 %div63 to i32
  %lock = getelementptr inbounds %struct.mlx5_dm, ptr %dm, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %memic_alloc_pages = getelementptr inbounds %struct.mlx5_dm, ptr %dm, i32 0, i32 2
  %conv48 = trunc i64 %shr to i32
  call void @__bitmap_clear(ptr noundef %memic_alloc_pages, i32 noundef %conv48, i32 noundef %conv) #8
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_dealloc_memic_op(ptr nocapture noundef readonly %dm, i32 noundef %addr, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dm, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 34013184, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 1
  %5 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %add.ptr14, align 4
  %conv = zext i8 %operation to i32
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 3
  %6 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %add.ptr29, align 4
  %bar_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %bar_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bar_addr, align 8
  %sub = sub i32 %addr, %8
  %conv46 = zext i32 %sub to i64
  %add.ptr48 = getelementptr inbounds i64, ptr %in, i32 2
  %9 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv46, ptr %add.ptr48, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_out) #8
  %10 = call ptr @memset(ptr %_out, i32 0, i32 64)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_alloc_dm(ptr noundef %ibdev, ptr noundef %context, ptr nocapture noundef readonly %attr, ptr noundef %attrs) #0 align 64 {
entry:
  %out.i.i = alloca [4 x i32], align 4
  %in.i.i = alloca [8 x i32], align 4
  %start_offset.i = alloca i64, align 8
  %page_idx.i = alloca i16, align 2
  %_val = alloca i64, align 8
  %_def_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #8
  %0 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_val, align 8, !annotation !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_def_val) #8
  %1 = ptrtoint ptr %_def_val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %_def_val, align 8
  %call = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 4098, i64 noundef 4294967295, ptr noundef nonnull %_def_val) #8
  %2 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %_val, align 8
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_def_val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = inttoptr i32 %call to ptr
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_alloc_dm.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_alloc_dm, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !48

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13
  %6 = call i32 @llvm.read_register.i32(metadata !37) #8
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
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %attr, align 8
  %alignment = getelementptr inbounds %struct.ib_dm_alloc_attr, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alignment, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_alloc_dm.__UNIQUE_ID_ddebug528, ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef %11, i32 noundef %conv, i64 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %16 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %do.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %17 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context, align 4
  %dm.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_offset.i) #8
  %19 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %start_offset.i, align 8, !annotation !47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %page_idx.i) #8
  %20 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dm.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %21, i32 0, i32 8, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i = icmp sgt i32 %25, -1
  br i1 %tobool.not.i, label %sw.bb.handle_alloc_dm_memic.exit_crit_edge, label %if.end.i

sw.bb.handle_alloc_dm_memic.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_alloc_dm_memic.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 224) #11
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.handle_alloc_dm_memic.exit_crit_edge, label %if.end7.i

if.end.i.handle_alloc_dm_memic.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_alloc_dm_memic.exit

if.end7.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type.i, align 4
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %attr, align 8
  %30 = trunc i64 %29 to i32
  %31 = add i32 %30, 63
  %conv10.i = and i32 %31, -64
  %size.i = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv10.i, ptr %size.i, align 4
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i.i, align 8
  %ref.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  %36 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %ref.i, align 8
  %ops.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %ops.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %ops_xa_lock.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %ops_xa_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @handle_alloc_dm_memic.__key) #8
  %39 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %attr, align 8
  %conv16.i = trunc i64 %40 to i32
  %req_length.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %req_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv16.i, ptr %req_length.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i, align 4
  %conv20.i = zext i32 %43 to i64
  %alignment.i = getelementptr inbounds %struct.ib_dm_alloc_attr, ptr %attr, i32 0, i32 1
  %44 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alignment.i, align 8
  %46 = ptrtoint ptr %dm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dm.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %47, i32 0, i32 8, i32 0, i32 15
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i, align 4
  %shr2.i.i = lshr i32 %51, 12
  %conv.i.i = zext i32 %shr2.i.i to i64
  %add.ptr8.i.i = getelementptr i64, ptr %49, i32 1
  %52 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr8.i.i, align 8
  %add.ptr14.i.i = getelementptr i32, ptr %49, i32 1
  %54 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr14.i.i, align 4
  %sub.i.i = add nuw nsw i64 %conv20.i, 4095
  %div175.i.i = lshr i64 %sub.i.i, 12
  %conv17.i.i = trunc i64 %div175.i.i to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i.i) #8
  %56 = call ptr @memset(ptr %out.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i.i) #8
  %57 = call ptr @memset(ptr %in.i.i, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp ne i32 %43, 0
  %and18.i.i = and i64 %conv20.i, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i)
  %tobool19.not.i.i = icmp eq i64 %and18.i.i, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool19.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.end7.i.if.then23.i_crit_edge

if.end7.i.if.then23.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

if.end.i.i:                                       ; preds = %if.end7.i
  %and16.i.i = and i32 %55, 255
  %58 = call i32 @llvm.usub.sat.i32(i32 %45, i32 6) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %and16.i.i)
  %cmp22.i.i = icmp ugt i32 %58, %and16.i.i
  br i1 %cmp22.i.i, label %if.end.i.i.if.then23.i_crit_edge, label %do.body.i.i

if.end.i.i.if.then23.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %59 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in.i.i, align 4
  %and29.i.i = and i32 %60, 65535
  %or.i.i = or i32 %and29.i.i, 33882112
  store i32 %or.i.i, ptr %in.i.i, align 4
  %mul.i.i = shl i32 %conv17.i.i, 12
  %add.ptr41.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 6
  %61 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.i.i, ptr %add.ptr41.i.i, align 4
  %add.ptr57.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 7
  %62 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %43, ptr %add.ptr57.i.i, align 4
  %add.ptr72.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 3
  %63 = ptrtoint ptr %add.ptr72.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr72.i.i, align 4
  %and73.i.i = and i32 %64, -256
  %and74.i.i = and i32 %58, 255
  %or76.i.i = or i32 %and73.i.i, %and74.i.i
  store i32 %or76.i.i, ptr %add.ptr72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %51)
  %cmp81196.not.i.i = icmp ult i32 %51, 4096
  br i1 %cmp81196.not.i.i, label %do.body.i.i.if.then23.i_crit_edge, label %while.body.lr.ph.i.i

do.body.i.i.if.then23.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

while.body.lr.ph.i.i:                             ; preds = %do.body.i.i
  %lock.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 32, i32 1
  %memic_alloc_pages.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 32, i32 2
  %add.ptr110.i.i = getelementptr inbounds i64, ptr %in.i.i, i32 2
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %if.then119.i.i
  %inc.i.i = add nuw nsw i64 %conv86.i.i, 1
  %cmp81.i.i = icmp ult i64 %inc.i.i, %conv.i.i
  %extract.t.i.i = trunc i64 %inc.i.i to i32
  br i1 %cmp81.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %while.cond.i.i.if.then23.i_crit_edge

while.cond.i.i.if.then23.i_crit_edge:             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %page_idx.0197.off0.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %extract.t.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  %call.i.i.i = call i32 @bitmap_find_next_zero_area_off(ptr noundef %memic_alloc_pages.i.i, i32 noundef %shr2.i.i, i32 noundef %page_idx.0197.off0.i.i, i32 noundef %conv17.i.i, i32 noundef 0, i32 noundef 0) #8
  %conv86.i.i = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %shr2.i.i)
  %cmp87.i.i = icmp ult i32 %call.i.i.i, %shr2.i.i
  br i1 %cmp87.i.i, label %if.else11.i.i.i, label %if.end93.i.i

if.else11.i.i.i:                                  ; preds = %while.body.i.i
  call void @__bitmap_set(ptr noundef %memic_alloc_pages.i.i, i32 noundef %call.i.i.i, i32 noundef %conv17.i.i) #8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  %mul107.i.i = shl nuw nsw i64 %conv86.i.i, 12
  %add108.i.i = add i64 %mul107.i.i, %53
  %65 = ptrtoint ptr %add.ptr110.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add108.i.i, ptr %add.ptr110.i.i, align 8
  %call117.i.i = call i32 @mlx5_cmd_exec(ptr noundef %47, ptr noundef nonnull %in.i.i, i32 noundef 32, ptr noundef nonnull %out.i.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i.i)
  %tobool118.not.i.i = icmp eq i32 %call117.i.i, 0
  br i1 %tobool118.not.i.i, label %if.end25.i, label %if.then119.i.i

if.end93.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  br label %if.then23.i

if.then119.i.i:                                   ; preds = %if.else11.i.i.i
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #8
  call void @__bitmap_clear(ptr noundef %memic_alloc_pages.i.i, i32 noundef %call.i.i.i, i32 noundef %conv17.i.i) #8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call117.i.i)
  %cmp125.i.i = icmp eq i32 %call117.i.i, -11
  br i1 %cmp125.i.i, label %while.cond.i.i, label %if.then119.i.i.if.then23.i_crit_edge

if.then119.i.i.if.then23.i_crit_edge:             ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.then119.i.i.if.then23.i_crit_edge, %if.end93.i.i, %while.cond.i.i.if.then23.i_crit_edge, %do.body.i.i.if.then23.i_crit_edge, %if.end.i.i.if.then23.i_crit_edge, %if.end7.i.if.then23.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %do.body.i.i.if.then23.i_crit_edge ], [ -12, %if.end93.i.i ], [ -22, %if.end.i.i.if.then23.i_crit_edge ], [ -22, %if.end7.i.if.then23.i_crit_edge ], [ -12, %while.cond.i.i.if.then23.i_crit_edge ], [ %call117.i.i, %if.then119.i.i.if.then23.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %66 = inttoptr i32 %retval.0.i.ph.i to ptr
  br label %handle_alloc_dm_memic.exit

if.end25.i:                                       ; preds = %if.else11.i.i.i
  %bar_addr.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %47, i32 0, i32 13
  %67 = ptrtoint ptr %bar_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bar_addr.i.i, align 8
  %add.ptr132.i.i = getelementptr inbounds i64, ptr %out.i.i, i32 1
  %69 = ptrtoint ptr %add.ptr132.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr132.i.i, align 8
  %71 = trunc i64 %70 to i32
  %conv134.i.i = add i32 %68, %71
  %72 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv134.i.i, ptr %dev_addr.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i.i) #8
  %and28.i = and i32 %conv134.i.i, -4096
  %conv29.i = zext i32 %and28.i to i64
  %mentry.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i, align 4
  %mmap_flag1.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %mmap_flag1.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %mmap_flag1.i.i, align 4
  %address2.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %address2.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv29.i, ptr %address2.i.i, align 8
  %call.i.i = call i32 @rdma_user_mmap_entry_insert_range(ptr noundef %context, ptr noundef %mentry.i, i32 noundef %74, i32 noundef 524288, i32 noundef 589823) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool33.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool33.not.i, label %if.end41.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev_addr.i, align 8
  %79 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i, align 4
  %conv39.i = zext i32 %80 to i64
  call void @mlx5_cmd_dealloc_memic(ptr noundef %dm.i, i32 noundef %78, i64 noundef %conv39.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %81 = inttoptr i32 %call.i.i to ptr
  br label %handle_alloc_dm_memic.exit

if.end41.i:                                       ; preds = %if.end25.i
  %start_pgoff.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %start_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %start_pgoff.i, align 8
  %conv44.i = trunc i32 %83 to i16
  %84 = ptrtoint ptr %page_idx.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv44.i, ptr %page_idx.i, align 2
  %call45.i = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef nonnull %page_idx.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end41.i.err_copy.i_crit_edge

if.end41.i.err_copy.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_copy.i

if.end48.i:                                       ; preds = %if.end41.i
  %85 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dev_addr.i, align 8
  %and51.i = and i32 %86, 4095
  %conv52.i = zext i32 %and51.i to i64
  %87 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv52.i, ptr %start_offset.i, align 8
  %call53.i = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4096, ptr noundef nonnull %start_offset.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end48.i.handle_alloc_dm_memic.exit_crit_edge, label %if.end48.i.err_copy.i_crit_edge

if.end48.i.err_copy.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_copy.i

if.end48.i.handle_alloc_dm_memic.exit_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_alloc_dm_memic.exit

err_copy.i:                                       ; preds = %if.end48.i.err_copy.i_crit_edge, %if.end41.i.err_copy.i_crit_edge
  %err.0.i = phi i32 [ %call45.i, %if.end41.i.err_copy.i_crit_edge ], [ %call53.i, %if.end48.i.err_copy.i_crit_edge ]
  call void @rdma_user_mmap_entry_remove(ptr noundef %mentry.i) #8
  %88 = inttoptr i32 %err.0.i to ptr
  br label %handle_alloc_dm_memic.exit

handle_alloc_dm_memic.exit:                       ; preds = %err_copy.i, %if.end48.i.handle_alloc_dm_memic.exit_crit_edge, %if.then34.i, %if.then23.i, %if.end.i.handle_alloc_dm_memic.exit_crit_edge, %sw.bb.handle_alloc_dm_memic.exit_crit_edge
  %retval.0.i31 = phi ptr [ %66, %if.then23.i ], [ %81, %if.then34.i ], [ %88, %err_copy.i ], [ %call7.i.i.i, %if.end48.i.handle_alloc_dm_memic.exit_crit_edge ], [ inttoptr (i32 -95 to ptr), %sw.bb.handle_alloc_dm_memic.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.handle_alloc_dm_memic.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_idx.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_offset.i) #8
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call fastcc ptr @handle_alloc_dm_sw_icm(ptr noundef %context, ptr noundef %attr, ptr noundef %attrs, i32 noundef 1)
  br label %cleanup

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call fastcc ptr @handle_alloc_dm_sw_icm(ptr noundef %context, ptr noundef %attr, ptr noundef %attrs, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb12, %handle_alloc_dm_memic.exit, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %4, %if.then ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %retval.0.i31, %handle_alloc_dm_memic.exit ], [ inttoptr (i32 -95 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @handle_alloc_dm_sw_icm(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %attr, ptr noundef %attrs, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i = icmp ne i32 %type, 1
  %cond.i = zext i1 %cmp.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type4 = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type4, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %call8 = tail call zeroext i1 @capable(i32 noundef 17) #8
  br i1 %call8, label %lor.lhs.false, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

lor.lhs.false:                                    ; preds = %if.end
  %call9 = tail call zeroext i1 @capable(i32 noundef 13) #8
  br i1 %call9, label %if.end11, label %lor.lhs.false.free_crit_edge

lor.lhs.false.free_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end11:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 16
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %13 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end11.cond.end77_crit_edge

if.end11.cond.end77_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

lor.lhs.false13:                                  ; preds = %if.end11
  %add.ptr19 = getelementptr i32, ptr %10, i32 64
  %14 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr19, align 4
  %16 = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  %17 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool32.not, i1 false
  %18 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool42.not = icmp eq i32 %18, 0
  %or.cond143 = select i1 %or.cond, i1 %tobool42.not, i1 false
  br i1 %or.cond143, label %lor.lhs.false13.free_crit_edge, label %lor.lhs.false13.cond.end77_crit_edge

lor.lhs.false13.cond.end77_crit_edge:             ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end77

lor.lhs.false13.free_crit_edge:                   ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

cond.end77:                                       ; preds = %lor.lhs.false13.cond.end77_crit_edge, %if.end11.cond.end77_crit_edge
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %attr, align 8
  %21 = trunc i64 %20 to i32
  %22 = add i32 %21, -1
  %arrayidx47 = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 15
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx47, align 4
  %add.ptr50 = getelementptr i32, ptr %24, i32 8
  %25 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr50, align 4
  %shr51 = lshr i32 %26, 8
  %and52 = and i32 %shr51, 63
  %notmask = shl nsw i32 -1, %and52
  %sub53 = xor i32 %notmask, -1
  %27 = or i32 %22, %sub53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #8, !range !49
  %sub.i.i.i = sub nuw nsw i32 32, %28
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %conv79 = zext i32 %shl.i to i64
  %size = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.i, ptr %size, align 4
  %alignment = getelementptr inbounds %struct.ib_dm_alloc_attr, ptr %attr, i32 0, i32 1
  %30 = ptrtoint ptr %alignment to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alignment, align 8
  %devx_uid = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %ctx, i32 0, i32 7
  %32 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %devx_uid, align 8
  %dev_addr = getelementptr inbounds %struct.mlx5_ib_dm, ptr %call7.i.i, i32 0, i32 2
  %obj_id = getelementptr inbounds %struct.mlx5_ib_dm_icm, ptr %call7.i.i, i32 0, i32 1
  %call84 = tail call i32 @mlx5_dm_sw_icm_alloc(ptr noundef %3, i32 noundef %cond.i, i64 noundef %conv79, i32 noundef %31, i16 noundef zeroext %33, ptr noundef %dev_addr, ptr noundef %obj_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %cond.end77.free_crit_edge

cond.end77.free_crit_edge:                        ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end87:                                         ; preds = %cond.end77
  %call90 = tail call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4096, ptr noundef %dev_addr, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end87.cleanup_crit_edge, label %if.then92

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %conv95 = zext i32 %35 to i64
  %36 = ptrtoint ptr %devx_uid to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %devx_uid, align 8
  %38 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_addr, align 8
  %40 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %obj_id, align 8
  %call101 = tail call i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %3, i32 noundef %cond.i, i64 noundef %conv95, i16 noundef zeroext %37, i32 noundef %39, i32 noundef %41) #8
  br label %free

free:                                             ; preds = %if.then92, %cond.end77.free_crit_edge, %lor.lhs.false13.free_crit_edge, %lor.lhs.false.free_crit_edge, %if.end.free_crit_edge
  %err.0 = phi i32 [ %call84, %cond.end77.free_crit_edge ], [ %call90, %if.then92 ], [ -1, %lor.lhs.false.free_crit_edge ], [ -1, %if.end.free_crit_edge ], [ -95, %lor.lhs.false13.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %42 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end87.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %42, %free ], [ %call7.i.i, %if.end87.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_dm_mmap_free(ptr nocapture noundef readonly %dev, ptr noundef %mentry) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %_out.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmap_flag = getelementptr inbounds %struct.mlx5_user_mmap_entry, ptr %mentry, i32 0, i32 1
  %0 = ptrtoint ptr %mmap_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mmap_flag, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %1, label %do.end [
    i8 1, label %sw.bb
    i8 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %ref = getelementptr i8, ptr %mentry, i32 184
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !52

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %add.ptr.i.i = getelementptr i8, ptr %mentry, i32 -32
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %dm1.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 32
  %dev_addr.i.i = getelementptr i8, ptr %mentry, i32 -8
  %6 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_addr.i.i, align 8
  %size.i.i = getelementptr i8, ptr %mentry, i32 -4
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  %conv.i.i = zext i32 %9 to i64
  tail call void @mlx5_cmd_dealloc_memic(ptr noundef %dm1.i.i, i32 noundef %7, i64 noundef %conv.i.i) #8
  tail call void @kfree(ptr noundef %add.ptr.i.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dm = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %mentry, i32 0, i32 2
  %10 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dm, align 4
  %dm5 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 32
  %dev_addr = getelementptr %struct.mlx5_ib_dm, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr, align 8
  %op = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %mentry, i32 0, i32 3
  %14 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %op, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #8
  %16 = getelementptr inbounds i8, ptr %in.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 56)
  %18 = ptrtoint ptr %dm5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dm5, align 4
  %20 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 34013184, ptr %in.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %21 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %add.ptr14.i, align 4
  %conv.i = zext i8 %15 to i32
  %add.ptr29.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %22 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %add.ptr29.i, align 4
  %bar_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %19, i32 0, i32 13
  %23 = ptrtoint ptr %bar_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bar_addr.i, align 8
  %sub.i = sub i32 %13, %24
  %conv46.i = zext i32 %sub.i to i64
  %add.ptr48.i = getelementptr inbounds i64, ptr %in.i, i32 2
  %25 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv46.i, ptr %add.ptr48.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_out.i) #8
  %26 = call ptr @memset(ptr %_out.i, i32 0, i32 64)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %19, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %_out.i, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_out.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #8
  call void @kfree(ptr noundef %mentry) #8
  %ref6 = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %11, i32 0, i32 4
  %call.i.i.i.i.i.i30 = call zeroext i1 @__kasan_check_write(ptr noundef %ref6, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  call void @llvm.prefetch.p0(ptr %ref6, i32 1, i32 3, i32 1) #8
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref6, ptr %ref6, i32 1, ptr elementtype(i32) %ref6) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i32, label %if.then.i41, label %if.end5.i.i.i.i34

if.end5.i.i.i.i34:                                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i31)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i34.sw.epilog_crit_edge, label %if.then10.i.i.i.i35, !prof !52

if.end5.i.i.i.i34.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10.i.i.i.i35:                              ; preds = %if.end5.i.i.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref6, i32 noundef 3) #8
  br label %sw.epilog

if.then.i41:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 8
  %dm1.i.i37 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_addr, align 8
  %size.i.i39 = getelementptr %struct.mlx5_ib_dm_memic, ptr %11, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %size.i.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i.i39, align 4
  %conv.i.i40 = zext i32 %33 to i64
  call void @mlx5_cmd_dealloc_memic(ptr noundef %dm1.i.i37, i32 noundef %31, i64 noundef %conv.i.i40) #8
  call void @kfree(ptr noundef %11) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i41, %if.then10.i.i.i.i35, %if.end5.i.i.i.i34.sw.epilog_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_dealloc_dm(ptr noundef %ibdm, ptr noundef readonly %attrs) #0 align 64 {
entry:
  %idx.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %attrs, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %type = getelementptr inbounds %struct.mlx5_ib_dm, ptr %ibdm, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %cond.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %cond.end.sw.bb4_crit_edge
    i32 2, label %cond.end.sw.bb4_crit_edge11
  ]

cond.end.sw.bb4_crit_edge11:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

cond.end.sw.bb4_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i) #8
  %ops_xa_lock.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %ibdm, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ops_xa_lock.i.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idx.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %ibdm, i32 0, i32 2
  %call.i.i = call ptr @xa_find(ptr noundef %ops.i.i, ptr noundef nonnull %idx.i.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not12.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not12.i.i, label %sw.bb.mlx5_dm_memic_dealloc.exit_crit_edge, label %sw.bb.for.body.i.i_crit_edge

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

sw.bb.mlx5_dm_memic_dealloc.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_dm_memic_dealloc.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %entry1.013.i.i = phi ptr [ %call5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %sw.bb.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i.i, align 4
  %call3.i.i = call ptr @xa_erase(ptr noundef %ops.i.i, i32 noundef %7) #8
  call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %entry1.013.i.i) #8
  %call5.i.i = call ptr @xa_find_after(ptr noundef %ops.i.i, ptr noundef nonnull %idx.i.i, i32 noundef -1, i32 noundef 8) #8
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.mlx5_dm_memic_dealloc.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.mlx5_dm_memic_dealloc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_dm_memic_dealloc.exit

mlx5_dm_memic_dealloc.exit:                       ; preds = %for.body.i.i.mlx5_dm_memic_dealloc.exit_crit_edge, %sw.bb.mlx5_dm_memic_dealloc.exit_crit_edge
  call void @mutex_unlock(ptr noundef %ops_xa_lock.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i) #8
  %mentry.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %ibdm, i32 0, i32 1
  call void @rdma_user_mmap_entry_remove(ptr noundef %mentry.i) #8
  br label %cleanup

sw.bb4:                                           ; preds = %cond.end.sw.bb4_crit_edge, %cond.end.sw.bb4_crit_edge11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.i = icmp ne i32 %3, 1
  %cond.i.i = zext i1 %cmp.i.i to i32
  %8 = ptrtoint ptr %ibdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibdm, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 8
  %size.i = getelementptr inbounds %struct.mlx5_ib_dm, ptr %ibdm, i32 0, i32 3
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %conv.i = zext i32 %13 to i64
  %devx_uid.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 7
  %14 = ptrtoint ptr %devx_uid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %devx_uid.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.mlx5_ib_dm, ptr %ibdm, i32 0, i32 2
  %16 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_addr.i, align 4
  %obj_id.i = getelementptr inbounds %struct.mlx5_ib_dm_icm, ptr %ibdm, i32 0, i32 1
  %18 = ptrtoint ptr %obj_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %obj_id.i, align 4
  %call6.i = tail call i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %11, i32 noundef %cond.i.i, i64 noundef %conv.i, i16 noundef zeroext %15, i32 noundef %17, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %ibdm) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %sw.bb4.cleanup_crit_edge, %mlx5_dm_memic_dealloc.exit, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_dm_memic_dealloc.exit ], [ -95, %cond.end.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_ib_reg_dm_mr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_copy_to(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_user_mmap_entry_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_user_mmap_entry_insert_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_dm_sw_icm_alloc(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_dm_sw_icm_dealloc(ptr noundef, i32 noundef, i64 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DM_MAP_OP_ADDR(ptr noundef %attrs) #0 align 64 {
entry:
  %out.i = alloca [16 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  %start_offset.i.i = alloca i64, align 8
  %page_idx.i.i = alloca i16, align 2
  %op = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %context = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %object, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %op)
  %11 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %op, align 1
  %12 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i94 = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i94, label %uverbs_attr_get_uobject.exit.cleanup_crit_edge, label %uverbs_attr_get.exit.i97

uverbs_attr_get_uobject.exit.cleanup_crit_edge:   ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

uverbs_attr_get.exit.i97:                         ; preds = %uverbs_attr_get_uobject.exit
  %arrayidx.i.i95 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i96 = icmp ugt ptr %arrayidx.i.i95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i96, label %_uverbs_copy_from.exit, label %if.end.i98

if.end.i98:                                       ; preds = %uverbs_attr_get.exit.i97
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.i = icmp ugt i16 %16, 1
  br i1 %cmp.i, label %if.end.i98.cleanup_crit_edge, label %_uverbs_copy_from.exit.thread, !prof !54

if.end.i98.cleanup_crit_edge:                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

_uverbs_copy_from.exit.thread:                    ; preds = %if.end.i98
  %conv11.i = zext i16 %16 to i32
  %17 = call ptr @memcpy(ptr %op, ptr %arrayidx.i.i95, i32 %conv11.i)
  %18 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %18)
  %op.0.op.0. = load i8, ptr %op, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %op.0.op.0.)
  %cmp = icmp ugt i8 %op.0.op.0., 31
  br i1 %cmp, label %_uverbs_copy_from.exit.thread.cleanup_crit_edge, label %if.end6

_uverbs_copy_from.exit.thread.cleanup_crit_edge:  ; preds = %_uverbs_copy_from.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

_uverbs_copy_from.exit:                           ; preds = %uverbs_attr_get.exit.i97
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %arrayidx.i.i95 to i32
  br label %cleanup

if.end6:                                          ; preds = %_uverbs_copy_from.exit.thread
  %conv = zext i8 %op.0.op.0. to i32
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %21, i32 0, i32 8, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %23, i32 16
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %shl = shl nuw i32 1, %conv
  %and8 = and i32 %25, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %ops_xa_lock = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %10, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ops_xa_lock, i32 noundef 0) #8
  %ops.i = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %10, i32 0, i32 2
  %call.i = tail call ptr @xa_load(ptr noundef %ops.i, i32 noundef %conv) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.if.end17_crit_edge, label %if.end.i100

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end.i100:                                      ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_offset.i.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %page_idx.i.i) #8
  %start_pgoff.i.i = getelementptr inbounds %struct.rdma_user_mmap_entry, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %start_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start_pgoff.i.i, align 8
  %conv.i.i = trunc i32 %27 to i16
  %28 = ptrtoint ptr %page_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %page_idx.i.i, align 2
  %op_addr.i.i = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %op_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op_addr.i.i, align 8
  %and1.i.i = and i32 %30, 4095
  %conv2.i.i = zext i32 %and1.i.i to i64
  %31 = ptrtoint ptr %start_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv2.i.i, ptr %start_offset.i.i, align 8
  %call.i.i = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4099, ptr noundef nonnull %page_idx.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i100.map_existing_op.exit_crit_edge

if.end.i100.map_existing_op.exit_crit_edge:       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_existing_op.exit

if.end.i.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef nonnull %start_offset.i.i, i32 noundef 8) #8
  br label %map_existing_op.exit

map_existing_op.exit:                             ; preds = %if.end.i.i, %if.end.i100.map_existing_op.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call.i.i, %if.end.i100.map_existing_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_idx.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_offset.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i.i)
  %cond = icmp eq i32 %retval.0.i.i, -2
  br i1 %cond, label %map_existing_op.exit.if.end17_crit_edge, label %map_existing_op.exit.cleanup.sink.split_crit_edge

map_existing_op.exit.cleanup.sink.split_crit_edge: ; preds = %map_existing_op.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

map_existing_op.exit.if.end17_crit_edge:          ; preds = %map_existing_op.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %map_existing_op.exit.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 56) #11
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup.sink.split_crit_edge, label %if.end21

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end17
  %dm22 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 32
  %dev_addr = getelementptr inbounds %struct.mlx5_ib_dm, ptr %10, i32 0, i32 2
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_addr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #8
  %35 = call ptr @memset(ptr %out.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #8
  %36 = getelementptr inbounds i8, ptr %in.i, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 56)
  %38 = ptrtoint ptr %dm22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dm22, align 4
  %40 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 34013184, ptr %in.i, align 4
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %41 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %add.ptr14.i, align 4
  %add.ptr29.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %42 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %add.ptr29.i, align 4
  %bar_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %39, i32 0, i32 13
  %43 = ptrtoint ptr %bar_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bar_addr.i, align 8
  %sub.i = sub i32 %34, %44
  %conv46.i = zext i32 %sub.i to i64
  %add.ptr48.i = getelementptr inbounds i64, ptr %in.i, i32 2
  %45 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv46.i, ptr %add.ptr48.i, align 8
  %call.i104 = call i32 @mlx5_cmd_exec(ptr noundef %39, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end21
  %op_addr = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %bar_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bar_addr.i, align 8
  %add.ptr58.i = getelementptr inbounds i64, ptr %out.i, i32 2
  %48 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr58.i, align 8
  %50 = trunc i64 %49 to i32
  %conv59.i = add i32 %47, %50
  %51 = ptrtoint ptr %op_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv59.i, ptr %op_addr, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #8
  %op27 = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %op27 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %op.0.op.0., ptr %op27, align 8
  %dm28 = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %dm28 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %10, ptr %dm28, align 4
  %54 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %context, align 4
  %size = getelementptr inbounds %struct.mlx5_ib_dm, ptr %10, i32 0, i32 3
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %and32 = and i32 %conv59.i, -4096
  %conv33 = zext i32 %and32 to i64
  %mmap_flag1.i = getelementptr inbounds %struct.mlx5_user_mmap_entry, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %mmap_flag1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %mmap_flag1.i, align 4
  %address2.i = getelementptr inbounds %struct.mlx5_user_mmap_entry, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %address2.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv33, ptr %address2.i, align 8
  %call.i107 = call i32 @rdma_user_mmap_entry_insert_range(ptr noundef %55, ptr noundef nonnull %call7.i.i, i32 noundef %57, i32 noundef 524288, i32 noundef 589823) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool35.not = icmp eq i32 %call.i107, 0
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_addr, align 8
  call void @mlx5_cmd_dealloc_memic_op(ptr noundef %dm22, i32 noundef %61, i8 noundef zeroext %op.0.op.0.)
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

if.end40:                                         ; preds = %if.end26
  %ref = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %10, i32 0, i32 4
  call fastcc void @kref_get(ptr noundef %ref)
  %call41 = call fastcc i32 @copy_op_to_user(ptr noundef nonnull %call7.i.i, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.err_remove_crit_edge

if.end40.err_remove_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove

if.end44:                                         ; preds = %if.end40
  %call46 = call fastcc i32 @xa_insert(ptr noundef %ops.i, i32 noundef %conv, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.cleanup.sink.split_crit_edge, label %if.end44.err_remove_crit_edge

if.end44.err_remove_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

err_remove:                                       ; preds = %if.end44.err_remove_crit_edge, %if.end40.err_remove_crit_edge
  %err.0 = phi i32 [ %call41, %if.end40.err_remove_crit_edge ], [ %call46, %if.end44.err_remove_crit_edge ]
  call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_remove, %if.end44.cleanup.sink.split_crit_edge, %if.then36, %if.then25, %if.end17.cleanup.sink.split_crit_edge, %map_existing_op.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end44.cleanup.sink.split_crit_edge ], [ %call.i104, %if.then25 ], [ %call.i107, %if.then36 ], [ %err.0, %err_remove ], [ -2, %if.end17.cleanup.sink.split_crit_edge ], [ %retval.0.i.i, %map_existing_op.exit.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_xa_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %_uverbs_copy_from.exit, %_uverbs_copy_from.exit.thread.cleanup_crit_edge, %if.end.i98.cleanup_crit_edge, %uverbs_attr_get_uobject.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %_uverbs_copy_from.exit ], [ -95, %_uverbs_copy_from.exit.thread.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -22, %if.end.i98.cleanup_crit_edge ], [ -2, %uverbs_attr_get_uobject.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %op)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !55
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !52

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_op_to_user(ptr nocapture noundef readonly %op_entry, ptr noundef %attrs) unnamed_addr #0 align 64 {
entry:
  %start_offset = alloca i64, align 8
  %page_idx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_offset) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %page_idx) #8
  %start_pgoff = getelementptr inbounds %struct.rdma_user_mmap_entry, ptr %op_entry, i32 0, i32 2
  %0 = ptrtoint ptr %start_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_pgoff, align 8
  %conv = trunc i32 %1 to i16
  %2 = ptrtoint ptr %page_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %page_idx, align 2
  %op_addr = getelementptr inbounds %struct.mlx5_ib_dm_op_entry, ptr %op_entry, i32 0, i32 1
  %3 = ptrtoint ptr %op_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op_addr, align 8
  %and1 = and i32 %4, 4095
  %conv2 = zext i32 %and1 to i64
  %5 = ptrtoint ptr %start_offset to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv2, ptr %start_offset, align 8
  %call = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4099, ptr noundef nonnull %page_idx, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef nonnull %start_offset, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_idx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_offset) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %xa) #8
  %call = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1, i32 noundef 3264) #8
  tail call void @_raw_spin_unlock(ptr noundef %xa) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_DM_QUERY(ptr noundef %attrs) #0 align 64 {
entry:
  %start_offset = alloca i64, align 8
  %page_idx = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_obj.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_obj.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_obj.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_obj.exit_crit_edge, %entry.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_obj.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_obj.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_offset) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %page_idx) #8
  %type = getelementptr inbounds %struct.mlx5_ib_dm, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end, label %uverbs_attr_get_obj.exit.cleanup_crit_edge

uverbs_attr_get_obj.exit.cleanup_crit_edge:       ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get_obj.exit
  %start_pgoff = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %start_pgoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_pgoff, align 8
  %conv = trunc i32 %10 to i16
  %11 = ptrtoint ptr %page_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %page_idx, align 2
  %call3 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4098, ptr noundef nonnull %page_idx, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev_addr = getelementptr inbounds %struct.mlx5_ib_dm, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr, align 8
  %and6 = and i32 %13, 4095
  %conv7 = zext i32 %and6 to i64
  %14 = ptrtoint ptr %start_offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv7, ptr %start_offset, align 8
  %call8 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4097, ptr noundef nonnull %start_offset, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %req_length = getelementptr inbounds %struct.mlx5_ib_dm_memic, ptr %retval.0.i, i32 0, i32 5
  %call12 = call i32 @uverbs_copy_to(ptr noundef %attrs, i32 noundef 4099, ptr noundef %req_length, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %uverbs_attr_get_obj.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -95, %uverbs_attr_get_obj.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_idx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_offset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 416, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_ib_alloc_dm.__UNIQUE_ID_ddebug528, !1, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!6 = !{ptr @mlx5_ib_dm_defs, !7, !"mlx5_ib_dm_defs", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 580, i32 30}
!8 = !{ptr @mlx5_ib_dev_dm_ops, !9, !"mlx5_ib_dev_dm_ops", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 586, i32 28}
!10 = !{ptr @handle_alloc_dm_memic.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 298, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xa_init_flags.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx5_ib_dm, !17, !"mlx5_ib_dm", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 551, i32 1}
!18 = !{ptr @_object_methods_UVERBS_OBJECT_DM558, !17, !"_object_methods_UVERBS_OBJECT_DM558", i1 false, i1 false}
!19 = !{ptr @mlx5_ib_method_UVERBS_METHOD_DM_ALLOC, !17, !"mlx5_ib_method_UVERBS_METHOD_DM_ALLOC", i1 false, i1 false}
!20 = !{ptr @_method_attrs_UVERBS_METHOD_DM_ALLOC, !17, !"_method_attrs_UVERBS_METHOD_DM_ALLOC", i1 false, i1 false}
!21 = !{ptr @mlx5_ib_object_UVERBS_OBJECT_DM, !22, !"mlx5_ib_object_UVERBS_OBJECT_DM", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 576, i32 1}
!23 = !{ptr @_object_methods_UVERBS_OBJECT_DM578, !22, !"_object_methods_UVERBS_OBJECT_DM578", i1 false, i1 false}
!24 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR, !25, !"mlx5_ib_method_MLX5_IB_METHOD_DM_MAP_OP_ADDR", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 560, i32 1}
!26 = !{ptr @_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR, !25, !"_method_attrs_MLX5_IB_METHOD_DM_MAP_OP_ADDR", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!29 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!34 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY, !35, !"mlx5_ib_method_MLX5_IB_METHOD_DM_QUERY", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx5/dm.c", i32 540, i32 1}
!36 = !{ptr @_method_attrs_MLX5_IB_METHOD_DM_QUERY, !35, !"_method_attrs_MLX5_IB_METHOD_DM_QUERY", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i64 2148717710, i64 2148717715, i64 2148717728, i64 2148717772, i64 2148717806, i64 2148717827}
!49 = !{i32 0, i32 33}
!50 = !{i64 2148325426}
!51 = !{i64 2148239890, i64 2148239922, i64 2148239951, i64 2148239985, i64 2148240016, i64 2148240039}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2149642635}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2148237425, i64 2148237457, i64 2148237486, i64 2148237520, i64 2148237551, i64 2148237574}
