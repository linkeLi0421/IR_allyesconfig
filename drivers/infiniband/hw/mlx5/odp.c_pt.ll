; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/odp.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/odp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmu_interval_notifier_ops = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5_klm = type { i32, i32, i64 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.174, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.174 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
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
%struct.mlx5_ib_mr = type { %struct.ib_mr, %struct.mlx5_ib_mkey, ptr, ptr, %union.anon.188 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.186, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.186 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_ib_mkey = type { i32, i32, i32, %struct.wait_queue_head, %struct.refcount_struct }
%union.anon.188 = type { %struct.anon.198 }
%struct.anon.198 = type { i32, i32, ptr, %struct.xarray, %union.anon.199, %struct.ib_odp_counters, i8 }
%union.anon.199 = type { %struct.work_struct }
%struct.ib_odp_counters = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ib_umem_odp = type { %struct.ib_umem, %struct.mmu_interval_notifier, ptr, ptr, ptr, %struct.mutex, ptr, i32, i8, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.191, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.193, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.191 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.192] }
%struct.anon.192 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.193 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.ib_umem_dmabuf = type { %struct.ib_umem, ptr, ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.202, i8 }
%union.anon.202 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.mlx5_eq_param = type { i32, [4 x i64], ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.ib_sge = type { i64, i32, i32 }
%struct.prefetch_mr_work = type { %struct.work_struct, i32, i32, [0 x %struct.anon.201] }
%struct.anon.201 = type { i64, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_pagefault = type { i32, i32, i8, i8, %union.anon.207, ptr, %struct.work_struct }
%union.anon.207 = type { %struct.anon.209 }
%struct.anon.209 = type { i32, i32, i32, i64 }
%struct.anon.206 = type <{ i32, i16, i16, i32, i64, i32 }>
%struct.anon.205 = type { i16, i16, i16, i16, i32, [8 x i8], i32 }
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.213, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%union.anon.213 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.214, i32, i32 }
%union.anon.214 = type { ptr }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.215 }
%union.anon.215 = type { i32 }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.pf_frame = type { ptr, i32, i64, i32, i32 }

@mlx5_mn_ops = dso_local constant { %struct.mmu_interval_notifier_ops, [28 x i8] } { %struct.mmu_interval_notifier_ops { ptr @mlx5_ib_invalidate_range }, [28 x i8] zeroinitializer }, align 32
@mlx5_imr_ksm_entries = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mlx5_ib_alloc_implicit_mr.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_ib_alloc_implicit_mr\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/odp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:(pid %d): key %x mr %p\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_ib_alloc_implicit_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed to register MKEY %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_alloc_implicit_mr._entry_ptr = internal global ptr @mlx5_ib_alloc_implicit_mr._entry, section ".printk_index", align 4
@mlx5r_odp_create_eq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&eq->work)\00", [35 x i8] zeroinitializer }, align 32
@mlx5r_odp_create_eq.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&eq->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_ib_page_fault\00", [45 x i8] zeroinitializer }, align 32
@mlx5r_odp_create_eq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): failed to enable odp EQ %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5r_odp_create_eq\00", [44 x i8] zeroinitializer }, align 32
@mlx5r_odp_create_eq._entry_ptr = internal global ptr @mlx5r_odp_create_eq._entry, section ".printk_index", align 4
@mlx5_ib_dev_odp_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_advise_mr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx5_ib_odp_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Error getting null_mkey %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_ib_odp_init_one\00", [43 x i8] zeroinitializer }, align 32
@mlx5_ib_odp_init_one._entry_ptr = internal global ptr @mlx5_ib_odp_init_one._entry, section ".printk_index", align 4
@mlx5_ib_odp_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->odp_eq_mutex\00", [45 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@destroy_unused_implicit_child_mr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&mr->odp_destroy.work)\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/hw/mlx5/mlx5_ib.h\00", [59 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@pagefault_real_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to update mkey page tables\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pagefault_real_mr\00", [46 x i8] zeroinitializer }, align 32
@pagefault_real_mr._entry_ptr = internal global ptr @pagefault_real_mr._entry, section ".printk_index", align 4
@mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_ib_eq_pf_process\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): PAGE_FAULT: subtype: 0x%02x, bytes_committed: 0x%06x\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): PAGE_FAULT: type:0x%x, token: 0x%06x, r_key: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): PAGE_FAULT: rdma_op_len: 0x%08x, rdma_va: 0x%016llx\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 1, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d:(pid %d): PAGE_FAULT: type:0x%x, token: 0x%06x, wq_num: 0x%06x, wqe_index: 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_ib_eq_pf_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 1455, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Unsupported page fault event sub-type: 0x%02hhx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_ib_eq_pf_process._entry_ptr = internal global ptr @mlx5_ib_eq_pf_process._entry, section ".printk_index", align 4
@mlx5_ib_eq_pf_process.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&pfault->work)\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlx5_ib_pfault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1368, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Invalid page fault event subtype: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_ib_pfault\00", [17 x i8] zeroinitializer }, align 32
@mlx5_ib_pfault._entry_ptr = internal global ptr @mlx5_ib_pfault._entry, section ".printk_index", align 4
@mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_ib_mr_wqe_pfault_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): wqe page fault for missing resource %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_wqe_pfault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): wqe page fault for unsupported type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_wqe_pfault_handler._entry_ptr = internal global ptr @mlx5_ib_mr_wqe_pfault_handler._entry, section ".printk_index", align 4
@mlx5_ib_mr_wqe_pfault_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.2, i32 1218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Error allocating memory for IO page fault handling.\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_wqe_pfault_handler._entry_ptr.36 = internal global ptr @mlx5_ib_mr_wqe_pfault_handler._entry.34, section ".printk_index", align 4
@mlx5_ib_mr_wqe_pfault_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.2, i32 1269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s:%d:(pid %d): Failed reading a WQE following page fault, error %d, wqe_index %x, qpn %x\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_wqe_pfault_handler._entry_ptr.39 = internal global ptr @mlx5_ib_mr_wqe_pfault_handler._entry.37, section ".printk_index", align 4
@mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.40, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): PAGE FAULT completed. QP 0x%x resume_with_error=%d, type: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_initiator_pfault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1064, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): Unable to read the complete WQE. ds = 0x%x, ret = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx5_ib_mr_initiator_pfault_handler\00", [60 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_initiator_pfault_handler._entry_ptr = internal global ptr @mlx5_ib_mr_initiator_pfault_handler._entry, section ".printk_index", align 4
@mlx5_ib_mr_initiator_pfault_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1070, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Got WQE with zero DS. wqe_index=%x, qpn=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_initiator_pfault_handler._entry_ptr.45 = internal global ptr @mlx5_ib_mr_initiator_pfault_handler._entry.43, section ".printk_index", align 4
@mlx5_ib_mr_responder_pfault_handler_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): ODP fault with WQE signatures is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_ib_mr_responder_pfault_handler_rq\00", [57 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr = internal global ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry, section ".printk_index", align 4
@mlx5_ib_mr_responder_pfault_handler_rq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Couldn't read all of the receive WQE's content\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr.50 = internal global ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry.48, section ".printk_index", align 4
@mlx5_ib_mr_responder_pfault_handler_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.51, ptr @.str.2, i32 1118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlx5_ib_mr_responder_pfault_handler_srq\00", [56 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_responder_pfault_handler_srq._entry_ptr = internal global ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry, section ".printk_index", align 4
@pagefault_single_data_segment.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pagefault_single_data_segment\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): skipping non ODP MR (lkey=0x%06x) in page fault handler.\0A\00", [54 x i8] zeroinitializer }, align 32
@pagefault_single_data_segment.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): failed to find mkey %x\0A\00", [56 x i8] zeroinitializer }, align 32
@pagefault_single_data_segment.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): indirection level exceeded\0A\00", [52 x i8] zeroinitializer }, align 32
@pagefault_single_data_segment.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.56, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): wrong mkey type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pagefault_implicit_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Failed to update PAS\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pagefault_implicit_mr\00", [42 x i8] zeroinitializer }, align 32
@pagefault_implicit_mr._entry_ptr = internal global ptr @pagefault_implicit_mr._entry, section ".printk_index", align 4
@implicit_get_child_mr.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.3, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"implicit_get_child_mr\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_ib_mr_rdma_pfault_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): PAGE FAULT error %d. QP 0x%x, type: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s:%d:(pid %d): PAGE FAULT completed. QP 0x%x, type: 0x%x, prefetch_activated: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d:(pid %d): Prefetch failed. ret: %d, QP 0x%x, address: 0x%.16llx, length = 0x%.16x\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_ib_page_fault_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Failed to resolve the page fault on WQ 0x%x err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_ib_page_fault_resume\00", [38 x i8] zeroinitializer }, align 32
@mlx5_ib_page_fault_resume._entry_ptr = internal global ptr @mlx5_ib_page_fault_resume._entry, section ".printk_index", align 4
@init_prefetch_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 24]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 9, i64 4098]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 8, i64 8, i64 9, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"mlx5_mn_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 316, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"mlx5_imr_ksm_entries\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 525, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 528, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1523, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1524, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1534, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1554, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"mlx5_ib_dev_odp_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1614, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1632, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1637, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 222, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [40 x i8] c"../drivers/infiniband/hw/mlx5/mlx5_ib.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1627, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 378, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 585, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1402, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1422, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1426, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1445, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1453, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1462, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1367, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1205, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1211, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1218, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1266, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1273, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1063, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1069, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1137, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1142, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1118, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 833, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 851, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 873, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 927, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 683, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 470, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1327, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1333, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1349, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 403, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/odp.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1746, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @mlx5_ib_alloc_implicit_mr._entry, ptr @mlx5_ib_alloc_implicit_mr._entry_ptr, ptr @mlx5_ib_eq_pf_process._entry, ptr @mlx5_ib_eq_pf_process._entry_ptr, ptr @mlx5_ib_mr_initiator_pfault_handler._entry, ptr @mlx5_ib_mr_initiator_pfault_handler._entry.43, ptr @mlx5_ib_mr_initiator_pfault_handler._entry_ptr, ptr @mlx5_ib_mr_initiator_pfault_handler._entry_ptr.45, ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry, ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry.48, ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr, ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr.50, ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry, ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry_ptr, ptr @mlx5_ib_mr_wqe_pfault_handler._entry, ptr @mlx5_ib_mr_wqe_pfault_handler._entry.34, ptr @mlx5_ib_mr_wqe_pfault_handler._entry.37, ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr, ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr.36, ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr.39, ptr @mlx5_ib_odp_init_one._entry, ptr @mlx5_ib_odp_init_one._entry_ptr, ptr @mlx5_ib_page_fault_resume._entry, ptr @mlx5_ib_page_fault_resume._entry_ptr, ptr @mlx5_ib_pfault._entry, ptr @mlx5_ib_pfault._entry_ptr, ptr @mlx5r_odp_create_eq._entry, ptr @mlx5r_odp_create_eq._entry_ptr, ptr @pagefault_implicit_mr._entry, ptr @pagefault_implicit_mr._entry_ptr, ptr @pagefault_real_mr._entry, ptr @pagefault_real_mr._entry_ptr, ptr @mlx5_mn_ops, ptr @mlx5_imr_ksm_entries, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx5r_odp_create_eq.__key, ptr @.str.7, ptr @mlx5r_odp_create_eq.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mlx5_ib_dev_odp_ops, ptr @.str.13, ptr @.str.14, ptr @mlx5_ib_odp_init_one.__key, ptr @.str.15, ptr @destroy_unused_implicit_child_mr.__key, ptr @.str.16, ptr @.str.17, ptr @xa_init_flags.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mlx5_ib_eq_pf_process.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @init_prefetch_work.__key, ptr @.str.66], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mn_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_imr_ksm_entries to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_alloc_implicit_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5r_odp_create_eq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5r_odp_create_eq.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5r_odp_create_eq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dev_odp_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_odp_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_odp_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_unused_implicit_child_mr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagefault_real_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_eq_pf_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_eq_pf_process.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_pfault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_wqe_pfault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_wqe_pfault_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_wqe_pfault_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_initiator_pfault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_initiator_pfault_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagefault_implicit_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_page_fault_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_prefetch_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_odp_populate_xlt(ptr noundef writeonly %xlt, i32 noundef %idx, i32 noundef %nentries, ptr noundef %mr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr %struct.mlx5_klm, ptr %xlt, i32 %nentries
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %cmp.not70.i = icmp eq ptr %add.ptr.i, %xlt
  br i1 %cmp.not70.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pklm.addr.071.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %xlt, %for.cond.preheader.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %pklm.addr.071.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1073741824, ptr %pklm.addr.071.i, align 8
  %1 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mr, align 8
  %null_mkey.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %null_mkey.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %null_mkey.i, align 4
  %key.i = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.addr.071.i, i32 0, i32 1
  %5 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %key.i, align 4
  %va.i = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.addr.071.i, i32 0, i32 2
  %6 = ptrtoint ptr %va.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %va.i, align 8
  %incdec.ptr.i = getelementptr %struct.mlx5_klm, ptr %pklm.addr.071.i, i32 1
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end21.i_crit_edge, label %land.rhs.i

do.body.i.if.end21.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

land.rhs.i:                                       ; preds = %do.body.i
  %umem.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %8 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %umem.i, align 8
  %dep_map.i = getelementptr inbounds %struct.ib_umem_odp, ptr %9, i32 0, i32 5, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i, label %do.end.i, label %land.rhs.i.if.end21.i_crit_edge, !prof !168

land.rhs.i.if.end21.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 130, i32 noundef 9, ptr noundef null) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end21.i_crit_edge, %do.body.i.if.end21.i_crit_edge
  %cmp31.not72.i = icmp eq ptr %add.ptr.i, %xlt
  br i1 %cmp31.not72.i, label %if.end21.i.if.end_crit_edge, label %for.body32.lr.ph.i

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body32.lr.ph.i:                               ; preds = %if.end21.i
  %implicit_children.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  br label %for.body32.i

for.body32.i:                                     ; preds = %if.end43.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %pklm.addr.174.i = phi ptr [ %xlt, %for.body32.lr.ph.i ], [ %incdec.ptr45.i, %if.end43.i.for.body32.i_crit_edge ]
  %idx.addr.173.i = phi i32 [ %idx, %for.body32.lr.ph.i ], [ %inc46.i, %if.end43.i.for.body32.i_crit_edge ]
  %call33.i = tail call ptr @xa_load(ptr noundef %implicit_children.i, i32 noundef %idx.addr.173.i) #12
  %10 = ptrtoint ptr %pklm.addr.174.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1073741824, ptr %pklm.addr.174.i, align 8
  %tobool35.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool35.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %call33.i, i32 0, i32 2
  %conv.i = zext i32 %idx.addr.173.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 30
  br label %if.end43.i

if.else.i:                                        ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mr, align 8
  %null_mkey40.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %12, i32 0, i32 18
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %if.then36.i
  %.sink.in.i = phi ptr [ %null_mkey40.i, %if.else.i ], [ %lkey.i, %if.then36.i ]
  %mul.sink.i = phi i64 [ 0, %if.else.i ], [ %mul.i, %if.then36.i ]
  %13 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %14 = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.addr.174.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.addr.174.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul.sink.i, ptr %16, align 8
  %incdec.ptr45.i = getelementptr %struct.mlx5_klm, ptr %pklm.addr.174.i, i32 1
  %inc46.i = add i32 %idx.addr.173.i, 1
  %cmp31.not.i = icmp eq ptr %incdec.ptr45.i, %add.ptr.i
  br i1 %cmp31.not.i, label %if.end43.i.if.end_crit_edge, label %if.end43.i.for.body32.i_crit_edge

if.end43.i.for.body32.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

if.end43.i.if.end_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  %and.i7 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nentries)
  %cmp8.i = icmp ne i32 %nentries, 0
  %or.cond.i = and i1 %cmp8.i, %tobool.not.i8
  br i1 %or.cond.i, label %for.body.lr.ph.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %umem.i9 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %18 = ptrtoint ptr %umem.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %umem.i9, align 8
  %dma_list.i = getelementptr inbounds %struct.ib_umem_odp, ptr %19, i32 0, i32 4
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i10.for.body.i10_crit_edge ]
  %20 = ptrtoint ptr %dma_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_list.i, align 4
  %add.i = add i32 %i.09.i, %idx
  %arrayidx.i = getelementptr i32, ptr %21, i32 %add.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = zext i32 %23 to i64
  %arrayidx2.i = getelementptr i64, ptr %xlt, i32 %i.09.i
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx2.i, align 8
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nentries
  br i1 %exitcond.not.i, label %for.body.i10.if.end_crit_edge, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i10

for.body.i10.if.end_crit_edge:                    ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %for.body.i10.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end43.i.if.end_crit_edge, %if.end21.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlx5_ib_invalidate_range(ptr noundef %mni, ptr nocapture noundef readonly %range, i32 noundef %cur_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mni, i32 -96
  %flags.i = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %umem_mutex = getelementptr i8, ptr %mni, i32 56
  tail call void @mutex_lock_nested(ptr noundef %umem_mutex, i32 noundef 0) #12
  %invalidate_seq.i = getelementptr inbounds %struct.mmu_interval_notifier, ptr %mni, i32 0, i32 4
  %2 = ptrtoint ptr %invalidate_seq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %cur_seq, ptr %invalidate_seq.i, align 4
  %npages = getelementptr i8, ptr %mni, i32 152
  %3 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end2:                                          ; preds = %if.end
  %private = getelementptr i8, ptr %mni, i32 148
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %start.i = getelementptr i8, ptr %mni, i32 12
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start.i, align 4
  %start4 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %9 = ptrtoint ptr %start4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start4, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %8, i32 %10)
  %last.i = getelementptr i8, ptr %mni, i32 16
  %12 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last.i, align 8
  %add.i = add i32 %13, 1
  %end11 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %14 = ptrtoint ptr %end11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end11, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %15)
  %conv21 = zext i32 %11 to i64
  %conv22 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %16)
  %cmp23113 = icmp ult i32 %11, %16
  br i1 %cmp23113, label %for.body.lr.ph, label %if.end2.if.end53_crit_edge

if.end2.if.end53_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

for.body.lr.ph:                                   ; preds = %if.end2
  %page_shift = getelementptr i8, ptr %mni, i32 160
  %dma_list = getelementptr i8, ptr %mni, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.0117 = phi i64 [ %conv21, %for.body.lr.ph ], [ %add46, %for.inc.for.body_crit_edge ]
  %in_block.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %in_block.3, %for.inc.for.body_crit_edge ]
  %invalidations.0115 = phi i64 [ 0, %for.body.lr.ph ], [ %invalidations.1, %for.inc.for.body_crit_edge ]
  %blk_start_idx.0114 = phi i64 [ 0, %for.body.lr.ph ], [ %blk_start_idx.2, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start.i, align 4
  %conv26 = zext i32 %18 to i64
  %sub = sub i64 %addr.0117, %conv26
  %19 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_shift, align 8
  %sh_prom = zext i32 %20 to i64
  %shr = lshr i64 %sub, %sh_prom
  %21 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_list, align 4
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr i32, ptr %22, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %and = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_block.0116)
  %tobool35.not = icmp eq i32 %in_block.0116, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = select i1 %tobool35.not, i64 %shr, i64 %blk_start_idx.0114
  %sub32 = add i64 %invalidations.0115, 1
  %add = add i64 %sub32, %shr
  %add33 = sub i64 %add, %spec.select
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool35.not, label %if.else.for.inc_crit_edge, label %land.lhs.true

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %and34 = and i64 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %cmp36 = icmp eq i64 %and34, 0
  br i1 %cmp36, label %if.then38, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sub39 = sub i64 %shr, %blk_start_idx.0114
  %conv40 = trunc i64 %sub39 to i32
  %call41 = tail call i32 @mlx5_ib_update_xlt(ptr noundef %6, i64 noundef %blk_start_idx.0114, i32 noundef %conv40, i32 noundef 0, i32 noundef 5) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then28
  %blk_start_idx.2 = phi i64 [ %spec.select, %if.then28 ], [ %blk_start_idx.0114, %if.then38 ], [ %blk_start_idx.0114, %land.lhs.true.for.inc_crit_edge ], [ %blk_start_idx.0114, %if.else.for.inc_crit_edge ]
  %invalidations.1 = phi i64 [ %add33, %if.then28 ], [ %invalidations.0115, %if.then38 ], [ %invalidations.0115, %land.lhs.true.for.inc_crit_edge ], [ %invalidations.0115, %if.else.for.inc_crit_edge ]
  %tobool47.not = phi i1 [ false, %if.then28 ], [ true, %if.then38 ], [ false, %land.lhs.true.for.inc_crit_edge ], [ true, %if.else.for.inc_crit_edge ]
  %in_block.3 = phi i32 [ 1, %if.then28 ], [ 0, %if.then38 ], [ 1, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.else.for.inc_crit_edge ]
  %25 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_shift, align 8
  %shl = shl nuw i32 1, %26
  %conv45 = zext i32 %shl to i64
  %add46 = add i64 %addr.0117, %conv45
  %cmp23 = icmp ult i64 %add46, %conv22
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool47.not, label %for.end.if.end53_crit_edge, label %if.then48

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub49 = sub i64 %shr, %blk_start_idx.2
  %27 = trunc i64 %sub49 to i32
  %conv51 = add i32 %27, 1
  %call52 = tail call i32 @mlx5_ib_update_xlt(ptr noundef %6, i64 noundef %blk_start_idx.2, i32 noundef %conv51, i32 noundef 0, i32 noundef 5) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %for.end.if.end53_crit_edge, %if.end2.if.end53_crit_edge
  %invalidations.0.lcssa127 = phi i64 [ %invalidations.1, %if.then48 ], [ %invalidations.1, %for.end.if.end53_crit_edge ], [ 0, %if.end2.if.end53_crit_edge ]
  %invalidations54 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %6, i32 0, i32 4, i32 0, i32 5, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %invalidations54, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %invalidations.0.lcssa127, ptr noundef %invalidations54) #12
  tail call void @ib_umem_odp_unmap_dma_pages(ptr noundef %add.ptr, i64 noundef %conv21, i64 noundef %conv22) #12
  %28 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool58.not = icmp eq i32 %29, 0
  br i1 %tobool58.not, label %land.rhs, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.rhs:                                         ; preds = %if.end53
  %parent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %6, i32 0, i32 4, i32 0, i32 2
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %land.rhs.out_crit_edge, label %if.then62, !prof !169

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then62:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @destroy_unused_implicit_child_mr(ptr noundef %6)
  br label %out

out:                                              ; preds = %if.then62, %land.rhs.out_crit_edge, %if.end53.out_crit_edge, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %umem_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_alloc_implicit_mr(ptr noundef %pd, i32 noundef %access_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %mlx5_ib_can_load_pas_with_umr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_ib_can_load_pas_with_umr.exit:               ; preds = %entry
  %add.ptr7.i = getelementptr i32, ptr %5, i32 8
  %9 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr7.i, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not.i.not = icmp eq i32 %11, 0
  br i1 %tobool10.not.i.not, label %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge, label %if.end

mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge: ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  %call3 = tail call ptr @ib_umem_odp_alloc_implicit(ptr noundef %1, i32 noundef %access_flags) #12
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @mlx5_mr_cache_alloc(ptr noundef %1, i32 noundef 22, i32 noundef %access_flags) #12
  %cmp.i90 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_umem_odp_release(ptr noundef %call3) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %pd13 = getelementptr inbounds %struct.ib_mr, ptr %call8, i32 0, i32 1
  %12 = ptrtoint ptr %pd13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pd, ptr %pd13, align 4
  %iova = getelementptr inbounds %struct.ib_mr, ptr %call8, i32 0, i32 4
  %13 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %iova, align 8
  %umem15 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 3
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmkey, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call8, i32 0, i32 2
  %16 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call8, i32 0, i32 3
  %17 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %rkey, align 4
  %18 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %call8, align 8
  %19 = ptrtoint ptr %umem15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3, ptr %umem15, align 8
  %is_odp_implicit = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 4, i32 0, i32 6
  %20 = ptrtoint ptr %is_odp_implicit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %is_odp_implicit, align 8
  %implicit_children = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 4, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %implicit_children, ptr noundef nonnull @.str.18, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 4, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 4, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %xa_head.i.i, align 4
  %.b = load i1, ptr @mlx5_imr_ksm_entries, align 8
  %conv = select i1 %.b, i32 4, i32 0
  %call25 = tail call i32 @mlx5_ib_update_xlt(ptr noundef %call8, i64 noundef 0, i32 noundef %conv, i32 noundef 30, i32 noundef 67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end27, label %if.end11.do.end45_crit_edge

if.end11.do.end45_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

if.end27:                                         ; preds = %if.end11
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call8, i32 0, i32 1, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %usecount.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %usecount.i, align 4
  %odp_mkeys.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmkey, align 4
  %and.i.i = and i32 %25, -256
  %call1.i = tail call ptr @xa_store(ptr noundef %odp_mkeys.i, i32 noundef %and.i.i, ptr noundef %mmkey, i32 noundef 3264) #12
  %26 = ptrtoint ptr %call1.i to i32
  %and.i.i.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call1.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %shr.i.i = ashr i32 %26, 2
  %retval.0.i.i = select i1 %spec.select.i.i.i, i32 %shr.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool30.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool30.not, label %do.body, label %if.end27.do.end45_crit_edge

if.end27.do.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.body:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_alloc_implicit_mr.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_alloc_implicit_mr, %if.then37)) #12
          to label %cleanup [label %if.then37], !srcloc !170

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %28 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid, align 8
  %34 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmkey, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_alloc_implicit_mr.__UNIQUE_ID_ddebug527, ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 525, i32 noundef %33, i32 noundef %35, ptr noundef %call8) #12
  br label %cleanup

do.end45:                                         ; preds = %if.end27.do.end45_crit_edge, %if.end11.do.end45_crit_edge
  %err.0 = phi i32 [ %call25, %if.end11.do.end45_crit_edge ], [ %retval.0.i.i, %if.end27.do.end45_crit_edge ]
  %36 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %37 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i91 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i91 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef %42, i32 noundef %err.0) #15
  %call51 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef %call8, ptr noundef null) #12
  %43 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then37, %do.body, %if.then10, %if.end.cleanup_crit_edge, %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8, %if.then10 ], [ %43, %do.end45 ], [ %call8, %if.then37 ], [ inttoptr (i32 -95 to ptr), %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %do.body ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_odp_alloc_implicit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_mr_cache_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_odp_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_update_xlt(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_dereg_mr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_free_odp_mr(ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #12
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %idx, align 4
  %implicit_children = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  %call = call ptr @xa_find(ptr noundef %implicit_children, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #12
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mtt.010 = phi ptr [ %call5, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 4
  %call2 = call ptr @xa_erase(ptr noundef %implicit_children, i32 noundef %2) #12
  %call3 = call i32 @mlx5_ib_dereg_mr(ptr noundef nonnull %mtt.010, ptr noundef null) #12
  %call5 = call ptr @xa_find_after(ptr noundef %implicit_children, ptr noundef nonnull %idx, i32 noundef -1, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_init_odp_mr(ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %address = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %conv = zext i32 %3 to i64
  %length = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  %call3 = tail call fastcc i32 @pagefault_real_mr(ptr noundef %mr, ptr noundef %1, i64 noundef %conv, i32 noundef %5, ptr noundef null, i32 noundef 12)
  %6 = tail call i32 @llvm.smin.i32(i32 %call3, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagefault_real_mr(ptr noundef %mr, ptr noundef %odp, i64 noundef %user_va, i32 noundef %bcnt, ptr noundef %bytes_mapped, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %page_shift6 = getelementptr inbounds %struct.ib_umem_odp, ptr %odp, i32 0, i32 9
  %0 = ptrtoint ptr %page_shift6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_shift6, align 8
  %start.i = getelementptr inbounds %struct.ib_umem_odp, ptr %odp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start.i, align 4
  %writable = getelementptr inbounds %struct.ib_umem, ptr %odp, i32 0, i32 5
  %4 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %writable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  %spec.select79 = select i1 %tobool.not, i64 3, i64 1
  %access_mask.0 = select i1 %tobool7.not, i64 1, i64 %spec.select79
  %conv12 = zext i32 %bcnt to i64
  %call14 = tail call i32 @ib_umem_odp_map_dma_and_lock(ptr noundef %odp, i64 noundef %user_va, i64 noundef %conv12, i64 noundef %access_mask.0, i1 noundef zeroext %tobool2.not) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end17

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %entry
  %conv = zext i32 %3 to i64
  %sub = sub i64 %user_va, %conv
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %sub, %sh_prom
  %and4 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 4, i32 6
  %call18 = tail call i32 @mlx5_ib_update_xlt(ptr noundef %mr, i64 noundef %shr, i32 noundef %call14, i32 noundef %1, i32 noundef %spec.select) #12
  %umem_mutex = getelementptr inbounds %struct.ib_umem_odp, ptr %odp, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %umem_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call18)
  %cmp22.not = icmp eq i32 %call18, -11
  br i1 %cmp22.not, label %if.then21.cleanup_crit_edge, label %do.end

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mr, align 8
  %7 = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 13
  %8 = tail call i32 @llvm.read_register.i32(metadata !158) #12
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 586, i32 noundef %13) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %tobool29.not = icmp eq ptr %bytes_mapped, null
  br i1 %tobool29.not, label %if.end28.if.end41_crit_edge, label %if.then30

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl i32 %call14, %1
  %notmask = shl nsw i32 -1, %1
  %14 = xor i32 %notmask, -1
  %15 = trunc i64 %user_va to i32
  %16 = and i32 %14, %15
  %conv38 = sub i32 %shl, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %conv38, i32 %bcnt)
  %18 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes_mapped, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %bytes_mapped, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %if.end28.if.end41_crit_edge
  %sub42 = add i32 %1, -12
  %shl43 = shl i32 %call14, %sub42
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %if.then21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl43, %if.end41 ], [ %call14, %entry.cleanup_crit_edge ], [ -11, %if.then21.cleanup_crit_edge ], [ %call18, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_init_dmabuf_mr(ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %length = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 8
  %call = tail call fastcc i32 @pagefault_dmabuf_mr(ptr noundef %mr, i32 noundef %3, ptr noundef null, i32 noundef 8)
  %4 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagefault_dmabuf_mr(ptr noundef %mr, i32 noundef %bcnt, ptr noundef %bytes_mapped, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %and = lshr i32 %flags, 2
  %2 = and i32 %and, 2
  %attach = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attach, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resv, align 4
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %8, ptr noundef null) #12
  %call2 = tail call i32 @ib_umem_dmabuf_map_pages(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attach, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %resv7 = getelementptr inbounds %struct.dma_buf, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %resv7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv7, align 4
  tail call void @dma_resv_reset_shared_max(ptr noundef %14) #12
  tail call void @ww_mutex_unlock(ptr noundef %14) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %iova = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iova, align 8
  %conv = trunc i64 %16 to i32
  %call12 = tail call i32 @ib_umem_find_best_pgsz(ptr noundef %1, i32 noundef -4096, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call12)
  %cmp = icmp ult i32 %call12, 4096
  br i1 %cmp, label %if.then16, label %if.else, !prof !168

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_umem_dmabuf_unmap_pages(ptr noundef %1) #12
  br label %if.end18

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 @mlx5_ib_update_mr_pas(ptr noundef %mr, i32 noundef %2) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  %err.0 = phi i32 [ -22, %if.then16 ], [ %call17, %if.else ]
  %17 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attach, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %resv21 = getelementptr inbounds %struct.dma_buf, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %resv21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv21, align 4
  tail call void @dma_resv_reset_shared_max(ptr noundef %22) #12
  tail call void @ww_mutex_unlock(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool22.not = icmp eq i32 %err.0, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %tobool25.not = icmp eq ptr %bytes_mapped, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytes_mapped, align 4
  %add = add i32 %24, %bcnt
  store i32 %add, ptr %bytes_mapped, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %25 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %umem, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %30 to i64
  %add.i.i = add i64 %28, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %28, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div1.i.i = lshr exact i32 %conv17.i.i, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end18.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %div1.i.i, %if.end27 ], [ %err.0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5r_odp_create_eq(ptr noundef %dev, ptr noundef %eq) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca %struct.mlx5_eq_param, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %param) #12
  %0 = call ptr @memset(ptr %param, i32 0, i32 48)
  %odp_eq_mutex = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %odp_eq_mutex, i32 noundef 0) #12
  %core = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 2
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %work = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %3 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlx5r_odp_create_eq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlx5_ib_eq_pf_action, ptr %func, align 4
  %lock = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mlx5r_odp_create_eq.__key.8, i16 noundef signext 3) #12
  %dev9 = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 1
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev9, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef 64, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 88 to ptr)) #12
  %pool = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 6
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %pool, align 4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %if.end14

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %call15 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 26, i32 noundef 32) #12
  %wq = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 5
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %wq, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end14.err_mempool_crit_edge, label %if.end19

if.end14.err_mempool_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_mempool

if.end19:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx5_ib_eq_pf_int, ptr %eq, align 4
  %.compoundliteral20.sroa.3.0.param.sroa_idx = getelementptr inbounds i8, ptr %param, i32 4
  %11 = call ptr @memset(ptr %.compoundliteral20.sroa.3.0.param.sroa_idx, i32 0, i32 44)
  %12 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %param, align 8
  %mask = getelementptr inbounds %struct.mlx5_eq_param, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 4096, ptr %mask, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 8
  %call21 = call ptr @mlx5_eq_create_generic(ptr noundef %15, ptr noundef nonnull %param) #12
  %16 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %core, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call21 to i32
  br label %err_wq

if.end28:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 8
  %call32 = call i32 @mlx5_eq_enable(ptr noundef %19, ptr noundef %call21, ptr noundef %eq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %do.end37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %20 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %21 = call i32 @llvm.read_register.i32(metadata !158) #12
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 1554, i32 noundef %26, i32 noundef %call32) #15
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 8
  %29 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core, align 4
  %call43 = call i32 @mlx5_eq_destroy_generic(ptr noundef %28, ptr noundef %30) #12
  br label %err_wq

err_wq:                                           ; preds = %do.end37, %if.then25
  %err.0 = phi i32 [ %17, %if.then25 ], [ %call32, %do.end37 ]
  %31 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %core, align 4
  %32 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %33) #12
  br label %err_mempool

err_mempool:                                      ; preds = %err_wq, %if.end14.err_mempool_crit_edge
  %err.1 = phi i32 [ %err.0, %err_wq ], [ -12, %if.end14.err_mempool_crit_edge ]
  %34 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pool, align 4
  call void @mempool_destroy(ptr noundef %35) #12
  br label %cleanup

cleanup:                                          ; preds = %err_mempool, %if.end28.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %err.1, %err_mempool ], [ -12, %do.body.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %odp_eq_mutex) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %param) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_eq_pf_action(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pool = getelementptr i8, ptr %work, i32 92
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %curr_nr.i = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 2
  %min_nr.i = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %curr_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_nr.i, align 4
  %4 = ptrtoint ptr %min_nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.i = icmp slt i32 %3, %5
  br i1 %cmp4.i, label %entry.while.body.i_crit_edge, label %entry.mempool_refill.exit_crit_edge

entry.mempool_refill.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mempool_refill.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 3264) #12
  tail call void @mempool_free(ptr noundef %call.i, ptr noundef %1) #12
  %6 = ptrtoint ptr %curr_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_nr.i, align 4
  %8 = ptrtoint ptr %min_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_nr.i, align 4
  %cmp.i = icmp slt i32 %7, %9
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mempool_refill.exit_crit_edge

while.body.i.mempool_refill.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mempool_refill.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

mempool_refill.exit:                              ; preds = %while.body.i.mempool_refill.exit_crit_edge, %entry.mempool_refill.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  tail call fastcc void @mlx5_ib_eq_pf_process(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_eq_pf_int(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !171
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end12, label %do.end12.thread

do.end12:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #12
  %lock = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %nb, i32 0, i32 4
  %call15 = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %do.end12.if.then50.critedge_crit_edge

do.end12.if.then50.critedge_crit_edge:            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.critedge

do.end12.thread:                                  ; preds = %entry
  %lock61 = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %nb, i32 0, i32 4
  %call1562 = tail call i32 @_raw_spin_trylock(ptr noundef %lock61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1562)
  %tobool16.not63 = icmp eq i32 %call1562, 0
  br i1 %tobool16.not63, label %do.end12.thread.do.body28_crit_edge, label %do.end12.thread.if.then50.critedge_crit_edge

do.end12.thread.if.then50.critedge_crit_edge:     ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.critedge

do.end12.thread.do.body28_crit_edge:              ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.then26:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end12.thread.do.body28_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !172
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !168

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !173
  %work = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %nb, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #12
  br label %if.end53

if.then50.critedge:                               ; preds = %do.end12.thread.if.then50.critedge_crit_edge, %do.end12.if.then50.critedge_crit_edge
  %lock64 = phi ptr [ %lock61, %do.end12.thread.if.then50.critedge_crit_edge ], [ %lock, %do.end12.if.then50.critedge_crit_edge ]
  tail call fastcc void @mlx5_ib_eq_pf_process(ptr noundef %nb)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock64, i32 noundef %0) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then50.critedge, %do.end43
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eq_create_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_destroy_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_odp_init_mr_cache_entry(ptr nocapture noundef %ent) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %odp_caps = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %odp_caps to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %odp_caps, align 8
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %order = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 3
  %4 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %order, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 23, label %sw.bb
    i32 24, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %page = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 6
  %7 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %page, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %page2 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 6
  %8 = ptrtoint ptr %page2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 30, ptr %page2, align 4
  %.b = load i1, ptr @mlx5_imr_ksm_entries, align 8
  %conv = select i1 %.b, i32 4, i32 0
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %conv.sink = phi i32 [ %conv, %sw.bb1 ], [ 131072, %sw.bb ]
  %.sink = phi i32 [ 3, %sw.bb1 ], [ 1, %sw.bb ]
  %xlt3 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 4
  %9 = ptrtoint ptr %xlt3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.sink, ptr %xlt3, align 4
  %access_mode4 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 5
  %10 = ptrtoint ptr %access_mode4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %access_mode4, align 4
  %limit5 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 10
  %11 = ptrtoint ptr %limit5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %limit5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_odp_init_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %odp_caps.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13
  %0 = call ptr @memset(ptr %odp_caps.i, i32 0, i32 24)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev.i, align 8
  %caps1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps1.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 17
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.internal_fill_odp_caps.exit_crit_edge, label %lor.lhs.false.i

entry.internal_fill_odp_caps.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %internal_fill_odp_caps.exit

lor.lhs.false.i:                                  ; preds = %entry
  %add.ptr.i.i = getelementptr i32, ptr %4, i32 16
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %lor.lhs.false.i.internal_fill_odp_caps.exit_crit_edge

lor.lhs.false.i.internal_fill_odp_caps.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %internal_fill_odp_caps.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %odp_caps.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %odp_caps.i, align 8
  %12 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps1.i, align 8
  %add.ptr8.i = getelementptr i32, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr8.i, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool11.not.i, i64 268435456, i64 -1
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %spec.select.i, ptr %17, align 8
  %arrayidx18.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr21.i = getelementptr i32, ptr %20, i32 6
  %21 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool24.not.i = icmp sgt i32 %22, -1
  br i1 %tobool24.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then25.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ud_odp_caps.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 2
  %23 = ptrtoint ptr %ud_odp_caps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ud_odp_caps.i, align 8
  %or.i = or i32 %24, 1
  store i32 %or.i, ptr %ud_odp_caps.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end.i.if.end26.i_crit_edge
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr33.i = getelementptr i32, ptr %26, i32 6
  %27 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr33.i, align 4
  %29 = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not.i = icmp eq i32 %29, 0
  br i1 %tobool36.not.i, label %if.end26.i.if.end41.i_crit_edge, label %if.then37.i

if.end26.i.if.end41.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %ud_odp_caps39.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 2
  %30 = ptrtoint ptr %ud_odp_caps39.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ud_odp_caps39.i, align 8
  %or40.i = or i32 %31, 32
  store i32 %or40.i, ptr %ud_odp_caps39.i, align 8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end26.i.if.end41.i_crit_edge
  %32 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr48.i = getelementptr i32, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool51.not.i = icmp sgt i32 %35, -1
  br i1 %tobool51.not.i, label %if.end41.i.if.end55.i_crit_edge, label %if.then52.i

if.end41.i.if.end55.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps53.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %36 = ptrtoint ptr %per_transport_caps53.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %per_transport_caps53.i, align 8
  %or54.i = or i32 %37, 1
  store i32 %or54.i, ptr %per_transport_caps53.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end41.i.if.end55.i_crit_edge
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr62.i = getelementptr i32, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr62.i, align 4
  %42 = and i32 %41, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool65.not.i = icmp eq i32 %42, 0
  br i1 %tobool65.not.i, label %if.end55.i.if.end70.i_crit_edge, label %if.then66.i

if.end55.i.if.end70.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps67.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %43 = ptrtoint ptr %per_transport_caps67.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %per_transport_caps67.i, align 8
  %or69.i = or i32 %44, 2
  store i32 %or69.i, ptr %per_transport_caps67.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end55.i.if.end70.i_crit_edge
  %45 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr77.i = getelementptr i32, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr77.i, align 4
  %49 = and i32 %48, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool80.not.i = icmp eq i32 %49, 0
  br i1 %tobool80.not.i, label %if.end70.i.if.end85.i_crit_edge, label %if.then81.i

if.end70.i.if.end85.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.then81.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps82.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %per_transport_caps82.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %per_transport_caps82.i, align 8
  %or84.i = or i32 %51, 4
  store i32 %or84.i, ptr %per_transport_caps82.i, align 8
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then81.i, %if.end70.i.if.end85.i_crit_edge
  %52 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr92.i = getelementptr i32, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr92.i, align 4
  %56 = and i32 %55, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool95.not.i = icmp eq i32 %56, 0
  br i1 %tobool95.not.i, label %if.end85.i.if.end100.i_crit_edge, label %if.then96.i

if.end85.i.if.end100.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100.i

if.then96.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps97.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %57 = ptrtoint ptr %per_transport_caps97.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %per_transport_caps97.i, align 8
  %or99.i = or i32 %58, 8
  store i32 %or99.i, ptr %per_transport_caps97.i, align 8
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then96.i, %if.end85.i.if.end100.i_crit_edge
  %59 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr107.i = getelementptr i32, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr107.i, align 4
  %63 = and i32 %62, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool110.not.i = icmp eq i32 %63, 0
  br i1 %tobool110.not.i, label %if.end100.i.if.end115.i_crit_edge, label %if.then111.i

if.end100.i.if.end115.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115.i

if.then111.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps112.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %64 = ptrtoint ptr %per_transport_caps112.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %per_transport_caps112.i, align 8
  %or114.i = or i32 %65, 16
  store i32 %or114.i, ptr %per_transport_caps112.i, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then111.i, %if.end100.i.if.end115.i_crit_edge
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr122.i = getelementptr i32, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr122.i, align 4
  %70 = and i32 %69, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool125.not.i = icmp eq i32 %70, 0
  br i1 %tobool125.not.i, label %if.end115.i.if.end130.i_crit_edge, label %if.then126.i

if.end115.i.if.end130.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i

if.then126.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #14
  %per_transport_caps127.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1
  %71 = ptrtoint ptr %per_transport_caps127.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %per_transport_caps127.i, align 8
  %or129.i = or i32 %72, 32
  store i32 %or129.i, ptr %per_transport_caps127.i, align 8
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then126.i, %if.end115.i.if.end130.i_crit_edge
  %73 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr137.i = getelementptr i32, ptr %74, i32 7
  %75 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr137.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %tobool140.not.i = icmp sgt i32 %76, -1
  br i1 %tobool140.not.i, label %if.end130.i.if.end144.i_crit_edge, label %if.then141.i

if.end130.i.if.end144.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144.i

if.then141.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %77 = ptrtoint ptr %xrc_odp_caps.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xrc_odp_caps.i, align 4
  %or143.i = or i32 %78, 1
  store i32 %or143.i, ptr %xrc_odp_caps.i, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then141.i, %if.end130.i.if.end144.i_crit_edge
  %79 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr151.i = getelementptr i32, ptr %80, i32 7
  %81 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr151.i, align 4
  %83 = and i32 %82, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool154.not.i = icmp eq i32 %83, 0
  br i1 %tobool154.not.i, label %if.end144.i.if.end159.i_crit_edge, label %if.then155.i

if.end144.i.if.end159.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159.i

if.then155.i:                                     ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps157.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %84 = ptrtoint ptr %xrc_odp_caps157.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xrc_odp_caps157.i, align 4
  %or158.i = or i32 %85, 2
  store i32 %or158.i, ptr %xrc_odp_caps157.i, align 4
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then155.i, %if.end144.i.if.end159.i_crit_edge
  %86 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr166.i = getelementptr i32, ptr %87, i32 7
  %88 = ptrtoint ptr %add.ptr166.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr166.i, align 4
  %90 = and i32 %89, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool169.not.i = icmp eq i32 %90, 0
  br i1 %tobool169.not.i, label %if.end159.i.if.end174.i_crit_edge, label %if.then170.i

if.end159.i.if.end174.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.i

if.then170.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps172.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %91 = ptrtoint ptr %xrc_odp_caps172.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %xrc_odp_caps172.i, align 4
  %or173.i = or i32 %92, 4
  store i32 %or173.i, ptr %xrc_odp_caps172.i, align 4
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then170.i, %if.end159.i.if.end174.i_crit_edge
  %93 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr181.i = getelementptr i32, ptr %94, i32 7
  %95 = ptrtoint ptr %add.ptr181.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr181.i, align 4
  %97 = and i32 %96, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool184.not.i = icmp eq i32 %97, 0
  br i1 %tobool184.not.i, label %if.end174.i.if.end189.i_crit_edge, label %if.then185.i

if.end174.i.if.end189.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189.i

if.then185.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps187.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %98 = ptrtoint ptr %xrc_odp_caps187.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %xrc_odp_caps187.i, align 4
  %or188.i = or i32 %99, 8
  store i32 %or188.i, ptr %xrc_odp_caps187.i, align 4
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then185.i, %if.end174.i.if.end189.i_crit_edge
  %100 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr196.i = getelementptr i32, ptr %101, i32 7
  %102 = ptrtoint ptr %add.ptr196.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr196.i, align 4
  %104 = and i32 %103, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool199.not.i = icmp eq i32 %104, 0
  br i1 %tobool199.not.i, label %if.end189.i.if.end204.i_crit_edge, label %if.then200.i

if.end189.i.if.end204.i_crit_edge:                ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204.i

if.then200.i:                                     ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps202.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %105 = ptrtoint ptr %xrc_odp_caps202.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %xrc_odp_caps202.i, align 4
  %or203.i = or i32 %106, 16
  store i32 %or203.i, ptr %xrc_odp_caps202.i, align 4
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.then200.i, %if.end189.i.if.end204.i_crit_edge
  %107 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx18.i, align 8
  %add.ptr211.i = getelementptr i32, ptr %108, i32 7
  %109 = ptrtoint ptr %add.ptr211.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr211.i, align 4
  %111 = and i32 %110, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool214.not.i = icmp eq i32 %111, 0
  br i1 %tobool214.not.i, label %if.end204.i.if.end219.i_crit_edge, label %if.then215.i

if.end204.i.if.end219.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219.i

if.then215.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  %xrc_odp_caps217.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13, i32 1, i32 3
  %112 = ptrtoint ptr %xrc_odp_caps217.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %xrc_odp_caps217.i, align 4
  %or218.i = or i32 %113, 32
  store i32 %or218.i, ptr %xrc_odp_caps217.i, align 4
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.then215.i, %if.end204.i.if.end219.i_crit_edge
  %114 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %caps1.i, align 8
  %add.ptr226.i = getelementptr i32, ptr %115, i32 8
  %116 = ptrtoint ptr %add.ptr226.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr226.i, align 4
  %118 = and i32 %117, 8388800
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388800, i32 %118)
  %.not.i = icmp eq i32 %118, 8388800
  br i1 %.not.i, label %land.lhs.true251.i, label %if.end219.i.internal_fill_odp_caps.exit_crit_edge

if.end219.i.internal_fill_odp_caps.exit_crit_edge: ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %internal_fill_odp_caps.exit

land.lhs.true251.i:                               ; preds = %if.end219.i
  %add.ptr258.i = getelementptr i32, ptr %115, i32 16
  %119 = ptrtoint ptr %add.ptr258.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr258.i, align 4
  %121 = and i32 %120, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool261.not.i = icmp eq i32 %121, 0
  br i1 %tobool261.not.i, label %if.then262.i, label %land.lhs.true251.i.internal_fill_odp_caps.exit_crit_edge

land.lhs.true251.i.internal_fill_odp_caps.exit_crit_edge: ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %internal_fill_odp_caps.exit

if.then262.i:                                     ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %odp_caps.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 3, ptr %odp_caps.i, align 8
  br label %internal_fill_odp_caps.exit

internal_fill_odp_caps.exit:                      ; preds = %if.then262.i, %land.lhs.true251.i.internal_fill_odp_caps.exit_crit_edge, %if.end219.i.internal_fill_odp_caps.exit_crit_edge, %lor.lhs.false.i.internal_fill_odp_caps.exit_crit_edge, %entry.internal_fill_odp_caps.exit_crit_edge
  %123 = ptrtoint ptr %odp_caps.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %odp_caps.i, align 8
  %and = and i64 %124, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %internal_fill_odp_caps.exit.cleanup_crit_edge, label %if.end

internal_fill_odp_caps.exit.cleanup_crit_edge:    ; preds = %internal_fill_odp_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %internal_fill_odp_caps.exit
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @mlx5_ib_dev_odp_ops) #12
  %125 = ptrtoint ptr %odp_caps.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %odp_caps.i, align 8
  %and3 = and i64 %126, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end.do.body12_crit_edge, label %if.then5

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

if.then5:                                         ; preds = %if.end
  %127 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mdev.i, align 8
  %null_mkey = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 18
  %call = tail call i32 @mlx5_cmd_null_mkey(ptr noundef %128, ptr noundef %null_mkey) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then5.do.body12_crit_edge, label %do.end

if.then5.do.body12_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %129 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %130 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 68
  %134 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1632, i32 noundef %135, i32 noundef %call) #15
  br label %cleanup

do.body12:                                        ; preds = %if.then5.do.body12_crit_edge, %if.end.do.body12_crit_edge
  %odp_eq_mutex = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %odp_eq_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @mlx5_ib_odp_init_one.__key) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.end, %internal_fill_odp_caps.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.body12 ], [ 0, %internal_fill_odp_caps.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_null_mkey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_odp_cleanup_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %odp_caps = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %odp_caps to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %odp_caps, align 8
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %core.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 16, i32 2
  %2 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %odp_pf_eq = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 16
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 8
  tail call void @mlx5_eq_disable(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %odp_pf_eq) #12
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 8
  %8 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i, align 4
  %call.i = tail call i32 @mlx5_eq_destroy_generic(ptr noundef %7, ptr noundef %9) #12
  %work.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 16, i32 3
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #12
  %wq.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 16, i32 5
  %10 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #12
  %pool.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 16, i32 6
  %12 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool.i, align 4
  tail call void @mempool_destroy(ptr noundef %13) #12
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @mlx5_ib_odp_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @mlx5_imr_ksm_entries, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_advise_mr_prefetch(ptr noundef %pd, i32 noundef %advice, i32 noundef %flags, ptr nocapture noundef readonly %sg_list, i32 noundef %num_sge) local_unnamed_addr #0 align 64 {
entry:
  %bytes_mapped.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %advice)
  %cmp = icmp eq i32 %advice, 0
  %spec.select = select i1 %cmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %advice)
  %cmp1 = icmp eq i32 %advice, 2
  %or3 = or i32 %spec.select, 4
  %pf_flags.1 = select i1 %cmp1, i32 %or3, i32 %spec.select
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_mapped.i) #12
  %0 = ptrtoint ptr %bytes_mapped.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sge)
  %cmp40.not.i = icmp eq i32 %num_sge, 0
  br i1 %cmp40.not.i, label %if.then5.mlx5_ib_prefetch_sg_list.exit_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.mlx5_ib_prefetch_sg_list.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_prefetch_sg_list.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %lkey.i = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.041.i, i32 2
  %1 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lkey.i, align 4
  %call.i = call fastcc ptr @get_prefetchable_mr(ptr noundef %pd, i32 noundef %advice, i32 noundef %2) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call.i to i32
  br label %mlx5_ib_prefetch_sg_list.exit

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.041.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  %length.i = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.041.i, i32 1
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  %call5.i = call fastcc i32 @pagefault_mr(ptr noundef %call.i, i64 noundef %5, i32 noundef %7, ptr noundef nonnull %bytes_mapped.i, i32 noundef %pf_flags.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  %usecount.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  call void @llvm.prefetch.p0(ptr %usecount.i.i, i32 1, i32 3, i32 1) #12
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i.i, ptr %usecount.i.i, i32 1, ptr elementtype(i32) %usecount.i.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5_ib_prefetch_sg_list.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !169

if.end5.i.i.i.i.i.mlx5_ib_prefetch_sg_list.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_prefetch_sg_list.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecount.i.i, i32 noundef 3) #12
  br label %mlx5_ib_prefetch_sg_list.exit

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 1, i32 3
  call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5_ib_prefetch_sg_list.exit

if.end8.i:                                        ; preds = %if.end.i
  %conv38.i = zext i32 %call5.i to i64
  %prefetch.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 4, i32 0, i32 5, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %prefetch.i, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef %conv38.i, ptr noundef %prefetch.i) #12
  %usecount.i26.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i27.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i26.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  call void @llvm.prefetch.p0(ptr %usecount.i26.i, i32 1, i32 3, i32 1) #12
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i26.i, ptr %usecount.i26.i, i32 1, ptr elementtype(i32) %usecount.i26.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i28.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i28.i)
  %cmp.i.i.i.i29.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i28.i, 1
  br i1 %cmp.i.i.i.i29.i, label %if.then.i34.i, label %if.end5.i.i.i.i31.i

if.end5.i.i.i.i31.i:                              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i28.i)
  %.not.i.i.i.i30.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i28.i, 0
  br i1 %.not.i.i.i.i30.i, label %if.end5.i.i.i.i31.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i32.i, !prof !169

if.end5.i.i.i.i31.i.for.inc.i_crit_edge:          ; preds = %if.end5.i.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then10.i.i.i.i32.i:                            ; preds = %if.end5.i.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecount.i26.i, i32 noundef 3) #12
  br label %for.inc.i

if.then.i34.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i33.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 1, i32 3
  call void @__wake_up(ptr noundef %wait.i33.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i34.i, %if.then10.i.i.i.i32.i, %if.end5.i.i.i.i31.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_sge
  br i1 %exitcond.not.i, label %for.inc.i.mlx5_ib_prefetch_sg_list.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.mlx5_ib_prefetch_sg_list.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_prefetch_sg_list.exit

mlx5_ib_prefetch_sg_list.exit:                    ; preds = %for.inc.i.mlx5_ib_prefetch_sg_list.exit_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5_ib_prefetch_sg_list.exit_crit_edge, %if.then.i, %if.then5.mlx5_ib_prefetch_sg_list.exit_crit_edge
  %retval.2.i = phi i32 [ %call5.i, %if.then.i.i ], [ %call5.i, %if.then10.i.i.i.i.i ], [ %call5.i, %if.end5.i.i.i.i.i.mlx5_ib_prefetch_sg_list.exit_crit_edge ], [ %3, %if.then.i ], [ 0, %if.then5.mlx5_ib_prefetch_sg_list.exit_crit_edge ], [ 0, %for.inc.i.mlx5_ib_prefetch_sg_list.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_mapped.i) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_sge, i32 16) #12
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 56) #12
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #16
  %tobool9.not = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  tail call void @__init_work(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %call.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @init_prefetch_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlx5_ib_prefetch_mr_work, ptr %func.i, align 4
  %pf_flags7.i = getelementptr inbounds %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %pf_flags7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pf_flags.1, ptr %pf_flags7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sge)
  %cmp47.not.i = icmp eq i32 %num_sge, 0
  br i1 %cmp47.not.i, label %if.end11.init_prefetch_work.exit.thread_crit_edge, label %if.end11.for.body.i37_crit_edge

if.end11.for.body.i37_crit_edge:                  ; preds = %if.end11
  br label %for.body.i37

if.end11.init_prefetch_work.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_prefetch_work.exit.thread

for.body.i37:                                     ; preds = %for.inc.i42.for.body.i37_crit_edge, %if.end11.for.body.i37_crit_edge
  %i.048.i = phi i32 [ %inc.i40, %for.inc.i42.for.body.i37_crit_edge ], [ 0, %if.end11.for.body.i37_crit_edge ]
  %lkey.i34 = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.048.i, i32 2
  %18 = ptrtoint ptr %lkey.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lkey.i34, align 4
  %call.i35 = tail call fastcc ptr @get_prefetchable_mr(ptr noundef %pd, i32 noundef %advice, i32 noundef %19) #12
  %cmp.i.i36 = icmp ugt ptr %call.i35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36, label %init_prefetch_work.exit, label %for.inc.i42

for.inc.i42:                                      ; preds = %for.body.i37
  %arrayidx.i38 = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.048.i
  %20 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i38, align 8
  %arrayidx12.i = getelementptr %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 3, i32 %i.048.i
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx12.i, align 8
  %length.i39 = getelementptr %struct.ib_sge, ptr %sg_list, i32 %i.048.i, i32 1
  %23 = ptrtoint ptr %length.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i39, align 8
  %length16.i = getelementptr %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 3, i32 %i.048.i, i32 2
  %25 = ptrtoint ptr %length16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %length16.i, align 4
  %mr19.i = getelementptr %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 3, i32 %i.048.i, i32 1
  %26 = ptrtoint ptr %mr19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i35, ptr %mr19.i, align 8
  %inc.i40 = add nuw i32 %i.048.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, %num_sge
  br i1 %exitcond.not.i41, label %for.inc.i42.init_prefetch_work.exit.thread_crit_edge, label %for.inc.i42.for.body.i37_crit_edge

for.inc.i42.for.body.i37_crit_edge:               ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i37

for.inc.i42.init_prefetch_work.exit.thread_crit_edge: ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_prefetch_work.exit.thread

init_prefetch_work.exit.thread:                   ; preds = %for.inc.i42.init_prefetch_work.exit.thread_crit_edge, %if.end11.init_prefetch_work.exit.thread_crit_edge
  %num_sge20.i = getelementptr inbounds %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %num_sge20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %num_sge, ptr %num_sge20.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %28 = load ptr, ptr @system_unbound_wq, align 4
  %call.i44 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef nonnull %call.i.i) #12
  br label %cleanup

init_prefetch_work.exit:                          ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #14
  %num_sge9.i = getelementptr inbounds %struct.prefetch_mr_work, ptr %call.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %num_sge9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.048.i, ptr %num_sge9.i, align 8
  %30 = ptrtoint ptr %call.i35 to i32
  tail call fastcc void @destroy_prefetch_work(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %init_prefetch_work.exit, %init_prefetch_work.exit.thread, %if.end6.cleanup_crit_edge, %mlx5_ib_prefetch_sg_list.exit
  %retval.0 = phi i32 [ %retval.2.i, %mlx5_ib_prefetch_sg_list.exit ], [ %30, %init_prefetch_work.exit ], [ 0, %init_prefetch_work.exit.thread ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_prefetch_work(ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sge = getelementptr inbounds %struct.prefetch_mr_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %mlx5r_deref_odp_mkey.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %mlx5r_deref_odp_mkey.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mr = getelementptr %struct.prefetch_mr_work, ptr %work, i32 0, i32 3, i32 %i.06, i32 1
  %2 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr, align 8
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %3, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usecount.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i, ptr %usecount.i, i32 1, ptr elementtype(i32) %usecount.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge, label %if.then10.i.i.i.i, !prof !169

if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_odp_mkey.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i, i32 noundef 3) #12
  br label %mlx5r_deref_odp_mkey.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %3, i32 0, i32 1, i32 3
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5r_deref_odp_mkey.exit

mlx5r_deref_odp_mkey.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sge, align 8
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %mlx5r_deref_odp_mkey.exit.for.body_crit_edge, label %mlx5r_deref_odp_mkey.exit.for.end_crit_edge

mlx5r_deref_odp_mkey.exit.for.end_crit_edge:      ; preds = %mlx5r_deref_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

mlx5r_deref_odp_mkey.exit.for.body_crit_edge:     ; preds = %mlx5r_deref_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %mlx5r_deref_odp_mkey.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kvfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_odp_unmap_dma_pages(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_unused_implicit_child_mr(ptr noundef %mr) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %start.i = getelementptr inbounds %struct.ib_umem_odp, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start.i, align 4
  %parent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %usecount = getelementptr inbounds %struct.mlx5_ib_mr, ptr %5, i32 0, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecount, i32 noundef 4) #12
  %6 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %usecount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %8 = phi i32 [ %7, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %usecount) #12, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !169

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !169

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecount, i32 noundef 0) #12
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %if.end

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 %3, 30
  %implicit_children = getelementptr inbounds %struct.mlx5_ib_mr, ptr %5, i32 0, i32 4, i32 0, i32 3
  %call3 = call ptr @xa_erase(ptr noundef %implicit_children, i32 noundef %shr) #12
  %odp_destroy = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4
  call void @__init_work(ptr noundef %odp_destroy, i32 noundef 0) #12
  %18 = ptrtoint ptr %odp_destroy to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %odp_destroy, align 8
  %lockdep_map = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @destroy_unused_implicit_child_mr.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry7 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @free_implicit_child_mr_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %22 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %odp_destroy) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %refcount_inc_not_zero.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_implicit_child_mr_work(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -288
  %parent = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umem, align 8
  %umem1 = getelementptr i8, ptr %work, i32 -72
  %4 = ptrtoint ptr %umem1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %umem1, align 8
  %usecount.i.i = getelementptr i8, ptr %work, i32 -80
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usecount.i.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i.i, ptr %usecount.i.i, i32 1, ptr elementtype(i32) %usecount.i.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !169

if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_odp_mkey.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i.i, i32 noundef 3) #12
  br label %mlx5r_deref_odp_mkey.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i.i = getelementptr i8, ptr %work, i32 -132
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5r_deref_odp_mkey.exit.i

mlx5r_deref_odp_mkey.exit.i:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 1627) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #12
  %7 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %usecount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %mlx5r_deref_odp_mkey.exit.i.mlx5r_deref_wait_odp_mkey.exit_crit_edge, label %if.end.i

mlx5r_deref_odp_mkey.exit.i.mlx5r_deref_wait_odp_mkey.exit_crit_edge: ; preds = %mlx5r_deref_odp_mkey.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_wait_odp_mkey.exit

if.end.i:                                         ; preds = %mlx5r_deref_odp_mkey.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %9 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %wait.i = getelementptr i8, ptr %work, i32 -132
  %call419.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %call.i.i.i1620.i = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %usecount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp721.i = icmp eq i32 %11, 0
  br i1 %cmp721.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #12
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %call.i.i.i16.i = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %usecount.i.i, align 4
  %cmp7.i = icmp eq i32 %13, 0
  br i1 %cmp7.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %mlx5r_deref_wait_odp_mkey.exit

mlx5r_deref_wait_odp_mkey.exit:                   ; preds = %for.end.i, %mlx5r_deref_odp_mkey.exit.i.mlx5r_deref_wait_odp_mkey.exit_crit_edge
  %umem_mutex = getelementptr inbounds %struct.ib_umem_odp, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %umem_mutex, i32 noundef 0) #12
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %start.i = getelementptr inbounds %struct.ib_umem_odp, ptr %5, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start.i, align 4
  %shr = lshr i32 %17, 30
  %conv = zext i32 %shr to i64
  %call5 = call i32 @mlx5_ib_update_xlt(ptr noundef %15, i64 noundef %conv, i32 noundef 1, i32 noundef 0, i32 noundef 68) #12
  call void @mutex_unlock(ptr noundef %umem_mutex) #12
  %call7 = call i32 @mlx5_ib_dereg_mr(ptr noundef %add.ptr, ptr noundef null) #12
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  call void @llvm.prefetch.p0(ptr %usecount.i, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i, ptr %usecount.i, i32 1, ptr elementtype(i32) %usecount.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mlx5r_deref_wait_odp_mkey.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge, label %if.then10.i.i.i.i, !prof !169

if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_odp_mkey.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecount.i, i32 noundef 3) #12
  br label %mlx5r_deref_odp_mkey.exit

if.then.i:                                        ; preds = %mlx5r_deref_wait_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i15 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 1, i32 3
  call void @__wake_up(ptr noundef %wait.i15, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5r_deref_odp_mkey.exit

mlx5r_deref_odp_mkey.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_odp_map_dma_and_lock(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_dmabuf_map_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_find_best_pgsz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_dmabuf_unmap_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_update_mr_pas(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_ib_eq_pf_process(ptr noundef %eq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call215 = tail call ptr @mlx5_eq_get_eqe(ptr noundef %1, i32 noundef 0) #12
  %tobool.not216 = icmp eq ptr %call215, null
  br i1 %tobool.not216, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pool = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 6
  %dev = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 1
  %wq = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %mlx5_eq_update_cc.exit.while.body_crit_edge, %while.body.lr.ph
  %call218 = phi ptr [ %call215, %while.body.lr.ph ], [ %call, %mlx5_eq_update_cc.exit.while.body_crit_edge ]
  %cc.0217 = phi i32 [ 0, %while.body.lr.ph ], [ %cc.addr.0.i, %mlx5_eq_update_cc.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %call1 = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 2592) #12
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %eq, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %data = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5
  %sub_type = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 3
  %5 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sub_type, align 1
  %event_subtype = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %event_subtype to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %event_subtype, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_eq_pf_process, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !170

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 13
  %14 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %20 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sub_type, align 1
  %conv = zext i8 %21 to i32
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug553, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 1404, i32 noundef %19, i32 noundef %conv, i32 noundef %23) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %24 = ptrtoint ptr %sub_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sub_type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %25, label %do.end112 [
    i8 1, label %sw.bb
    i8 0, label %sw.bb70
  ]

sw.bb:                                            ; preds = %do.end
  %27 = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5, i32 0, i32 0, i32 1
  %pftype_token = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5, i32 1, i32 8
  %28 = ptrtoint ptr %pftype_token to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %pftype_token, align 1
  %shr = lshr i32 %29, 24
  %conv16 = trunc i32 %shr to i8
  %type = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 3
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv16, ptr %type, align 1
  %31 = load i32, ptr %pftype_token, align 1
  %and = and i32 %31, 16777215
  %token = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 1
  %32 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and, ptr %token, align 4
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %27, align 1
  %35 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 8
  %packet_length = getelementptr inbounds %struct.anon.206, ptr %27, i32 0, i32 2
  %37 = ptrtoint ptr %packet_length to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %packet_length, align 1
  %conv19 = zext i16 %38 to i32
  %packet_size = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv19, ptr %packet_size, align 4
  %rdma_op_len = getelementptr inbounds %struct.anon.206, ptr %27, i32 0, i32 3
  %40 = ptrtoint ptr %rdma_op_len to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %rdma_op_len, align 1
  %rdma_op_len20 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4, i32 0, i32 2
  %42 = ptrtoint ptr %rdma_op_len20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rdma_op_len20, align 8
  %rdma_va = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %rdma_va to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %rdma_va, align 1
  %rdma_va21 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4, i32 0, i32 3
  %45 = ptrtoint ptr %rdma_va21 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %rdma_va21, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_eq_pf_process, %if.then34)) #12
          to label %do.body47 [label %if.then34], !srcloc !170

if.then34:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = getelementptr inbounds %struct.ib_device, ptr %47, i32 0, i32 13
  %49 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i203 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i203 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid39, align 8
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 1
  %conv41 = zext i8 %56 to i32
  %57 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %token, align 4
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug554, ptr noundef %48, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 1425, i32 noundef %54, i32 noundef %conv41, i32 noundef %58, i32 noundef %60) #12
  br label %do.body47

do.body47:                                        ; preds = %if.then34, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_eq_pf_process, %if.then59)) #12
          to label %sw.epilog [label %if.then59], !srcloc !170

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %63 = getelementptr inbounds %struct.ib_device, ptr %62, i32 0, i32 13
  %64 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i204 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i204 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task63, align 8
  %pid64 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid64, align 8
  %70 = ptrtoint ptr %rdma_op_len20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rdma_op_len20, align 8
  %72 = ptrtoint ptr %rdma_va21 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rdma_va21, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug555, ptr noundef %63, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 1429, i32 noundef %69, i32 noundef %71, i64 noundef %73) #12
  br label %sw.epilog

sw.bb70:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %74 = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5, i32 0, i32 0, i32 1
  %pftype_wq = getelementptr inbounds %struct.mlx5_eqe, ptr %call218, i32 0, i32 5, i32 1, i32 8
  %75 = ptrtoint ptr %pftype_wq to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %pftype_wq, align 1
  %shr71 = lshr i32 %76, 24
  %77 = trunc i32 %shr71 to i8
  %conv73 = and i8 %77, 7
  %type74 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 3
  %78 = ptrtoint ptr %type74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv73, ptr %type74, align 1
  %token75 = getelementptr inbounds %struct.anon.205, ptr %74, i32 0, i32 4
  %79 = ptrtoint ptr %token75 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %token75, align 1
  %token76 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 1
  %81 = ptrtoint ptr %token76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %token76, align 4
  %82 = load i32, ptr %pftype_wq, align 1
  %and78 = and i32 %82, 16777215
  %83 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4
  %wq_num = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %84 = ptrtoint ptr %wq_num to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and78, ptr %wq_num, align 4
  %wqe_index = getelementptr inbounds %struct.anon.205, ptr %74, i32 0, i32 1
  %85 = ptrtoint ptr %wqe_index to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %wqe_index, align 1
  %wqe_index79 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 4, i32 0, i32 2
  %87 = ptrtoint ptr %wqe_index79 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %wqe_index79, align 8
  %packet_length80 = getelementptr inbounds %struct.anon.205, ptr %74, i32 0, i32 3
  %88 = ptrtoint ptr %packet_length80 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %packet_length80, align 1
  %conv81 = zext i16 %89 to i32
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv81, ptr %83, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_eq_pf_process, %if.then95)) #12
          to label %sw.epilog [label %if.then95], !srcloc !170

if.then95:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %93 = getelementptr inbounds %struct.ib_device, ptr %92, i32 0, i32 13
  %94 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i205 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i205 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task99, align 8
  %pid100 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid100 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid100, align 8
  %100 = ptrtoint ptr %type74 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %type74, align 1
  %conv102 = zext i8 %101 to i32
  %102 = ptrtoint ptr %token76 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %token76, align 4
  %104 = ptrtoint ptr %wq_num to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wq_num, align 4
  %106 = ptrtoint ptr %wqe_index79 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %wqe_index79, align 8
  %conv106 = zext i16 %107 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug556, ptr noundef %93, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef 1449, i32 noundef %99, i32 noundef %conv102, i32 noundef %103, i32 noundef %105, i32 noundef %conv106) #12
  br label %sw.epilog

do.end112:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = zext i8 %25 to i32
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %110 = getelementptr inbounds %struct.ib_device, ptr %109, i32 0, i32 13
  %111 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i206 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i206 to ptr
  %task116 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task116 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task116, align 8
  %pid117 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 68
  %115 = ptrtoint ptr %pid117 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pid117, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef 1455, i32 noundef %116, i32 noundef %conv15) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end112, %if.then95, %sw.bb70, %if.then59, %do.body47
  %eq120 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 5
  %117 = ptrtoint ptr %eq120 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %eq, ptr %eq120, align 8
  %work122 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work122, i32 noundef 0) #12
  %118 = ptrtoint ptr %work122 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -64, ptr %work122, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @mlx5_ib_eq_pf_process.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry127 = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 6, i32 1
  %119 = ptrtoint ptr %entry127 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %entry127, ptr %entry127, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 6, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %entry127, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_pagefault, ptr %call1, i32 0, i32 6, i32 2
  %121 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mlx5_ib_eqe_pf_action, ptr %func, align 4
  %122 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %123, ptr noundef %work122) #12
  %inc = add i32 %cc.0217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc)
  %cmp.i = icmp ugt i32 %inc, 127
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.mlx5_eq_update_cc.exit_crit_edge, !prof !168

sw.epilog.mlx5_eq_update_cc.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_eq_update_cc.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %core, align 4
  tail call void @mlx5_eq_update_ci(ptr noundef %125, i32 noundef %inc, i1 noundef zeroext false) #12
  br label %mlx5_eq_update_cc.exit

mlx5_eq_update_cc.exit:                           ; preds = %if.then.i, %sw.epilog.mlx5_eq_update_cc.exit_crit_edge
  %cc.addr.0.i = phi i32 [ 0, %if.then.i ], [ %inc, %sw.epilog.mlx5_eq_update_cc.exit_crit_edge ]
  %126 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %core, align 4
  %call = tail call ptr @mlx5_eq_get_eqe(ptr noundef %127, i32 noundef %cc.addr.0.i) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %mlx5_eq_update_cc.exit.while.end_crit_edge, label %mlx5_eq_update_cc.exit.while.body_crit_edge

mlx5_eq_update_cc.exit.while.body_crit_edge:      ; preds = %mlx5_eq_update_cc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

mlx5_eq_update_cc.exit.while.end_crit_edge:       ; preds = %mlx5_eq_update_cc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %mlx5_eq_update_cc.exit.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %cc.0214 = phi i32 [ %cc.0217, %if.then ], [ 0, %entry.while.end_crit_edge ], [ %cc.addr.0.i, %mlx5_eq_update_cc.exit.while.end_crit_edge ]
  %128 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %core, align 4
  tail call void @mlx5_eq_update_ci(ptr noundef %129, i32 noundef %cc.0214, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eq_get_eqe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_eqe_pf_action(ptr noundef %work) #0 align 64 {
entry:
  %in.i.i = alloca [4 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -44
  %eq1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %eq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq1, align 8
  %dev = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %event_subtype1.i = getelementptr i8, ptr %work, i32 -36
  %4 = ptrtoint ptr %event_subtype1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %event_subtype1.i, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %5, label %do.end.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_ib_mr_wqe_pfault_handler(ptr noundef %3, ptr noundef %add.ptr) #12
  br label %mlx5_ib_pfault.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_ib_mr_rdma_pfault_handler(ptr noundef %3, ptr noundef %add.ptr) #12
  br label %mlx5_ib_pfault.exit

do.end.i:                                         ; preds = %entry
  %conv.i = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %8 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1368, i32 noundef %13, i32 noundef %conv.i) #15
  %14 = ptrtoint ptr %event_subtype1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %event_subtype1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.i = icmp eq i8 %15, 0
  %wq_num2.i.i = getelementptr i8, ptr %work, i32 -24
  %token.i.i = getelementptr i8, ptr %work, i32 -40
  %cond.in.i.i = select i1 %cmp.i.i, ptr %wq_num2.i.i, ptr %token.i.i
  %16 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #12
  %17 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %17, align 4
  %19 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 33816576, ptr %in.i.i, align 4
  %type.i.i = getelementptr i8, ptr %work, i32 -35
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i.i, align 1
  %add.ptr16.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %22 = and i8 %21, 7
  %and18.i.i = zext i8 %22 to i32
  %shl19.i.i = shl nuw nsw i32 %and18.i.i, 24
  %23 = ptrtoint ptr %token.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %token.i.i, align 4
  %add.ptr32.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 3
  %and34.i.i = and i32 %24, 16777215
  %25 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and34.i.i, ptr %add.ptr32.i.i, align 4
  %and49.i.i = and i32 %cond.i.i, 16777215
  %or51.i.i = or i32 %shl19.i.i, %and49.i.i
  %or67.i.i = or i32 %or51.i.i, -2147483648
  %26 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or67.i.i, ptr %add.ptr16.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #12
  %27 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev.i.i, align 8
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %29, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %_out.i.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool75.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool75.not.i.i, label %do.end.i.mlx5_ib_page_fault_resume.exit.i_crit_edge, label %do.end78.i.i

do.end.i.mlx5_ib_page_fault_resume.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_page_fault_resume.exit.i

do.end78.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 404, i32 noundef %35, i32 noundef %cond.i.i, i32 noundef %call.i.i) #15
  br label %mlx5_ib_page_fault_resume.exit.i

mlx5_ib_page_fault_resume.exit.i:                 ; preds = %do.end78.i.i, %do.end.i.mlx5_ib_page_fault_resume.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #12
  br label %mlx5_ib_pfault.exit

mlx5_ib_pfault.exit:                              ; preds = %mlx5_ib_page_fault_resume.exit.i, %sw.bb2.i, %sw.bb.i
  %pool = getelementptr inbounds %struct.mlx5_ib_pf_eq, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pool, align 4
  call void @mempool_free(ptr noundef %add.ptr, ptr noundef %37) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_update_ci(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_ib_mr_wqe_pfault_handler(ptr noundef %dev, ptr nocapture noundef %pfault) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %bytes_mapped = alloca i32, align 4
  %bytes_copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %wqe_index1 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %wqe_index1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wqe_index1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_mapped) #12
  %5 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %bytes_mapped, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_copied) #12
  %6 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bytes_copied, align 4, !annotation !178
  %wq_num = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %wq_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wq_num, align 4
  %9 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %1, label %entry.do.body_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %entry.sw.bb2.i_crit_edge
    i8 2, label %entry.sw.bb2.i_crit_edge326
    i8 3, label %entry.sw.bb2.i_crit_edge327
  ]

entry.sw.bb2.i_crit_edge327:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge326:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @mlx5_cmd_get_srq(ptr noundef %dev, i32 noundef %8) #12
  br label %odp_get_rsc.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge326, %entry.sw.bb2.i_crit_edge327
  %call3.i = tail call ptr @mlx5_core_res_hold(ptr noundef %dev, i32 noundef %8, i32 noundef 0) #12
  br label %odp_get_rsc.exit

odp_get_rsc.exit:                                 ; preds = %sw.bb2.i, %sw.bb.i
  %common.0.i = phi ptr [ %call3.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ]
  %tobool4.not = icmp eq ptr %common.0.i, null
  br i1 %tobool4.not, label %odp_get_rsc.exit.do.body_crit_edge, label %if.end13

odp_get_rsc.exit.do.body_crit_edge:               ; preds = %odp_get_rsc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %odp_get_rsc.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_mr_wqe_pfault_handler, %if.then10)) #12
          to label %cleanup138 [label %if.then10], !srcloc !170

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %11 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %wq_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wq_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug544, ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 1205, i32 noundef %16, i32 noundef %18) #12
  br label %cleanup138

if.end13:                                         ; preds = %odp_get_rsc.exit
  %19 = ptrtoint ptr %common.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %common.0.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %20, label %do.end26 [
    i32 0, label %if.end13.if.end33_crit_edge
    i32 3, label %if.end13.if.end33_crit_edge328
    i32 4, label %if.end13.if.end33_crit_edge329
  ]

if.end13.if.end33_crit_edge329:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end13.if.end33_crit_edge328:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %22 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %23 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i209 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i209 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task29, align 8
  %pid30 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid30, align 8
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type, align 1
  %conv32 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 1212, i32 noundef %28, i32 noundef %conv32) #15
  br label %resolve_page_fault

if.end33:                                         ; preds = %if.end13.if.end33_crit_edge, %if.end13.if.end33_crit_edge328, %if.end13.if.end33_crit_edge329
  %call34 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #12
  %31 = inttoptr i32 %call34 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %32 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %33 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i210 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i210 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef 1218, i32 noundef %38) #15
  br label %resolve_page_fault

if.end44:                                         ; preds = %if.end33
  %39 = ptrtoint ptr %common.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %common.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp46 = icmp eq i32 %40, 0
  br i1 %cmp46, label %cond.end, label %if.end44.if.then72_crit_edge

if.end44.if.then72_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

cond.end:                                         ; preds = %if.end44
  %add.ptr.i.i = getelementptr i8, ptr %common.0.i, i32 -4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i, align 8
  %tobool49.not = icmp eq ptr %42, null
  %brmerge = select i1 %tobool49.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else, label %if.then53

if.then53:                                        ; preds = %cond.end
  %conv54 = zext i16 %4 to i32
  %call55 = call i32 @mlx5_ib_read_wqe_sq(ptr noundef nonnull %42, i32 noundef %conv54, ptr noundef nonnull %31, i32 noundef 4096, ptr noundef nonnull %bytes_copied) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then53.do.end108_crit_edge

if.then53.do.end108_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end58:                                         ; preds = %if.then53
  %43 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes_copied, align 4
  %45 = ptrtoint ptr %wqe_index1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wqe_index1, align 8
  %qpn2.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %42, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %qpn2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qpn2.i, align 4
  %qpn_ds.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %31, i32 0, i32 1
  %49 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qpn_ds.i, align 4
  %and.i211 = and i32 %50, 63
  %mul.i = shl nuw nsw i32 %and.i211, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %44)
  %cmp.i = icmp ugt i32 %mul.i, %44
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %51 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %52 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1064, i32 noundef %57, i32 noundef %and.i211, i32 noundef %44) #15
  br label %resolve_page_fault

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %cmp3.i = icmp eq i32 %and.i211, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end12.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %59 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i61.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i61.i to ptr
  %task10.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task10.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task10.i, align 8
  %pid11.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid11.i, align 8
  %conv.i = zext i16 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 1070, i32 noundef %64, i32 noundef %conv.i, i32 noundef %48) #15
  br label %resolve_page_fault

if.end12.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %31, i32 %mul.i
  %add.ptr14.i = getelementptr i8, ptr %31, i32 16
  %65 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %31, align 4
  %type.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %42, i32 0, i32 22
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type.i, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %68, label %if.end12.i.if.end33.i_crit_edge [
    i32 9, label %if.end20.i.thread
    i32 4, label %if.end12.i.if.then27.i_crit_edge
    i32 4098, label %if.end12.i.if.then27.i_crit_edge330
  ]

if.end12.i.if.then27.i_crit_edge330:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.end12.i.if.then27.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.end12.i.if.end33.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.end20.i.thread:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr19.i = getelementptr i8, ptr %31, i32 32
  br label %if.end33.i

if.then27.i:                                      ; preds = %if.end12.i.if.then27.i_crit_edge, %if.end12.i.if.then27.i_crit_edge330
  %dqp_dct.i = getelementptr i8, ptr %31, i32 24
  %70 = ptrtoint ptr %dqp_dct.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dqp_dct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %tobool.not.i = icmp sgt i32 %71, -1
  %..i = select i1 %tobool.not.i, i32 16, i32 48
  %add.ptr30.i = getelementptr i8, ptr %add.ptr14.i, i32 %..i
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %if.end20.i.thread, %if.end12.i.if.end33.i_crit_edge
  %wqe.1 = phi ptr [ %add.ptr30.i, %if.then27.i ], [ %add.ptr19.i, %if.end20.i.thread ], [ %add.ptr14.i, %if.end12.i.if.end33.i_crit_edge ]
  %trunc.i = trunc i32 %66 to i8
  %72 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %trunc.i, label %if.end33.i.lor.lhs.false_crit_edge [
    i8 8, label %if.end33.i.sw.bb.i212_crit_edge
    i8 9, label %if.end33.i.sw.bb.i212_crit_edge331
    i8 16, label %if.end33.i.sw.bb.i212_crit_edge332
    i8 17, label %if.end33.i.sw.bb35.i_crit_edge
    i8 18, label %if.end33.i.sw.bb35.i_crit_edge333
  ]

if.end33.i.sw.bb35.i_crit_edge333:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end33.i.sw.bb35.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end33.i.sw.bb.i212_crit_edge332:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i212

if.end33.i.sw.bb.i212_crit_edge331:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i212

if.end33.i.sw.bb.i212_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i212

if.end33.i.lor.lhs.false_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

sw.bb.i212:                                       ; preds = %if.end33.i.sw.bb.i212_crit_edge, %if.end33.i.sw.bb.i212_crit_edge331, %if.end33.i.sw.bb.i212_crit_edge332
  %add.ptr34.i = getelementptr i8, ptr %wqe.1, i32 16
  br label %lor.lhs.false

sw.bb35.i:                                        ; preds = %if.end33.i.sw.bb35.i_crit_edge, %if.end33.i.sw.bb35.i_crit_edge333
  %add.ptr37.i = getelementptr i8, ptr %wqe.1, i32 32
  br label %lor.lhs.false

if.else:                                          ; preds = %cond.end
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge205 = select i1 %tobool49.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge205, label %if.else70, label %if.then63

if.then63:                                        ; preds = %if.else
  %conv64 = zext i16 %4 to i32
  %call65 = call i32 @mlx5_ib_read_wqe_rq(ptr noundef nonnull %42, i32 noundef %conv64, ptr noundef nonnull %31, i32 noundef 4096, ptr noundef nonnull %bytes_copied) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.then63.do.end108_crit_edge

if.then63.do.end108_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end68:                                         ; preds = %if.then63
  %wqe_shift.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %42, i32 0, i32 4, i32 11
  %73 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wqe_shift.i, align 4
  %shl.i = shl nuw i32 1, %74
  %flags_en.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %42, i32 0, i32 21
  %75 = ptrtoint ptr %flags_en.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags_en.i, align 4
  %and.i214 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214)
  %tobool.not.i215 = icmp eq i32 %and.i214, 0
  br i1 %tobool.not.i215, label %if.end.i221, label %do.end.i219

do.end.i219:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %77 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %78 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i216 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i216 to ptr
  %task.i217 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task.i217 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task.i217, align 8
  %pid.i218 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid.i218 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid.i218, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 1137, i32 noundef %83) #15
  br label %resolve_page_fault

if.end.i221:                                      ; preds = %if.end68
  %84 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bytes_copied, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %85)
  %cmp.i220 = icmp sgt i32 %shl.i, %85
  br i1 %cmp.i220, label %do.end4.i, label %if.end9.i

do.end4.i:                                        ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #14
  %86 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %87 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i14.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i14.i to ptr
  %task7.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task7.i, align 8
  %pid8.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid8.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid8.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 1142, i32 noundef %92) #15
  br label %resolve_page_fault

if.end9.i:                                        ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i222 = getelementptr i8, ptr %31, i32 %shl.i
  br label %lor.lhs.false

if.else70:                                        ; preds = %if.else
  br i1 %tobool49.not, label %if.else70.if.then72_crit_edge, label %if.else70.resolve_page_fault_crit_edge

if.else70.resolve_page_fault_crit_edge:           ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_page_fault

if.else70.if.then72_crit_edge:                    ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72

if.then72:                                        ; preds = %if.else70.if.then72_crit_edge, %if.end44.if.then72_crit_edge
  %add.ptr.i.i224 = getelementptr i8, ptr %common.0.i, i32 -124
  %conv74 = zext i16 %4 to i32
  %call75 = call i32 @mlx5_ib_read_wqe_srq(ptr noundef %add.ptr.i.i224, i32 noundef %conv74, ptr noundef nonnull %31, i32 noundef 4096, ptr noundef nonnull %bytes_copied) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then72.do.end108_crit_edge

if.then72.do.end108_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end78:                                         ; preds = %if.then72
  %93 = ptrtoint ptr %bytes_copied to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bytes_copied, align 4
  %wqe_shift.i225 = getelementptr i8, ptr %common.0.i, i32 80
  %95 = ptrtoint ptr %wqe_shift.i225 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wqe_shift.i225, align 4
  %shl.i226 = shl nuw i32 1, %96
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i226, i32 %94)
  %cmp.i227 = icmp sgt i32 %shl.i226, %94
  br i1 %cmp.i227, label %if.end82.thread292, label %if.end82

if.end82.thread292:                               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %97 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %98 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i228 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i228 to ptr
  %task.i229 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i229 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i229, align 8
  %pid.i230 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 68
  %102 = ptrtoint ptr %pid.i230 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid.i230, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.51, i32 noundef 1118, i32 noundef %103) #15
  br label %resolve_page_fault

if.end82:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i232 = getelementptr i8, ptr %31, i32 %shl.i226
  %add.ptr1.i = getelementptr i8, ptr %31, i32 16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end82, %if.end9.i, %sw.bb35.i, %sw.bb.i212, %if.end33.i.lor.lhs.false_crit_edge
  %wqe_end.4285 = phi ptr [ %add.ptr.i232, %if.end82 ], [ %add.ptr.i222, %if.end9.i ], [ %add.ptr.i, %sw.bb.i212 ], [ %add.ptr.i, %sw.bb35.i ], [ %add.ptr.i, %if.end33.i.lor.lhs.false_crit_edge ]
  %wqe.5284 = phi ptr [ %add.ptr1.i, %if.end82 ], [ %31, %if.end9.i ], [ %add.ptr34.i, %sw.bb.i212 ], [ %add.ptr37.i, %sw.bb35.i ], [ %wqe.1, %if.end33.i.lor.lhs.false_crit_edge ]
  %cmp85.not = icmp ult ptr %wqe.5284, %wqe_end.4285
  br i1 %cmp85.not, label %if.end88, label %lor.lhs.false.resolve_page_fault_crit_edge

lor.lhs.false.resolve_page_fault_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_page_fault

if.end88:                                         ; preds = %lor.lhs.false
  %104 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %bytes_mapped, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end88
  %wqe.addr.0.i310 = phi ptr [ %wqe.5284, %if.end88 ], [ %wqe.addr.1.i, %cleanup.i.while.body.i_crit_edge ]
  %ret.0.i309 = phi i32 [ 0, %if.end88 ], [ %ret.1.i, %cleanup.i.while.body.i_crit_edge ]
  %npages.0.i308 = phi i32 [ 0, %if.end88 ], [ %npages.1.i, %cleanup.i.while.body.i_crit_edge ]
  %total_wqe_bytes.0307 = phi i32 [ 0, %if.end88 ], [ %total_wqe_bytes.1321, %cleanup.i.while.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %wqe.addr.0.i310, i32 0, i32 2
  %105 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %addr.i, align 8
  %lkey.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %wqe.addr.0.i310, i32 0, i32 1
  %107 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lkey.i, align 4
  %109 = ptrtoint ptr %wqe.addr.0.i310 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %wqe.addr.0.i310, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %tobool5.not.i = icmp sgt i32 %110, -1
  %and10.i = and i32 %110, 1023
  %add11.i = add nuw nsw i32 %and10.i, 19
  %and12.i = and i32 %add11.i, 2032
  %and7.i = and i32 %110, 2147483647
  %bcnt.0.i = select i1 %tobool5.not.i, i32 %and7.i, i32 %and10.i
  %wqe.addr.1.v.i = select i1 %tobool5.not.i, i32 16, i32 %and12.i
  %wqe.addr.1.i = getelementptr i8, ptr %wqe.addr.0.i310, i32 %wqe.addr.1.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt.0.i)
  %cmp16.i237 = icmp eq i32 %bcnt.0.i, 0
  %or.cond.i = select i1 %tobool.not, i1 %cmp16.i237, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %108)
  %cmp18.i = icmp eq i32 %108, 256
  %or.cond100.i = select i1 %or.cond.i, i1 %cmp18.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %cmp20.i = icmp eq i64 %106, 0
  %or.cond101.i = select i1 %or.cond100.i, i1 %cmp20.i, i1 false
  br i1 %or.cond101.i, label %while.body.i.pagefault_data_segments.exit_crit_edge, label %if.end22.i

while.body.i.pagefault_data_segments.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pagefault_data_segments.exit

if.end22.i:                                       ; preds = %while.body.i
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end29.i

if.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %spec.store.select.i = select i1 %cmp16.i237, i32 -2147483648, i32 %bcnt.0.i
  br label %if.then36.i

lor.lhs.false.i:                                  ; preds = %if.end22.i
  %111 = ptrtoint ptr %pfault to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pfault, align 8
  %113 = call i32 @llvm.usub.sat.i32(i32 %bcnt.0.i, i32 %112) #12
  %add28.i = add i32 %113, %total_wqe_bytes.0307
  %spec.store.select.i320 = select i1 %cmp16.i237, i32 -2147483648, i32 %bcnt.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i320, i32 %112)
  %cmp35.not.i = icmp ugt i32 %spec.store.select.i320, %112
  br i1 %cmp35.not.i, label %if.end46.i, label %lor.lhs.false.i.if.then36.i_crit_edge

lor.lhs.false.i.if.then36.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false.i.if.then36.i_crit_edge, %if.end29.i
  %spec.store.select.i324 = phi i32 [ %spec.store.select.i320, %lor.lhs.false.i.if.then36.i_crit_edge ], [ %spec.store.select.i, %if.end29.i ]
  %total_wqe_bytes.1322 = phi i32 [ %add28.i, %lor.lhs.false.i.if.then36.i_crit_edge ], [ %total_wqe_bytes.0307, %if.end29.i ]
  %114 = ptrtoint ptr %pfault to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pfault, align 8
  %116 = call i32 @llvm.usub.sat.i32(i32 %115, i32 %spec.store.select.i324) #12
  %117 = ptrtoint ptr %pfault to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %pfault, align 8
  br label %cleanup.i

if.end46.i:                                       ; preds = %lor.lhs.false.i
  %call.i238 = call fastcc i32 @pagefault_single_data_segment(ptr noundef %dev, i32 noundef %108, i64 noundef %106, i32 noundef %spec.store.select.i320, ptr noundef %pfault, ptr noundef nonnull %bytes_mapped) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %cmp48.i = icmp slt i32 %call.i238, 0
  %118 = call i32 @llvm.smax.i32(i32 %call.i238, i32 0) #12
  %spec.select.i = add i32 %118, %npages.0.i308
  br i1 %cmp48.i, label %if.end46.i.pagefault_data_segments.exit_crit_edge, label %if.end46.i.cleanup.i_crit_edge

if.end46.i.cleanup.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end46.i.pagefault_data_segments.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pagefault_data_segments.exit

cleanup.i:                                        ; preds = %if.end46.i.cleanup.i_crit_edge, %if.then36.i
  %total_wqe_bytes.1321 = phi i32 [ %total_wqe_bytes.1322, %if.then36.i ], [ %add28.i, %if.end46.i.cleanup.i_crit_edge ]
  %npages.1.i = phi i32 [ %npages.0.i308, %if.then36.i ], [ %spec.select.i, %if.end46.i.cleanup.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.0.i309, %if.then36.i ], [ %call.i238, %if.end46.i.cleanup.i_crit_edge ]
  %cmp.i236 = icmp ult ptr %wqe.addr.1.i, %wqe_end.4285
  br i1 %cmp.i236, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.pagefault_data_segments.exit_crit_edge

cleanup.i.pagefault_data_segments.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pagefault_data_segments.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

pagefault_data_segments.exit:                     ; preds = %cleanup.i.pagefault_data_segments.exit_crit_edge, %if.end46.i.pagefault_data_segments.exit_crit_edge, %while.body.i.pagefault_data_segments.exit_crit_edge
  %total_wqe_bytes.2 = phi i32 [ %total_wqe_bytes.1321, %cleanup.i.pagefault_data_segments.exit_crit_edge ], [ %total_wqe_bytes.0307, %while.body.i.pagefault_data_segments.exit_crit_edge ], [ %add28.i, %if.end46.i.pagefault_data_segments.exit_crit_edge ]
  %npages.2.i = phi i32 [ %npages.1.i, %cleanup.i.pagefault_data_segments.exit_crit_edge ], [ %npages.0.i308, %while.body.i.pagefault_data_segments.exit_crit_edge ], [ %spec.select.i, %if.end46.i.pagefault_data_segments.exit_crit_edge ]
  %ret.2.i = phi i32 [ %ret.1.i, %cleanup.i.pagefault_data_segments.exit_crit_edge ], [ %ret.0.i309, %while.body.i.pagefault_data_segments.exit_crit_edge ], [ %call.i238, %if.end46.i.pagefault_data_segments.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp52.i = icmp slt i32 %ret.2.i, 0
  %ret.2.npages.2.i = select i1 %cmp52.i, i32 %ret.2.i, i32 %npages.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.2.npages.2.i)
  %cmp93 = icmp eq i32 %ret.2.npages.2.i, -11
  br i1 %cmp93, label %pagefault_data_segments.exit.read_user_crit_edge, label %if.end96

pagefault_data_segments.exit.read_user_crit_edge: ; preds = %pagefault_data_segments.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_user

if.end96:                                         ; preds = %pagefault_data_segments.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.npages.2.i)
  %cmp97 = icmp slt i32 %ret.2.npages.2.i, 0
  br i1 %cmp97, label %if.end96.resolve_page_fault_crit_edge, label %lor.lhs.false99

if.end96.resolve_page_fault_crit_edge:            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_page_fault

lor.lhs.false99:                                  ; preds = %if.end96
  %119 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bytes_mapped, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %total_wqe_bytes.2, i32 %120)
  %cmp100 = icmp ugt i32 %total_wqe_bytes.2, %120
  br i1 %cmp100, label %lor.lhs.false99.resolve_page_fault_crit_edge, label %lor.lhs.false99.read_user_crit_edge

lor.lhs.false99.read_user_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_user

lor.lhs.false99.resolve_page_fault_crit_edge:     ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #14
  br label %resolve_page_fault

read_user:                                        ; preds = %lor.lhs.false99.read_user_crit_edge, %pagefault_data_segments.exit.read_user_crit_edge
  br label %resolve_page_fault

do.end108:                                        ; preds = %if.then72.do.end108_crit_edge, %if.then63.do.end108_crit_edge, %if.then53.do.end108_crit_edge
  %conv113.pre-phi = phi i32 [ %conv54, %if.then53.do.end108_crit_edge ], [ %conv64, %if.then63.do.end108_crit_edge ], [ %conv74, %if.then72.do.end108_crit_edge ]
  %ret.2.ph = phi i32 [ %call55, %if.then53.do.end108_crit_edge ], [ %call65, %if.then63.do.end108_crit_edge ], [ %call75, %if.then72.do.end108_crit_edge ]
  %121 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %122 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i239 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i239 to ptr
  %task111 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task111 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task111, align 8
  %pid112 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 68
  %126 = ptrtoint ptr %pid112 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pid112, align 8
  %token = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 1
  %128 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %token, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31, i32 noundef 1269, i32 noundef %127, i32 noundef %ret.2.ph, i32 noundef %conv113.pre-phi, i32 noundef %129) #15
  br label %resolve_page_fault

resolve_page_fault:                               ; preds = %do.end108, %read_user, %lor.lhs.false99.resolve_page_fault_crit_edge, %if.end96.resolve_page_fault_crit_edge, %lor.lhs.false.resolve_page_fault_crit_edge, %if.end82.thread292, %if.else70.resolve_page_fault_crit_edge, %do.end4.i, %do.end.i219, %do.end7.i, %do.end.i, %do.end39, %do.end26
  %tobool.not.i242 = phi i32 [ -2147483648, %if.else70.resolve_page_fault_crit_edge ], [ -2147483648, %do.end4.i ], [ -2147483648, %do.end.i219 ], [ -2147483648, %do.end7.i ], [ -2147483648, %do.end.i ], [ 0, %read_user ], [ -2147483648, %if.end82.thread292 ], [ -2147483648, %do.end108 ], [ -2147483648, %if.end96.resolve_page_fault_crit_edge ], [ -2147483648, %lor.lhs.false99.resolve_page_fault_crit_edge ], [ -2147483648, %lor.lhs.false.resolve_page_fault_crit_edge ], [ -2147483648, %do.end39 ], [ -2147483648, %do.end26 ]
  %resume_with_error.1 = phi i32 [ 1, %if.else70.resolve_page_fault_crit_edge ], [ 1, %do.end4.i ], [ 1, %do.end.i219 ], [ 1, %do.end7.i ], [ 1, %do.end.i ], [ 0, %read_user ], [ 1, %if.end82.thread292 ], [ 1, %do.end108 ], [ 1, %if.end96.resolve_page_fault_crit_edge ], [ 1, %lor.lhs.false99.resolve_page_fault_crit_edge ], [ 1, %lor.lhs.false.resolve_page_fault_crit_edge ], [ 1, %do.end39 ], [ 1, %do.end26 ]
  %wqe_start.0 = phi ptr [ %31, %if.else70.resolve_page_fault_crit_edge ], [ %31, %do.end4.i ], [ %31, %do.end.i219 ], [ %31, %do.end7.i ], [ %31, %do.end.i ], [ %31, %read_user ], [ %31, %if.end82.thread292 ], [ %31, %do.end108 ], [ %31, %if.end96.resolve_page_fault_crit_edge ], [ %31, %lor.lhs.false99.resolve_page_fault_crit_edge ], [ %31, %lor.lhs.false.resolve_page_fault_crit_edge ], [ null, %do.end39 ], [ null, %do.end26 ]
  %event_subtype.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 2
  %130 = ptrtoint ptr %event_subtype.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %event_subtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp.i240 = icmp eq i8 %131, 0
  %token.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 1
  %cond.in.i = select i1 %cmp.i240, ptr %wq_num, ptr %token.i
  %132 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #12
  %133 = getelementptr inbounds i8, ptr %in.i, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %133, align 4
  %135 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 33816576, ptr %in.i, align 4
  %136 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %type, align 1
  %add.ptr16.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %138 = and i8 %137, 7
  %and18.i = zext i8 %138 to i32
  %shl19.i = shl nuw nsw i32 %and18.i, 24
  %139 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %token.i, align 4
  %add.ptr32.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %and34.i = and i32 %140, 16777215
  %141 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and34.i, ptr %add.ptr32.i, align 4
  %and49.i = and i32 %cond.i, 16777215
  %or51.i = or i32 %tobool.not.i242, %and49.i
  %or67.i = or i32 %shl19.i, %or51.i
  %142 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or67.i, ptr %add.ptr16.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #12
  %143 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %144 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mdev.i, align 8
  %call.i243 = call i32 @mlx5_cmd_exec(ptr noundef %145, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %tobool75.not.i = icmp eq i32 %call.i243, 0
  br i1 %tobool75.not.i, label %resolve_page_fault.mlx5_ib_page_fault_resume.exit_crit_edge, label %do.end78.i

resolve_page_fault.mlx5_ib_page_fault_resume.exit_crit_edge: ; preds = %resolve_page_fault
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_page_fault_resume.exit

do.end78.i:                                       ; preds = %resolve_page_fault
  call void @__sanitizer_cov_trace_pc() #14
  %146 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %147 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i244 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i244 to ptr
  %task.i245 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %task.i245 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %task.i245, align 8
  %pid.i246 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 68
  %151 = ptrtoint ptr %pid.i246 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pid.i246, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 404, i32 noundef %152, i32 noundef %cond.i, i32 noundef %call.i243) #15
  br label %mlx5_ib_page_fault_resume.exit

mlx5_ib_page_fault_resume.exit:                   ; preds = %do.end78.i, %resolve_page_fault.mlx5_ib_page_fault_resume.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_mr_wqe_pfault_handler, %if.then127)) #12
          to label %do.end137 [label %if.then127], !srcloc !170

if.then127:                                       ; preds = %mlx5_ib_page_fault_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  %153 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %154 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i248 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i248 to ptr
  %task130 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %task130 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %task130, align 8
  %pid131 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 68
  %158 = ptrtoint ptr %pid131 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pid131, align 8
  %160 = ptrtoint ptr %wq_num to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %wq_num, align 4
  %162 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %type, align 1
  %conv134 = zext i8 %163 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug545, ptr noundef %153, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.31, i32 noundef 1275, i32 noundef %159, i32 noundef %161, i32 noundef %resume_with_error.1, i32 noundef %conv134) #12
  br label %do.end137

do.end137:                                        ; preds = %if.then127, %mlx5_ib_page_fault_resume.exit
  call void @mlx5_core_res_put(ptr noundef nonnull %common.0.i) #12
  %164 = ptrtoint ptr %wqe_start.0 to i32
  call void @free_pages(i32 noundef %164, i32 noundef 0) #12
  br label %cleanup138

cleanup138:                                       ; preds = %do.end137, %if.then10, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_copied) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_mapped) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_ib_mr_rdma_pfault_handler(ptr noundef %dev, ptr noundef %pfault) unnamed_addr #0 align 64 {
entry:
  %in.i156 = alloca [4 x i32], align 4
  %_out.i157 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %bytes_committed66 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pfault, align 8
  %2 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %conv = zext i32 %1 to i64
  %rdma_va = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 3
  %5 = ptrtoint ptr %rdma_va to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rdma_va, align 8
  %add = add i64 %6, %conv
  store i64 %add, ptr %rdma_va, align 8
  %rdma_op_len = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %rdma_op_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rdma_op_len, align 8
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %1)
  %10 = ptrtoint ptr %rdma_op_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rdma_op_len, align 8
  %11 = ptrtoint ptr %pfault to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pfault, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp8.not = icmp ugt i32 %8, %1
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %packet_size = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %packet_size, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %1, i32 4194304)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prefetch_activated.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %prefetch_len.0 = phi i32 [ %14, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %length.0 = phi i32 [ %13, %if.then ], [ %9, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @pagefault_single_data_segment(ptr noundef %dev, i32 noundef %4, i64 noundef %add, i32 noundef %length.0, ptr noundef %pfault, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp18 = icmp eq i32 %call, -11
  br i1 %cmp18, label %if.end.if.end40_crit_edge, label %if.else

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %if.else.if.then26_crit_edge, label %lor.lhs.false

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.else
  %conv.i = zext i32 %length.0 to i64
  %add.i = add i64 %add, 4095
  %add1.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add1.i, 17592186040320
  %and2.i = and i64 %add, 17592186040320
  %sub.i = sub nsw i64 %and.i, %and2.i
  %shr.i = lshr exact i64 %sub.i, 12
  %conv3.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv3.i)
  %cmp24 = icmp slt i32 %call, %conv3.i
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.else.if.then26_crit_edge
  %event_subtype.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 2
  %15 = ptrtoint ptr %event_subtype.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %event_subtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  %wq_num2.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 1
  %token.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 1
  %cond.in.i = select i1 %cmp.i, ptr %wq_num2.i, ptr %token.i
  %17 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #12
  %18 = getelementptr inbounds i8, ptr %in.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %20 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 33816576, ptr %in.i, align 4
  %type.i = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i, align 1
  %add.ptr16.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %23 = and i8 %22, 7
  %and18.i = zext i8 %23 to i32
  %shl19.i = shl nuw nsw i32 %and18.i, 24
  %24 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %token.i, align 4
  %add.ptr32.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %and34.i = and i32 %25, 16777215
  %26 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and34.i, ptr %add.ptr32.i, align 4
  %and49.i = and i32 %cond.i, 16777215
  %or51.i = or i32 %shl19.i, %and49.i
  %or67.i = or i32 %or51.i, -2147483648
  %27 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or67.i, ptr %add.ptr16.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #12
  %28 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev.i, align 8
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %30, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool75.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool75.not.i, label %if.then26.mlx5_ib_page_fault_resume.exit_crit_edge, label %do.end78.i

if.then26.mlx5_ib_page_fault_resume.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_page_fault_resume.exit

do.end78.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %31 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %32 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 404, i32 noundef %37, i32 noundef %cond.i, i32 noundef %call.i) #15
  br label %mlx5_ib_page_fault_resume.exit

mlx5_ib_page_fault_resume.exit:                   ; preds = %do.end78.i, %if.then26.mlx5_ib_page_fault_resume.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp27.not = icmp eq i32 %call, -2
  br i1 %cmp27.not, label %mlx5_ib_page_fault_resume.exit.cleanup_crit_edge, label %do.body

mlx5_ib_page_fault_resume.exit.cleanup_crit_edge: ; preds = %mlx5_ib_page_fault_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %mlx5_ib_page_fault_resume.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_mr_rdma_pfault_handler, %if.then34)) #12
          to label %cleanup [label %if.then34], !srcloc !170

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %38 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %39 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i155 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i155 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid, align 8
  %45 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %token.i, align 4
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type.i, align 1
  %conv36 = zext i8 %48 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug550, ptr noundef %38, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef 1328, i32 noundef %44, i32 noundef %call, i32 noundef %46, i32 noundef %conv36) #12
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %prefetch_activated.1 = phi i32 [ %prefetch_activated.0, %lor.lhs.false.if.end40_crit_edge ], [ 0, %if.end.if.end40_crit_edge ]
  %event_subtype.i158 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 2
  %49 = ptrtoint ptr %event_subtype.i158 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %event_subtype.i158, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i159 = icmp eq i8 %50, 0
  %wq_num2.i160 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 4, i32 0, i32 1
  %token.i161 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 1
  %cond.in.i162 = select i1 %cmp.i159, ptr %wq_num2.i160, ptr %token.i161
  %51 = ptrtoint ptr %cond.in.i162 to i32
  call void @__asan_load4_noabort(i32 %51)
  %cond.i163 = load i32, ptr %cond.in.i162, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i156) #12
  %52 = getelementptr inbounds i8, ptr %in.i156, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %52, align 4
  %54 = ptrtoint ptr %in.i156 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 33816576, ptr %in.i156, align 4
  %type.i164 = getelementptr inbounds %struct.mlx5_pagefault, ptr %pfault, i32 0, i32 3
  %55 = ptrtoint ptr %type.i164 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type.i164, align 1
  %add.ptr16.i165 = getelementptr inbounds i32, ptr %in.i156, i32 2
  %57 = and i8 %56, 7
  %and18.i166 = zext i8 %57 to i32
  %shl19.i167 = shl nuw nsw i32 %and18.i166, 24
  %58 = ptrtoint ptr %token.i161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %token.i161, align 4
  %add.ptr32.i168 = getelementptr inbounds i32, ptr %in.i156, i32 3
  %and34.i169 = and i32 %59, 16777215
  %60 = ptrtoint ptr %add.ptr32.i168 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and34.i169, ptr %add.ptr32.i168, align 4
  %and49.i170 = and i32 %cond.i163, 16777215
  %or67.i171 = or i32 %shl19.i167, %and49.i170
  %61 = ptrtoint ptr %add.ptr16.i165 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or67.i171, ptr %add.ptr16.i165, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i157) #12
  %62 = call ptr @memset(ptr %_out.i157, i32 0, i32 16)
  %mdev.i172 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %63 = ptrtoint ptr %mdev.i172 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i172, align 8
  %call.i173 = call i32 @mlx5_cmd_exec(ptr noundef %64, ptr noundef nonnull %in.i156, i32 noundef 16, ptr noundef nonnull %_out.i157, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i157) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool75.not.i174 = icmp eq i32 %call.i173, 0
  br i1 %tobool75.not.i174, label %if.end40.mlx5_ib_page_fault_resume.exit179_crit_edge, label %do.end78.i178

if.end40.mlx5_ib_page_fault_resume.exit179_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_ib_page_fault_resume.exit179

do.end78.i178:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %65 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %66 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i175 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i175 to ptr
  %task.i176 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i176 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i176, align 8
  %pid.i177 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid.i177 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid.i177, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 404, i32 noundef %71, i32 noundef %cond.i163, i32 noundef %call.i173) #15
  br label %mlx5_ib_page_fault_resume.exit179

mlx5_ib_page_fault_resume.exit179:                ; preds = %do.end78.i178, %if.end40.mlx5_ib_page_fault_resume.exit179_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i156) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_mr_rdma_pfault_handler, %if.then53)) #12
          to label %do.end63 [label %if.then53], !srcloc !170

if.then53:                                        ; preds = %mlx5_ib_page_fault_resume.exit179
  call void @__sanitizer_cov_trace_pc() #14
  %72 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %73 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i180 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i180 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task56, align 8
  %pid57 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid57, align 8
  %79 = ptrtoint ptr %token.i161 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %token.i161, align 4
  %81 = ptrtoint ptr %type.i164 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %type.i164, align 1
  %conv60 = zext i8 %82 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug551, ptr noundef %72, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60, i32 noundef 1335, i32 noundef %78, i32 noundef %80, i32 noundef %conv60, i32 noundef %prefetch_activated.1) #12
  br label %do.end63

do.end63:                                         ; preds = %if.then53, %mlx5_ib_page_fault_resume.exit179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prefetch_activated.1)
  %tobool64.not = icmp eq i32 %prefetch_activated.1, 0
  br i1 %tobool64.not, label %do.end63.cleanup_crit_edge, label %if.then65

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then65:                                        ; preds = %do.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_committed66) #12
  %83 = ptrtoint ptr %bytes_committed66 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %bytes_committed66, align 4
  %call67 = call fastcc i32 @pagefault_single_data_segment(ptr noundef %dev, i32 noundef %4, i64 noundef %add, i32 noundef %prefetch_len.0, ptr noundef nonnull %bytes_committed66, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67)
  %cmp68 = icmp sgt i32 %call67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call67)
  %cmp70.not = icmp eq i32 %call67, -11
  %or.cond = or i1 %cmp68, %cmp70.not
  br i1 %or.cond, label %if.then65.if.end94_crit_edge, label %do.body73

if.then65.if.end94_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.body73:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_mr_rdma_pfault_handler, %if.then85)) #12
          to label %if.end94 [label %if.then85], !srcloc !170

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  %84 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %85 = call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i181 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i181 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task88, align 8
  %pid89 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 68
  %89 = ptrtoint ptr %pid89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pid89, align 8
  %91 = ptrtoint ptr %token.i161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %token.i161, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug552, ptr noundef %84, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.60, i32 noundef 1350, i32 noundef %90, i32 noundef %call67, i32 noundef %92, i64 noundef %add, i32 noundef %prefetch_len.0) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %do.body73, %if.then65.if.end94_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_committed66) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end63.cleanup_crit_edge, %if.then34, %do.body, %mlx5_ib_page_fault_resume.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_read_wqe_sq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_read_wqe_rq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_read_wqe_srq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_res_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_cmd_get_srq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_core_res_hold(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagefault_single_data_segment(ptr noundef %dev, i32 noundef %key, i64 noundef %io_virt, i32 noundef %bcnt, ptr nocapture noundef %bytes_committed, ptr noundef %bytes_mapped) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bytes_committed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_committed, align 4
  %sub = sub i32 %bcnt, %1
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %odp_mkeys) #12
  %and.i122 = and i32 %key, -256
  %call2123 = tail call ptr @xa_load(ptr noundef %odp_mkeys, i32 noundef %and.i122) #12
  %tobool.not124 = icmp eq ptr %call2123, null
  br i1 %tobool.not124, label %entry.if.then_crit_edge, label %if.end15.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end15.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %1 to i64
  %add = add i64 %conv, %io_virt
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  br label %if.end15

if.then:                                          ; preds = %mlx5r_deref_odp_mkey.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %out.0.lcssa = phi ptr [ null, %entry.if.then_crit_edge ], [ %out.2, %mlx5r_deref_odp_mkey.exit.if.then_crit_edge ]
  %head.0.lcssa = phi ptr [ null, %entry.if.then_crit_edge ], [ %76, %mlx5r_deref_odp_mkey.exit.if.then_crit_edge ]
  %npages.0.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %npages.1, %mlx5r_deref_odp_mkey.exit.if.then_crit_edge ]
  %bcnt.addr.0.lcssa = phi i32 [ %sub, %entry.if.then_crit_edge ], [ %82, %mlx5r_deref_odp_mkey.exit.if.then_crit_edge ]
  %key.addr.0.lcssa = phi i32 [ %key, %entry.if.then_crit_edge ], [ %78, %mlx5r_deref_odp_mkey.exit.if.then_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %odp_mkeys) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pagefault_single_data_segment, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !170

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %3 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i10 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i10 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pagefault_single_data_segment.__UNIQUE_ID_ddebug534, ptr noundef %2, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef 836, i32 noundef %8, i32 noundef %key.addr.0.lcssa) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.then
  %tobool11.not = icmp eq ptr %bytes_mapped, null
  br i1 %tobool11.not, label %do.end.if.end154_crit_edge, label %if.then12

do.end.if.end154_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_mapped, align 4
  %add13 = add i32 %10, %bcnt.addr.0.lcssa
  store i32 %add13, ptr %bytes_mapped, align 4
  br label %if.end154

if.end15:                                         ; preds = %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge, %if.end15.lr.ph
  %call2134 = phi ptr [ %call2123, %if.end15.lr.ph ], [ %call2, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %key.addr.0133 = phi i32 [ %key, %if.end15.lr.ph ], [ %78, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %io_virt.addr.0132 = phi i64 [ %add, %if.end15.lr.ph ], [ %80, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %bcnt.addr.0131 = phi i32 [ %sub, %if.end15.lr.ph ], [ %82, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %npages.0129 = phi i32 [ 0, %if.end15.lr.ph ], [ %npages.1, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %cur_outlen.0128 = phi i32 [ 0, %if.end15.lr.ph ], [ %cur_outlen.2, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %depth.0127 = phi i32 [ 0, %if.end15.lr.ph ], [ %84, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %head.0126 = phi ptr [ null, %if.end15.lr.ph ], [ %76, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %out.0125 = phi ptr [ null, %if.end15.lr.ph ], [ %out.2, %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge ]
  %usecount = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call2134, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #12, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end15.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !168

if.end15.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end15
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !169

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usecount, i32 noundef %.sink.i.i.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %odp_mkeys) #12
  %type.i = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call2134, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  %15 = ptrtoint ptr %call2134 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call2134, align 4
  br i1 %cmp.i, label %if.then1.i, label %mkey_is_eq.exit

if.then1.i:                                       ; preds = %if.end.i
  %17 = xor i32 %16, %key.addr.0133
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp4.i = icmp ult i32 %17, 256
  br i1 %cmp4.i, label %if.end40thread-pre-split, label %if.then1.i.do.body20_crit_edge

if.then1.i.do.body20_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

mkey_is_eq.exit:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %key.addr.0133)
  %cmp7.i = icmp eq i32 %16, %key.addr.0133
  br i1 %cmp7.i, label %mkey_is_eq.exit.if.end40_crit_edge, label %mkey_is_eq.exit.do.body20_crit_edge

mkey_is_eq.exit.do.body20_crit_edge:              ; preds = %mkey_is_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

mkey_is_eq.exit.if.end40_crit_edge:               ; preds = %mkey_is_eq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.body20:                                        ; preds = %mkey_is_eq.exit.do.body20_crit_edge, %if.then1.i.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pagefault_single_data_segment, %if.then32)) #12
          to label %if.then153 [label %if.then32], !srcloc !170

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %18 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %19 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i12 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i12 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid36, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pagefault_single_data_segment.__UNIQUE_ID_ddebug535, ptr noundef %18, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef 851, i32 noundef %24, i32 noundef %key.addr.0133) #12
  br label %if.then153

if.end40thread-pre-split:                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %type.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40thread-pre-split, %mkey_is_eq.exit.if.end40_crit_edge
  %26 = phi i32 [ %.pr, %if.end40thread-pre-split ], [ %14, %mkey_is_eq.exit.if.end40_crit_edge ]
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %26, label %do.body123 [
    i32 1, label %sw.bb
    i32 2, label %if.end40.sw.bb48_crit_edge
    i32 3, label %if.end40.sw.bb48_crit_edge352
  ]

if.end40.sw.bb48_crit_edge352:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb48

if.end40.sw.bb48_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb48

sw.bb:                                            ; preds = %if.end40
  %add.ptr = getelementptr i8, ptr %call2134, i32 -144
  %call42 = tail call fastcc i32 @pagefault_mr(ptr noundef %add.ptr, i64 noundef %io_virt.addr.0132, i32 noundef %bcnt.addr.0131, ptr noundef %bytes_mapped, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %sw.bb.if.then153_crit_edge, label %if.end45

sw.bb.if.then153_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153

if.end45:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv4656 = zext i32 %call42 to i64
  %odp_stats = getelementptr i8, ptr %call2134, i32 192
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %odp_stats, i32 noundef 8) #12
  tail call void @generic_atomic64_add(i64 noundef %conv4656, ptr noundef %odp_stats) #12
  %add47 = add i32 %call42, %npages.0129
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end40.sw.bb48_crit_edge, %if.end40.sw.bb48_crit_edge352
  %28 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 8
  %add.ptr49 = getelementptr i32, ptr %31, i32 8
  %32 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr49, align 4
  %shr = lshr i32 %33, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %depth.0127, i32 %shr)
  %cmp50.not = icmp ult i32 %depth.0127, %shr
  br i1 %cmp50.not, label %if.end73, label %do.body53

do.body53:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pagefault_single_data_segment, %if.then65)) #12
          to label %if.then153 [label %if.then65], !srcloc !170

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %34 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %35 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i13 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i13 to ptr
  %task68 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task68, align 8
  %pid69 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pagefault_single_data_segment.__UNIQUE_ID_ddebug536, ptr noundef %34, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.52, i32 noundef 873, i32 noundef %40) #12
  br label %if.then153

if.end73:                                         ; preds = %sw.bb48
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call2134, i32 0, i32 2
  %41 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndescs, align 4
  %sub74 = shl i32 %42, 4
  %add75 = add i32 %sub74, 272
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %cur_outlen.0128)
  %cmp76 = icmp sgt i32 %add75, %cur_outlen.0128
  br i1 %cmp76, label %if.then78, label %if.end73.if.end83_crit_edge

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then78:                                        ; preds = %if.end73
  tail call void @kfree(ptr noundef %out.0125) #12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add75, i32 noundef 3520) #16
  %tobool80.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool80.not, label %if.then78.if.then153_crit_edge, label %if.then78.if.end83_crit_edge

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then78.if.then153_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %if.end73.if.end83_crit_edge
  %out.1 = phi ptr [ %out.0125, %if.end73.if.end83_crit_edge ], [ %call9.i.i, %if.then78.if.end83_crit_edge ]
  %cur_outlen.1 = phi i32 [ %cur_outlen.0128, %if.end73.if.end83_crit_edge ], [ %add75, %if.then78.if.end83_crit_edge ]
  %43 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdev, align 8
  %45 = ptrtoint ptr %call2134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call2134, align 4
  %call87 = tail call i32 @mlx5_core_query_mkey(ptr noundef %44, i32 noundef %46, ptr noundef %out.1, i32 noundef %add75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.if.then153_crit_edge

if.end83.if.then153_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153

if.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt.addr.0131)
  %tobool94.not114 = icmp eq i32 %bcnt.addr.0131, 0
  br i1 %tobool94.not114, label %if.end90.sw.epilog_crit_edge, label %land.rhs.lr.ph

if.end90.sw.epilog_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.rhs.lr.ph:                                   ; preds = %if.end90
  %add.ptr91 = getelementptr i64, ptr %out.1, i32 4
  %47 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr91, align 8
  %sub92 = sub i64 %io_virt.addr.0132, %48
  %conv93 = trunc i64 %sub92 to i32
  %add.ptr84 = getelementptr i8, ptr %out.1, i32 272
  %add119 = add nuw i32 %depth.0127, 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %bcnt.addr.1120 = phi i32 [ %bcnt.addr.0131, %land.rhs.lr.ph ], [ %bcnt.addr.2, %for.inc.land.rhs_crit_edge ]
  %i.0119 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %head.1118 = phi ptr [ %head.0126, %land.rhs.lr.ph ], [ %head.2, %for.inc.land.rhs_crit_edge ]
  %offset.0117 = phi i32 [ %conv93, %land.rhs.lr.ph ], [ %offset.1, %for.inc.land.rhs_crit_edge ]
  %pklm.0115 = phi ptr [ %add.ptr84, %land.rhs.lr.ph ], [ %incdec.ptr, %for.inc.land.rhs_crit_edge ]
  %49 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ndescs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0119, i32 %50)
  %cmp96 = icmp ult i32 %i.0119, %50
  br i1 %cmp96, label %for.body, label %land.rhs.sw.epilog_crit_edge

land.rhs.sw.epilog_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body:                                         ; preds = %land.rhs
  %51 = ptrtoint ptr %pklm.0115 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pklm.0115, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0117, i32 %52)
  %cmp98.not = icmp ult i32 %offset.0117, %52
  br i1 %cmp98.not, label %if.end103, label %if.then100

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub102 = sub i32 %offset.0117, %52
  br label %for.inc

if.end103:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 24) #17
  %tobool105.not = icmp eq ptr %call7.i.i18, null
  br i1 %tobool105.not, label %if.end103.if.then153_crit_edge, label %if.end107

if.end103.if.then153_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153

if.end107:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %key108 = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.0115, i32 0, i32 1
  %54 = ptrtoint ptr %key108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key108, align 4
  %key109 = getelementptr inbounds %struct.pf_frame, ptr %call7.i.i18, i32 0, i32 1
  %56 = ptrtoint ptr %key109 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %key109, align 4
  %va = getelementptr inbounds %struct.mlx5_klm, ptr %pklm.0115, i32 0, i32 2
  %57 = ptrtoint ptr %va to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %va, align 8
  %conv110 = zext i32 %offset.0117 to i64
  %add111 = add i64 %58, %conv110
  %io_virt112 = getelementptr inbounds %struct.pf_frame, ptr %call7.i.i18, i32 0, i32 2
  %59 = ptrtoint ptr %io_virt112 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add111, ptr %io_virt112, align 8
  %60 = ptrtoint ptr %pklm.0115 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pklm.0115, align 8
  %sub114 = sub i32 %61, %offset.0117
  %62 = tail call i32 @llvm.umin.i32(i32 %bcnt.addr.1120, i32 %sub114)
  %bcnt118 = getelementptr inbounds %struct.pf_frame, ptr %call7.i.i18, i32 0, i32 3
  %63 = ptrtoint ptr %bcnt118 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %bcnt118, align 8
  %depth120 = getelementptr inbounds %struct.pf_frame, ptr %call7.i.i18, i32 0, i32 4
  %64 = ptrtoint ptr %depth120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add119, ptr %depth120, align 4
  %65 = ptrtoint ptr %call7.i.i18 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %head.1118, ptr %call7.i.i18, align 8
  %sub122 = sub i32 %bcnt.addr.1120, %62
  br label %for.inc

for.inc:                                          ; preds = %if.end107, %if.then100
  %offset.1 = phi i32 [ %sub102, %if.then100 ], [ 0, %if.end107 ]
  %head.2 = phi ptr [ %head.1118, %if.then100 ], [ %call7.i.i18, %if.end107 ]
  %bcnt.addr.2 = phi i32 [ %bcnt.addr.1120, %if.then100 ], [ %sub122, %if.end107 ]
  %inc = add nuw i32 %i.0119, 1
  %incdec.ptr = getelementptr %struct.mlx5_klm, ptr %pklm.0115, i32 1
  %tobool94.not = icmp eq i32 %bcnt.addr.2, 0
  br i1 %tobool94.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body123:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pagefault_single_data_segment, %if.then135)) #12
          to label %if.then153 [label %if.then135], !srcloc !170

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #14
  %66 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %67 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i21 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i21 to ptr
  %task138 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task138 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task138, align 8
  %pid139 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid139 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid139, align 8
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pagefault_single_data_segment.__UNIQUE_ID_ddebug539, ptr noundef %66, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef 927, i32 noundef %72, i32 noundef %74) #12
  br label %if.then153

sw.epilog:                                        ; preds = %for.inc.sw.epilog_crit_edge, %land.rhs.sw.epilog_crit_edge, %if.end90.sw.epilog_crit_edge, %if.end45
  %out.2 = phi ptr [ %out.0125, %if.end45 ], [ %out.1, %if.end90.sw.epilog_crit_edge ], [ %out.1, %land.rhs.sw.epilog_crit_edge ], [ %out.1, %for.inc.sw.epilog_crit_edge ]
  %head.3 = phi ptr [ %head.0126, %if.end45 ], [ %head.0126, %if.end90.sw.epilog_crit_edge ], [ %head.2, %for.inc.sw.epilog_crit_edge ], [ %head.1118, %land.rhs.sw.epilog_crit_edge ]
  %cur_outlen.2 = phi i32 [ %cur_outlen.0128, %if.end45 ], [ %cur_outlen.1, %if.end90.sw.epilog_crit_edge ], [ %cur_outlen.1, %land.rhs.sw.epilog_crit_edge ], [ %cur_outlen.1, %for.inc.sw.epilog_crit_edge ]
  %npages.1 = phi i32 [ %add47, %if.end45 ], [ %npages.0129, %if.end90.sw.epilog_crit_edge ], [ %npages.0129, %land.rhs.sw.epilog_crit_edge ], [ %npages.0129, %for.inc.sw.epilog_crit_edge ]
  %tobool144.not = icmp eq ptr %head.3, null
  br i1 %tobool144.not, label %sw.epilog.if.then153_crit_edge, label %if.then145

sw.epilog.if.then153_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then153

if.then145:                                       ; preds = %sw.epilog
  %75 = ptrtoint ptr %head.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.3, align 8
  %key147 = getelementptr inbounds %struct.pf_frame, ptr %head.3, i32 0, i32 1
  %77 = ptrtoint ptr %key147 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %key147, align 4
  %io_virt148 = getelementptr inbounds %struct.pf_frame, ptr %head.3, i32 0, i32 2
  %79 = ptrtoint ptr %io_virt148 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %io_virt148, align 8
  %bcnt149 = getelementptr inbounds %struct.pf_frame, ptr %head.3, i32 0, i32 3
  %81 = ptrtoint ptr %bcnt149 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bcnt149, align 8
  %depth150 = getelementptr inbounds %struct.pf_frame, ptr %head.3, i32 0, i32 4
  %83 = ptrtoint ptr %depth150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %depth150, align 4
  tail call void @kfree(ptr noundef nonnull %head.3) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #12
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge, label %if.then10.i.i.i.i, !prof !169

if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_odp_mkey.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecount, i32 noundef 3) #12
  br label %mlx5r_deref_odp_mkey.exit

if.then.i:                                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call2134, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5r_deref_odp_mkey.exit

mlx5r_deref_odp_mkey.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %odp_mkeys) #12
  %and.i = and i32 %78, -256
  %call2 = tail call ptr @xa_load(ptr noundef %odp_mkeys, i32 noundef %and.i) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %mlx5r_deref_odp_mkey.exit.if.then_crit_edge, label %mlx5r_deref_odp_mkey.exit.if.end15_crit_edge

mlx5r_deref_odp_mkey.exit.if.end15_crit_edge:     ; preds = %mlx5r_deref_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

mlx5r_deref_odp_mkey.exit.if.then_crit_edge:      ; preds = %mlx5r_deref_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then153:                                       ; preds = %sw.epilog.if.then153_crit_edge, %if.then135, %do.body123, %if.end103.if.then153_crit_edge, %if.end83.if.then153_crit_edge, %if.then78.if.then153_crit_edge, %if.then65, %do.body53, %sw.bb.if.then153_crit_edge, %if.then32, %do.body20
  %npages.248 = phi i32 [ %npages.0129, %if.then135 ], [ %npages.0129, %if.then65 ], [ %npages.0129, %if.then32 ], [ %npages.0129, %do.body20 ], [ %npages.0129, %do.body53 ], [ %npages.0129, %do.body123 ], [ %npages.0129, %if.end103.if.then153_crit_edge ], [ %npages.1, %sw.epilog.if.then153_crit_edge ], [ %npages.0129, %if.then78.if.then153_crit_edge ], [ %npages.0129, %if.end83.if.then153_crit_edge ], [ %npages.0129, %sw.bb.if.then153_crit_edge ]
  %ret.146 = phi i32 [ -14, %if.then135 ], [ -14, %if.then65 ], [ -14, %if.then32 ], [ -14, %do.body20 ], [ -14, %do.body53 ], [ -14, %do.body123 ], [ -12, %if.end103.if.then153_crit_edge ], [ 0, %sw.epilog.if.then153_crit_edge ], [ -12, %if.then78.if.then153_crit_edge ], [ %call87, %if.end83.if.then153_crit_edge ], [ %call42, %sw.bb.if.then153_crit_edge ]
  %head.444 = phi ptr [ %head.0126, %if.then135 ], [ %head.0126, %if.then65 ], [ %head.0126, %if.then32 ], [ %head.0126, %do.body20 ], [ %head.0126, %do.body53 ], [ %head.0126, %do.body123 ], [ %head.1118, %if.end103.if.then153_crit_edge ], [ null, %sw.epilog.if.then153_crit_edge ], [ %head.0126, %if.then78.if.then153_crit_edge ], [ %head.0126, %if.end83.if.then153_crit_edge ], [ %head.0126, %sw.bb.if.then153_crit_edge ]
  %out.342 = phi ptr [ %out.0125, %if.then135 ], [ %out.0125, %if.then65 ], [ %out.0125, %if.then32 ], [ %out.0125, %do.body20 ], [ %out.0125, %do.body53 ], [ %out.0125, %do.body123 ], [ %out.1, %if.end103.if.then153_crit_edge ], [ %out.2, %sw.epilog.if.then153_crit_edge ], [ null, %if.then78.if.then153_crit_edge ], [ %out.1, %if.end83.if.then153_crit_edge ], [ %out.0125, %sw.bb.if.then153_crit_edge ]
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #12
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i26 = icmp eq i32 %asmresult.i.i.i.i.i.i.i25, 1
  br i1 %cmp.i.i.i.i26, label %if.then.i31, label %if.end5.i.i.i.i28

if.end5.i.i.i.i28:                                ; preds = %if.then153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i25)
  %.not.i.i.i.i27 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i27, label %if.end5.i.i.i.i28.if.end154_crit_edge, label %if.then10.i.i.i.i29, !prof !169

if.end5.i.i.i.i28.if.end154_crit_edge:            ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then10.i.i.i.i29:                              ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecount, i32 noundef 3) #12
  br label %if.end154

if.then.i31:                                      ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i30 = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call2134, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i30, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end154

if.end154:                                        ; preds = %if.then.i31, %if.then10.i.i.i.i29, %if.end5.i.i.i.i28.if.end154_crit_edge, %if.then12, %do.end.if.end154_crit_edge
  %npages.249 = phi i32 [ %npages.248, %if.end5.i.i.i.i28.if.end154_crit_edge ], [ %npages.248, %if.then10.i.i.i.i29 ], [ %npages.248, %if.then.i31 ], [ %npages.0.lcssa, %do.end.if.end154_crit_edge ], [ %npages.0.lcssa, %if.then12 ]
  %ret.147 = phi i32 [ %ret.146, %if.end5.i.i.i.i28.if.end154_crit_edge ], [ %ret.146, %if.then10.i.i.i.i29 ], [ %ret.146, %if.then.i31 ], [ 0, %do.end.if.end154_crit_edge ], [ 0, %if.then12 ]
  %head.445 = phi ptr [ %head.444, %if.end5.i.i.i.i28.if.end154_crit_edge ], [ %head.444, %if.then10.i.i.i.i29 ], [ %head.444, %if.then.i31 ], [ %head.0.lcssa, %do.end.if.end154_crit_edge ], [ %head.0.lcssa, %if.then12 ]
  %out.343 = phi ptr [ %out.342, %if.end5.i.i.i.i28.if.end154_crit_edge ], [ %out.342, %if.then10.i.i.i.i29 ], [ %out.342, %if.then.i31 ], [ %out.0.lcssa, %do.end.if.end154_crit_edge ], [ %out.0.lcssa, %if.then12 ]
  %tobool155.not142 = icmp eq ptr %head.445, null
  br i1 %tobool155.not142, label %if.end154.while.end_crit_edge, label %if.end154.while.body_crit_edge

if.end154.while.body_crit_edge:                   ; preds = %if.end154
  br label %while.body

if.end154.while.end_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end154.while.body_crit_edge
  %head.5143 = phi ptr [ %88, %while.body.while.body_crit_edge ], [ %head.445, %if.end154.while.body_crit_edge ]
  %87 = ptrtoint ptr %head.5143 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.5143, align 8
  tail call void @kfree(ptr noundef nonnull %head.5143) #12
  %tobool155.not = icmp eq ptr %88, null
  br i1 %tobool155.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end154.while.end_crit_edge
  tail call void @kfree(ptr noundef %out.343) #12
  %89 = ptrtoint ptr %bytes_committed to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %bytes_committed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.147)
  %tobool157.not = icmp eq i32 %ret.147, 0
  %npages.2.ret.1 = select i1 %tobool157.not, i32 %npages.249, i32 %ret.147
  ret i32 %npages.2.ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !179
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !168

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !169

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #12
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pagefault_mr(ptr noundef %mr, i64 noundef %io_virt, i32 noundef %bcnt, ptr noundef %bytes_mapped, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 4
  %2 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %io_virt)
  %cmp = icmp ugt i64 %3, %io_virt
  br i1 %cmp, label %entry.cleanup41_crit_edge, label %if.end, !prof !168

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end:                                           ; preds = %entry
  %is_dmabuf = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_dmabuf to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_dmabuf, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @pagefault_dmabuf_mr(ptr noundef %mr, i32 noundef %bcnt, ptr noundef %bytes_mapped, i32 noundef %flags)
  br label %cleanup41

if.end6:                                          ; preds = %if.end
  %is_implicit_odp = getelementptr inbounds %struct.ib_umem_odp, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %is_implicit_odp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_implicit_odp, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.then8, label %if.end39

if.then8:                                         ; preds = %if.end6
  %sub = sub i64 %io_virt, %3
  %address = getelementptr inbounds %struct.ib_umem, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %conv = zext i32 %9 to i64
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sub, i64 %conv)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  br i1 %11, label %if.then8.cleanup41_crit_edge, label %if.end19

if.then8.cleanup41_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end19:                                         ; preds = %if.then8
  %last.i = getelementptr inbounds %struct.ib_umem_odp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last.i, align 8
  %add.i = add i32 %14, 1
  %conv21 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv21)
  %cmp22.not = icmp ult i64 %12, %conv21
  br i1 %cmp22.not, label %lor.rhs, label %if.end19.cleanup41_crit_edge, !prof !169

if.end19.cleanup41_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

lor.rhs:                                          ; preds = %if.end19
  %sub26 = sub i64 %conv21, %12
  %conv27 = zext i32 %bcnt to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub26, i64 %conv27)
  %cmp28 = icmp ult i64 %sub26, %conv27
  br i1 %cmp28, label %lor.rhs.cleanup41_crit_edge, label %if.end37, !prof !168

lor.rhs.cleanup41_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end37:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call fastcc i32 @pagefault_real_mr(ptr noundef %mr, ptr noundef %1, i64 noundef %12, i32 noundef %bcnt, ptr noundef %bytes_mapped, i32 noundef %flags)
  br label %cleanup41

if.end39:                                         ; preds = %if.end6
  %conv.i = zext i32 %bcnt to i64
  %add.i65 = add i64 %io_virt, 4611686018427387903
  %sub.i = add i64 %add.i65, %conv.i
  %shr.i = lshr i64 %sub.i, 30
  %conv1.i = trunc i64 %shr.i to i32
  %add2.i = add i32 %conv1.i, 1
  %.b = load i1, ptr @mlx5_imr_ksm_entries, align 8
  %15 = select i1 %.b, i64 4294967296, i64 0
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %io_virt)
  %cmp.not.i = icmp ule i64 %15, %io_virt
  %sub5.i = sub i64 %15, %io_virt
  call void @__sanitizer_cov_trace_cmp8(i64 %sub5.i, i64 %conv.i)
  %cmp7.i = icmp ult i64 %sub5.i, %conv.i
  %16 = or i1 %cmp.not.i, %cmp7.i
  br i1 %16, label %if.end39.cleanup41_crit_edge, label %while.cond.preheader.i, !prof !168

if.end39.cleanup41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

while.cond.preheader.i:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnt)
  %tobool10.not144.i = icmp eq i32 %bcnt, 0
  br i1 %tobool10.not144.i, label %while.cond.preheader.i.cleanup41_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.cleanup41_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %implicit_children.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %user_va.addr.0149.i = phi i64 [ %io_virt, %while.body.lr.ph.i ], [ %25, %cleanup.i.while.body.i_crit_edge ]
  %npages.0148.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add62.i, %cleanup.i.while.body.i_crit_edge ]
  %upd_len.0147.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %upd_len.1.i, %cleanup.i.while.body.i_crit_edge ]
  %upd_start_idx.0146.i = phi i32 [ %add2.i, %while.body.lr.ph.i ], [ %upd_start_idx.1.i, %cleanup.i.while.body.i_crit_edge ]
  %bcnt.addr.0145.i = phi i32 [ %bcnt, %while.body.lr.ph.i ], [ %conv61.i, %cleanup.i.while.body.i_crit_edge ]
  %shr11.i = lshr i64 %user_va.addr.0149.i, 30
  %conv12.i = trunc i64 %shr11.i to i32
  tail call void @_raw_spin_lock(ptr noundef %implicit_children.i) #12
  %call.i = tail call ptr @xa_load(ptr noundef %implicit_children.i, i32 noundef %conv12.i) #12
  %tobool14.not.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not.i, label %if.then23.i, label %if.else.i, !prof !168

if.then23.i:                                      ; preds = %while.body.i
  tail call void @_raw_spin_unlock(ptr noundef %implicit_children.i) #12
  %call26.i = tail call fastcc ptr @implicit_get_child_mr(ptr noundef %mr, i32 noundef %conv12.i) #12
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %call26.i to i32
  br label %out.i

if.end30.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 @llvm.umin.i32(i32 %upd_start_idx.0146.i, i32 %conv12.i) #12
  %sub33.i = add i32 %conv12.i, 1
  %add34.i = sub i32 %sub33.i, %18
  br label %if.end37.i

if.else.i:                                        ; preds = %while.body.i
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call.i, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usecount.i, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i, ptr %usecount.i, i32 1, ptr elementtype(i32) %usecount.i) #12, !srcloc !179
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !168

if.else.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !169

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i, i32 noundef %.sink.i.i.i.i) #12
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %implicit_children.i) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %refcount_inc.exit.i, %if.end30.i
  %upd_start_idx.1.i = phi i32 [ %18, %if.end30.i ], [ %upd_start_idx.0146.i, %refcount_inc.exit.i ]
  %upd_len.1.i = phi i32 [ %add34.i, %if.end30.i ], [ %upd_len.0147.i, %refcount_inc.exit.i ]
  %mtt.0.i = phi ptr [ %call26.i, %if.end30.i ], [ %call.i, %refcount_inc.exit.i ]
  %umem.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mtt.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %umem.i, align 8
  %conv39.i = zext i32 %bcnt.addr.0145.i to i64
  %add40.i = add i64 %user_va.addr.0149.i, %conv39.i
  %last.i.i = getelementptr inbounds %struct.ib_umem_odp, ptr %22, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last.i.i, align 8
  %add.i.i = add i32 %24, 1
  %conv42.i = zext i32 %add.i.i to i64
  %25 = tail call i64 @llvm.umin.i64(i64 %add40.i, i64 %conv42.i) #12
  %sub50.i = sub i64 %25, %user_va.addr.0149.i
  %conv51.i = trunc i64 %sub50.i to i32
  %call52.i = tail call fastcc i32 @pagefault_real_mr(ptr noundef %mtt.0.i, ptr noundef %22, i64 noundef %user_va.addr.0149.i, i32 noundef %conv51.i, ptr noundef %bytes_mapped, i32 noundef %flags) #12
  %usecount.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mtt.0.i, i32 0, i32 1, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usecount.i.i, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i.i, ptr %usecount.i.i, i32 1, ptr elementtype(i32) %usecount.i.i) #12, !srcloc !175
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !169

if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5r_deref_odp_mkey.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i.i, i32 noundef 3) #12
  br label %mlx5r_deref_odp_mkey.exit.i

if.then.i.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %wait.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mtt.0.i, i32 0, i32 1, i32 3
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %mlx5r_deref_odp_mkey.exit.i

mlx5r_deref_odp_mkey.exit.i:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlx5r_deref_odp_mkey.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp54.i = icmp slt i32 %call52.i, 0
  br i1 %cmp54.i, label %mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge, label %cleanup.i

mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge:      ; preds = %mlx5r_deref_odp_mkey.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

cleanup.i:                                        ; preds = %mlx5r_deref_odp_mkey.exit.i
  %conv61.i = sub i32 %bcnt.addr.0145.i, %conv51.i
  %add62.i = add i32 %call52.i, %npages.0148.i
  %tobool10.not.i = icmp eq i32 %conv61.i, 0
  br i1 %tobool10.not.i, label %cleanup.i.out.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.out.i_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

out.i:                                            ; preds = %cleanup.i.out.i_crit_edge, %mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge, %if.then28.i
  %upd_start_idx.3.i = phi i32 [ %upd_start_idx.0146.i, %if.then28.i ], [ %upd_start_idx.1.i, %mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge ], [ %upd_start_idx.1.i, %cleanup.i.out.i_crit_edge ]
  %upd_len.3.i = phi i32 [ %upd_len.0147.i, %if.then28.i ], [ %upd_len.1.i, %mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge ], [ %upd_len.1.i, %cleanup.i.out.i_crit_edge ]
  %ret.1.i = phi i32 [ %17, %if.then28.i ], [ %add62.i, %cleanup.i.out.i_crit_edge ], [ %call52.i, %mlx5r_deref_odp_mkey.exit.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upd_len.3.i)
  %tobool66.not.i = icmp eq i32 %upd_len.3.i, 0
  br i1 %tobool66.not.i, label %out.i.cleanup41_crit_edge, label %if.end76.i, !prof !169

out.i.cleanup41_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

if.end76.i:                                       ; preds = %out.i
  %umem_mutex.i = getelementptr inbounds %struct.ib_umem_odp, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %umem_mutex.i, i32 noundef 0) #12
  %conv77.i = zext i32 %upd_start_idx.3.i to i64
  %call78.i = tail call i32 @mlx5_ib_update_xlt(ptr noundef %mr, i64 noundef %conv77.i, i32 noundef %upd_len.3.i, i32 noundef 0, i32 noundef 68) #12
  tail call void @mutex_unlock(ptr noundef %umem_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool80.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool80.not.i, label %if.end76.i.cleanup41_crit_edge, label %do.end.i

if.end76.i.cleanup41_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

do.end.i:                                         ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mr, align 8
  %29 = getelementptr inbounds %struct.ib_device, ptr %28, i32 0, i32 13
  %30 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 683, i32 noundef %35) #15
  br label %cleanup41

cleanup41:                                        ; preds = %do.end.i, %if.end76.i.cleanup41_crit_edge, %out.i.cleanup41_crit_edge, %while.cond.preheader.i.cleanup41_crit_edge, %if.end39.cleanup41_crit_edge, %if.end37, %lor.rhs.cleanup41_crit_edge, %if.end19.cleanup41_crit_edge, %if.then8.cleanup41_crit_edge, %if.then4, %entry.cleanup41_crit_edge
  %retval.1 = phi i32 [ %call5, %if.then4 ], [ -14, %entry.cleanup41_crit_edge ], [ %call38, %if.end37 ], [ -14, %if.then8.cleanup41_crit_edge ], [ -14, %lor.rhs.cleanup41_crit_edge ], [ -14, %if.end19.cleanup41_crit_edge ], [ %call78.i, %do.end.i ], [ -14, %if.end39.cleanup41_crit_edge ], [ %ret.1.i, %out.i.cleanup41_crit_edge ], [ %ret.1.i, %if.end76.i.cleanup41_crit_edge ], [ 0, %while.cond.preheader.i.cleanup41_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_mkey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @implicit_get_child_mr(ptr noundef %imr, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %imr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %conv = zext i32 %idx to i64
  %mul = shl nuw nsw i64 %conv, 30
  %conv1 = trunc i64 %mul to i32
  %call2 = tail call ptr @ib_umem_odp_alloc_child(ptr noundef %1, i32 noundef %conv1, i32 noundef 1073741824, ptr noundef nonnull @mlx5_mn_ops) #12
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imr, align 8
  %access_flags = getelementptr inbounds %struct.mlx5_ib_mr, ptr %imr, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access_flags, align 4
  %call6 = tail call ptr @mlx5_mr_cache_alloc(ptr noundef %3, i32 noundef 21, i32 noundef %5) #12
  %cmp.i105 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_umem_odp_release(ptr noundef %call2) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %pd = getelementptr inbounds %struct.ib_mr, ptr %imr, i32 0, i32 1
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %pd11 = getelementptr inbounds %struct.ib_mr, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %pd11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %pd11, align 4
  %9 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %imr, align 8
  %11 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call6, align 8
  %umem15 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call6, i32 0, i32 3
  %12 = ptrtoint ptr %umem15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %umem15, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call6, i32 0, i32 1
  %13 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmkey, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call6, i32 0, i32 2
  %15 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call6, i32 0, i32 3
  %16 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %rkey, align 4
  %iova = getelementptr inbounds %struct.ib_mr, ptr %call6, i32 0, i32 4
  %17 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul, ptr %iova, align 8
  %parent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call6, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %imr, ptr %parent, align 8
  %private = getelementptr inbounds %struct.ib_umem_odp, ptr %call2, i32 0, i32 6
  %19 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %private, align 4
  %usecount = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call6, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  %20 = ptrtoint ptr %usecount to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %usecount, align 4
  %call24 = tail call i32 @mlx5_ib_update_xlt(ptr noundef %call6, i64 noundef 0, i32 noundef 262144, i32 noundef 12, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %21 = inttoptr i32 %call24 to ptr
  br label %out_mr

if.end27:                                         ; preds = %if.end9
  %implicit_children = getelementptr inbounds %struct.mlx5_ib_mr, ptr %imr, i32 0, i32 4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %implicit_children) #12
  %call29 = tail call ptr @__xa_cmpxchg(ptr noundef %implicit_children, i32 noundef %idx, ptr noundef null, ptr noundef %call6, i32 noundef 3264) #12
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end41, label %if.then33, !prof !169

if.then33:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %call29 to i32
  %and.i.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 2
  %cmp.i106 = icmp uge ptr %call29, inttoptr (i32 -16378 to ptr)
  %spec.select.i = and i1 %cmp.i106, %cmp.i.i
  br i1 %spec.select.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = ashr i32 %22, 2
  %23 = inttoptr i32 %shr.i to ptr
  br label %out_lock

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %usecount40 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call29, i32 0, i32 1, i32 4
  tail call fastcc void @refcount_inc(ptr noundef %usecount40)
  br label %out_lock

if.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %implicit_children) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @implicit_get_child_mr.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@implicit_get_child_mr, %if.then52)) #12
          to label %cleanup [label %if.then52], !srcloc !170

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %imr, align 8
  %26 = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 13
  %27 = tail call i32 @llvm.read_register.i32(metadata !158) #12
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  %33 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mmkey, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @implicit_get_child_mr.__UNIQUE_ID_ddebug526, ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.59, i32 noundef 470, i32 noundef %32, i32 noundef %34, ptr noundef %call6) #12
  br label %cleanup

out_lock:                                         ; preds = %if.end38, %if.then35
  %ret.0 = phi ptr [ %23, %if.then35 ], [ %call29, %if.end38 ]
  tail call void @_raw_spin_unlock(ptr noundef %implicit_children) #12
  br label %out_mr

out_mr:                                           ; preds = %out_lock, %if.then25
  %ret.1 = phi ptr [ %21, %if.then25 ], [ %ret.0, %out_lock ]
  %call62 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef %call6, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %out_mr, %if.then52, %if.end41, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.then8 ], [ %ret.1, %out_mr ], [ %call6, %if.then52 ], [ %call2, %entry.cleanup_crit_edge ], [ %call6, %if.end41 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_odp_alloc_child(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_advise_mr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_disable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_prefetchable_mr(ptr noundef readonly %pd, i32 noundef %advice, i32 noundef %lkey) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %odp_mkeys) #12
  %and.i = and i32 %lkey, -256
  %call3 = tail call ptr @xa_load(ptr noundef %odp_mkeys, i32 noundef %and.i) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.end_crit_edge, label %lor.lhs.false

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %lkey)
  %cmp.not = icmp eq i32 %3, %lkey
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.not = icmp eq i32 %5, 1
  br i1 %cmp5.not, label %if.end8, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call3, i32 -144
  %pd9 = getelementptr i8, ptr %call3, i32 -140
  %6 = ptrtoint ptr %pd9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd9, align 4
  %cmp10.not = icmp eq ptr %7, %pd
  br i1 %cmp10.not, label %if.end13, label %if.end8.end_crit_edge

if.end8.end_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %advice)
  %cmp14 = icmp eq i32 %advice, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %umem = getelementptr i8, ptr %call3, i32 72
  %8 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %umem, align 8
  %writable = getelementptr inbounds %struct.ib_umem, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %writable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool15.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool15.not, label %land.lhs.true.end_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %usecount = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %call3, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usecount, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount, ptr %usecount, i32 1, ptr elementtype(i32) %usecount) #12, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end18.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !168

if.end18.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end18
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !169

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.end_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end18.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end18.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usecount, i32 noundef %.sink.i.i.i) #12
  br label %end

end:                                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.end_crit_edge, %land.lhs.true.end_crit_edge, %if.end8.end_crit_edge, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %mr.0 = phi ptr [ inttoptr (i32 -2 to ptr), %lor.lhs.false.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.end_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end8.end_crit_edge ], [ inttoptr (i32 -1 to ptr), %land.lhs.true.end_crit_edge ], [ %add.ptr, %if.else.i.i.i.end_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %odp_mkeys) #12
  ret ptr %mr.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_prefetch_mr_work(ptr noundef %w) #0 align 64 {
entry:
  %bytes_mapped = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_mapped) #12
  %0 = ptrtoint ptr %bytes_mapped to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_mapped, align 4
  %num_sge = getelementptr inbounds %struct.prefetch_mr_work, ptr %w, i32 0, i32 2
  %1 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.for.body.lr.ph_crit_edge, !prof !168

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1726, i32 noundef 9, ptr noundef null) #12
  %3 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %num_sge, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp48.not = icmp eq i32 %.pr, 0
  br i1 %cmp48.not, label %if.end.for.end_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %pf_flags = getelementptr inbounds %struct.prefetch_mr_work, ptr %w, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.prefetch_mr_work, ptr %w, i32 0, i32 3, i32 %i.049
  %mr = getelementptr %struct.prefetch_mr_work, ptr %w, i32 0, i32 3, i32 %i.049, i32 1
  %4 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %length = getelementptr %struct.prefetch_mr_work, ptr %w, i32 0, i32 3, i32 %i.049, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %10 = ptrtoint ptr %pf_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pf_flags, align 4
  %call = call fastcc i32 @pagefault_mr(ptr noundef %5, i64 noundef %7, i32 noundef %9, ptr noundef nonnull %bytes_mapped, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp27 = icmp slt i32 %call, 1
  br i1 %cmp27, label %for.body.for.inc_crit_edge, label %if.end29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv47 = zext i32 %call to i64
  %12 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mr, align 8
  %prefetch = getelementptr inbounds %struct.mlx5_ib_mr, ptr %13, i32 0, i32 4, i32 0, i32 5, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %prefetch, i32 noundef 8) #12
  call void @generic_atomic64_add(i64 noundef %conv47, ptr noundef %prefetch) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %14 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sge, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call fastcc void @destroy_prefetch_work(ptr noundef %w)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_mapped) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !152, !153, !155, !157}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @mlx5_mn_ops, !1, !"mlx5_mn_ops", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 316, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 525, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlx5_ib_alloc_implicit_mr.__UNIQUE_ID_ddebug527, !3, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 528, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5_ib_alloc_implicit_mr._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5_ib_alloc_implicit_mr._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mlx5r_odp_create_eq.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1523, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5r_odp_create_eq.__key.8, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1524, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1534, i32 27}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1554, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5r_odp_create_eq._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5r_odp_create_eq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1632, i32 4}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_ib_odp_init_one._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_ib_odp_init_one._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mlx5_ib_odp_init_one.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1637, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"mlx5_imr_ksm_entries", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 97, i32 12}
!37 = !{ptr @destroy_unused_implicit_child_mr.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 222, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/mlx5_ib.h", i32 1627, i32 2}
!42 = !{ptr @xa_init_flags.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 585, i32 4}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pagefault_real_mr._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pagefault_real_mr._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1402, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug553, !51, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1422, i32 4}
!56 = !{ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug554, !55, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1426, i32 4}
!59 = !{ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug555, !58, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1445, i32 4}
!62 = !{ptr @mlx5_ib_eq_pf_process.__UNIQUE_ID_ddebug556, !61, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1453, i32 4}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5_ib_eq_pf_process._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx5_ib_eq_pf_process._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mlx5_ib_eq_pf_process.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1462, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1367, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mlx5_ib_pfault._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mlx5_ib_pfault._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1205, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug544, !77, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1211, i32 3}
!82 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1218, i32 3}
!86 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1266, i32 3}
!90 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mlx5_ib_mr_wqe_pfault_handler._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1273, i32 2}
!94 = !{ptr @mlx5_ib_mr_wqe_pfault_handler.__UNIQUE_ID_ddebug545, !93, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1063, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mlx5_ib_mr_initiator_pfault_handler._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlx5_ib_mr_initiator_pfault_handler._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1069, i32 3}
!102 = !{ptr @mlx5_ib_mr_initiator_pfault_handler._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mlx5_ib_mr_initiator_pfault_handler._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1137, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1142, i32 3}
!111 = !{ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mlx5_ib_mr_responder_pfault_handler_rq._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1118, i32 3}
!115 = !{ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mlx5_ib_mr_responder_pfault_handler_srq._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 833, i32 3}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug534, !118, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 851, i32 3}
!123 = !{ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug535, !122, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 873, i32 4}
!126 = !{ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug536, !125, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 927, i32 3}
!129 = !{ptr @pagefault_single_data_segment.__UNIQUE_ID_ddebug539, !128, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 683, i32 3}
!132 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @pagefault_implicit_mr._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @pagefault_implicit_mr._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 470, i32 2}
!137 = !{ptr @implicit_get_child_mr.__UNIQUE_ID_ddebug526, !136, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1327, i32 4}
!140 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug550, !139, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1333, i32 2}
!144 = !{ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug551, !143, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1349, i32 4}
!147 = !{ptr @mlx5_ib_mr_rdma_pfault_handler.__UNIQUE_ID_ddebug552, !146, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 403, i32 3}
!150 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mlx5_ib_page_fault_resume._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @mlx5_ib_page_fault_resume._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @mlx5_ib_dev_odp_ops, !154, !"mlx5_ib_dev_odp_ops", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1614, i32 35}
!155 = !{ptr @init_prefetch_work.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/hw/mlx5/odp.c", i32 1746, i32 2}
!157 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2148349349, i64 2148349354, i64 2148349367, i64 2148349411, i64 2148349445, i64 2148349466}
!171 = !{i64 1154702, i64 1154763}
!172 = !{i64 1157434}
!173 = !{i64 1157719}
!174 = !{i64 2148839577}
!175 = !{i64 2148754017, i64 2148754049, i64 2148754078, i64 2148754112, i64 2148754143, i64 2148754166}
!176 = !{i64 2150022001}
!177 = !{i64 1235535, i64 1235559, i64 1235580, i64 1235597, i64 1235614}
!178 = !{!"auto-init"}
!179 = !{i64 2148751552, i64 2148751584, i64 2148751613, i64 2148751647, i64 2148751678, i64 2148751701}
!180 = !{i8 0, i8 2}
