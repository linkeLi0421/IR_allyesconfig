; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/mr.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_buf_attach_ops = type { i8, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mmu_interval_notifier_ops = type { ptr }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.174, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.mlx5_ib_pd = type { %struct.ib_pd, i32, i16 }
%struct.mlx5_umr_wr = type { %struct.ib_send_wr, i64, i64, ptr, i32, i32, i64, i32, i32, i8 }
%struct.ib_send_wr = type { ptr, %union.anon.160, ptr, i32, i32, i32, %union.anon.161 }
%union.anon.160 = type { i64 }
%union.anon.161 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.190, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.190 = type { ptr }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ib_umem_odp = type { %struct.ib_umem, %struct.mmu_interval_notifier, ptr, ptr, ptr, %struct.mutex, ptr, i32, i8, i32 }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.mlx5_ib_umr_context = type { %struct.ib_cqe, i32, %struct.completion }
%struct.ib_cqe = type { ptr }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.mlx5_mtt = type { i64 }
%struct.mlx5_ib_dm = type { %struct.ib_dm, i32, i32, i32 }
%struct.ib_dm = type { ptr, i32, i32, ptr, %struct.atomic_t }
%struct.ib_dm_mr_attr = type { i64, i64, i32 }
%struct.ib_umem_dmabuf = type { %struct.ib_umem, ptr, ptr, ptr, ptr, i32, i32, ptr, i8 }
%struct.mlx5_core_sig_ctx = type { %struct.mlx5_core_psv, %struct.mlx5_core_psv, %struct.ib_sig_err, i8, i8, i32 }
%struct.mlx5_core_psv = type { i32, %struct.psv_layout }
%struct.psv_layout = type { i32, i16, i16, i16, i16, i32 }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mlx5_ib_alloc_mw = type { i32, i8, i8, i16 }
%struct.anon.203 = type { i32, i32 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.ib_mw = type { ptr, ptr, ptr, i32, i32 }
%struct.mlx5_ib_mw = type { %struct.ib_mw, %struct.mlx5_ib_mkey }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.187 }
%union.anon.187 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.mlx5_klm = type { i32, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ib_wc = type { %union.anon.135, i32, i32, i32, i32, ptr, %union.anon.136, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.135 = type { i64 }
%union.anon.136 = type { i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.201, i8 }
%union.anon.201 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx5/mr.c\00", [32 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->slow_path_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mkey_cache\00", [21 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 715, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): failed to create work queue\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_mr_cache_init\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init._entry_ptr = internal global ptr @mlx5_mr_cache_init._entry, section ".printk_index", align 4
@mlx5_mr_cache_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&dev->delay_timer)\00", [44 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ent->lock\00", [21 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ent->work)\00", [34 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&ent->dwork)->work)\00", [56 x i8] zeroinitializer }, align 32
@mlx5_mr_cache_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&ent->dwork)->timer\00", [42 x i8] zeroinitializer }, align 32
@mlx5_ib_reg_user_mr.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str, ptr @.str.19, i8 1, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_ib_reg_user_mr\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): start 0x%llx, iova 0x%llx, length 0x%llx, access_flags 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str, ptr @.str.21, i8 1, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_ib_reg_user_mr_dmabuf\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s:%d:(pid %d): offset 0x%llx, virt_addr 0x%llx, length 0x%llx, fd %d, access_flags 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_ib_dmabuf_attach_ops = internal global { %struct.dma_buf_attach_ops, [24 x i8] } { %struct.dma_buf_attach_ops { i8 1, ptr @mlx5_ib_dmabuf_invalidate_cb }, [24 x i8] zeroinitializer }, align 32
@mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str, ptr @.str.22, i8 1, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): umem_dmabuf get failed (%ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str, ptr @.str.23, i8 1, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d:(pid %d): mkey 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_ib_rereg_user_mr.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str, ptr @.str.19, i8 1, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_ib_rereg_user_mr\00", [42 x i8] zeroinitializer }, align 32
@mlx5_ib_dereg_mr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): failed to destroy mem psv %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_ib_dereg_mr\00", [47 x i8] zeroinitializer }, align 32
@mlx5_ib_dereg_mr._entry_ptr = internal global ptr @mlx5_ib_dereg_mr._entry, section ".printk_index", align 4
@mlx5_ib_dereg_mr._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str, i32 1961, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): failed to destroy wire psv %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_ib_dereg_mr._entry_ptr.29 = internal global ptr @mlx5_ib_dereg_mr._entry.27, section ".printk_index", align 4
@mlx5_ib_check_mr_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 2355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Invalid status check mask\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_ib_check_mr_status\00", [40 x i8] zeroinitializer }, align 32
@mlx5_ib_check_mr_status._entry_ptr = internal global ptr @mlx5_ib_check_mr_status._entry, section ".printk_index", align 4
@mlx5_ib_check_mr_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str, i32 2364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013signature status check requested on a non-signature enabled MR\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx5_ib_check_mr_status._entry_ptr.34 = internal global ptr @mlx5_ib_check_mr_status._entry.32, section ".printk_index", align 4
@xlt_emergency_page = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@create_cache_mr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mr->mmkey.wait\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__cache_work_func._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 517, ptr @.str.5, ptr @.str.6 }, align 1
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): command failed order %d, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__cache_work_func\00", [46 x i8] zeroinitializer }, align 32
@__cache_work_func._entry_ptr = internal global ptr @__cache_work_func._entry, section ".printk_index", align 4
@add_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str, i32 237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): create mkey failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_keys\00", [23 x i8] zeroinitializer }, align 32
@add_keys._entry_ptr = internal global ptr @add_keys._entry, section ".printk_index", align 4
@create_mkey_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): async reg mr failed. status %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"create_mkey_callback\00", [43 x i8] zeroinitializer }, align 32
@create_mkey_callback._entry_ptr = internal global ptr @create_mkey_callback._entry, section ".printk_index", align 4
@create_mkey_callback.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlx5_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mr_cache\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @size_read, ptr @size_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"limit\00", [26 x i8] zeroinitializer }, align 32
@limit_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @limit_read, ptr @limit_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cur\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"miss\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_ib_create_mkey.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mkey->wait\00", [20 x i8] zeroinitializer }, align 32
@mlx5_ib_create_xlt_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 1069, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): unable to map DMA during XLT update.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_ib_create_xlt_wr\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_ib_create_xlt_wr._entry_ptr = internal global ptr @mlx5_ib_create_xlt_wr._entry, section ".printk_index", align 4
@xlt_emergency_page_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xlt_emergency_page_mutex, i64 52), ptr getelementptr (i8, ptr @xlt_emergency_page_mutex, i64 52) }, ptr @xlt_emergency_page_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xlt_emergency_page_mutex.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xlt_emergency_page_mutex\00", [39 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mlx5_ib_post_send_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 884, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): UMR post send failed, err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_ib_post_send_wait\00", [41 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send_wait._entry_ptr = internal global ptr @mlx5_ib_post_send_wait._entry, section ".printk_index", align 4
@mlx5_ib_post_send_wait._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str, i32 889, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): reg umr failed (%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send_wait._entry_ptr.61 = internal global ptr @mlx5_ib_post_send_wait._entry.59, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mlx5_mn_ops = external dso_local constant %struct.mmu_interval_notifier_ops, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@create_real_mr.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.64, ptr @.str, ptr @.str.23, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"create_real_mr\00", [17 x i8] zeroinitializer }, align 32
@reg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 1333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): create mkey failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_create\00", [21 x i8] zeroinitializer }, align 32
@reg_create._entry_ptr = internal global ptr @reg_create._entry, section ".printk_index", align 4
@reg_create.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.66, ptr @.str, ptr @.str.67, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d:(pid %d): mkey = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/infiniband/hw/mlx5/mlx5_ib.h\00", [59 x i8] zeroinitializer }, align 32
@__mlx5_ib_alloc_mr._entry = internal constant %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 2223, ptr @.str.5, ptr @.str.6 }, align 1
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Invalid mr type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__mlx5_ib_alloc_mr\00", [45 x i8] zeroinitializer }, align 32
@__mlx5_ib_alloc_mr._entry_ptr = internal global ptr @__mlx5_ib_alloc_mr._entry, section ".printk_index", align 4
@mlx5_alloc_integrity_descs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.71, ptr @.str, i32 2177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_alloc_integrity_descs\00", [37 x i8] zeroinitializer }, align 32
@mlx5_alloc_integrity_descs._entry_ptr = internal global ptr @mlx5_alloc_integrity_descs._entry, section ".printk_index", align 4
@mlx5_alloc_integrity_descs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.71, ptr @.str, i32 2180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mlx5_alloc_integrity_descs._entry_ptr.73 = internal global ptr @mlx5_alloc_integrity_descs._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 577, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 712, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 713, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 715, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 720, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 724, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 729, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 730, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1557, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1602, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"mlx5_ib_dmabuf_attach_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1583, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1614, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1626, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1791, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1957, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1960, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2355, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2364, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"xlt_emergency_page\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 52, i32 7 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 271, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 514, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 237, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 152, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 165, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 686, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 690, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 692, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant [10 x i8] c"size_fops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 386, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 693, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"limit_fops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 431, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 694, i32 22 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 695, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 379, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 110, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1069, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [25 x i8] c"xlt_emergency_page_mutex\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 53, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 326, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 884, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 888, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 87, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 378, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1470, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1333, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1341, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [40 x i8] c"../drivers/infiniband/hw/mlx5/mlx5_ib.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1627, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2223, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2176, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/mr.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 2179, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 230, i32 6 }
@___asan_gen_.353 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 214, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 156, i32 2 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__cache_work_func._entry, ptr @__cache_work_func._entry_ptr, ptr @__mlx5_ib_alloc_mr._entry, ptr @__mlx5_ib_alloc_mr._entry_ptr, ptr @add_keys._entry, ptr @add_keys._entry_ptr, ptr @create_mkey_callback._entry, ptr @create_mkey_callback._entry_ptr, ptr @mlx5_alloc_integrity_descs._entry, ptr @mlx5_alloc_integrity_descs._entry.72, ptr @mlx5_alloc_integrity_descs._entry_ptr, ptr @mlx5_alloc_integrity_descs._entry_ptr.73, ptr @mlx5_ib_check_mr_status._entry, ptr @mlx5_ib_check_mr_status._entry.32, ptr @mlx5_ib_check_mr_status._entry_ptr, ptr @mlx5_ib_check_mr_status._entry_ptr.34, ptr @mlx5_ib_create_xlt_wr._entry, ptr @mlx5_ib_create_xlt_wr._entry_ptr, ptr @mlx5_ib_dereg_mr._entry, ptr @mlx5_ib_dereg_mr._entry.27, ptr @mlx5_ib_dereg_mr._entry_ptr, ptr @mlx5_ib_dereg_mr._entry_ptr.29, ptr @mlx5_ib_post_send_wait._entry, ptr @mlx5_ib_post_send_wait._entry.59, ptr @mlx5_ib_post_send_wait._entry_ptr, ptr @mlx5_ib_post_send_wait._entry_ptr.61, ptr @mlx5_mr_cache_init._entry, ptr @mlx5_mr_cache_init._entry_ptr, ptr @reg_create._entry, ptr @reg_create._entry_ptr, ptr @.str, ptr @mlx5_mr_cache_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx5_mr_cache_init.__key.7, ptr @.str.8, ptr @mlx5_mr_cache_init.__key.9, ptr @.str.10, ptr @mlx5_mr_cache_init.__key.11, ptr @.str.12, ptr @mlx5_mr_cache_init.__key.13, ptr @.str.14, ptr @mlx5_mr_cache_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mlx5_ib_dmabuf_attach_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @xlt_emergency_page, ptr @create_cache_mr.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @create_mkey_callback.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @size_fops, ptr @.str.45, ptr @limit_fops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @mlx5_ib_create_mkey.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @xlt_emergency_page_mutex, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @init_completion.__key, ptr @.str.62, ptr @xa_init_flags.__key, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mr_cache_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dmabuf_attach_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dereg_mr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_dereg_mr._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_check_mr_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_check_mr_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlt_emergency_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_cache_mr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_mkey_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_mkey_callback.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_mkey.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_xlt_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlt_emergency_page_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send_wait._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_alloc_integrity_descs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_alloc_integrity_descs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_mr_cache_alloc(ptr noundef %dev, i32 noundef %entry1, i32 noundef %access_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %entry1, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  br i1 %1, label %do.end, label %if.end24, !prof !180

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  %and.i = and i32 %access_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end24.if.end.i_crit_edge, label %land.lhs.true.i

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end24
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
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
  %8 = and i32 %7, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %8)
  %.not.i = icmp eq i32 %8, 8388610
  br i1 %.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end24.if.end.i_crit_edge
  %and14.i = and i32 %access_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end28_crit_edge, label %land.lhs.true16.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true16.i:                                ; preds = %if.end.i
  %mdev17.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %mdev17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev17.i, align 8
  %caps18.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps18.i, align 8
  %add.ptr23.i = getelementptr i32, ptr %12, i32 7
  %13 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr23.i, align 4
  %15 = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool26.not.i = icmp eq i32 %15, 0
  br i1 %tobool26.not.i, label %land.lhs.true16.i.land.lhs.true42.i_crit_edge, label %land.lhs.true27.i

land.lhs.true16.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

land.lhs.true27.i:                                ; preds = %land.lhs.true16.i
  %add.ptr34.i = getelementptr i32, ptr %12, i32 6
  %16 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr34.i, align 4
  %18 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool37.not.i = icmp eq i32 %18, 0
  br i1 %tobool37.not.i, label %land.lhs.true27.i.cleanup_crit_edge, label %land.lhs.true27.i.land.lhs.true42.i_crit_edge

land.lhs.true27.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

land.lhs.true27.i.cleanup_crit_edge:              ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true42.i:                                ; preds = %land.lhs.true27.i.land.lhs.true42.i_crit_edge, %land.lhs.true16.i.land.lhs.true42.i_crit_edge
  %19 = and i32 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool52.not.i = icmp eq i32 %19, 0
  br i1 %tobool52.not.i, label %land.lhs.true42.i.if.end28_crit_edge, label %land.lhs.true53.i

land.lhs.true42.i.if.end28_crit_edge:             ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true53.i:                                ; preds = %land.lhs.true42.i
  %add.ptr60.i = getelementptr i32, ptr %12, i32 6
  %20 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr60.i, align 4
  %22 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool63.not.i = icmp eq i32 %22, 0
  br i1 %tobool63.not.i, label %land.lhs.true53.i.cleanup_crit_edge, label %land.lhs.true53.i.if.end28_crit_edge

land.lhs.true53.i.if.end28_crit_edge:             ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true53.i.cleanup_crit_edge:              ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true53.i.if.end28_crit_edge, %land.lhs.true42.i.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %arrayidx = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %entry1
  %lock = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %entry1, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %24, %arrayidx
  br i1 %cmp.i.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %call34 = tail call fastcc ptr @create_cache_mr(ptr noundef %arrayidx)
  %cmp.i62 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then32.cleanup_crit_edge, label %if.then32.if.end41_crit_edge

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end28
  %add.ptr = getelementptr i8, ptr %24, i32 -248
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %available_mrs = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %entry1, i32 9
  %33 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %available_mrs, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %available_mrs, align 4
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef %arrayidx)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %add.ptr.i63 = getelementptr i8, ptr %24, i32 -32
  %35 = call ptr @memset(ptr %add.ptr.i63, i32 0, i32 152)
  br label %if.end41

if.end41:                                         ; preds = %list_del.exit, %if.then32.if.end41_crit_edge
  %mr.0 = phi ptr [ %call34, %if.then32.if.end41_crit_edge ], [ %add.ptr, %list_del.exit ]
  %access_flags42 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %access_flags42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %access_flags, ptr %access_flags42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then32.cleanup_crit_edge, %land.lhs.true53.i.cleanup_crit_edge, %land.lhs.true27.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %mr.0, %if.end41 ], [ %call34, %if.then32.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true27.i.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true53.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_cache_mr(ptr noundef %ent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 16
  %call2 = tail call fastcc ptr @alloc_cache_mr(ptr noundef %ent, ptr noundef %add.ptr)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call2, i32 0, i32 1
  %call6 = tail call i32 @mlx5_core_create_mkey(ptr noundef %4, ptr noundef %mmkey, ptr noundef nonnull %call7.i.i, i32 noundef 272) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %free_mr

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %wait = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call2, i32 0, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.35, ptr noundef nonnull @create_cache_mr.__key) #13
  %type = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call2, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %last_add = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %last_add to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %6, ptr %last_add, align 4
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 8
  %10 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_mrs, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %total_mrs, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup.sink.split

free_mr:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call2) #13
  %phi.cast = inttoptr i32 %call6 to ptr
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_mr, %do.body, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call2, %do.body ], [ %phi.cast, %free_mr ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_adjust_cache_locked(ptr noundef %ent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 462, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %disabled = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 7
  %1 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool24.not, label %do.end27, label %if.end.if.end95_crit_edge

if.end.if.end95_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

do.end27:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fill_delay = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fill_delay to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %fill_delay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool30.not = icmp eq i8 %5, 0
  br i1 %tobool30.not, label %if.end32, label %do.end27.if.end95_crit_edge

do.end27.if.end95_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.end32:                                         ; preds = %do.end27
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 9
  %6 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %available_mrs, align 4
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 10
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp33 = icmp ult i32 %7, %9
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set = or i8 %bf.load, 64
  %10 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set, ptr %disabled, align 4
  %cache = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %work = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 14
  %call.i123 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #13
  br label %if.end95

if.else:                                          ; preds = %if.end32
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool44.not = icmp eq i8 %13, 0
  br i1 %tobool44.not, label %if.else.if.else55_crit_edge, label %land.lhs.true

if.else.if.else55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = shl i32 %9, 1
  br label %if.else55

land.lhs.true:                                    ; preds = %if.else
  %pending = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 11
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pending, align 4
  %add = add i32 %15, %7
  %mul = shl i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp47 = icmp ult i32 %add, %mul
  br i1 %cmp47, label %if.then49, label %land.lhs.true.if.else55_crit_edge

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else55

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %cache51 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %cache51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache51, align 4
  %work53 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 14
  %call.i124 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work53) #13
  br label %if.end95

if.else55:                                        ; preds = %land.lhs.true.if.else55_crit_edge, %if.else.if.else55_crit_edge
  %mul58.pre-phi = phi i32 [ %.pre, %if.else.if.else55_crit_edge ], [ %mul, %land.lhs.true.if.else55_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul58.pre-phi)
  %cmp59 = icmp eq i32 %7, %mul58.pre-phi
  br i1 %cmp59, label %if.then61, label %if.else66

if.then61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear64 = and i8 %bf.load, -65
  %18 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.clear64, ptr %disabled, align 4
  br label %if.end95

if.else66:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul58.pre-phi)
  %cmp70 = icmp ugt i32 %7, %mul58.pre-phi
  br i1 %cmp70, label %if.then72, label %if.else66.if.end95_crit_edge

if.else66.if.end95_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then72:                                        ; preds = %if.else66
  %bf.clear75 = and i8 %bf.load, -65
  %19 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.clear75, ptr %disabled, align 4
  %pending77 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 11
  %20 = ptrtoint ptr %pending77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pending77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool78.not = icmp eq i32 %21, 0
  %cache87 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %cache87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cache87, align 4
  br i1 %tobool78.not, label %if.else85, label %if.then79

if.then79:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %dwork = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 15
  %call.i125 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %dwork, i32 noundef 100) #13
  br label %if.end95

if.else85:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %work89 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 14
  %call.i126 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work89) #13
  br label %if.end95

if.end95:                                         ; preds = %if.else85, %if.then79, %if.else66.if.end95_crit_edge, %if.then61, %if.then49, %if.then35, %do.end27.if.end95_crit_edge, %if.end.if.end95_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mr_cache_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10
  %slow_path_mutex = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %slow_path_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5_mr_cache_init.__key) #13
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 655370, i32 noundef 1) #13
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cache1, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %2 = tail call i32 @llvm.read_register.i32(metadata !170) #13
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 715, i32 noundef %7) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %async_ctx = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 36
  tail call void @mlx5_cmd_init_async_ctx(ptr noundef %9, ptr noundef %async_ctx) #13
  %delay_timer = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %delay_timer, ptr noundef nonnull @delay_time_func, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx5_mr_cache_init.__key.7) #13
  %is_rep = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0135 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %prev.i, align 4
  %lock = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx5_mr_cache_init.__key.9, i16 noundef signext 3) #13
  %add = add nuw nsw i32 %i.0135, 2
  %order = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 3
  %12 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %order, align 4
  %dev15 = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 13
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %dev15, align 4
  %limit = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 10
  %14 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %limit, align 4
  %work = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlx5_mr_cache_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry20 = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 14, i32 1
  %16 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i125 = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 14, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry20, ptr %prev.i125, align 4
  %func = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 14, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cache_work_func, ptr %func, align 4
  %dwork = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 15
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #13
  %19 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map34 = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34, ptr noundef nonnull @.str.14, ptr noundef nonnull @mlx5_mr_cache_init.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry37 = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 1
  %20 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i126 = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry37, ptr %prev.i126, align 4
  %func40 = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 2
  %22 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @delayed_cache_work_func, ptr %func40, align 4
  %timer = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @mlx5_mr_cache_init.__key.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.0135)
  %cmp49 = icmp ugt i32 %i.0135, 20
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mlx5_odp_init_mr_cache_entry(ptr noundef %arrayidx) #13
  br label %for.inc

if.end51:                                         ; preds = %for.body
  %23 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %order, align 4
  %25 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %28, i32 8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  %..i = select i1 %tobool.not.i, i32 16, i32 22
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %..i)
  %cmp54 = icmp ugt i32 %24, %..i
  br i1 %cmp54, label %if.end51.for.inc_crit_edge, label %if.end56

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end56:                                         ; preds = %if.end51
  %page = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 6
  %32 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %page, align 4
  %mul = shl i32 8, %24
  %div124 = lshr i32 %mul, 4
  %xlt = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 4
  %33 = ptrtoint ptr %xlt to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div124, ptr %xlt, align 4
  %access_mode = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.0135, i32 5
  %34 = ptrtoint ptr %access_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %access_mode, align 4
  %35 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev, align 8
  %profile = getelementptr inbounds %struct.mlx5_core_dev, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %profile to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %profile, align 8
  %and = and i64 %38, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool59.not = icmp eq i64 %and, 0
  br i1 %tobool59.not, label %if.end56.if.end73_crit_edge, label %land.lhs.true

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end56
  %39 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %is_rep, align 8
  %40 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool60.not = icmp eq i8 %40, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true61:                                  ; preds = %land.lhs.true
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  br i1 %cmp.i, label %land.lhs.true64, label %land.lhs.true61.if.end73_crit_edge

land.lhs.true61.if.end73_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %caps.i128 = getelementptr inbounds %struct.mlx5_core_dev, ptr %36, i32 0, i32 8
  %43 = ptrtoint ptr %caps.i128 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %caps.i128, align 8
  %add.ptr.i129 = getelementptr i32, ptr %44, i32 16
  %45 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i129, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i130 = icmp eq i32 %47, 0
  br i1 %tobool.not.i130, label %if.then66, label %land.lhs.true64.if.end73_crit_edge

land.lhs.true64.if.end73_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  %limit70 = getelementptr %struct.mlx5_core_dev, ptr %36, i32 0, i32 18, i32 2, i32 %i.0135, i32 1
  %48 = ptrtoint ptr %limit70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %limit70, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %land.lhs.true64.if.end73_crit_edge, %land.lhs.true61.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %if.end56.if.end73_crit_edge
  %storemerge = phi i32 [ %49, %if.then66 ], [ 0, %land.lhs.true61.if.end73_crit_edge ], [ 0, %land.lhs.true.if.end73_crit_edge ], [ 0, %if.end56.if.end73_crit_edge ], [ 0, %land.lhs.true64.if.end73_crit_edge ]
  %50 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %storemerge, ptr %limit, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef %arrayidx)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end73, %if.end51.for.inc_crit_edge, %if.then50
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %51 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not.i131 = icmp eq ptr %51, null
  br i1 %tobool.not.i131, label %for.end.cleanup_crit_edge, label %lor.lhs.false.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.end
  %52 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %is_rep, align 8
  %53 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool2.not.i = icmp eq i8 %53, 0
  br i1 %tobool2.not.i, label %if.end.i133, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i133:                                      ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdev, align 8
  %dbg_root.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %55, i32 0, i32 17, i32 20
  %56 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dbg_root.i, align 8
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.42, ptr noundef %57) #13
  %root.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 2
  %58 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %root.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i133
  %i.030.i = phi i32 [ 0, %if.end.i133 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030.i
  %name.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030.i, i32 2
  %order.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030.i, i32 3
  %59 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %order.i, align 4
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.43, i32 noundef %60) #13
  %61 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %root.i, align 4
  %call9.i = tail call ptr @debugfs_create_dir(ptr noundef %name.i, ptr noundef %62) #13
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 384, ptr noundef %call9.i, ptr noundef %arrayidx.i, ptr noundef nonnull @size_fops) #13
  %call11.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 384, ptr noundef %call9.i, ptr noundef %arrayidx.i, ptr noundef nonnull @limit_fops) #13
  %available_mrs.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030.i, i32 9
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %call9.i, ptr noundef %available_mrs.i) #13
  %miss.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030.i, i32 12
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.47, i16 noundef zeroext 384, ptr noundef %call9.i, ptr noundef %miss.i) #13
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end5
  %retval.0 = phi i32 [ -12, %do.end5 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_init_async_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delay_time_func(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fill_delay = getelementptr i8, ptr %t, i32 -5819
  %0 = ptrtoint ptr %fill_delay to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 0, ptr %fill_delay, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cache_work_func(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  tail call fastcc void @__cache_work_func(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_cache_work_func(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  tail call fastcc void @__cache_work_func(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_odp_init_mr_cache_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mr_cache_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %del_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lock = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %disabled = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030, i32 7
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disabled, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %work = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030, i32 14
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #13
  %dwork = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.030, i32 15
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #13
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %3 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.end.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge, label %lor.lhs.false.i

for.end.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_mr_cache_debugfs_cleanup.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %is_rep.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %is_rep.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %is_rep.i, align 8
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge

lor.lhs.false.i.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_mr_cache_debugfs_cleanup.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %root.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 4
  tail call void @debugfs_remove(ptr noundef %7) #13
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %root.i, align 4
  br label %mlx5_mr_cache_debugfs_cleanup.exit

mlx5_mr_cache_debugfs_cleanup.exit:               ; preds = %if.end.i, %lor.lhs.false.i.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge, %for.end.mlx5_mr_cache_debugfs_cleanup.exit_crit_edge
  %async_ctx = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 36
  tail call void @mlx5_cmd_cleanup_async_ctx(ptr noundef %async_ctx) #13
  %9 = getelementptr inbounds %struct.list_head, ptr %del_list.i, i32 0, i32 1
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  br label %for.body7

for.body7:                                        ; preds = %clean_keys.exit.for.body7_crit_edge, %mlx5_mr_cache_debugfs_cleanup.exit
  %i.131 = phi i32 [ 0, %mlx5_mr_cache_debugfs_cleanup.exit ], [ %inc9, %clean_keys.exit.for.body7_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list.i) #13
  %10 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %del_list.i, ptr %del_list.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %del_list.i, ptr %9, align 4
  %dwork.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.131, i32 15
  %call.i = call zeroext i1 @cancel_delayed_work(ptr noundef %dwork.i) #13
  %lock.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.131, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not46.i = icmp eq ptr %13, %arrayidx.i
  br i1 %cmp.i.not46.i, label %for.body7.if.then.i_crit_edge, label %if.end.lr.ph.i

for.body7.if.then.i_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end.lr.ph.i:                                   ; preds = %for.body7
  %available_mrs.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.131, i32 9
  %total_mrs.i = getelementptr %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 10, i32 1, i32 %i.131, i32 8
  br label %if.end.i29

if.then.i:                                        ; preds = %list_move.exit.i.if.then.i_crit_edge, %for.body7.if.then.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %14 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %del_list.i, align 4
  %cmp.not47.i = icmp eq ptr %15, %del_list.i
  br i1 %cmp.not47.i, label %if.then.i.clean_keys.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.clean_keys.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clean_keys.exit

if.end.i29:                                       ; preds = %list_move.exit.i.if.end.i29_crit_edge, %if.end.lr.ph.i
  %16 = phi ptr [ %13, %if.end.lr.ph.i ], [ %38, %list_move.exit.i.if.end.i29_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i29.__list_del_entry.exit.i.i_crit_edge

if.end.i29.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i29.__list_del_entry.exit.i.i_crit_edge
  %23 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %del_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef nonnull %del_list.i, ptr noundef %24) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %prev1.i.i2.i.i, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %16, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %del_list.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %16, ptr %del_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %29 = ptrtoint ptr %available_mrs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %available_mrs.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %available_mrs.i, align 4
  %31 = ptrtoint ptr %total_mrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_mrs.i, align 4
  %dec7.i = add i32 %32, -1
  store i32 %dec7.i, ptr %total_mrs.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %33 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev.i, align 8
  %mmkey.i = getelementptr i8, ptr %16, i32 -104
  %35 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmkey.i, align 8
  %call9.i = call i32 @mlx5_core_destroy_mkey(ptr noundef %34, i32 noundef %36) #13
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %38, %arrayidx.i
  br i1 %cmp.i.not.i, label %list_move.exit.i.if.then.i_crit_edge, label %list_move.exit.i.if.end.i29_crit_edge

list_move.exit.i.if.end.i29_crit_edge:            ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i29

list_move.exit.i.if.then.i_crit_edge:             ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn.in48.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %if.then.i.for.body.i_crit_edge ]
  %mr.0.i = getelementptr i8, ptr %.pn.in48.i, i32 -248
  %39 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn.in48.i, align 8
  %call.i.i41.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i) #13
  br i1 %call.i.i41.i, label %if.end.i.i44.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i44.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i42.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i42.i, align 4
  %42 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in48.i, align 4
  %prev1.i.i.i43.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i43.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i44.i, %for.body.i.list_del.exit.i_crit_edge
  %46 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %mr.0.i) #13
  %cmp.not.i = icmp eq ptr %.pn.i, %del_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.clean_keys.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.clean_keys.exit_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clean_keys.exit

clean_keys.exit:                                  ; preds = %list_del.exit.i.clean_keys.exit_crit_edge, %if.then.i.clean_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list.i) #13
  %inc9 = add nuw nsw i32 %i.131, 1
  %exitcond33.not = icmp eq i32 %inc9, 23
  br i1 %exitcond33.not, label %for.end10, label %clean_keys.exit.for.body7_crit_edge

clean_keys.exit.for.body7_crit_edge:              ; preds = %clean_keys.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

for.end10:                                        ; preds = %clean_keys.exit
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cache, align 4
  call void @destroy_workqueue(ptr noundef %49) #13
  %delay_timer = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 11
  %call13 = call i32 @del_timer_sync(ptr noundef %delay_timer) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end10, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_cleanup_async_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_get_dma_mr(ptr nocapture noundef readonly %pd, i32 noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 368) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 272) #16
  %tobool4.not = icmp eq ptr %call7.i.i63, null
  br i1 %tobool4.not, label %if.end.err_free_crit_edge, label %if.end6

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call7.i.i63, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %and = and i32 %5, -769
  store i32 %and, ptr %add.ptr, align 8
  %add.ptr18 = getelementptr i8, ptr %call7.i.i63, i32 28
  %6 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr18, align 4
  %or22 = or i32 %7, -2147483648
  store i32 %or22, ptr %add.ptr18, align 4
  %or26 = or i32 %acc, 1048576
  tail call fastcc void @set_mkc_access_pd_addr_fields(ptr noundef %add.ptr, i32 noundef %or26, i64 noundef 0, ptr noundef %pd)
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1
  %mkey_var.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i.i, ptr %mkey_var.i.i, i32 1, ptr elementtype(i32) %mkey_var.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i.i = and i32 %asmresult.i.i.i.i.i.i, 255
  %add.ptr3.i.i = getelementptr i8, ptr %call7.i.i63, i32 20
  %9 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i.i, align 4
  %and.i.i = and i32 %10, -256
  %or.i.i = or i32 %and.i.i, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr3.i.i, align 4
  %11 = ptrtoint ptr %mmkey to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv1.i.i, ptr %mmkey, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev.i, align 8
  %call.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %13, ptr noundef %mmkey, ptr noundef nonnull %call7.i.i63, i32 noundef 272) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end30, label %err_in

if.end30:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @mlx5_ib_create_mkey.__key) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #13
  %type = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %15 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmkey, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %rkey, align 4
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %umem, align 8
  br label %cleanup

err_in:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #13
  %phi.cast = inttoptr i32 %call.i to ptr
  br label %err_free

err_free:                                         ; preds = %err_in, %if.end.err_free_crit_edge
  %err.0 = phi ptr [ %phi.cast, %err_in ], [ inttoptr (i32 -12 to ptr), %if.end.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %err_free ], [ %call7.i.i, %if.end30 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_mkc_access_pd_addr_fields(ptr nocapture noundef %mkc, i32 noundef %acc, i64 noundef %start_addr, ptr nocapture noundef readonly %pd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call1 = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %5) #13
  %6 = ptrtoint ptr %mkc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mkc, align 4
  %and4 = and i32 %7, -31745
  %8 = shl i32 %acc, 11
  %shl = and i32 %8, 16384
  %9 = shl i32 %acc, 12
  %shl23 = and i32 %9, 8192
  %10 = shl i32 %acc, 10
  %shl42 = and i32 %10, 4096
  %shl61 = and i32 %8, 2048
  %or = or i32 %shl, %shl23
  %or24 = or i32 %or, %shl42
  %or43 = or i32 %or24, %shl61
  %or62 = or i32 %or43, %and4
  %or75 = or i32 %or62, 1024
  store i32 %or75, ptr %mkc, align 4
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps, align 8
  %add.ptr80 = getelementptr i32, ptr %14, i32 7
  %15 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr80, align 4
  %17 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool82.not = icmp eq i32 %17, 0
  br i1 %tobool82.not, label %entry.if.end_crit_edge, label %do.body83

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body83:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and85 = and i32 %acc, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %phi.bo197 = select i1 %call1, i32 262144, i32 0
  %spec.select = select i1 %tobool86.not, i32 0, i32 %phi.bo197
  %and92 = and i32 %or75, -262145
  %or95 = or i32 %and92, %spec.select
  %18 = ptrtoint ptr %mkc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or95, ptr %mkc, align 4
  br label %if.end

if.end:                                           ; preds = %do.body83, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %caps100 = getelementptr inbounds %struct.mlx5_core_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %caps100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps100, align 8
  %add.ptr105 = getelementptr i32, ptr %22, i32 7
  %23 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr105, align 4
  %25 = and i32 %24, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool108.not = icmp eq i32 %25, 0
  br i1 %tobool108.not, label %if.end.do.body130_crit_edge, label %do.body110

if.end.do.body130_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body130

do.body110:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and112 = and i32 %acc, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %phi.bo = select i1 %call1, i32 64, i32 0
  %spec.select198 = select i1 %tobool113.not, i32 0, i32 %phi.bo
  %add.ptr121 = getelementptr i32, ptr %mkc, i32 14
  %26 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr121, align 4
  %and122 = and i32 %27, -65
  %or125 = or i32 %and122, %spec.select198
  store i32 %or125, ptr %add.ptr121, align 4
  br label %do.body130

do.body130:                                       ; preds = %do.body110, %if.end.do.body130_crit_edge
  %pdn = getelementptr inbounds %struct.mlx5_ib_pd, ptr %pd, i32 0, i32 1
  %28 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdn, align 4
  %add.ptr136 = getelementptr i32, ptr %mkc, i32 3
  %30 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr136, align 4
  %and137 = and i32 %31, -16777216
  %and138 = and i32 %29, 16777215
  %or140 = or i32 %and137, %and138
  store i32 %or140, ptr %add.ptr136, align 4
  %add.ptr149 = getelementptr i32, ptr %mkc, i32 1
  %32 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr149, align 4
  %or153 = or i32 %33, -256
  store i32 %or153, ptr %add.ptr149, align 4
  %add.ptr165 = getelementptr i64, ptr %mkc, i32 2
  %34 = ptrtoint ptr %add.ptr165 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %start_addr, ptr %add.ptr165, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_ib_create_mkey(ptr noundef %dev, ptr noundef %mkey, ptr noundef %in, i32 noundef %inlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mkey_var.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i, ptr %mkey_var.i, i32 1, ptr elementtype(i32) %mkey_var.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i = and i32 %asmresult.i.i.i.i.i, 255
  %add.ptr3.i = getelementptr i8, ptr %in, i32 20
  %1 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr3.i, align 4
  %and.i = and i32 %2, -256
  %or.i = or i32 %and.i, %conv1.i
  store i32 %or.i, ptr %add.ptr3.i, align 4
  %3 = ptrtoint ptr %mkey to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1.i, ptr %mkey, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %call = tail call i32 @mlx5_core_create_mkey(ptr noundef %5, ptr noundef %mkey, ptr noundef %in, i32 noundef %inlen) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %wait = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %mkey, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.49, ptr noundef nonnull @mlx5_ib_create_mkey.__key) #13
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_update_xlt(ptr noundef %mr, i64 noundef %idx, i32 noundef %npages, i32 noundef %page_shift, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %wr = alloca %struct.mlx5_umr_wr, align 8
  %sg = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %wr) #13
  %6 = call ptr @memset(ptr %wr, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg) #13
  %7 = getelementptr inbounds %struct.ib_sge, ptr %sg, i32 0, i32 1
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 8, i32 16
  %sub = select i1 %tobool.not, i32 7, i32 3
  %8 = call ptr @memset(ptr %sg, i32 255, i32 16)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %10, i32 16
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %14 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %umem, align 8
  %is_odp = getelementptr inbounds %struct.ib_umem, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %is_odp to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %is_odp, align 8
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !180

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1141, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %18 = zext i32 %sub to i64
  %and31 = and i64 %18, %idx
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end40_crit_edge, label %if.then33

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = xor i32 %sub, -1
  br label %if.end40

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %19 = trunc i64 %and31 to i32
  %conv37 = add i32 %19, %npages
  %neg = xor i32 %sub, -1
  %conv38 = sext i32 %neg to i64
  %and39 = and i64 %conv38, %idx
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end30.if.end40_crit_edge
  %neg44.pre-phi = phi i32 [ %.pre, %if.end30.if.end40_crit_edge ], [ %neg, %if.then33 ]
  %npages.addr.0 = phi i32 [ %npages, %if.end30.if.end40_crit_edge ], [ %conv37, %if.then33 ]
  %idx.addr.0 = phi i64 [ %idx, %if.end30.if.end40_crit_edge ], [ %and39, %if.then33 ]
  %add42 = add i32 %npages.addr.0, %sub
  %and45 = and i32 %add42, %neg44.pre-phi
  %call46 = call fastcc ptr @mlx5_ib_create_xlt_wr(ptr noundef %mr, ptr noundef nonnull %wr, ptr noundef nonnull %sg, i32 noundef %npages.addr.0, i32 noundef %cond, i32 noundef %flags)
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end40.cleanup_crit_edge, label %if.end49

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 8
  %22 = select i1 %tobool.not, i32 3, i32 4
  %div50164 = lshr i32 %21, %22
  br i1 %tobool.not, label %if.then54, label %if.end49.if.end64_crit_edge

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %umem, align 8
  %last.i.i = getelementptr inbounds %struct.ib_umem_odp, ptr %24, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last.i.i, align 8
  %add.i.i = add i32 %26, 1
  %start.i.i = getelementptr inbounds %struct.ib_umem_odp, ptr %24, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start.i.i, align 4
  %sub.i = sub i32 %add.i.i, %28
  %page_shift.i = getelementptr inbounds %struct.ib_umem_odp, ptr %24, i32 0, i32 9
  %29 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page_shift.i, align 8
  %shr.i = lshr i32 %sub.i, %30
  %31 = trunc i64 %idx.addr.0 to i32
  %conv60 = sub i32 %shr.i, %31
  %32 = call i32 @llvm.umin.i32(i32 %and45, i32 %conv60)
  br label %if.end64

if.end64:                                         ; preds = %if.then54, %if.end49.if.end64_crit_edge
  %pages_to_map.0 = phi i32 [ %and45, %if.end49.if.end64_crit_edge ], [ %32, %if.then54 ]
  %page_shift65 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 4
  %33 = ptrtoint ptr %page_shift65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %page_shift, ptr %page_shift65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_to_map.0)
  %cmp66168.not = icmp eq i32 %pages_to_map.0, 0
  br i1 %cmp66168.not, label %if.end64.for.end_crit_edge, label %for.body.lr.ph

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end64
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i166 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i166, i32 0, i32 -1006632960
  %34 = and i32 %flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  %or6.i = or i32 %spec.select.i, -2147483648
  %res.1.i = select i1 %35, i32 %spec.select.i, i32 %or6.i
  %and8.i = shl i32 %flags, 27
  %36 = and i32 %and8.i, 1073741824
  %37 = or i32 %res.1.i, %36
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %38 = zext i32 %cond to i64
  %offset = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 2
  %xlt_size = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 5
  %conv100 = zext i32 %div50164 to i64
  br label %for.body

for.body:                                         ; preds = %if.end94.for.body_crit_edge, %for.body.lr.ph
  %idx.addr.1170 = phi i64 [ %idx.addr.0, %for.body.lr.ph ], [ %add101, %if.end94.for.body_crit_edge ]
  %pages_mapped.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %add88, %if.end94.for.body_crit_edge ]
  %sub71 = sub i32 %pages_to_map.0, %pages_mapped.0169
  %39 = call i32 @llvm.smin.i32(i32 %div50164, i32 %sub71)
  %mul = mul i32 %39, %cond
  %40 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sg, align 8
  %conv79 = trunc i64 %41 to i32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %dev1, i32 noundef %conv79, i32 noundef %43, i32 noundef 1) #13
  %conv81 = trunc i64 %idx.addr.1170 to i32
  call void @mlx5_odp_populate_xlt(ptr noundef nonnull %call46, i32 noundef %conv81, i32 noundef %39, ptr noundef %mr, i32 noundef %flags) #13
  %44 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sg, align 8
  %conv83 = trunc i64 %45 to i32
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %7, align 8
  call void @dma_sync_single_for_device(ptr noundef %dev1, i32 noundef %conv83, i32 noundef %47, i32 noundef 1) #13
  %add85 = add i32 %mul, 63
  %and86 = and i32 %add85, -64
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and86, ptr %7, align 8
  %add88 = add i32 %pages_mapped.0169, %div50164
  call void @__sanitizer_cov_trace_cmp4(i32 %add88, i32 %pages_to_map.0)
  %cmp89.not = icmp ult i32 %add88, %pages_to_map.0
  br i1 %cmp89.not, label %for.body.if.end94_crit_edge, label %if.then91

for.body.if.end94_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then91:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %send_flags, align 4
  %or = or i32 %37, %50
  store i32 %or, ptr %send_flags, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %for.body.if.end94_crit_edge
  %mul96 = mul i64 %idx.addr.1170, %38
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %mul96, ptr %offset, align 8
  %52 = ptrtoint ptr %xlt_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and86, ptr %xlt_size, align 8
  %call98 = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %1, ptr noundef nonnull %wr)
  %add101 = add i64 %idx.addr.1170, %conv100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool68.not = icmp eq i32 %call98, 0
  %or.cond = select i1 %cmp89.not, i1 %tobool68.not, i1 false
  br i1 %or.cond, label %if.end94.for.body_crit_edge, label %if.end94.for.end_crit_edge

if.end94.for.end_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end94.for.end_crit_edge, %if.end64.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end64.for.end_crit_edge ], [ %call98, %if.end94.for.end_crit_edge ]
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %21, ptr %7, align 8
  %54 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdev, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sg, align 8
  %conv.i = trunc i64 %59 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %conv.i, i32 noundef %21, i32 noundef 1, i32 noundef 0) #13
  %60 = load ptr, ptr @xlt_emergency_page, align 4
  %cmp.i.i = icmp eq ptr %60, %call46
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef nonnull @xlt_emergency_page_mutex) #13
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %7, align 8
  %63 = ptrtoint ptr %call46 to i32
  %dec.i.i.i = add i32 %62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp ult i32 %dec.i.i.i, 4096
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  %64 = call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #13, !range !184
  %sub.i.i.i.i = sub nuw nsw i32 32, %64
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  call void @free_pages(i32 noundef %63, i32 noundef %cond.i.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then.i.i, %if.end40.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end40.cleanup_crit_edge ], [ %err.0.lcssa, %if.then.i.i ], [ %err.0.lcssa, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %wr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_ib_create_xlt_wr(ptr nocapture noundef readonly %mr, ptr nocapture noundef writeonly %wr, ptr noundef %sg, i32 noundef %nents, i32 noundef %ent_size, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 3264, i32 2592
  %div.i = udiv i32 64, %ent_size
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1003) #13
  %or.i = or i32 %cond, 65792
  %sub.i = add i32 %nents, -1
  %add.i = add i32 %sub.i, %div.i
  %neg.i = sub nsw i32 0, %div.i
  %and.i = and i32 %add.i, %neg.i
  %mul.i = mul i32 %and.i, %ent_size
  %6 = tail call i32 @llvm.umin.i32(i32 %mul.i, i32 1048512) #13
  %or6.i = or i32 %cond, 73984
  %dec.i.i = add nsw i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %7 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #13, !range !184
  %sub.i.i.i = sub nuw nsw i32 32, %7
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %call7.i = tail call i32 @__get_free_pages(i32 noundef %or6.i, i32 noundef %cond.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = inttoptr i32 %call7.i to ptr
  br label %mlx5_ib_alloc_xlt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp8.i = icmp ugt i32 %6, 65536
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end.i
  %call13.i = tail call i32 @__get_free_pages(i32 noundef %or6.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then9.i.if.end17.i_crit_edge, label %if.then15.i

if.then9.i.if.end17.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = inttoptr i32 %call13.i to ptr
  br label %mlx5_ib_alloc_xlt.exit

if.end17.i:                                       ; preds = %if.then9.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %call19.i = tail call i32 @__get_free_pages(i32 noundef %or.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = inttoptr i32 %call19.i to ptr
  br label %mlx5_ib_alloc_xlt.exit

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @xlt_emergency_page_mutex, i32 noundef 0) #13
  %11 = load ptr, ptr @xlt_emergency_page, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 4096)
  br label %mlx5_ib_alloc_xlt.exit

mlx5_ib_alloc_xlt.exit:                           ; preds = %if.end22.i, %if.then21.i, %if.then15.i, %if.then.i
  %.pn = phi i32 [ 4096, %if.end22.i ], [ 4096, %if.then21.i ], [ %6, %if.then.i ], [ 65536, %if.then15.i ]
  %retval.0.i = phi ptr [ %11, %if.end22.i ], [ %10, %if.then21.i ], [ %8, %if.then.i ], [ %9, %if.then15.i ]
  %13 = urem i32 %.pn, %ent_size
  %mul = sub nsw i32 %.pn, %13
  %length = getelementptr inbounds %struct.ib_sge, ptr %sg, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %length, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %retval.0.i) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %mlx5_ib_alloc_xlt.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i64, !prof !185

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i64:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev1) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i63 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i63, label %if.end.i.i65, label %if.then.i64.dev_name.exit.i_crit_edge

if.then.i64.dev_name.exit.i_crit_edge:            ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i65:                                     ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i65, %if.then.i64.dev_name.exit.i_crit_edge
  %retval.0.i.i66 = phi ptr [ %18, %if.end.i.i65 ], [ %16, %if.then.i64.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i, ptr noundef %retval.0.i.i66) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef -1) #13
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %mlx5_ib_alloc_xlt.exit
  tail call void @debug_dma_map_single(ptr noundef %dev1, ptr noundef %retval.0.i, i32 noundef %mul) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %retval.0.i to i32
  %sub.i67 = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i67, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i68 = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1, ptr noundef %add.ptr.i, i32 noundef %and.i68, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #13
  tail call void @debug_dma_mapping_error(ptr noundef %dev1, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %21 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %22 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i70 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i70 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 1069, i32 noundef %27) #17
  %28 = load ptr, ptr @xlt_emergency_page, align 4
  %cmp.i71 = icmp eq ptr %28, %retval.0.i
  br i1 %cmp.i71, label %if.then.i72, label %if.end.i73

if.then.i72:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @xlt_emergency_page_mutex) #13
  br label %cleanup

if.end.i73:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 8
  %31 = ptrtoint ptr %retval.0.i to i32
  %dec.i.i84 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i84)
  %tobool.not.i.i.i86 = icmp ult i32 %dec.i.i84, 4096
  %shr.i.i85 = lshr i32 %dec.i.i84, 12
  %32 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i85, i1 true) #13, !range !184
  %sub.i.i.i87 = sub nuw nsw i32 32, %32
  %cond.i.i.i88 = select i1 %tobool.not.i.i.i86, i32 0, i32 %sub.i.i.i87
  tail call void @free_pages(i32 noundef %31, i32 noundef %cond.i.i.i88) #13
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i32 %call41.i to i64
  %33 = ptrtoint ptr %sg to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %sg, align 8
  %umrc = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %umrc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %umrc, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %sg, i32 0, i32 2
  %38 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lkey, align 4
  %39 = call ptr @memset(ptr %wr, i32 0, i32 96)
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %and10 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select = select i1 %tobool11.not, i32 805306368, i32 536870912
  %40 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select, ptr %send_flags, align 4
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 2
  %41 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sg, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 3
  %42 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %43 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 240, ptr %opcode, align 8
  %pd19 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 1
  %44 = ptrtoint ptr %pd19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pd19, align 4
  %pd20 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 3
  %46 = ptrtoint ptr %pd20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %pd20, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1
  %47 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mmkey, align 8
  %mkey = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 8
  %49 = ptrtoint ptr %mkey to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mkey, align 4
  %length22 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 5
  %50 = ptrtoint ptr %length22 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %length22, align 8
  %length23 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 6
  %52 = ptrtoint ptr %length23 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %length23, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 4
  %53 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %iova, align 8
  %virt_addr = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 1
  %55 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %virt_addr, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %access_flags = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 1
  %57 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %access_flags, align 4
  %access_flags25 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 7
  %59 = ptrtoint ptr %access_flags25 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %access_flags25, align 8
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %56, align 8
  %page_shift26 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 4
  %62 = ptrtoint ptr %page_shift26 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %page_shift26, align 4
  %63 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %length, align 8
  %xlt_size = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 5
  %65 = ptrtoint ptr %xlt_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %xlt_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i73, %if.then.i72
  %retval.0 = phi ptr [ %retval.0.i, %if.end ], [ null, %if.then.i72 ], [ null, %if.end.i73 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_odp_populate_xlt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %dev, ptr noundef %umrwr) unnamed_addr #0 align 64 {
entry:
  %bad = alloca ptr, align 4
  %umr_context = alloca %struct.mlx5_ib_umr_context, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad) #13
  %0 = ptrtoint ptr %bad to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bad, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %umr_context) #13
  %1 = getelementptr inbounds i8, ptr %umr_context, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 52)
  %3 = ptrtoint ptr %umr_context to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mlx5_ib_umr_done, ptr %umr_context, align 4
  %status.i = getelementptr inbounds %struct.mlx5_ib_umr_context, ptr %umr_context, i32 0, i32 1
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status.i, align 4
  %done1.i = getelementptr inbounds %struct.mlx5_ib_umr_context, ptr %umr_context, i32 0, i32 2
  %5 = ptrtoint ptr %done1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done1.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mlx5_ib_umr_context, ptr %umr_context, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #13
  %6 = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %umr_context, ptr %6, align 8
  %sem = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 7, i32 3
  call void @down(ptr noundef %sem) #13
  %qp = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %13(ptr noundef %9, ptr noundef %umrwr, ptr noundef nonnull %bad) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %15 = call i32 @llvm.read_register.i32(metadata !170) #13
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
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 884, i32 noundef %20, i32 noundef %call.i) #17
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @wait_for_completion(ptr noundef %done1.i) #13
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.else.if.end13_crit_edge, label %do.end7

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %24 = call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i22 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i22 to ptr
  %task10 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task10, align 8
  %pid11 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 889, i32 noundef %29, i32 noundef %22) #17
  br label %if.end13

if.end13:                                         ; preds = %do.end7, %if.else.if.end13_crit_edge, %do.end
  %err.0 = phi i32 [ %call.i, %do.end ], [ -14, %do.end7 ], [ 0, %if.else.if.end13_crit_edge ]
  call void @up(ptr noundef %sem) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %umr_context) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_update_mr_pas(ptr nocapture noundef readonly %mr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %biter = alloca %struct.ib_block_iter, align 4
  %wr = alloca %struct.mlx5_umr_wr, align 8
  %sg = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter) #13
  %6 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %8 = call ptr @memset(ptr %biter, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %wr) #13
  %9 = call ptr @memset(ptr %wr, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg) #13
  %10 = getelementptr inbounds %struct.ib_sge, ptr %sg, i32 0, i32 1
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %11 = call ptr @memset(ptr %sg, i32 255, i32 16)
  %12 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %umem, align 8
  %is_odp = getelementptr inbounds %struct.ib_umem, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %is_odp to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %is_odp, align 8
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !185

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1212, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %16 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl = shl nuw i32 1, %18
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %13, i32 0, i32 2
  %19 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %22 to i64
  %conv1.i = zext i32 %shl to i64
  %sub.i = add nsw i64 %conv1.i, -1
  %add.i = add i64 %sub.i, %20
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %shl, -1
  %conv7.i = zext i32 %sub6.i to i64
  %sub8.i = sub i64 %20, %conv7.i
  %add11.i = add i64 %sub8.i, %sub.i
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i117 = lshr i32 %conv17.i, %18
  %call26 = call fastcc ptr @mlx5_ib_create_xlt_wr(ptr noundef %mr, ptr noundef nonnull %wr, ptr noundef nonnull %sg, i32 noundef %div.i117, i32 noundef 8, i32 noundef %flags)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 8
  %25 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %umem, align 8
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sgt_append, align 8
  %nents = getelementptr inbounds %struct.ib_umem, ptr %26, i32 0, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents, align 4
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %16, align 8
  %shl35 = shl nuw i32 1, %32
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter, ptr noundef %28, i32 noundef %30, i32 noundef %shl35) #13
  %call36119 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #13
  br i1 %call36119, label %for.body.lr.ph, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end29
  %offset = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 2
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %for.body.lr.ph
  %cur_mtt.0120 = phi ptr [ %call26, %for.body.lr.ph ], [ %incdec.ptr, %if.end49.for.body_crit_edge ]
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %10, align 8
  %add.ptr = getelementptr i8, ptr %call26, i32 %34
  %cmp = icmp eq ptr %cur_mtt.0120, %add.ptr
  br i1 %cmp, label %if.then38, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then38:                                        ; preds = %for.body
  %35 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sg, align 8
  %conv = trunc i64 %36 to i32
  call void @dma_sync_single_for_device(ptr noundef %dev1, i32 noundef %conv, i32 noundef %34, i32 noundef 1) #13
  %call40 = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %1, ptr noundef nonnull %wr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then38.err74_crit_edge

if.then38.err74_crit_edge:                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %err74

if.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sg, align 8
  %conv45 = trunc i64 %38 to i32
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %10, align 8
  call void @dma_sync_single_for_cpu(ptr noundef %dev1, i32 noundef %conv45, i32 noundef %40, i32 noundef 1) #13
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %10, align 8
  %conv48 = zext i32 %42 to i64
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset, align 8
  %add = add i64 %44, %conv48
  store i64 %add, ptr %offset, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %for.body.if.end49_crit_edge
  %cur_mtt.1 = phi ptr [ %call26, %if.end43 ], [ %cur_mtt.0120, %for.body.if.end49_crit_edge ]
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %6, align 4
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %7, align 4
  %sh_prom.i = zext i32 %48 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %49 = trunc i64 %notmask.i to i32
  %conv1.i113 = and i32 %46, %49
  %or = or i32 %conv1.i113, 3
  %conv51 = zext i32 %or to i64
  %50 = ptrtoint ptr %cur_mtt.1 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv51, ptr %cur_mtt.1, align 8
  %51 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %umem, align 8
  %is_dmabuf = getelementptr inbounds %struct.ib_umem, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %is_dmabuf to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load53 = load i8, ptr %is_dmabuf, align 8
  %54 = and i8 %bf.load53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool57.not = icmp eq i8 %54, 0
  %or.cond = or i1 %tobool58.not, %tobool57.not
  %spec.store.select = select i1 %or.cond, i64 %conv51, i64 0
  %55 = ptrtoint ptr %cur_mtt.1 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %spec.store.select, ptr %cur_mtt.1, align 8
  %incdec.ptr = getelementptr %struct.mlx5_mtt, ptr %cur_mtt.1, i32 1
  %call36 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #13
  br i1 %call36, label %if.end49.for.body_crit_edge, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end49.for.end_crit_edge, %if.end29.for.end_crit_edge
  %cur_mtt.0.lcssa = phi ptr [ %call26, %if.end29.for.end_crit_edge ], [ %incdec.ptr, %if.end49.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %cur_mtt.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call26 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add62 = add i32 %sub.ptr.sub, 63
  %and63 = and i32 %add62, -64
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and63, ptr %10, align 8
  %sub = sub i32 %and63, %sub.ptr.sub
  %57 = call ptr @memset(ptr %cur_mtt.0.lcssa, i32 0, i32 %sub)
  %and.i114 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i = icmp eq i32 %and.i114, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -1006632960
  %58 = and i32 %flags, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  %or6.i = or i32 %spec.select.i, -2147483648
  %res.1.i = select i1 %59, i32 %spec.select.i, i32 %or6.i
  %and8.i = shl i32 %flags, 27
  %60 = and i32 %and8.i, 1073741824
  %61 = or i32 %res.1.i, %60
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %62 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %send_flags, align 4
  %or68 = or i32 %61, %63
  store i32 %or68, ptr %send_flags, align 4
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %10, align 8
  %xlt_size = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr, i32 0, i32 5
  %66 = ptrtoint ptr %xlt_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %xlt_size, align 8
  %67 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sg, align 8
  %conv71 = trunc i64 %68 to i32
  call void @dma_sync_single_for_device(ptr noundef %dev1, i32 noundef %conv71, i32 noundef %65, i32 noundef 1) #13
  %call73 = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %1, ptr noundef nonnull %wr)
  br label %err74

err74:                                            ; preds = %for.end, %if.then38.err74_crit_edge
  %err.0 = phi i32 [ %call73, %for.end ], [ %call40, %if.then38.err74_crit_edge ]
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %24, ptr %10, align 8
  %70 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdev, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %sg to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sg, align 8
  %conv.i115 = trunc i64 %75 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %conv.i115, i32 noundef %24, i32 noundef 1, i32 noundef 0) #13
  %76 = load ptr, ptr @xlt_emergency_page, align 4
  %cmp.i.i = icmp eq ptr %76, %call26
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %err74
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef nonnull @xlt_emergency_page_mutex) #13
  br label %cleanup

if.end.i.i:                                       ; preds = %err74
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %10, align 8
  %79 = ptrtoint ptr %call26 to i32
  %dec.i.i.i = add i32 %78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i.i)
  %tobool.not.i.i.i.i = icmp ult i32 %dec.i.i.i, 4096
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  %80 = call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #13, !range !184
  %sub.i.i.i.i = sub nuw nsw i32 32, %80
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  call void @free_pages(i32 noundef %79, i32 noundef %cond.i.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then.i.i, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end23.cleanup_crit_edge ], [ %err.0, %if.then.i.i ], [ %err.0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %wr) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_advise_mr(ptr noundef %pd, i32 noundef %advice, i32 noundef %flags, ptr noundef %sg_list, i32 noundef %num_sge, ptr nocapture noundef readnone %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %advice)
  %switch = icmp ult i32 %advice, 3
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @mlx5_ib_advise_mr_prefetch(ptr noundef %pd, i32 noundef %advice, i32 noundef %flags, ptr noundef %sg_list, i32 noundef %num_sge) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_advise_mr_prefetch(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_reg_dm_mr(ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %dm, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %attrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %dev_addr = getelementptr inbounds %struct.mlx5_ib_dm, ptr %dm, i32 0, i32 2
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_addr, align 4
  %conv = zext i32 %5 to i64
  %offset = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %add = add i64 %7, %conv
  %type = getelementptr inbounds %struct.mlx5_ib_dm, ptr %dm, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb4_crit_edge
    i32 2, label %entry.sw.bb4_crit_edge24
  ]

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %access_flags = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 2
  %11 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %access_flags, align 8
  %and = and i32 %12, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %conv3 = zext i32 %16 to i64
  %sub = sub i64 %add, %conv3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge24
  %access_flags5 = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 2
  %17 = ptrtoint ptr %access_flags5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %access_flags5, align 8
  %and6 = and i32 %18, -40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %sw.bb4.sw.epilog_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %if.end
  %start_addr.0 = phi i64 [ %sub, %if.end ], [ %add, %sw.bb4.sw.epilog_crit_edge ]
  %mode.0 = phi i32 [ 67109120, %if.end ], [ 67108864, %sw.bb4.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %attr, align 8
  %access_flags12 = getelementptr inbounds %struct.ib_dm_mr_attr, ptr %attr, i32 0, i32 2
  %21 = ptrtoint ptr %access_flags12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %access_flags12, align 8
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %23 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 368) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i72.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 272) #16
  %tobool4.not.i = icmp eq ptr %call7.i.i72.i, null
  br i1 %tobool4.not.i, label %if.end.i.err_free.i_crit_edge, label %if.end6.i

if.end.i.err_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free.i

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call7.i.i72.i, i32 16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 8
  %and9.i = and i32 %28, -469762817
  %or24.i = or i32 %mode.0, %and9.i
  store i32 %or24.i, ptr %add.ptr.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %call7.i.i72.i, i32 40
  %29 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %20, ptr %add.ptr36.i, align 8
  tail call fastcc void @set_mkc_access_pd_addr_fields(ptr noundef %add.ptr.i, i32 noundef %22, i64 noundef %start_addr.0, ptr noundef %pd) #13
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i.i, i32 0, i32 1
  %mkey_var.i.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %24, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i.i.i, i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i.i.i, ptr %mkey_var.i.i.i, i32 1, ptr elementtype(i32) %mkey_var.i.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 255
  %add.ptr3.i.i.i = getelementptr i8, ptr %call7.i.i72.i, i32 20
  %31 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr3.i.i.i, align 4
  %and.i.i.i = and i32 %32, -256
  %or.i.i.i = or i32 %and.i.i.i, %conv1.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr3.i.i.i, align 4
  %33 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv1.i.i.i, ptr %mmkey.i, align 8
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev.i.i, align 8
  %call.i.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %35, ptr noundef %mmkey.i, ptr noundef nonnull %call7.i.i72.i, i32 noundef 272) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end44.i, label %err_in.i

if.end44.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %wait.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @mlx5_ib_create_mkey.__key) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i72.i) #13
  %36 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmkey.i, align 8
  %lkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lkey.i.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %rkey.i.i, align 4
  %length5.i.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %length5.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %20, ptr %length5.i.i, align 8
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %24, ptr %call7.i.i.i, align 8
  %iova8.i.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %iova8.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %start_addr.0, ptr %iova8.i.i, align 8
  %access_flags9.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %access_flags9.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %22, ptr %access_flags9.i.i, align 4
  br label %cleanup

err_in.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i72.i) #13
  %phi.cast.i = inttoptr i32 %call.i.i to ptr
  br label %err_free.i

err_free.i:                                       ; preds = %err_in.i, %if.end.i.err_free.i_crit_edge
  %err.0.i = phi ptr [ %phi.cast.i, %err_in.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.err_free.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free.i, %if.end44.i, %sw.epilog.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %sw.bb.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb4.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %err.0.i, %err_free.i ], [ %call7.i.i.i, %if.end44.i ], [ inttoptr (i32 -12 to ptr), %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_reg_user_mr(ptr noundef %pd, i64 noundef %start, i64 noundef %length, i64 noundef %iova, i32 noundef %access_flags, ptr nocapture readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_reg_user_mr.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_reg_user_mr, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_reg_user_mr.__UNIQUE_ID_ddebug567, ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 1558, i32 noundef %8, i64 noundef %start, i64 noundef %iova, i64 noundef %length, i32 noundef %access_flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %access_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %do.end
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %odp_pf_eq.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 16
  %call1.i = tail call i32 @mlx5r_odp_create_eq(ptr noundef %10, ptr noundef %odp_pf_eq.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %11 = inttoptr i32 %call1.i to ptr
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start)
  %tobool3.not.i = icmp eq i64 %start, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %length)
  %cmp.i = icmp eq i64 %length, -1
  %or.cond.i = and i1 %tobool3.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then4.i, label %if.end19.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %iova)
  %cmp5.not.i = icmp eq i64 %iova, 0
  br i1 %cmp5.not.i, label %if.end8.i, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %if.then4.i
  %odp_caps.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 13
  %12 = ptrtoint ptr %odp_caps.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %odp_caps.i, align 8
  %and.i33 = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33)
  %tobool9.not.i = icmp eq i64 %and.i33, 0
  br i1 %tobool9.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end12.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call14.i = tail call ptr @mlx5_ib_alloc_implicit_mr(ptr noundef %pd, i32 noundef %access_flags) #13
  br label %cleanup

if.end19.i:                                       ; preds = %if.end.i
  %conv.i = trunc i64 %length to i32
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %17, i32 16
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %mlx5_ib_can_load_pas_with_umr.exit.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlx5_ib_can_load_pas_with_umr.exit.i:             ; preds = %if.end19.i
  %add.ptr7.i.i = getelementptr i32, ptr %17, i32 8
  %21 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr7.i.i, align 4
  %23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.i.i = icmp ne i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %conv.i)
  %cmp.i1.i = icmp ult i32 %conv.i, 268435456
  %not.or.cond.i.i = or i1 %cmp.i1.i, %tobool10.not.i.i
  br i1 %not.or.cond.i.i, label %if.end23.i, label %mlx5_ib_can_load_pas_with_umr.exit.i.cleanup_crit_edge

mlx5_ib_can_load_pas_with_umr.exit.i.cleanup_crit_edge: ; preds = %mlx5_ib_can_load_pas_with_umr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23.i:                                       ; preds = %mlx5_ib_can_load_pas_with_umr.exit.i
  %conv24.i = trunc i64 %start to i32
  %call26.i = tail call ptr @ib_umem_odp_get(ptr noundef %10, i32 noundef %conv24.i, i32 noundef %conv.i, i32 noundef %access_flags, ptr noundef nonnull @mlx5_mn_ops) #13
  %cmp.i2.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end23.i.cleanup_crit_edge, label %if.end30.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30.i:                                       ; preds = %if.end23.i
  %call31.i = tail call fastcc ptr @alloc_cacheable_mr(ptr noundef %pd, ptr noundef %call26.i, i64 noundef %iova, i32 noundef %access_flags) #13
  %cmp.i3.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i, label %if.then33.i, label %if.end36.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_umem_release(ptr noundef %call26.i) #13
  br label %cleanup

if.end36.i:                                       ; preds = %if.end30.i
  %implicit_children.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call31.i, i32 0, i32 4, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %implicit_children.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call31.i, i32 0, i32 4, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call31.i, i32 0, i32 4, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %private.i = getelementptr inbounds %struct.ib_umem_odp, ptr %call26.i, i32 0, i32 6
  %26 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31.i, ptr %private.i, align 4
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call31.i, i32 0, i32 1
  %usecount.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call31.i, i32 0, i32 1, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i.i, i32 noundef 4) #13
  %27 = ptrtoint ptr %usecount.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %usecount.i.i, align 4
  %odp_mkeys.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 17
  %28 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mmkey.i, align 4
  %and.i.i.i = and i32 %29, -256
  %call1.i.i = tail call ptr @xa_store(ptr noundef %odp_mkeys.i.i, i32 noundef %and.i.i.i, ptr noundef %mmkey.i, i32 noundef 3264) #13
  %30 = ptrtoint ptr %call1.i.i to i32
  %and.i.i.i.i.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 2
  %cmp.i.i.i.i = icmp uge ptr %call1.i.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i.i = and i1 %cmp.i.i.i.i, %cmp.i.i.i.i.i
  %shr.i.i.i = ashr i32 %30, 2
  %retval.0.i.i.i = select i1 %spec.select.i.i.i.i, i32 %shr.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool38.not.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.err_dereg_mr.i_crit_edge

if.end36.i.err_dereg_mr.i_crit_edge:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dereg_mr.i

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = tail call i32 @mlx5_ib_init_odp_mr(ptr noundef %call31.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.cleanup_crit_edge, label %if.end40.i.err_dereg_mr.i_crit_edge

if.end40.i.err_dereg_mr.i_crit_edge:              ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dereg_mr.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_dereg_mr.i:                                   ; preds = %if.end40.i.err_dereg_mr.i_crit_edge, %if.end36.i.err_dereg_mr.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i.i.i, %if.end36.i.err_dereg_mr.i_crit_edge ], [ %call41.i, %if.end40.i.err_dereg_mr.i_crit_edge ]
  %call47.i = tail call i32 @mlx5_ib_dereg_mr(ptr noundef %call31.i, ptr undef) #13
  %31 = inttoptr i32 %err.0.i to ptr
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %conv = trunc i64 %start to i32
  %conv10 = trunc i64 %length to i32
  %call11 = tail call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv, i32 noundef %conv10, i32 noundef %access_flags) #13
  %cmp.i35 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call fastcc ptr @create_real_mr(ptr noundef %pd, ptr noundef %call11, i64 noundef %iova, i32 noundef %access_flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.cleanup_crit_edge, %err_dereg_mr.i, %if.end40.i.cleanup_crit_edge, %if.then33.i, %if.end23.i.cleanup_crit_edge, %mlx5_ib_can_load_pas_with_umr.exit.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end12.i, %if.end8.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi ptr [ %call16, %if.end15 ], [ %11, %if.then.i ], [ %call31.i, %if.then33.i ], [ %31, %err_dereg_mr.i ], [ %call31.i, %if.end40.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then4.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.i.cleanup_crit_edge ], [ %call14.i, %if.end12.i ], [ inttoptr (i32 -22 to ptr), %mlx5_ib_can_load_pas_with_umr.exit.i.cleanup_crit_edge ], [ %call26.i, %if.end23.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end19.i.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_real_mr(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %length = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
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
  br i1 %tobool.not.i, label %mlx5_ib_can_load_pas_with_umr.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

mlx5_ib_can_load_pas_with_umr.exit:               ; preds = %entry
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 8
  %add.ptr7.i = getelementptr i32, ptr %5, i32 8
  %11 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr7.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %10)
  %cmp.i = icmp ult i32 %10, 268435456
  %not.or.cond.i = or i1 %cmp.i, %tobool10.not.i
  br i1 %not.or.cond.i, label %if.then, label %mlx5_ib_can_load_pas_with_umr.exit.if.else_crit_edge

mlx5_ib_can_load_pas_with_umr.exit.if.else_crit_edge: ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc ptr @alloc_cacheable_mr(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags)
  br label %if.end

if.else:                                          ; preds = %mlx5_ib_can_load_pas_with_umr.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %conv = trunc i64 %iova to i32
  %call4 = tail call i32 @ib_umem_find_best_pgsz(ptr noundef %umem, i32 noundef -4096, i32 noundef %conv) #13
  %slow_path_mutex = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %slow_path_mutex, i32 noundef 0) #13
  %call5 = tail call fastcc ptr @reg_create(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags, i32 noundef %call4, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %slow_path_mutex) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval.0.i5457 = phi i1 [ true, %if.then ], [ false, %if.else ]
  %mr.0 = phi ptr [ %call2, %if.then ], [ %call5, %if.else ]
  %cmp.i55 = icmp ugt ptr %mr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_umem_release(ptr noundef %umem) #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_real_mr.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_real_mr, %if.then16)) #13
          to label %do.end [label %if.then16], !srcloc !187

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %15 = tail call i32 @llvm.read_register.i32(metadata !170) #13
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
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 1
  %21 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmkey, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_real_mr.__UNIQUE_ID_ddebug566, ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.64, i32 noundef 1470, i32 noundef %20, i32 noundef %22) #13
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %23 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %iova.i.i, align 8
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 8
  %conv.i.i = zext i32 %26 to i64
  %add.i.i = add i64 %24, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %24, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  %27 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev.i, align 8
  %reg_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %28, i32 0, i32 17, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %reg_pages, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages, ptr %reg_pages, i32 %div.i1.i, ptr elementtype(i32) %reg_pages) #13, !srcloc !188
  br i1 %retval.0.i5457, label %if.then21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then21:                                        ; preds = %do.end
  %call22 = tail call i32 @mlx5_ib_update_mr_pas(ptr noundef %mr.0, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef %mr.0, ptr undef)
  %30 = inttoptr i32 %call22 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.then21.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then8
  %retval.0 = phi ptr [ %mr.0, %if.then8 ], [ %30, %if.then24 ], [ %mr.0, %if.then21.cleanup_crit_edge ], [ %mr.0, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_reg_user_mr_dmabuf(ptr noundef %pd, i64 noundef %offset, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %fd, i32 noundef %access_flags, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_reg_user_mr_dmabuf, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug568, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 1604, i32 noundef %8, i64 noundef %offset, i64 noundef %virt_addr, i64 noundef %length, i32 noundef %fd, i32 noundef %access_flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i64 %length to i32
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %12, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %mlx5_ib_can_load_pas_with_umr.exit, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlx5_ib_can_load_pas_with_umr.exit:               ; preds = %do.end
  %add.ptr7.i = getelementptr i32, ptr %12, i32 8
  %16 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr7.i, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %conv)
  %cmp.i = icmp ult i32 %conv, 268435456
  %not.or.cond.i = or i1 %cmp.i, %tobool10.not.i
  br i1 %not.or.cond.i, label %if.end8, label %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge

mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge: ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  %conv10 = trunc i64 %offset to i32
  %call12 = tail call ptr @ib_umem_dmabuf_get(ptr noundef %1, i32 noundef %conv10, i32 noundef %conv, i32 noundef %fd, i32 noundef %access_flags, ptr noundef nonnull @mlx5_ib_dmabuf_attach_ops) #13
  %cmp.i117 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.body15, label %if.end37

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_reg_user_mr_dmabuf, %if.then27)) #13
          to label %cleanup [label %if.then27], !srcloc !187

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %19 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %20 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i118 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i118 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid31, align 8
  %26 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug569, ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 1615, i32 noundef %25, i32 noundef %26) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end8
  %call38 = tail call fastcc ptr @alloc_cacheable_mr(ptr noundef %pd, ptr noundef %call12, i64 noundef %virt_addr, i32 noundef %access_flags)
  %cmp.i119 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then40, label %do.body44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_umem_release(ptr noundef %call12) #13
  br label %cleanup

do.body44:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_reg_user_mr_dmabuf, %if.then56)) #13
          to label %do.end63 [label %if.then56], !srcloc !187

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %27 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %28 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i120 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i120 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task59, align 8
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid60, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call38, i32 0, i32 1
  %34 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmkey, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug570, ptr noundef %27, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef 1626, i32 noundef %33, i32 noundef %35) #13
  br label %do.end63

do.end63:                                         ; preds = %if.then56, %do.body44
  %umem64 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call38, i32 0, i32 3
  %36 = ptrtoint ptr %umem64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %umem64, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %41 to i64
  %add.i.i = add i64 %39, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %39, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  %42 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdev.i, align 8
  %reg_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %43, i32 0, i32 17, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %reg_pages, i32 1, i32 3, i32 1) #13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages, ptr %reg_pages, i32 %div.i1.i, ptr elementtype(i32) %reg_pages) #13, !srcloc !188
  %private = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %call12, i32 0, i32 7
  %45 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call38, ptr %private, align 8
  %mmkey66 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call38, i32 0, i32 1
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call38, i32 0, i32 1, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #13
  %46 = ptrtoint ptr %usecount.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %usecount.i, align 4
  %odp_mkeys.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %mmkey66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mmkey66, align 4
  %and.i.i121 = and i32 %48, -256
  %call1.i = tail call ptr @xa_store(ptr noundef %odp_mkeys.i, i32 noundef %and.i.i121, ptr noundef %mmkey66, i32 noundef 3264) #13
  %49 = ptrtoint ptr %call1.i to i32
  %and.i.i.i.i = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call1.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %shr.i.i = ashr i32 %49, 2
  %retval.0.i.i = select i1 %spec.select.i.i.i, i32 %shr.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool68.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool68.not, label %if.end70, label %do.end63.err_dereg_mr_crit_edge

do.end63.err_dereg_mr_crit_edge:                  ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dereg_mr

if.end70:                                         ; preds = %do.end63
  %call71 = tail call i32 @mlx5_ib_init_dmabuf_mr(ptr noundef %call38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end70.cleanup_crit_edge, label %if.end70.err_dereg_mr_crit_edge

if.end70.err_dereg_mr_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dereg_mr

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_dereg_mr:                                     ; preds = %if.end70.err_dereg_mr_crit_edge, %do.end63.err_dereg_mr_crit_edge
  %err.0 = phi i32 [ %retval.0.i.i, %do.end63.err_dereg_mr_crit_edge ], [ %call71, %if.end70.err_dereg_mr_crit_edge ]
  %call76 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef %call38, ptr undef)
  %50 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_dereg_mr, %if.end70.cleanup_crit_edge, %if.then40, %if.then27, %do.body15, %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call38, %if.then40 ], [ %50, %err_dereg_mr ], [ %call38, %if.end70.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge ], [ %call12, %do.body15 ], [ %call12, %if.then27 ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_dmabuf_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_cacheable_mr(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %is_dmabuf = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 5
  %2 = ptrtoint ptr %is_dmabuf to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_dmabuf, align 8
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %iova1.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %4 = ptrtoint ptr %iova1.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %iova, ptr %iova1.i, align 8
  br label %if.end30

if.end:                                           ; preds = %entry
  %conv = trunc i64 %iova to i32
  %call3 = tail call i32 @ib_umem_find_best_pgsz(ptr noundef %umem, i32 noundef -4096, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %if.end.if.end30_crit_edge, !prof !180

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 946, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %if.end.thread
  %page_size.0151 = phi i32 [ 4096, %if.end.thread ], [ %call3, %if.end.if.end30_crit_edge ]
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %5 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %8 to i64
  %conv1.i = zext i32 %page_size.0151 to i64
  %sub.i = add nsw i64 %conv1.i, -1
  %add.i = add i64 %sub.i, %6
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %page_size.0151, -1
  %conv7.i = zext i32 %sub6.i to i64
  %sub8.i = sub i64 %6, %conv7.i
  %add11.i = add i64 %sub8.i, %sub.i
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %page_size.0151
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 1
  %sub.i121 = add i32 %div.i, -1
  %9 = tail call i32 @llvm.ctlz.i32(i32 %sub.i121, i1 true) #13, !range !184
  %add.i123 = sub nuw nsw i32 32, %9
  %cond13.i = select i1 %cmp.i, i32 %add.i123, i32 0
  %order2.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %order2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %order2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond13.i, i32 %11)
  %cmp.i124 = icmp ult i32 %cond13.i, %11
  br i1 %cmp.i124, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %ent.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1
  br label %mr_cache_ent_from_order.exit

if.end.i:                                         ; preds = %if.end30
  %sub.i125 = sub i32 %cond13.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i125)
  %cmp8.i = icmp ugt i32 %sub.i125, 20
  %arrayidx12.i = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 %sub.i125
  br i1 %cmp8.i, label %if.end.i.if.then38_crit_edge, label %if.end.i.mr_cache_ent_from_order.exit_crit_edge

if.end.i.mr_cache_ent_from_order.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mr_cache_ent_from_order.exit

if.end.i.if.then38_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

mr_cache_ent_from_order.exit:                     ; preds = %if.end.i.mr_cache_ent_from_order.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %ent.i, %if.then.i ], [ %arrayidx12.i, %if.end.i.mr_cache_ent_from_order.exit_crit_edge ]
  %tobool34.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool34.not, label %mr_cache_ent_from_order.exit.if.then38_crit_edge, label %lor.lhs.false

mr_cache_ent_from_order.exit.if.then38_crit_edge: ; preds = %mr_cache_ent_from_order.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

lor.lhs.false:                                    ; preds = %mr_cache_ent_from_order.exit
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %retval.0.i, i32 0, i32 10
  %12 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %lor.lhs.false.if.then38_crit_edge, label %lor.lhs.false36

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %and.i126 = and i32 %access_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i, label %lor.lhs.false36.if.end.i127_crit_edge, label %land.lhs.true.i

lor.lhs.false36.if.end.i127_crit_edge:            ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i127

land.lhs.true.i:                                  ; preds = %lor.lhs.false36
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %17, i32 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %20 = and i32 %19, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %20)
  %.not.i = icmp eq i32 %20, 8388610
  br i1 %.not.i, label %land.lhs.true.i.if.then38_crit_edge, label %land.lhs.true.i.if.end.i127_crit_edge

land.lhs.true.i.if.end.i127_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i127

land.lhs.true.i.if.then38_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.end.i127:                                      ; preds = %land.lhs.true.i.if.end.i127_crit_edge, %lor.lhs.false36.if.end.i127_crit_edge
  %and14.i = and i32 %access_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i127.if.end41_crit_edge, label %land.lhs.true16.i

if.end.i127.if.end41_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true16.i:                                ; preds = %if.end.i127
  %mdev17.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %mdev17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev17.i, align 8
  %caps18.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %caps18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %caps18.i, align 8
  %add.ptr23.i = getelementptr i32, ptr %24, i32 7
  %25 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr23.i, align 4
  %27 = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not.i = icmp eq i32 %27, 0
  br i1 %tobool26.not.i, label %land.lhs.true16.i.land.lhs.true42.i_crit_edge, label %land.lhs.true27.i

land.lhs.true16.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

land.lhs.true27.i:                                ; preds = %land.lhs.true16.i
  %add.ptr34.i = getelementptr i32, ptr %24, i32 6
  %28 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr34.i, align 4
  %30 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool37.not.i = icmp eq i32 %30, 0
  br i1 %tobool37.not.i, label %land.lhs.true27.i.if.then38_crit_edge, label %land.lhs.true27.i.land.lhs.true42.i_crit_edge

land.lhs.true27.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

land.lhs.true27.i.if.then38_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

land.lhs.true42.i:                                ; preds = %land.lhs.true27.i.land.lhs.true42.i_crit_edge, %land.lhs.true16.i.land.lhs.true42.i_crit_edge
  %31 = and i32 %26, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool52.not.i = icmp eq i32 %31, 0
  br i1 %tobool52.not.i, label %land.lhs.true42.i.if.end41_crit_edge, label %land.lhs.true53.i

land.lhs.true42.i.if.end41_crit_edge:             ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true53.i:                                ; preds = %land.lhs.true42.i
  %add.ptr60.i = getelementptr i32, ptr %24, i32 6
  %32 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr60.i, align 4
  %34 = and i32 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool63.not.i = icmp eq i32 %34, 0
  br i1 %tobool63.not.i, label %land.lhs.true53.i.if.then38_crit_edge, label %land.lhs.true53.i.if.end41_crit_edge

land.lhs.true53.i.if.end41_crit_edge:             ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true53.i.if.then38_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true53.i.if.then38_crit_edge, %land.lhs.true27.i.if.then38_crit_edge, %land.lhs.true.i.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge, %mr_cache_ent_from_order.exit.if.then38_crit_edge, %if.end.i.if.then38_crit_edge
  %slow_path_mutex = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %slow_path_mutex, i32 noundef 0) #13
  %call39 = tail call fastcc ptr @reg_create(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags, i32 noundef %page_size.0151, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %slow_path_mutex) #13
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true53.i.if.end41_crit_edge, %land.lhs.true42.i.if.end41_crit_edge, %if.end.i127.if.end41_crit_edge
  %lock.i = getelementptr inbounds %struct.mlx5_cache_ent, ptr %retval.0.i, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %retval.0.i, align 4
  %cmp.i.not.i = icmp eq ptr %36, %retval.0.i
  br i1 %cmp.i.not.i, label %get_cache_mr.exit.thread, label %if.then.i130

if.then.i130:                                     ; preds = %if.end41
  %add.ptr.i129 = getelementptr i8, ptr %36, i32 -248
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i130.get_cache_mr.exit_crit_edge

if.then.i130.get_cache_mr.exit_crit_edge:         ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_cache_mr.exit

if.end.i.i.i:                                     ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %get_cache_mr.exit

get_cache_mr.exit.thread:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef nonnull %retval.0.i) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %miss.i = getelementptr inbounds %struct.mlx5_cache_ent, ptr %retval.0.i, i32 0, i32 12
  %43 = ptrtoint ptr %miss.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %miss.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %miss.i, align 4
  br label %if.then44

get_cache_mr.exit:                                ; preds = %if.end.i.i.i, %if.then.i130.get_cache_mr.exit_crit_edge
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %available_mrs.i = getelementptr inbounds %struct.mlx5_cache_ent, ptr %retval.0.i, i32 0, i32 9
  %47 = ptrtoint ptr %available_mrs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %available_mrs.i, align 4
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %available_mrs.i, align 4
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef nonnull %retval.0.i) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 -32
  %49 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 152)
  %tobool43.not = icmp eq ptr %add.ptr.i129, null
  br i1 %tobool43.not, label %get_cache_mr.exit.if.then44_crit_edge, label %get_cache_mr.exit.if.end49_crit_edge

get_cache_mr.exit.if.end49_crit_edge:             ; preds = %get_cache_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

get_cache_mr.exit.if.then44_crit_edge:            ; preds = %get_cache_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.then44:                                        ; preds = %get_cache_mr.exit.if.then44_crit_edge, %get_cache_mr.exit.thread
  %call45 = tail call fastcc ptr @create_cache_mr(ptr noundef nonnull %retval.0.i)
  %cmp.i133 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then44.cleanup_crit_edge, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %get_cache_mr.exit.if.end49_crit_edge
  %mr.0 = phi ptr [ %add.ptr.i129, %get_cache_mr.exit.if.end49_crit_edge ], [ %call45, %if.then44.if.end49_crit_edge ]
  %pd50 = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 1
  %50 = ptrtoint ptr %pd50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pd, ptr %pd50, align 4
  %umem51 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 3
  %51 = ptrtoint ptr %umem51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %umem, ptr %umem51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page_size.0151)
  %cmp.i135 = icmp ugt i32 %page_size.0151, 1
  %52 = tail call i32 @llvm.ctlz.i32(i32 %sub6.i, i1 true) #13, !range !184
  %add.i145 = sub nuw nsw i32 32, %52
  %cond77 = select i1 %cmp.i135, i32 %add.i145, i32 0
  %53 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond77, ptr %53, align 8
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length.i, align 8
  %conv78 = zext i32 %56 to i64
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 1
  %57 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mmkey.i, align 8
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 2
  %59 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %lkey.i, align 8
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 3
  %60 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %rkey.i, align 4
  %length5.i = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 5
  %61 = ptrtoint ptr %length5.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv78, ptr %length5.i, align 8
  %62 = ptrtoint ptr %mr.0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %1, ptr %mr.0, align 8
  %iova8.i = getelementptr inbounds %struct.ib_mr, ptr %mr.0, i32 0, i32 4
  %63 = ptrtoint ptr %iova8.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %iova, ptr %iova8.i, align 8
  %access_flags9.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr.0, i32 0, i32 4, i32 0, i32 1
  %64 = ptrtoint ptr %access_flags9.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %access_flags, ptr %access_flags9.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then44.cleanup_crit_edge, %if.then38, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call39, %if.then38 ], [ %mr.0, %if.end49 ], [ %call45, %if.then44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5r_store_odp_mkey(ptr noundef %dev, ptr noundef %mmkey) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %usecount = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %mmkey, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount, i32 noundef 4) #13
  %0 = ptrtoint ptr %usecount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %usecount, align 4
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mmkey, align 4
  %and.i = and i32 %2, -256
  %call1 = tail call ptr @xa_store(ptr noundef %odp_mkeys, i32 noundef %and.i, ptr noundef %mmkey, i32 noundef 3264) #13
  %3 = ptrtoint ptr %call1 to i32
  %and.i.i.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call1, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %3, 2
  %retval.0.i = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_init_dmabuf_mr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_dereg_mr(ptr noundef %ibmr, ptr nocapture readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %umrwr.i = alloca %struct.mlx5_umr_wr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmr, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1
  %usecount = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecount, i32 noundef 4) #13
  %2 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ibmr, align 8
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmkey, align 8
  %and.i = and i32 %7, -256
  %call6 = tail call ptr @xa_erase(ptr noundef %odp_mkeys, i32 noundef %and.i) #13
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mlx5r_deref_wait_odp_mkey(ptr noundef %mmkey)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 7
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp8 = icmp eq i32 %9, 5
  br i1 %cmp8, label %if.then9, label %if.end.if.end62_crit_edge

if.end.if.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then9:                                         ; preds = %if.end
  %sig_mrs = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 39
  %10 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmkey, align 8
  %and.i156 = and i32 %11, -256
  %sig = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sig, align 8
  tail call void @_raw_spin_lock(ptr noundef %sig_mrs) #13
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef %sig_mrs, i32 noundef %and.i156, ptr noundef %13, ptr noundef null, i32 noundef 3264) #13
  tail call void @_raw_spin_unlock(ptr noundef %sig_mrs) #13
  %mtt_mr = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %mtt_mr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtt_mr, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.then9.if.end23_crit_edge, label %if.then15

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then15:                                        ; preds = %if.then9
  %call18 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef nonnull %15, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mtt_mr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mtt_mr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then9.if.end23_crit_edge
  %klm_mr = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %klm_mr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %klm_mr, align 8
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %if.end23.if.end33_crit_edge, label %if.then25

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then25:                                        ; preds = %if.end23
  %call28 = tail call i32 @mlx5_ib_dereg_mr(ptr noundef nonnull %18, ptr undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %klm_mr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %klm_mr, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end23.if.end33_crit_edge
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 8
  %22 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sig, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %call35 = tail call i32 @mlx5_core_destroy_psv(ptr noundef %21, i32 noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.if.end42_crit_edge, label %do.end

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %26 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %27 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i157 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i157 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  %33 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sig, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 1958, i32 noundef %32, i32 noundef %36) #17
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end33.if.end42_crit_edge
  %37 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdev, align 8
  %39 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sig, align 8
  %psv_wire = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %psv_wire to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %psv_wire, align 4
  %call46 = tail call i32 @mlx5_core_destroy_psv(ptr noundef %38, i32 noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end42.if.end59_crit_edge, label %do.end51

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %43 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %44 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i158 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i158 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task54, align 8
  %pid55 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid55, align 8
  %50 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sig, align 8
  %psv_wire57 = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %psv_wire57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %psv_wire57, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 1961, i32 noundef %49, i32 noundef %53) #17
  br label %if.end59

if.end59:                                         ; preds = %do.end51, %if.end42.if.end59_crit_edge
  %54 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sig, align 8
  tail call void @kfree(ptr noundef %55) #13
  %56 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sig, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.end.if.end62_crit_edge
  %cache_ent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 2
  %57 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cache_ent, align 4
  %tobool63.not = icmp eq ptr %58, null
  br i1 %tobool63.not, label %if.end62.if.then77_crit_edge, label %if.then64

if.end62.if.then77_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

if.then64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %umrwr.i) #13
  %59 = call ptr @memset(ptr %umrwr.i, i32 0, i32 96)
  %60 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ibmr, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdev.i, align 8
  %state.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.i = icmp eq i32 %65, 2
  br i1 %cmp.i, label %revoke_mr.exit.thread, label %revoke_mr.exit

revoke_mr.exit.thread:                            ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  br label %if.end74

revoke_mr.exit:                                   ; preds = %if.then64
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 5
  %66 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -2013265920, ptr %send_flags.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 4
  %67 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 240, ptr %opcode.i, align 8
  %umrc.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %61, i32 0, i32 7
  %68 = ptrtoint ptr %umrc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %umrc.i, align 4
  %pd3.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 3
  %70 = ptrtoint ptr %pd3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %pd3.i, align 8
  %71 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mmkey, align 8
  %mkey.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 8
  %73 = ptrtoint ptr %mkey.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %mkey.i, align 4
  %ignore_free_state.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 9
  %74 = ptrtoint ptr %ignore_free_state.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i = load i8, ptr %ignore_free_state.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ignore_free_state.i, align 8
  %call5.i = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %61, ptr noundef nonnull %umrwr.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool66.not = icmp eq i32 %call5.i, 0
  br i1 %tobool66.not, label %revoke_mr.exit.if.end74_crit_edge, label %if.then67

revoke_mr.exit.if.end74_crit_edge:                ; preds = %revoke_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then67:                                        ; preds = %revoke_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cache_ent, align 4
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %76, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %77 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cache_ent, align 4
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %total_mrs, align 4
  %dec = add i32 %80, -1
  store i32 %dec, ptr %total_mrs, align 4
  %81 = load ptr, ptr %cache_ent, align 4
  %lock71 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %81, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock71) #13
  %82 = ptrtoint ptr %cache_ent to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %cache_ent, align 4
  br label %if.then77

if.end74:                                         ; preds = %revoke_mr.exit.if.end74_crit_edge, %revoke_mr.exit.thread
  %83 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load ptr, ptr %cache_ent, align 4
  %tobool76.not = icmp eq ptr %.pr, null
  br i1 %tobool76.not, label %if.end74.if.then77_crit_edge, label %if.end74.if.end85_crit_edge

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end74.if.then77_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

if.then77:                                        ; preds = %if.end74.if.then77_crit_edge, %if.then67, %if.end62.if.then77_crit_edge
  %84 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ibmr, align 8
  %odp_mkeys.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mmkey, align 8
  %and.i.i = and i32 %87, -256
  %call1.i = call ptr @xa_load(ptr noundef %odp_mkeys.i, i32 noundef %and.i.i) #13
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then77.destroy_mkey.exit_crit_edge, label %do.end.i, !prof !185

if.then77.destroy_mkey.exit_crit_edge:            ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %destroy_mkey.exit

do.end.i:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #13
  br label %destroy_mkey.exit

destroy_mkey.exit:                                ; preds = %do.end.i, %if.then77.destroy_mkey.exit_crit_edge
  %mdev.i160 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %mdev.i160 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mdev.i160, align 8
  %90 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mmkey, align 8
  %call23.i = call i32 @mlx5_core_destroy_mkey(ptr noundef %89, i32 noundef %91) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool82.not = icmp eq i32 %call23.i, 0
  br i1 %tobool82.not, label %destroy_mkey.exit.if.end85_crit_edge, label %destroy_mkey.exit.cleanup_crit_edge

destroy_mkey.exit.cleanup_crit_edge:              ; preds = %destroy_mkey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

destroy_mkey.exit.if.end85_crit_edge:             ; preds = %destroy_mkey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end85:                                         ; preds = %destroy_mkey.exit.if.end85_crit_edge, %if.end74.if.end85_crit_edge
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 3
  %92 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %umem, align 8
  %tobool86.not = icmp eq ptr %93, null
  br i1 %tobool86.not, label %if.end85.if.end99_crit_edge, label %is_odp_mr.exit

if.end85.if.end99_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

is_odp_mr.exit:                                   ; preds = %if.end85
  %is_odp.i = getelementptr inbounds %struct.ib_umem, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %is_odp.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i163 = load i8, ptr %is_odp.i, align 8
  %95 = and i8 %bf.load.i163, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool2.i.not = icmp eq i8 %95, 0
  br i1 %tobool2.i.not, label %if.then90, label %if.then97.critedge

if.then90:                                        ; preds = %is_odp_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %93, i32 0, i32 3
  %98 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %99 to i64
  %add.i.i = add i64 %97, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i164 = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %97, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i164, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  %mdev93 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %mdev93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mdev93, align 8
  %reg_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %101, i32 0, i32 17, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %reg_pages, i32 1, i32 3, i32 1) #13
  %102 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages, ptr %reg_pages, i32 %div.i1.i, ptr elementtype(i32) %reg_pages) #13, !srcloc !189
  %103 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %umem, align 8
  call void @ib_umem_release(ptr noundef %104) #13
  br label %if.end99

if.then97.critedge:                               ; preds = %is_odp_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @ib_umem_release(ptr noundef nonnull %93) #13
  call void @mlx5_ib_free_odp_mr(ptr noundef %ibmr) #13
  br label %if.end99

if.end99:                                         ; preds = %if.then97.critedge, %if.then90, %if.end85.if.end99_crit_edge
  %105 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cache_ent, align 4
  %tobool101.not = icmp eq ptr %106, null
  br i1 %tobool101.not, label %if.else, label %if.then102

if.then102:                                       ; preds = %if.end99
  %lock.i = getelementptr inbounds %struct.mlx5_cache_ent, ptr %106, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %list.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i165 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %108, ptr noundef nonnull %106) #13
  br i1 %call.i.i.i165, label %if.end.i.i.i, label %if.then102.mlx5_mr_cache_free.exit_crit_edge

if.then102.mlx5_mr_cache_free.exit_crit_edge:     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_mr_cache_free.exit

if.end.i.i.i:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %list.i, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %106, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %111 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %list.i, ptr %108, align 4
  br label %mlx5_mr_cache_free.exit

mlx5_mr_cache_free.exit:                          ; preds = %if.end.i.i.i, %if.then102.mlx5_mr_cache_free.exit_crit_edge
  %available_mrs.i = getelementptr inbounds %struct.mlx5_cache_ent, ptr %106, i32 0, i32 9
  %113 = ptrtoint ptr %available_mrs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %available_mrs.i, align 4
  %inc.i = add i32 %114, 1
  store i32 %inc.i, ptr %available_mrs.i, align 4
  call fastcc void @queue_adjust_cache_locked(ptr noundef nonnull %106) #13
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br label %cleanup

if.else:                                          ; preds = %if.end99
  %115 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %umem, align 8
  %tobool.not.i167 = icmp eq ptr %116, null
  br i1 %tobool.not.i167, label %land.lhs.true.i, label %if.else.mlx5_free_priv_descs.exit_crit_edge

if.else.mlx5_free_priv_descs.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_free_priv_descs.exit

land.lhs.true.i:                                  ; preds = %if.else
  %117 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %tobool1.not.i = icmp eq ptr %119, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.mlx5_free_priv_descs.exit_crit_edge, label %if.then.i

land.lhs.true.i.mlx5_free_priv_descs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_free_priv_descs.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ibmr, align 8
  %max_descs.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3
  %122 = ptrtoint ptr %max_descs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max_descs.i, align 4
  %desc_size.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %124 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %desc_size.i, align 8
  %mul.i = mul i32 %125, %123
  %mdev.i168 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %121, i32 0, i32 1
  %126 = ptrtoint ptr %mdev.i168 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mdev.i168, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %desc_map.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 2
  %130 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %desc_map.i, align 8
  call void @dma_unmap_page_attrs(ptr noundef %dev3.i, i32 noundef %131, i32 noundef %mul.i, i32 noundef 1, i32 noundef 0) #13
  %descs_alloc.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 1
  %132 = ptrtoint ptr %descs_alloc.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %descs_alloc.i, align 4
  call void @kfree(ptr noundef %133) #13
  %134 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %117, align 8
  br label %mlx5_free_priv_descs.exit

mlx5_free_priv_descs.exit:                        ; preds = %if.then.i, %land.lhs.true.i.mlx5_free_priv_descs.exit_crit_edge, %if.else.mlx5_free_priv_descs.exit_crit_edge
  call void @kfree(ptr noundef %ibmr) #13
  br label %cleanup

cleanup:                                          ; preds = %mlx5_free_priv_descs.exit, %mlx5_mr_cache_free.exit, %destroy_mkey.exit.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then15.cleanup_crit_edge ], [ %call28, %if.then25.cleanup_crit_edge ], [ %call23.i, %destroy_mkey.exit.cleanup_crit_edge ], [ 0, %mlx5_free_priv_descs.exit ], [ 0, %mlx5_mr_cache_free.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_rereg_user_mr(ptr nocapture noundef %ib_mr, i32 noundef %flags, i64 noundef %start, i64 noundef %length, i64 noundef %iova, i32 noundef %new_access_flags, ptr noundef %new_pd, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %umrwr.i = alloca %struct.mlx5_umr_wr, align 8
  %page_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_mr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_rereg_user_mr.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_rereg_user_mr, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !187

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %3 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_rereg_user_mr.__UNIQUE_ID_ddebug571, ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, i32 noundef 1794, i32 noundef %8, i64 noundef %start, i64 noundef %iova, i64 noundef %length, i32 noundef %new_access_flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool6.not = icmp ult i32 %flags, 8
  br i1 %tobool6.not, label %if.end9, label %do.end.cleanup81_crit_edge

do.end.cleanup81_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup81

if.end9:                                          ; preds = %do.end
  %and10 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %access_flags = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %access_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %access_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %new_access_flags.addr.0 = phi i32 [ %new_access_flags, %if.end9.if.end13_crit_edge ], [ %10, %if.then12 ]
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %pd = getelementptr inbounds %struct.ib_mr, ptr %ib_mr, i32 0, i32 1
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %new_pd.addr.0 = phi ptr [ %new_pd, %if.end13.if.end17_crit_edge ], [ %12, %if.then16 ]
  %and18 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end47

if.then20:                                        ; preds = %if.end17
  %access_flags21 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %access_flags21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %access_flags21, align 4
  %xor.i = xor i32 %14, %new_access_flags.addr.0
  %and.i142 = and i32 %xor.i, -1048584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end.i:                                         ; preds = %if.then20
  %and.i.i = and i32 %xor.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %18, i32 16
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %21 = and i32 %20, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %21)
  %.not.i.i = icmp eq i32 %21, 8388610
  br i1 %.not.i.i, label %land.lhs.true.i.i.if.end29_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i.if.end29_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %and14.i.i = and i32 %xor.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end.i.i.if.then23_crit_edge, label %land.lhs.true16.i.i

if.end.i.i.if.then23_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

land.lhs.true16.i.i:                              ; preds = %if.end.i.i
  %mdev17.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %mdev17.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev17.i.i, align 8
  %caps18.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps18.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps18.i.i, align 8
  %add.ptr23.i.i = getelementptr i32, ptr %25, i32 7
  %26 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr23.i.i, align 4
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool26.not.i.i, label %land.lhs.true16.i.i.land.lhs.true42.i.i_crit_edge, label %land.lhs.true27.i.i

land.lhs.true16.i.i.land.lhs.true42.i.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i.i

land.lhs.true27.i.i:                              ; preds = %land.lhs.true16.i.i
  %add.ptr34.i.i = getelementptr i32, ptr %25, i32 6
  %29 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr34.i.i, align 4
  %31 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool37.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool37.not.i.i, label %land.lhs.true27.i.i.if.end29_crit_edge, label %land.lhs.true27.i.i.land.lhs.true42.i.i_crit_edge

land.lhs.true27.i.i.land.lhs.true42.i.i_crit_edge: ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i.i

land.lhs.true27.i.i.if.end29_crit_edge:           ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true42.i.i:                              ; preds = %land.lhs.true27.i.i.land.lhs.true42.i.i_crit_edge, %land.lhs.true16.i.i.land.lhs.true42.i.i_crit_edge
  %32 = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool52.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool52.not.i.i, label %land.lhs.true42.i.i.if.then23_crit_edge, label %land.lhs.true53.i.i

land.lhs.true42.i.i.if.then23_crit_edge:          ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

land.lhs.true53.i.i:                              ; preds = %land.lhs.true42.i.i
  %add.ptr60.i.i = getelementptr i32, ptr %25, i32 6
  %33 = ptrtoint ptr %add.ptr60.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr60.i.i, align 4
  %35 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool63.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool63.not.i.i, label %land.lhs.true53.i.i.if.end29_crit_edge, label %land.lhs.true53.i.i.if.then23_crit_edge

land.lhs.true53.i.i.if.then23_crit_edge:          ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

land.lhs.true53.i.i.if.end29_crit_edge:           ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true53.i.i.if.then23_crit_edge, %land.lhs.true42.i.i.if.then23_crit_edge, %if.end.i.i.if.then23_crit_edge
  %36 = ptrtoint ptr %ib_mr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ib_mr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %umrwr.i) #13
  %38 = call ptr @memset(ptr %umrwr.i, i32 0, i32 96)
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 4
  %39 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 240, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 5
  %40 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1879048192, ptr %send_flags.i, align 4
  %pd1.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 3
  %41 = ptrtoint ptr %pd1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %new_pd.addr.0, ptr %pd1.i, align 8
  %access_flags2.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 7
  %42 = ptrtoint ptr %access_flags2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %new_access_flags.addr.0, ptr %access_flags2.i, align 8
  %mkey.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 8
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 1
  %43 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mmkey.i, align 8
  %45 = ptrtoint ptr %mkey.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mkey.i, align 4
  %call3.i = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %37, ptr noundef nonnull %umrwr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i144 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i144, label %umr_rereg_pd_access.exit.thread, label %if.then26

umr_rereg_pd_access.exit.thread:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %access_flags21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %new_access_flags.addr.0, ptr %access_flags21, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  br label %cleanup81

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  %47 = inttoptr i32 %call3.i to ptr
  br label %cleanup81

if.end29:                                         ; preds = %land.lhs.true53.i.i.if.end29_crit_edge, %land.lhs.true27.i.i.if.end29_crit_edge, %land.lhs.true.i.i.if.end29_crit_edge, %if.then20.if.end29_crit_edge
  %umem30 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 3
  %48 = ptrtoint ptr %umem30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %umem30, align 8
  %tobool31.not = icmp eq ptr %49, null
  br i1 %tobool31.not, label %if.end29.recreate_crit_edge, label %is_odp_mr.exit

if.end29.recreate_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

is_odp_mr.exit:                                   ; preds = %if.end29
  %is_odp.i = getelementptr inbounds %struct.ib_umem, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %is_odp.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %is_odp.i, align 8
  %51 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool2.i.not = icmp eq i8 %51, 0
  br i1 %tobool2.i.not, label %is_dmabuf_mr.exit, label %is_odp_mr.exit.recreate_crit_edge

is_odp_mr.exit.recreate_crit_edge:                ; preds = %is_odp_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

is_dmabuf_mr.exit:                                ; preds = %is_odp_mr.exit
  %52 = ptrtoint ptr %is_odp.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i149 = load i8, ptr %is_odp.i, align 8
  %53 = and i8 %bf.load.i149, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool2.i150.not = icmp eq i8 %53, 0
  br i1 %tobool2.i150.not, label %if.end36, label %is_dmabuf_mr.exit.recreate_crit_edge

is_dmabuf_mr.exit.recreate_crit_edge:             ; preds = %is_dmabuf_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

if.end36:                                         ; preds = %is_dmabuf_mr.exit
  %call37 = tail call fastcc i32 @revoke_mr(ptr noundef %ib_mr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %54 = inttoptr i32 %call37 to ptr
  br label %cleanup81

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %umem30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %umem30, align 8
  store ptr null, ptr %umem30, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %60 to i64
  %add.i.i = add i64 %58, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i152 = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %58, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i152, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev, align 8
  %reg_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %62, i32 0, i32 17, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %reg_pages, i32 1, i32 3, i32 1) #13
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages, ptr %reg_pages, i32 %div.i1.i, ptr elementtype(i32) %reg_pages) #13, !srcloc !189
  %iova45 = getelementptr inbounds %struct.ib_mr, ptr %ib_mr, i32 0, i32 4
  %64 = ptrtoint ptr %iova45 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %iova45, align 8
  %call46 = tail call fastcc ptr @create_real_mr(ptr noundef %new_pd.addr.0, ptr noundef %56, i64 noundef %65, i32 noundef %new_access_flags.addr.0)
  br label %cleanup81

if.end47:                                         ; preds = %if.end17
  %umem48 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 3
  %66 = ptrtoint ptr %umem48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %umem48, align 8
  %tobool49.not = icmp eq ptr %67, null
  br i1 %tobool49.not, label %if.end47.recreate_crit_edge, label %is_odp_mr.exit159

if.end47.recreate_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

is_odp_mr.exit159:                                ; preds = %if.end47
  %is_odp.i155 = getelementptr inbounds %struct.ib_umem, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %is_odp.i155 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i156 = load i8, ptr %is_odp.i155, align 8
  %69 = and i8 %bf.load.i156, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool2.i157.not = icmp eq i8 %69, 0
  br i1 %tobool2.i157.not, label %is_dmabuf_mr.exit166, label %is_odp_mr.exit159.recreate_crit_edge

is_odp_mr.exit159.recreate_crit_edge:             ; preds = %is_odp_mr.exit159
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

is_dmabuf_mr.exit166:                             ; preds = %is_odp_mr.exit159
  %70 = ptrtoint ptr %is_odp.i155 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i163 = load i8, ptr %is_odp.i155, align 8
  %71 = and i8 %bf.load.i163, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool2.i164.not = icmp eq i8 %71, 0
  %and56 = and i32 %new_access_flags.addr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond = select i1 %tobool2.i164.not, i1 %tobool57.not, i1 false
  br i1 %or.cond, label %land.lhs.true, label %is_dmabuf_mr.exit166.recreate_crit_edge

is_dmabuf_mr.exit166.recreate_crit_edge:          ; preds = %is_dmabuf_mr.exit166
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

land.lhs.true:                                    ; preds = %is_dmabuf_mr.exit166
  %access_flags58 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ib_mr, i32 0, i32 4, i32 0, i32 1
  %72 = ptrtoint ptr %access_flags58 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %access_flags58, align 4
  %xor.i167 = xor i32 %73, %new_access_flags.addr.0
  %and.i168 = and i32 %xor.i167, -1048584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %if.end.i172, label %land.lhs.true.recreate_crit_edge

land.lhs.true.recreate_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

if.end.i172:                                      ; preds = %land.lhs.true
  %and.i.i170 = and i32 %xor.i167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i170)
  %tobool.not.i.i171 = icmp eq i32 %and.i.i170, 0
  br i1 %tobool.not.i.i171, label %if.end.i172.if.end.i.i180_crit_edge, label %land.lhs.true.i.i177

if.end.i172.if.end.i.i180_crit_edge:              ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i180

land.lhs.true.i.i177:                             ; preds = %if.end.i172
  %mdev.i.i173 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %mdev.i.i173 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdev.i.i173, align 8
  %caps.i.i174 = getelementptr inbounds %struct.mlx5_core_dev, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %caps.i.i174 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %caps.i.i174, align 8
  %add.ptr.i.i175 = getelementptr i32, ptr %77, i32 16
  %78 = ptrtoint ptr %add.ptr.i.i175 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i175, align 4
  %80 = and i32 %79, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %80)
  %.not.i.i176 = icmp eq i32 %80, 8388610
  br i1 %.not.i.i176, label %land.lhs.true.i.i177.recreate_crit_edge, label %land.lhs.true.i.i177.if.end.i.i180_crit_edge

land.lhs.true.i.i177.if.end.i.i180_crit_edge:     ; preds = %land.lhs.true.i.i177
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i180

land.lhs.true.i.i177.recreate_crit_edge:          ; preds = %land.lhs.true.i.i177
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

if.end.i.i180:                                    ; preds = %land.lhs.true.i.i177.if.end.i.i180_crit_edge, %if.end.i172.if.end.i.i180_crit_edge
  %and14.i.i178 = and i32 %xor.i167, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i178)
  %tobool15.not.i.i179 = icmp eq i32 %and14.i.i178, 0
  br i1 %tobool15.not.i.i179, label %if.end.i.i180.if.then60_crit_edge, label %land.lhs.true16.i.i185

if.end.i.i180.if.then60_crit_edge:                ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

land.lhs.true16.i.i185:                           ; preds = %if.end.i.i180
  %mdev17.i.i181 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %81 = ptrtoint ptr %mdev17.i.i181 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mdev17.i.i181, align 8
  %caps18.i.i182 = getelementptr inbounds %struct.mlx5_core_dev, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %caps18.i.i182 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %caps18.i.i182, align 8
  %add.ptr23.i.i183 = getelementptr i32, ptr %84, i32 7
  %85 = ptrtoint ptr %add.ptr23.i.i183 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr23.i.i183, align 4
  %87 = and i32 %86, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool26.not.i.i184 = icmp eq i32 %87, 0
  br i1 %tobool26.not.i.i184, label %land.lhs.true16.i.i185.land.lhs.true42.i.i190_crit_edge, label %land.lhs.true27.i.i188

land.lhs.true16.i.i185.land.lhs.true42.i.i190_crit_edge: ; preds = %land.lhs.true16.i.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i.i190

land.lhs.true27.i.i188:                           ; preds = %land.lhs.true16.i.i185
  %add.ptr34.i.i186 = getelementptr i32, ptr %84, i32 6
  %88 = ptrtoint ptr %add.ptr34.i.i186 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr34.i.i186, align 4
  %90 = and i32 %89, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool37.not.i.i187 = icmp eq i32 %90, 0
  br i1 %tobool37.not.i.i187, label %land.lhs.true27.i.i188.recreate_crit_edge, label %land.lhs.true27.i.i188.land.lhs.true42.i.i190_crit_edge

land.lhs.true27.i.i188.land.lhs.true42.i.i190_crit_edge: ; preds = %land.lhs.true27.i.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i.i190

land.lhs.true27.i.i188.recreate_crit_edge:        ; preds = %land.lhs.true27.i.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

land.lhs.true42.i.i190:                           ; preds = %land.lhs.true27.i.i188.land.lhs.true42.i.i190_crit_edge, %land.lhs.true16.i.i185.land.lhs.true42.i.i190_crit_edge
  %91 = and i32 %86, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool52.not.i.i189 = icmp eq i32 %91, 0
  br i1 %tobool52.not.i.i189, label %land.lhs.true42.i.i190.if.then60_crit_edge, label %land.lhs.true53.i.i193

land.lhs.true42.i.i190.if.then60_crit_edge:       ; preds = %land.lhs.true42.i.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

land.lhs.true53.i.i193:                           ; preds = %land.lhs.true42.i.i190
  %add.ptr60.i.i191 = getelementptr i32, ptr %84, i32 6
  %92 = ptrtoint ptr %add.ptr60.i.i191 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr60.i.i191, align 4
  %94 = and i32 %93, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool63.not.i.i192 = icmp eq i32 %94, 0
  br i1 %tobool63.not.i.i192, label %land.lhs.true53.i.i193.recreate_crit_edge, label %land.lhs.true53.i.i193.if.then60_crit_edge

land.lhs.true53.i.i193.if.then60_crit_edge:       ; preds = %land.lhs.true53.i.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60

land.lhs.true53.i.i193.recreate_crit_edge:        ; preds = %land.lhs.true53.i.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %recreate

if.then60:                                        ; preds = %land.lhs.true53.i.i193.if.then60_crit_edge, %land.lhs.true42.i.i190.if.then60_crit_edge, %if.end.i.i180.if.then60_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_size) #13
  %95 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %page_size, align 4, !annotation !186
  %conv = trunc i64 %start to i32
  %conv62 = trunc i64 %length to i32
  %call63 = tail call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv, i32 noundef %conv62, i32 noundef %new_access_flags.addr.0) #13
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60.cleanup77_crit_edge, label %if.end67

if.then60.cleanup77_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.end67:                                         ; preds = %if.then60
  %call68 = call fastcc zeroext i1 @can_use_umr_rereg_pas(ptr noundef %ib_mr, ptr noundef %call63, i64 noundef %iova, ptr noundef nonnull %page_size)
  br i1 %call68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.end67
  %96 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %page_size, align 4
  %call70 = tail call fastcc i32 @umr_rereg_pas(ptr noundef %ib_mr, ptr noundef %new_pd.addr.0, i32 noundef %new_access_flags.addr.0, i32 noundef %flags, ptr noundef %call63, i64 noundef %iova, i32 noundef %97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.cleanup77_crit_edge, label %if.then72

if.then69.cleanup77_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup77

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ib_umem_release(ptr noundef %call63) #13
  %98 = inttoptr i32 %call70 to ptr
  br label %cleanup77

if.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = tail call fastcc ptr @create_real_mr(ptr noundef %new_pd.addr.0, ptr noundef %call63, i64 noundef %iova, i32 noundef %new_access_flags.addr.0)
  br label %cleanup77

cleanup77:                                        ; preds = %if.end75, %if.then72, %if.then69.cleanup77_crit_edge, %if.then60.cleanup77_crit_edge
  %retval.1 = phi ptr [ %98, %if.then72 ], [ %call76, %if.end75 ], [ null, %if.then69.cleanup77_crit_edge ], [ %call63, %if.then60.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_size) #13
  br label %cleanup81

recreate:                                         ; preds = %land.lhs.true53.i.i193.recreate_crit_edge, %land.lhs.true27.i.i188.recreate_crit_edge, %land.lhs.true.i.i177.recreate_crit_edge, %land.lhs.true.recreate_crit_edge, %is_dmabuf_mr.exit166.recreate_crit_edge, %is_odp_mr.exit159.recreate_crit_edge, %if.end47.recreate_crit_edge, %is_dmabuf_mr.exit.recreate_crit_edge, %is_odp_mr.exit.recreate_crit_edge, %if.end29.recreate_crit_edge
  %call80 = tail call ptr @mlx5_ib_reg_user_mr(ptr noundef %new_pd.addr.0, i64 noundef %start, i64 noundef %length, i64 noundef %iova, i32 noundef %new_access_flags.addr.0, ptr undef)
  br label %cleanup81

cleanup81:                                        ; preds = %recreate, %cleanup77, %if.end41, %if.then39, %if.then26, %umr_rereg_pd_access.exit.thread, %do.end.cleanup81_crit_edge
  %retval.2 = phi ptr [ %call80, %recreate ], [ %retval.1, %cleanup77 ], [ inttoptr (i32 -95 to ptr), %do.end.cleanup81_crit_edge ], [ null, %umr_rereg_pd_access.exit.thread ], [ %call46, %if.end41 ], [ %54, %if.then39 ], [ %47, %if.then26 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @revoke_mr(ptr nocapture noundef readonly %mr) unnamed_addr #0 align 64 {
entry:
  %umrwr = alloca %struct.mlx5_umr_wr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %umrwr) #13
  %0 = call ptr @memset(ptr %umrwr, i32 0, i32 96)
  %1 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mr, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr, i32 0, i32 5
  %7 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2013265920, ptr %send_flags, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr, i32 0, i32 4
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 240, ptr %opcode, align 8
  %umrc = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 7
  %9 = ptrtoint ptr %umrc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %umrc, align 4
  %pd3 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr, i32 0, i32 3
  %11 = ptrtoint ptr %pd3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pd3, align 8
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1
  %12 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmkey, align 8
  %mkey = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr, i32 0, i32 8
  %14 = ptrtoint ptr %mkey to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mkey, align 4
  %ignore_free_state = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr, i32 0, i32 9
  %15 = ptrtoint ptr %ignore_free_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %ignore_free_state, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ignore_free_state, align 8
  %call5 = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %2, ptr noundef nonnull %umrwr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @can_use_umr_rereg_pas(ptr nocapture noundef readonly %mr, ptr noundef %new_umem, i64 noundef %iova, ptr nocapture noundef %page_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_ent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 2
  %0 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_ent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr, align 8
  %length = getelementptr inbounds %struct.ib_umem, ptr %new_umem, i32 0, i32 3
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %7, i32 16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %mlx5_ib_can_load_pas_with_umr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

mlx5_ib_can_load_pas_with_umr.exit:               ; preds = %if.end
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 8
  %add.ptr7.i = getelementptr i32, ptr %7, i32 8
  %13 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr7.i, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %12)
  %cmp.i = icmp ult i32 %12, 268435456
  %not.or.cond.i = or i1 %cmp.i, %tobool10.not.i
  br i1 %not.or.cond.i, label %if.end3, label %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge

mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge: ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %mlx5_ib_can_load_pas_with_umr.exit
  %conv = trunc i64 %iova to i32
  %call5 = tail call i32 @ib_umem_find_best_pgsz(ptr noundef %new_umem, i32 noundef -4096, i32 noundef %conv) #13
  %16 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call5, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end31, !prof !180

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1725, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache_ent, align 4
  %order = getelementptr inbounds %struct.mlx5_cache_ent, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %order, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl nuw i64 1, %sh_prom
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %new_umem, i32 0, i32 2
  %21 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %iova.i, align 8
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 8
  %conv.i = zext i32 %24 to i64
  %conv1.i = zext i32 %call5 to i64
  %sub.i = add nsw i64 %conv1.i, -1
  %add.i = add i64 %22, %sub.i
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %call5, -1
  %conv7.i = zext i32 %sub6.i to i64
  %sub8.i = sub nsw i64 %sub.i, %conv7.i
  %add11.i = add i64 %sub8.i, %22
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %call5
  %conv34 = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv34)
  %cmp = icmp uge i64 %shl, %conv34
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ %cmp, %if.end31 ], [ false, %entry.cleanup_crit_edge ], [ false, %mlx5_ib_can_load_pas_with_umr.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @umr_rereg_pas(ptr nocapture noundef %mr, ptr noundef %pd, i32 noundef %access_flags, i32 noundef %flags, ptr noundef %new_umem, i64 noundef %iova, i32 noundef %page_size) unnamed_addr #0 align 64 {
entry:
  %umrwr.i = alloca %struct.mlx5_umr_wr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %2 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %umem, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %umrwr.i) #13
  %4 = call ptr @memset(ptr %umrwr.i, i32 0, i32 96)
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev.i, align 8
  %state.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %revoke_mr.exit.thread, label %revoke_mr.exit

revoke_mr.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  br label %if.end

revoke_mr.exit:                                   ; preds = %entry
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 5
  %9 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2013265920, ptr %send_flags.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %umrwr.i, i32 0, i32 4
  %10 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 240, ptr %opcode.i, align 8
  %umrc.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %umrc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %umrc.i, align 4
  %pd3.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 3
  %13 = ptrtoint ptr %pd3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %pd3.i, align 8
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1
  %14 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmkey.i, align 8
  %mkey.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 8
  %16 = ptrtoint ptr %mkey.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mkey.i, align 4
  %ignore_free_state.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %umrwr.i, i32 0, i32 9
  %17 = ptrtoint ptr %ignore_free_state.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %ignore_free_state.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ignore_free_state.i, align 8
  %call5.i = call fastcc i32 @mlx5_ib_post_send_wait(ptr noundef %1, ptr noundef nonnull %umrwr.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %umrwr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %revoke_mr.exit.if.end_crit_edge, label %revoke_mr.exit.cleanup_crit_edge

revoke_mr.exit.cleanup_crit_edge:                 ; preds = %revoke_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

revoke_mr.exit.if.end_crit_edge:                  ; preds = %revoke_mr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %revoke_mr.exit.if.end_crit_edge, %revoke_mr.exit.thread
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pd5 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 1
  %18 = ptrtoint ptr %pd5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pd, ptr %pd5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %upd_flags.0 = phi i32 [ 26, %if.then3 ], [ 10, %if.end.if.end6_crit_edge ]
  %and7 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %access_flags10 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %access_flags10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %access_flags, ptr %access_flags10, align 4
  %or11 = or i32 %upd_flags.0, 32
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %upd_flags.1 = phi i32 [ %or11, %if.then9 ], [ %upd_flags.0, %if.end6.if.end12_crit_edge ]
  %length = getelementptr inbounds %struct.ib_umem, ptr %new_umem, i32 0, i32 3
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 8
  %conv = zext i32 %21 to i64
  %length14 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 5
  %22 = ptrtoint ptr %length14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %length14, align 8
  %iova16 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 4
  %23 = ptrtoint ptr %iova16 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %iova, ptr %iova16, align 8
  %24 = load i32, ptr %length, align 8
  %conv18 = zext i32 %24 to i64
  store i64 %conv18, ptr %length14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page_size)
  %cmp.i90 = icmp ugt i32 %page_size, 1
  %sub.i91 = add i32 %page_size, -1
  %25 = call i32 @llvm.ctlz.i32(i32 %sub.i91, i1 true) #13, !range !184
  %add.i = sub nuw nsw i32 32, %25
  %cond44 = select i1 %cmp.i90, i32 %add.i, i32 0
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond44, ptr %26, align 8
  %28 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %new_umem, ptr %umem, align 8
  %call46 = call i32 @mlx5_ib_update_mr_pas(ptr noundef %mr, i32 noundef %upd_flags.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %umem, align 8
  br label %cleanup

if.end50:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %33 to i64
  %add.i.i = add i64 %31, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %31, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div.i1.i = lshr exact i32 %conv17.i.i, 12
  %34 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev.i, align 8
  %reg_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %35, i32 0, i32 17, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %reg_pages, i32 1, i32 3, i32 1) #13
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages, ptr %reg_pages, i32 %div.i1.i, ptr elementtype(i32) %reg_pages) #13, !srcloc !189
  call void @ib_umem_release(ptr noundef %3) #13
  %iova.i.i92 = getelementptr inbounds %struct.ib_umem, ptr %new_umem, i32 0, i32 2
  %37 = ptrtoint ptr %iova.i.i92 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %iova.i.i92, align 8
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 8
  %conv.i.i94 = zext i32 %40 to i64
  %add.i.i95 = add i64 %38, 4095
  %add2.i.i96 = add i64 %add.i.i95, %conv.i.i94
  %and.i.i97 = and i64 %add2.i.i96, 4294963200
  %and15.i.i98 = and i64 %38, 4294963200
  %sub16.i.i99 = sub nsw i64 %and.i.i97, %and15.i.i98
  %conv17.i.i100 = trunc i64 %sub16.i.i99 to i32
  %div.i1.i101 = lshr exact i32 %conv17.i.i100, 12
  %41 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev.i, align 8
  %reg_pages55 = getelementptr inbounds %struct.mlx5_core_dev, ptr %42, i32 0, i32 17, i32 6
  %call.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef %reg_pages55, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %reg_pages55, i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reg_pages55, ptr %reg_pages55, i32 %div.i1.i101, ptr elementtype(i32) %reg_pages55) #13, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then48, %revoke_mr.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.then48 ], [ 0, %if.end50 ], [ %call5.i, %revoke_mr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5r_deref_wait_odp_mkey(ptr noundef %mmkey) unnamed_addr #5 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %usecount.i = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %mmkey, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %usecount.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecount.i, ptr %usecount.i, i32 1, ptr elementtype(i32) %usecount.i) #13, !srcloc !191
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge, label %if.then10.i.i.i.i, !prof !185

if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5r_deref_odp_mkey.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usecount.i, i32 noundef 3) #13
  br label %mlx5r_deref_odp_mkey.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %mmkey, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %mlx5r_deref_odp_mkey.exit

mlx5r_deref_odp_mkey.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5r_deref_odp_mkey.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.68, i32 noundef 1627) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %usecount.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %mlx5r_deref_odp_mkey.exit.do.end11_crit_edge, label %if.end

mlx5r_deref_odp_mkey.exit.do.end11_crit_edge:     ; preds = %mlx5r_deref_odp_mkey.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.end:                                           ; preds = %mlx5r_deref_odp_mkey.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %wait = getelementptr inbounds %struct.mlx5_ib_mkey, ptr %mmkey, i32 0, i32 3
  %call419 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i1620 = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp721 = icmp eq i32 %5, 0
  br i1 %cmp721, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i16 = call zeroext i1 @__kasan_check_read(ptr noundef %usecount.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %usecount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %usecount.i, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end11

do.end11:                                         ; preds = %for.end, %mlx5r_deref_odp_mkey.exit.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_psv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @destroy_mkey(ptr noundef %dev, ptr nocapture noundef readonly %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 17
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1
  %0 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmkey, align 8
  %and.i = and i32 %1, -256
  %call1 = tail call ptr @xa_load(ptr noundef %odp_mkeys, i32 noundef %and.i) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !185

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %4 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mmkey, align 8
  %call23 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %3, i32 noundef %5) #13
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_free_odp_mr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_free_priv_descs(ptr nocapture noundef %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %0 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %umem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mr, align 8
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_descs, align 4
  %desc_size = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_size, align 8
  %mul = mul i32 %10, %8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 8
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %desc_map = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 2
  %15 = ptrtoint ptr %desc_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc_map, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3, i32 noundef %16, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #13
  %descs_alloc = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %descs_alloc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %descs_alloc, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_alloc_mr(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__mlx5_ib_alloc_mr(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mlx5_ib_alloc_mr(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg) unnamed_addr #0 align 64 {
entry:
  %psv_index.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add = add i32 %max_num_sg, 3
  %and = and i32 %add, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 368) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 272) #16
  %tobool4.not = icmp eq ptr %call7.i.i48, null
  br i1 %tobool4.not, label %if.end.err_free_crit_edge, label %if.end6

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i, align 8
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %umem, align 8
  %8 = zext i32 %mr_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %mr_type, label %sw.epilog.thread [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call fastcc i32 @_mlx5_alloc_mkey_descs(ptr noundef %pd, ptr noundef nonnull %call7.i.i, i32 noundef %and, i32 noundef 8, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %call7.i.i48) #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call.i49 = tail call fastcc i32 @_mlx5_alloc_mkey_descs(ptr noundef %pd, ptr noundef nonnull %call7.i.i, i32 noundef %and, i32 noundef 16, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %call7.i.i48) #13
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %psv_index.i) #13
  %9 = ptrtoint ptr %psv_index.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %psv_index.i, align 4, !annotation !186
  %10 = getelementptr inbounds [2 x i32], ptr %psv_index.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 80) #16
  %sig.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %sig.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %sig.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb12.mlx5_alloc_integrity_descs.exit_crit_edge, label %if.end.i

sw.bb12.mlx5_alloc_integrity_descs.exit_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_alloc_integrity_descs.exit

if.end.i:                                         ; preds = %sw.bb12
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 8
  %pdn.i = getelementptr inbounds %struct.mlx5_ib_pd, ptr %pd, i32 0, i32 1
  %16 = ptrtoint ptr %pdn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdn.i, align 4
  %call4.i = call i32 @mlx5_core_create_psv(ptr noundef %15, i32 noundef %17, i32 noundef 2, ptr noundef nonnull %psv_index.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.err_free_sig.i_crit_edge

if.end.i.err_free_sig.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_sig.i

if.end7.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %psv_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %psv_index.i, align 4
  %20 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sig.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %21, align 8
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %10, align 4
  %25 = load ptr, ptr %sig.i, align 8
  %psv_wire.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %psv_wire.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %psv_wire.i, align 4
  %27 = load ptr, ptr %sig.i, align 8
  %sig_status_checked.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %sig_status_checked.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %sig_status_checked.i, align 8
  %29 = load ptr, ptr %sig.i, align 8
  %sig_err_exists.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sig_err_exists.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %sig_err_exists.i, align 1
  %31 = load ptr, ptr %sig.i, align 8
  %sigerr_count.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %sigerr_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sigerr_count.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %sigerr_count.i, align 4
  %call15.i = call fastcc ptr @mlx5_ib_alloc_pi_mr(ptr noundef %pd, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg, i32 noundef 16, i32 noundef 2) #13
  %klm_mr.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %klm_mr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15.i, ptr %klm_mr.i, align 8
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then18.i, label %if.end21.i

if.then18.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %call15.i to i32
  br label %err_destroy_psv.i

if.end21.i:                                       ; preds = %if.end7.i
  %call22.i = call fastcc ptr @mlx5_ib_alloc_pi_mr(ptr noundef %pd, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg, i32 noundef 8, i32 noundef 1) #13
  %mtt_mr.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %36 = ptrtoint ptr %mtt_mr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call22.i, ptr %mtt_mr.i, align 4
  %cmp.i1.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then25.i, label %if.end28.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %call22.i to i32
  br label %err_free_klm_mr.i

if.end28.i:                                       ; preds = %if.end21.i
  %add.ptr30.i = getelementptr i8, ptr %call7.i.i48, i32 28
  %38 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr30.i, align 4
  %or.i = or i32 %39, 1073741824
  store i32 %or.i, ptr %add.ptr30.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %call7.i.i48, i32 48
  %40 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %add.ptr40.i, align 8
  %call48.i = call fastcc i32 @_mlx5_alloc_mkey_descs(ptr noundef %pd, ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 16, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %call7.i.i48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end28.i.err_free_mtt_mr.i_crit_edge

if.end28.i.err_free_mtt_mr.i_crit_edge:           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_mtt_mr.i

if.end51.i:                                       ; preds = %if.end28.i
  %sig_mrs.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 39
  %mmkey.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %mmkey.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mmkey.i, align 8
  %and.i.i = and i32 %42, -256
  %43 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sig.i, align 8
  %call54.i = call ptr @xa_store(ptr noundef %sig_mrs.i, i32 noundef %and.i.i, ptr noundef %44, i32 noundef 3264) #13
  %45 = ptrtoint ptr %call54.i to i32
  %and.i.i.i.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp uge ptr %call54.i, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %cmp.i.i.i.i
  %shr.i.i = ashr i32 %45, 2
  %retval.0.i.i = select i1 %spec.select.i.i.i, i32 %shr.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool56.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool56.not.i, label %if.end51.i.mlx5_alloc_integrity_descs.exit_crit_edge, label %err_free_descs.i

if.end51.i.mlx5_alloc_integrity_descs.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_alloc_integrity_descs.exit

err_free_descs.i:                                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  %call59.i = call fastcc i32 @destroy_mkey(ptr noundef %5, ptr noundef nonnull %call7.i.i) #13
  call fastcc void @mlx5_free_priv_descs(ptr noundef nonnull %call7.i.i) #13
  br label %err_free_mtt_mr.i

err_free_mtt_mr.i:                                ; preds = %err_free_descs.i, %if.end28.i.err_free_mtt_mr.i_crit_edge
  %err.0.i = phi i32 [ %call48.i, %if.end28.i.err_free_mtt_mr.i_crit_edge ], [ %retval.0.i.i, %err_free_descs.i ]
  %46 = ptrtoint ptr %mtt_mr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtt_mr.i, align 4
  %call61.i = call i32 @mlx5_ib_dereg_mr(ptr noundef %47, ptr undef) #13
  %48 = ptrtoint ptr %mtt_mr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %mtt_mr.i, align 4
  br label %err_free_klm_mr.i

err_free_klm_mr.i:                                ; preds = %err_free_mtt_mr.i, %if.then25.i
  %err.1.i = phi i32 [ %37, %if.then25.i ], [ %err.0.i, %err_free_mtt_mr.i ]
  %49 = ptrtoint ptr %klm_mr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %klm_mr.i, align 8
  %call65.i = call i32 @mlx5_ib_dereg_mr(ptr noundef %50, ptr undef) #13
  %51 = ptrtoint ptr %klm_mr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %klm_mr.i, align 8
  br label %err_destroy_psv.i

err_destroy_psv.i:                                ; preds = %err_free_klm_mr.i, %if.then18.i
  %err.2.i = phi i32 [ %35, %if.then18.i ], [ %err.1.i, %err_free_klm_mr.i ]
  %52 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev.i, align 8
  %54 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sig.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %call71.i = call i32 @mlx5_core_destroy_psv(ptr noundef %53, i32 noundef %57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %err_destroy_psv.i.if.end81.i_crit_edge, label %do.end76.i

err_destroy_psv.i.if.end81.i_crit_edge:           ; preds = %err_destroy_psv.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i

do.end76.i:                                       ; preds = %err_destroy_psv.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 13
  %59 = call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i2.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i2.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid.i, align 8
  %65 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sig.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.71, i32 noundef 2177, i32 noundef %64, i32 noundef %68) #17
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.end76.i, %err_destroy_psv.i.if.end81.i_crit_edge
  %69 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdev.i, align 8
  %71 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sig.i, align 8
  %psv_wire84.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %psv_wire84.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %psv_wire84.i, align 4
  %call86.i = call i32 @mlx5_core_destroy_psv(ptr noundef %70, i32 noundef %74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end81.i.err_free_sig.i_crit_edge, label %do.end91.i

if.end81.i.err_free_sig.i_crit_edge:              ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_sig.i

do.end91.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 13
  %76 = call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i3.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i3.i to ptr
  %task94.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task94.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task94.i, align 8
  %pid95.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 68
  %80 = ptrtoint ptr %pid95.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid95.i, align 8
  %82 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sig.i, align 8
  %psv_wire97.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %psv_wire97.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %psv_wire97.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.71, i32 noundef 2180, i32 noundef %81, i32 noundef %85) #17
  br label %err_free_sig.i

err_free_sig.i:                                   ; preds = %do.end91.i, %if.end81.i.err_free_sig.i_crit_edge, %if.end.i.err_free_sig.i_crit_edge
  %err.3.i = phi i32 [ %call4.i, %if.end.i.err_free_sig.i_crit_edge ], [ %err.2.i, %do.end91.i ], [ %err.2.i, %if.end81.i.err_free_sig.i_crit_edge ]
  %86 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sig.i, align 8
  call void @kfree(ptr noundef %87) #13
  br label %mlx5_alloc_integrity_descs.exit

mlx5_alloc_integrity_descs.exit:                  ; preds = %err_free_sig.i, %if.end51.i.mlx5_alloc_integrity_descs.exit_crit_edge, %sw.bb12.mlx5_alloc_integrity_descs.exit_crit_edge
  %retval.0.i = phi i32 [ %err.3.i, %err_free_sig.i ], [ -12, %sw.bb12.mlx5_alloc_integrity_descs.exit_crit_edge ], [ 0, %if.end51.i.mlx5_alloc_integrity_descs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %psv_index.i) #13
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %88 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %89 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef 2223, i32 noundef %94, i32 noundef %mr_type) #17
  br label %err_free_in

sw.epilog:                                        ; preds = %mlx5_alloc_integrity_descs.exit, %sw.bb10, %sw.bb
  %err.0 = phi i32 [ %retval.0.i, %mlx5_alloc_integrity_descs.exit ], [ %call.i49, %sw.bb10 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool15.not = icmp eq i32 %err.0, 0
  br i1 %tobool15.not, label %if.end17, label %sw.epilog.err_free_in_crit_edge

sw.epilog.err_free_in_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_in

if.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i48) #13
  br label %cleanup

err_free_in:                                      ; preds = %sw.epilog.err_free_in_crit_edge, %sw.epilog.thread
  %err.052 = phi i32 [ -22, %sw.epilog.thread ], [ %err.0, %sw.epilog.err_free_in_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i48) #13
  br label %err_free

err_free:                                         ; preds = %err_free_in, %if.end.err_free_crit_edge
  %err.1 = phi i32 [ %err.052, %err_free_in ], [ -12, %if.end.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %95 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %95, %err_free ], [ %call7.i.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ib_alloc_mr_integrity(ptr noundef %pd, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__mlx5_ib_alloc_mr(ptr noundef %pd, i32 noundef 5, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_alloc_mw(ptr noundef %ibmw, ptr nocapture noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.mlx5_ib_alloc_mw, align 8
  %resp = alloca %struct.anon.203, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmw, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #13
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #13
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %resp, align 8
  %inlen2 = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %4 = ptrtoint ptr %inlen2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inlen2, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %7 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udata, align 4
  call void @__check_object_size(ptr noundef nonnull %req, i32 noundef %6, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 156) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %entry.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %6, i32 -1226833920) #18, !srcloc !193
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !185

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef %6) #13
  %10 = call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !194
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !196
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %8, i32 noundef %6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !196
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %entry.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %6, %entry.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %6, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end, label %if.then11.i.i.i, !prof !185

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %6, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %req, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %reserved1 = getelementptr inbounds %struct.mlx5_ib_alloc_mw, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reserved1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %reserved2 = getelementptr inbounds %struct.mlx5_ib_alloc_mw, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %reserved2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reserved2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool8.not = icmp eq i16 %19, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %20 = ptrtoint ptr %inlen2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inlen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp12 = icmp ugt i32 %21, 8
  br i1 %cmp12, label %land.lhs.true, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  %sub = add i32 %21, -8
  %call15 = call fastcc zeroext i1 @ib_is_udata_cleared(ptr noundef %udata, i32 noundef %sub)
  br i1 %call15, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %num_klms = getelementptr inbounds %struct.mlx5_ib_alloc_mw, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %num_klms to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_klms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  %conv18 = zext i8 %23 to i32
  %add = add nuw nsw i32 %conv18, 3
  %div233 = and i32 %add, 508
  %cond33 = select i1 %tobool19.not, i32 4, i32 %div233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 272) #16
  %tobool35.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool35.not, label %if.end17.free_crit_edge, label %if.end37

if.end17.free_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %free

if.end37:                                         ; preds = %if.end17
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 16
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 8
  %or = or i32 %26, 1073741824
  store i32 %or, ptr %add.ptr, align 8
  %add.ptr49 = getelementptr i8, ptr %call7.i.i, i32 68
  %27 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond33, ptr %add.ptr49, align 4
  %pd = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 1
  %28 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd, align 4
  %pdn = getelementptr inbounds %struct.mlx5_ib_pd, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdn, align 4
  %add.ptr63 = getelementptr i8, ptr %call7.i.i, i32 28
  %32 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr63, align 4
  %and64 = and i32 %33, -33554432
  %and65 = and i32 %31, 16777215
  %or67 = or i32 %and64, %and65
  %or93 = and i32 %or, -34561
  %or106 = or i32 %or93, 34304
  store i32 %or106, ptr %add.ptr, align 8
  %type = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp112 = icmp eq i32 %35, 2
  %shl121 = select i1 %cmp112, i32 16777216, i32 0
  %or122 = or i32 %shl121, %or67
  %36 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or122, ptr %add.ptr63, align 4
  %add.ptr131 = getelementptr i8, ptr %call7.i.i, i32 20
  %37 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr131, align 4
  %or135 = or i32 %38, -256
  store i32 %or135, ptr %add.ptr131, align 4
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mw, ptr %ibmw, i32 0, i32 1
  %call139 = call fastcc i32 @mlx5_ib_create_mkey(ptr noundef %1, ptr noundef %mmkey, ptr noundef nonnull %call7.i.i, i32 noundef 272)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end37.free_crit_edge

if.end37.free_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %free

if.end142:                                        ; preds = %if.end37
  %type144 = getelementptr inbounds %struct.mlx5_ib_mw, ptr %ibmw, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %type144 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %type144, align 4
  %40 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mmkey, align 4
  %rkey = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 3
  %42 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rkey, align 4
  %ndescs147 = getelementptr inbounds %struct.mlx5_ib_mw, ptr %ibmw, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %ndescs147 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond33, ptr %ndescs147, align 4
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %44 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %outlen, align 4
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 8)
  %response_length = getelementptr inbounds %struct.anon.203, ptr %resp, i32 0, i32 1
  %47 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool156.not = icmp eq i32 %46, 0
  br i1 %tobool156.not, label %if.end142.if.end163_crit_edge, label %if.then157

if.end142.if.end163_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.then157:                                       ; preds = %if.end142
  %call159 = call fastcc i32 @ib_copy_to_udata(ptr noundef %udata, ptr noundef nonnull %resp, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then157.if.end163_crit_edge, label %if.then157.free_mkey_crit_edge

if.then157.free_mkey_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_mkey

if.then157.if.end163_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end163

if.end163:                                        ; preds = %if.then157.if.end163_crit_edge, %if.end142.if.end163_crit_edge
  %call165 = call fastcc i32 @mlx5r_store_odp_mkey(ptr noundef %1, ptr noundef %mmkey)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end163.free_mkey_crit_edge

if.end163.free_mkey_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_mkey

if.end168:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

free_mkey:                                        ; preds = %if.end163.free_mkey_crit_edge, %if.then157.free_mkey_crit_edge
  %err.0 = phi i32 [ %call159, %if.then157.free_mkey_crit_edge ], [ %call165, %if.end163.free_mkey_crit_edge ]
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev, align 8
  %50 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mmkey, align 4
  %call171 = call i32 @mlx5_core_destroy_mkey(ptr noundef %49, i32 noundef %51) #13
  br label %free

free:                                             ; preds = %free_mkey, %if.end37.free_crit_edge, %if.end17.free_crit_edge
  %err.1 = phi i32 [ %call139, %if.end37.free_crit_edge ], [ %err.0, %free_mkey ], [ -12, %if.end17.free_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end168, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i.i
  %retval.0 = phi i32 [ %err.1, %free ], [ 0, %if.end168 ], [ -95, %lor.lhs.false6.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ib_is_udata_cleared(ptr nocapture noundef readonly %udata, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp.i = icmp ugt i32 %len, 65535
  br i1 %cmp.i, label %entry.ib_is_buffer_cleared.exit_crit_edge, label %if.end.i

entry.ib_is_buffer_cleared.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_is_buffer_cleared.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %call.i = tail call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %len) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ib_is_buffer_cleared.exit_crit_edge, label %if.end3.i

if.end.i.ib_is_buffer_cleared.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ib_is_buffer_cleared.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call ptr @memchr_inv(ptr noundef %call.i, i32 noundef 0, i32 noundef %len) #13
  %tobool.not.i = icmp eq ptr %call4.i, null
  tail call void @kfree(ptr noundef %call.i) #13
  br label %ib_is_buffer_cleared.exit

ib_is_buffer_cleared.exit:                        ; preds = %if.end3.i, %if.end.i.ib_is_buffer_cleared.exit_crit_edge, %entry.ib_is_buffer_cleared.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool.not.i, %if.end3.i ], [ false, %entry.ib_is_buffer_cleared.exit_crit_edge ], [ false, %if.end.i.ib_is_buffer_cleared.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.76, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #18, !srcloc !197
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #13
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_dealloc_mw(ptr noundef %mw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mw, align 4
  %odp_mkeys = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 17
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mw, ptr %mw, i32 0, i32 1
  %2 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmkey, align 4
  %and.i = and i32 %3, -256
  %call3 = tail call ptr @xa_erase(ptr noundef %odp_mkeys, i32 noundef %and.i) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @mlx5r_deref_wait_odp_mkey(ptr noundef %mmkey)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %6 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmkey, align 4
  %call7 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %5, i32 noundef %7) #13
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_check_mr_status(ptr nocapture noundef readonly %ibmr, i32 noundef %check_mask, ptr nocapture noundef %mr_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %check_mask)
  %tobool.not = icmp ult i32 %check_mask, 2
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #17
  br label %done

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mr_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mr_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_mask)
  %tobool3.not = icmp eq i32 %check_mask, 0
  br i1 %tobool3.not, label %if.end.done_crit_edge, label %if.then4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then4:                                         ; preds = %if.end
  %sig = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %1 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sig, align 8
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #17
  br label %done

if.end12:                                         ; preds = %if.then4
  %sig_status_checked = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %sig_status_checked to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %sig_status_checked, align 8
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sig, align 8
  %sig_err_exists = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sig_err_exists to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sig_err_exists, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.end12.done_crit_edge, label %if.end17

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end17:                                         ; preds = %if.end12
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 2
  %8 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lkey, align 8
  %key = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %5, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %err_item = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %5, i32 0, i32 2
  %sig_err = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %sig_err, ptr %err_item, i32 32)
  br label %if.end29

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %sig_err22 = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1
  %13 = ptrtoint ptr %sig_err22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sig_err22, align 8
  %sig_err_offset = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %sig_err_offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %sig_err_offset, align 8
  %15 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sig, align 8
  %key26 = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %16, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %key26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key26, align 8
  %key28 = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %key28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %key28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then19
  %20 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sig, align 8
  %sig_err_exists31 = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sig_err_exists31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %sig_err_exists31, align 1
  %23 = ptrtoint ptr %mr_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mr_status, align 8
  %or = or i32 %24, 1
  store i32 %or, ptr %mr_status, align 8
  br label %done

done:                                             ; preds = %if.end29, %if.end12.done_crit_edge, %if.then6, %if.end.done_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %if.end29 ], [ 0, %if.end12.done_crit_edge ], [ -22, %if.then6 ], [ 0, %if.end.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_map_mr_sg_pi(ptr noundef %ibmr, ptr noundef %data_sg, i32 noundef %data_sg_nents, ptr noundef %data_sg_offset, ptr noundef %meta_sg, i32 noundef %meta_sg_nents, ptr noundef %meta_sg_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.not = icmp eq i32 %1, 5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !185

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2620, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ndescs, align 8
  %data_length = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 4
  %data_iova = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %meta_ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 1
  %pi_iova = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %meta_length.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_sg_nents)
  %cmp.i = icmp eq i32 %data_sg_nents, 1
  %3 = call ptr @memset(ptr %data_iova, i32 0, i32 28)
  br i1 %cmp.i, label %if.then.i, label %if.end.mlx5_ib_map_pa_mr_sg_pi.exit_crit_edge

if.end.mlx5_ib_map_pa_mr_sg_pi.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_ib_map_pa_mr_sg_pi.exit

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ndescs, align 8
  %tobool.not.i = icmp eq ptr %data_sg_offset, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %data_sg_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_sg_offset, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %sg_offset.0.i = phi i32 [ %6, %if.then1.i ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %data_sg, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length.i, align 4
  %sub.i = sub i32 %8, %sg_offset.0.i
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %data_length, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %data_sg, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  %add.i = add i32 %11, %sg_offset.0.i
  %conv.i = zext i32 %add.i to i64
  %12 = ptrtoint ptr %data_iova to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %data_iova, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %meta_sg_nents)
  %cmp2.i = icmp eq i32 %meta_sg_nents, 1
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %meta_ndescs, align 8
  %tobool6.not.i = icmp eq ptr %meta_sg_offset, null
  br i1 %tobool6.not.i, label %if.then4.i.if.end8.i_crit_edge, label %if.then7.i

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %meta_sg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %meta_sg_offset, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.then4.i.if.end8.i_crit_edge
  %sg_offset.1.i = phi i32 [ %15, %if.then7.i ], [ 0, %if.then4.i.if.end8.i_crit_edge ]
  %dma_length9.i = getelementptr inbounds %struct.scatterlist, ptr %meta_sg, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length9.i, align 4
  %sub10.i = sub i32 %17, %sg_offset.1.i
  %18 = ptrtoint ptr %meta_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub10.i, ptr %meta_length.i, align 4
  %dma_address12.i = getelementptr inbounds %struct.scatterlist, ptr %meta_sg, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address12.i, align 4
  %add13.i = add i32 %20, %sg_offset.1.i
  %conv14.i = zext i32 %add13.i to i64
  %21 = ptrtoint ptr %pi_iova to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv14.i, ptr %pi_iova, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end8.i, %if.end.i.if.end15.i_crit_edge
  %n.0.i = phi i32 [ 2, %if.end8.i ], [ 1, %if.end.i.if.end15.i_crit_edge ]
  %22 = ptrtoint ptr %meta_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %meta_length.i, align 4
  %add18.i = add i32 %23, %sub.i
  %conv19.i = sext i32 %add18.i to i64
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 5
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv19.i, ptr %length.i, align 8
  br label %mlx5_ib_map_pa_mr_sg_pi.exit

mlx5_ib_map_pa_mr_sg_pi.exit:                     ; preds = %if.end15.i, %if.end.mlx5_ib_map_pa_mr_sg_pi.exit_crit_edge
  %n.1.i = phi i32 [ %n.0.i, %if.end15.i ], [ 0, %if.end.mlx5_ib_map_pa_mr_sg_pi.exit_crit_edge ]
  %add = add i32 %meta_sg_nents, %data_sg_nents
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.i, i32 %add)
  %cmp20 = icmp eq i32 %n.1.i, %add
  br i1 %cmp20, label %out.thread, label %if.end22

out.thread:                                       ; preds = %mlx5_ib_map_pa_mr_sg_pi.exit
  call void @__sanitizer_cov_trace_pc() #15
  %iova112 = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 4
  %25 = ptrtoint ptr %iova112 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %iova112, align 8
  %pi_mr39113 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %pi_mr39113 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %pi_mr39113, align 4
  br label %cleanup.sink.split

if.end22:                                         ; preds = %mlx5_ib_map_pa_mr_sg_pi.exit
  %mtt_mr = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %27 = ptrtoint ptr %mtt_mr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mtt_mr, align 4
  %ndescs.i87 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %ndescs.i87 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ndescs.i87, align 8
  %meta_ndescs.i88 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %meta_ndescs.i88 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %meta_ndescs.i88, align 8
  %meta_length.i89 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %meta_length.i89 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %meta_length.i89, align 4
  %32 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ibmr, align 8
  %desc_map.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 2
  %34 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_map.i, align 8
  %desc_size.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_size.i, align 8
  %max_descs.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %max_descs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_descs.i, align 4
  %mul.i = mul i32 %39, %37
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %33, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %41, i32 noundef %35, i32 noundef %mul.i, i32 noundef 1) #13
  %page_size.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 6
  %42 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page_size.i, align 8
  %page_size2.i = getelementptr inbounds %struct.ib_mr, ptr %28, i32 0, i32 6
  %44 = ptrtoint ptr %page_size2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %page_size2.i, align 8
  %call4.i = tail call i32 @ib_sg_to_pages(ptr noundef %28, ptr noundef %data_sg, i32 noundef %data_sg_nents, ptr noundef %data_sg_offset, ptr noundef nonnull @mlx5_set_page) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %data_sg_nents)
  %cmp.not.i = icmp eq i32 %call4.i, %data_sg_nents
  br i1 %cmp.not.i, label %if.end.i94, label %if.end22.mlx5_ib_map_mtt_mr_sg_pi.exit_crit_edge

if.end22.mlx5_ib_map_mtt_mr_sg_pi.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_ib_map_mtt_mr_sg_pi.exit

if.end.i94:                                       ; preds = %if.end22
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %28, i32 0, i32 4
  %45 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %iova.i, align 8
  %data_iova.i90 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %data_iova.i90 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %data_iova.i90, align 8
  %length.i91 = getelementptr inbounds %struct.ib_mr, ptr %28, i32 0, i32 5
  %48 = ptrtoint ptr %length.i91 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %length.i91, align 8
  %conv8.i = trunc i64 %49 to i32
  %data_length.i92 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 4
  %50 = ptrtoint ptr %data_length.i92 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv8.i, ptr %data_length.i92, align 8
  %conv10.i = sext i32 %conv8.i to i64
  store i64 %conv10.i, ptr %length.i91, align 8
  %length15.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 5
  %51 = ptrtoint ptr %length15.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv10.i, ptr %length15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta_sg_nents)
  %tobool.not.i93 = icmp eq i32 %meta_sg_nents, 0
  br i1 %tobool.not.i93, label %if.end.i94.if.end51.i_crit_edge, label %if.then16.i

if.end.i94.if.end51.i_crit_edge:                  ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then16.i:                                      ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %page_size.i, align 8
  %conv18.i = zext i32 %53 to i64
  %sub.i95 = add nsw i64 %conv18.i, -1
  %neg.i = sub nsw i64 0, %conv18.i
  %54 = ptrtoint ptr %data_iova.i90 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %data_iova.i90, align 8
  %call22.i = tail call i32 @ib_sg_to_pages(ptr noundef %28, ptr noundef %meta_sg, i32 noundef %meta_sg_nents, ptr noundef %meta_sg_offset, ptr noundef nonnull @mlx5_set_page_pi) #13
  %add.i96 = add i32 %call22.i, %data_sg_nents
  %56 = ptrtoint ptr %length.i91 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %length.i91, align 8
  %conv25.i = trunc i64 %57 to i32
  %58 = ptrtoint ptr %meta_length.i89 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv25.i, ptr %meta_length.i89, align 4
  %and.i = and i64 %55, %neg.i
  %59 = ptrtoint ptr %ndescs.i87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ndescs.i87, align 8
  %61 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %page_size.i, align 8
  %mul30.i = mul i32 %62, %60
  %conv31.i = zext i32 %mul30.i to i64
  %add32.i = add i64 %and.i, %conv31.i
  %63 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %iova.i, align 8
  %and36.i = and i64 %64, %sub.i95
  %add37.i = add i64 %add32.i, %and36.i
  %pi_iova.i97 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %28, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %65 = ptrtoint ptr %pi_iova.i97 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add37.i, ptr %pi_iova.i97, align 8
  %conv40.i = sext i32 %conv25.i to i64
  %add41.i = sub i64 %conv40.i, %55
  %sub42.i = add i64 %add41.i, %add37.i
  store i64 %sub42.i, ptr %length.i91, align 8
  store i64 %55, ptr %iova.i, align 8
  %66 = ptrtoint ptr %length15.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %length15.i, align 8
  %add50.i = add i64 %67, %conv40.i
  store i64 %add50.i, ptr %length15.i, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then16.i, %if.end.i94.if.end51.i_crit_edge
  %n.0.i98 = phi i32 [ %add.i96, %if.then16.i ], [ %data_sg_nents, %if.end.i94.if.end51.i_crit_edge ]
  %68 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ibmr, align 8
  %70 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_map.i, align 8
  %72 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %desc_size.i, align 8
  %74 = ptrtoint ptr %max_descs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_descs.i, align 4
  %mul57.i = mul i32 %75, %73
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %69, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %77, i32 noundef %71, i32 noundef %mul57.i, i32 noundef 1) #13
  br label %mlx5_ib_map_mtt_mr_sg_pi.exit

mlx5_ib_map_mtt_mr_sg_pi.exit:                    ; preds = %if.end51.i, %if.end22.mlx5_ib_map_mtt_mr_sg_pi.exit_crit_edge
  %retval.0.i = phi i32 [ %n.0.i98, %if.end51.i ], [ %call4.i, %if.end22.mlx5_ib_map_mtt_mr_sg_pi.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %add)
  %cmp25 = icmp eq i32 %retval.0.i, %add
  br i1 %cmp25, label %mlx5_ib_map_mtt_mr_sg_pi.exit.out_crit_edge, label %if.end27

mlx5_ib_map_mtt_mr_sg_pi.exit.out_crit_edge:      ; preds = %mlx5_ib_map_mtt_mr_sg_pi.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end27:                                         ; preds = %mlx5_ib_map_mtt_mr_sg_pi.exit
  %klm_mr = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %klm_mr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %klm_mr, align 8
  %ndescs.i99 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 1, i32 2
  %80 = ptrtoint ptr %ndescs.i99 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %ndescs.i99, align 8
  %meta_ndescs.i100 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %meta_ndescs.i100 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %meta_ndescs.i100, align 8
  %meta_length.i101 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3, i32 2
  %82 = ptrtoint ptr %meta_length.i101 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %meta_length.i101, align 4
  %83 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ibmr, align 8
  %desc_map.i102 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 2
  %85 = ptrtoint ptr %desc_map.i102 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %desc_map.i102, align 8
  %desc_size.i103 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %desc_size.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %desc_size.i103, align 8
  %max_descs.i104 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3
  %89 = ptrtoint ptr %max_descs.i104 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_descs.i104, align 4
  %mul.i105 = mul i32 %90, %88
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %84, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %92, i32 noundef %86, i32 noundef %mul.i105, i32 noundef 1) #13
  %conv1.i = trunc i32 %data_sg_nents to i16
  %conv2.i = trunc i32 %meta_sg_nents to i16
  %call3.i = tail call fastcc i32 @mlx5_ib_sg_to_klms(ptr noundef %79, ptr noundef %data_sg, i16 noundef zeroext %conv1.i, ptr noundef %data_sg_offset, ptr noundef %meta_sg, i16 noundef zeroext %conv2.i, ptr noundef %meta_sg_offset) #13
  %93 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ibmr, align 8
  %95 = ptrtoint ptr %desc_map.i102 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %desc_map.i102, align 8
  %97 = ptrtoint ptr %desc_size.i103 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %desc_size.i103, align 8
  %99 = ptrtoint ptr %max_descs.i104 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_descs.i104, align 4
  %mul9.i = mul i32 %100, %98
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %94, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %102, i32 noundef %96, i32 noundef %mul9.i, i32 noundef 1) #13
  %data_iova.i106 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %103 = ptrtoint ptr %data_iova.i106 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 0, ptr %data_iova.i106, align 8
  %iova.i107 = getelementptr inbounds %struct.ib_mr, ptr %79, i32 0, i32 4
  %104 = ptrtoint ptr %iova.i107 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 0, ptr %iova.i107, align 8
  %data_length.i108 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 4
  %105 = ptrtoint ptr %data_length.i108 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_length.i108, align 8
  %conv11.i = sext i32 %106 to i64
  %pi_iova.i109 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %79, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %107 = ptrtoint ptr %pi_iova.i109 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv11.i, ptr %pi_iova.i109, align 8
  %length.i110 = getelementptr inbounds %struct.ib_mr, ptr %79, i32 0, i32 5
  %108 = ptrtoint ptr %length.i110 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %length.i110, align 8
  %length13.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 5
  %110 = ptrtoint ptr %length13.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %length13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %add)
  %cmp30.not = icmp eq i32 %call3.i, %add
  br i1 %cmp30.not, label %if.end27.out_crit_edge, label %if.end27.cleanup_crit_edge, !prof !185

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end27.out_crit_edge, %mlx5_ib_map_mtt_mr_sg_pi.exit.out_crit_edge
  %pi_mr.0 = phi ptr [ %28, %mlx5_ib_map_mtt_mr_sg_pi.exit.out_crit_edge ], [ %79, %if.end27.out_crit_edge ]
  %iova = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 4
  %111 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %iova, align 8
  %pi_mr39 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %112 = ptrtoint ptr %pi_mr39 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %pi_mr.0, ptr %pi_mr39, align 4
  %tobool40.not = icmp eq ptr %pi_mr.0, null
  %meta_length = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pi_mr.0, i32 0, i32 4, i32 0, i32 3, i32 2
  %spec.select = select i1 %tobool40.not, ptr %meta_length.i, ptr %meta_length
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %out.thread
  %meta_length.sink = phi ptr [ %meta_length.i, %out.thread ], [ %spec.select, %out ]
  %113 = ptrtoint ptr %meta_length.sink to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %meta_length.sink, align 4
  %sig_attrs = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 11
  %115 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sig_attrs, align 8
  %meta_length42 = getelementptr inbounds %struct.ib_sig_attrs, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %meta_length42 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %114, ptr %meta_length42, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end27.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ndescs, align 8
  %1 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibmr, align 8
  %desc_map = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %desc_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc_map, align 8
  %desc_size = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc_size, align 8
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_descs, align 4
  %mul = mul i32 %8, %6
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %4, i32 noundef %mul, i32 noundef 1) #13
  %access_mode = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %access_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv2 = trunc i32 %sg_nents to i16
  %13 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool.not.i = icmp eq ptr %sg_offset, null
  br i1 %tobool.not.i, label %if.then.cond.end.i_crit_edge, label %cond.true.i

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %sg_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_offset, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.true.i ], [ 0, %if.then.cond.end.i_crit_edge ]
  %pd.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 1
  %18 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address.i, align 4
  %add.i = add i32 %23, %cond.i
  %conv.i = zext i32 %add.i to i64
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 4
  %24 = ptrtoint ptr %iova.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %ibmr, i32 0, i32 5
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %length.i, align 8
  %conv3.i = and i32 %sg_nents, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %cmp149.not.i = icmp eq i16 %conv2, 0
  br i1 %cmp149.not.i, label %cond.end.i.for.end.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.for.end.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %i.0152.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  %sg_offset.0151.i = phi i32 [ 0, %if.end.i.for.body.i_crit_edge ], [ %cond.i, %cond.end.i.for.body.i_crit_edge ]
  %sg.0150.i = phi ptr [ %call.i, %if.end.i.for.body.i_crit_edge ], [ %sg, %cond.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152.i, i32 %27)
  %cmp5.not.i = icmp slt i32 %i.0152.i, %27
  br i1 %cmp5.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge, !prof !185

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %dma_address9.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0150.i, i32 0, i32 3
  %28 = ptrtoint ptr %dma_address9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_address9.i, align 4
  %add10.i = add i32 %29, %sg_offset.0151.i
  %conv11.i = zext i32 %add10.i to i64
  %arrayidx.i = getelementptr %struct.mlx5_klm, ptr %15, i32 %i.0152.i
  %va.i = getelementptr %struct.mlx5_klm, ptr %15, i32 %i.0152.i, i32 2
  %30 = ptrtoint ptr %va.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv11.i, ptr %va.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0150.i, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length.i, align 4
  %sub.i = sub i32 %32, %sg_offset.0151.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i, ptr %arrayidx.i, align 8
  %key.i = getelementptr %struct.mlx5_klm, ptr %15, i32 %i.0152.i, i32 1
  %34 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %21, ptr %key.i, align 4
  %35 = load i32, ptr %dma_length.i, align 4
  %sub15.i = sub i32 %35, %sg_offset.0151.i
  %conv16.i = zext i32 %sub15.i to i64
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %length.i, align 8
  %add19.i = add i64 %37, %conv16.i
  store i64 %add19.i, ptr %length.i, align 8
  %inc.i = add nuw nsw i32 %i.0152.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.0150.i) #13
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %cond.end.i.for.end.i_crit_edge
  %sg_offset.0.lcssa.i = phi i32 [ %cond.i, %cond.end.i.for.end.i_crit_edge ], [ 0, %if.end.i.for.end.i_crit_edge ], [ %sg_offset.0151.i, %for.body.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %cond.end.i.for.end.i_crit_edge ], [ %conv3.i, %if.end.i.for.end.i_crit_edge ], [ %i.0152.i, %for.body.i.for.end.i_crit_edge ]
  br i1 %tobool.not.i, label %for.end.i.mlx5_ib_sg_to_klms.exit_crit_edge, label %if.then21.i

for.end.i.mlx5_ib_sg_to_klms.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_ib_sg_to_klms.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %sg_offset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sg_offset.0.lcssa.i, ptr %sg_offset, align 4
  br label %mlx5_ib_sg_to_klms.exit

mlx5_ib_sg_to_klms.exit:                          ; preds = %if.then21.i, %for.end.i.mlx5_ib_sg_to_klms.exit_crit_edge
  %39 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0.lcssa.i, ptr %ndescs, align 8
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %length.i, align 8
  %conv25.i = trunc i64 %41 to i32
  %data_length.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 4
  %42 = ptrtoint ptr %data_length.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv25.i, ptr %data_length.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @mlx5_set_page) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %mlx5_ib_sg_to_klms.exit
  %n.0 = phi i32 [ %i.0.lcssa.i, %mlx5_ib_sg_to_klms.exit ], [ %call4, %if.else ]
  %43 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ibmr, align 8
  %45 = ptrtoint ptr %desc_map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_map, align 8
  %47 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %desc_size, align 8
  %49 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_descs, align 4
  %mul10 = mul i32 %50, %48
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %44, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %52, i32 noundef %46, i32 noundef %mul10, i32 noundef 1) #13
  ret i32 %n.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_ib_sg_to_klms(ptr nocapture noundef %mr, ptr noundef %sgl, i16 noundef zeroext %sg_nents, ptr noundef %sg_offset_p, ptr noundef %meta_sgl, i16 noundef zeroext %meta_sg_nents, ptr noundef %meta_sg_offset_p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %sg_offset_p, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %sg_offset_p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg_offset_p, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %pd = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 1
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pd, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address, align 4
  %add = add i32 %10, %cond
  %conv = zext i32 %add to i64
  %iova = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 4
  %11 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %iova, align 8
  %length = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 5
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %length, align 8
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  %conv3 = zext i16 %sg_nents to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sg_nents)
  %cmp149.not = icmp eq i16 %sg_nents, 0
  br i1 %cmp149.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.0152 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %sg_offset.0151 = phi i32 [ 0, %if.end.for.body_crit_edge ], [ %cond, %cond.end.for.body_crit_edge ]
  %sg.0150 = phi ptr [ %call, %if.end.for.body_crit_edge ], [ %sgl, %cond.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0152, i32 %14)
  %cmp5.not = icmp slt i32 %i.0152, %14
  br i1 %cmp5.not, label %if.end, label %for.body.for.end_crit_edge, !prof !185

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_address9 = getelementptr inbounds %struct.scatterlist, ptr %sg.0150, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address9, align 4
  %add10 = add i32 %16, %sg_offset.0151
  %conv11 = zext i32 %add10 to i64
  %arrayidx = getelementptr %struct.mlx5_klm, ptr %2, i32 %i.0152
  %va = getelementptr %struct.mlx5_klm, ptr %2, i32 %i.0152, i32 2
  %17 = ptrtoint ptr %va to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv11, ptr %va, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0150, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length, align 4
  %sub = sub i32 %19, %sg_offset.0151
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %arrayidx, align 8
  %key = getelementptr %struct.mlx5_klm, ptr %2, i32 %i.0152, i32 1
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %key, align 4
  %22 = load i32, ptr %dma_length, align 4
  %sub15 = sub i32 %22, %sg_offset.0151
  %conv16 = zext i32 %sub15 to i64
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %length, align 8
  %add19 = add i64 %24, %conv16
  store i64 %add19, ptr %length, align 8
  %inc = add nuw nsw i32 %i.0152, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.0150) #13
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %cond.end.for.end_crit_edge
  %sg_offset.0.lcssa = phi i32 [ %cond, %cond.end.for.end_crit_edge ], [ %sg_offset.0151, %for.body.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %i.0152, %for.body.for.end_crit_edge ], [ %conv3, %if.end.for.end_crit_edge ]
  br i1 %tobool.not, label %for.end.if.end22_crit_edge, label %if.then21

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %sg_offset_p to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sg_offset.0.lcssa, ptr %sg_offset_p, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0.lcssa, ptr %ndescs, align 8
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length, align 8
  %conv25 = trunc i64 %28 to i32
  %data_length = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 4
  %29 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv25, ptr %data_length, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %meta_sg_nents)
  %tobool26.not = icmp eq i16 %meta_sg_nents, 0
  br i1 %tobool26.not, label %if.end22.if.end83_crit_edge, label %if.then27

if.end22.if.end83_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then27:                                        ; preds = %if.end22
  %tobool28.not = icmp eq ptr %meta_sg_offset_p, null
  br i1 %tobool28.not, label %if.then27.cond.end31_crit_edge, label %cond.true29

if.then27.cond.end31_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end31

cond.true29:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %meta_sg_offset_p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %meta_sg_offset_p, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true29, %if.then27.cond.end31_crit_edge
  %cond32 = phi i32 [ %31, %cond.true29 ], [ 0, %if.then27.cond.end31_crit_edge ]
  %conv34 = zext i16 %meta_sg_nents to i32
  br label %for.body37

for.body37:                                       ; preds = %if.end49.for.body37_crit_edge, %cond.end31
  %j.0158 = phi i32 [ 0, %cond.end31 ], [ %inc71, %if.end49.for.body37_crit_edge ]
  %sg_offset.1157 = phi i32 [ %cond32, %cond.end31 ], [ 0, %if.end49.for.body37_crit_edge ]
  %sg.1156 = phi ptr [ %meta_sgl, %cond.end31 ], [ %call72, %if.end49.for.body37_crit_edge ]
  %add38 = add nuw nsw i32 %j.0158, %i.0.lcssa
  %32 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %33)
  %cmp40.not = icmp slt i32 %add38, %33
  br i1 %cmp40.not, label %if.end49, label %for.body37.for.end73_crit_edge, !prof !185

for.body37.for.end73_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end73

if.end49:                                         ; preds = %for.body37
  %dma_address50 = getelementptr inbounds %struct.scatterlist, ptr %sg.1156, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address50, align 4
  %add51 = add i32 %35, %sg_offset.1157
  %conv52 = zext i32 %add51 to i64
  %arrayidx54 = getelementptr %struct.mlx5_klm, ptr %2, i32 %add38
  %va55 = getelementptr %struct.mlx5_klm, ptr %2, i32 %add38, i32 2
  %36 = ptrtoint ptr %va55 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv52, ptr %va55, align 8
  %dma_length56 = getelementptr inbounds %struct.scatterlist, ptr %sg.1156, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length56, align 4
  %sub57 = sub i32 %38, %sg_offset.1157
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub57, ptr %arrayidx54, align 8
  %key63 = getelementptr %struct.mlx5_klm, ptr %2, i32 %add38, i32 1
  %40 = ptrtoint ptr %key63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %8, ptr %key63, align 4
  %41 = load i32, ptr %dma_length56, align 4
  %sub65 = sub i32 %41, %sg_offset.1157
  %conv66 = zext i32 %sub65 to i64
  %42 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %length, align 8
  %add69 = add i64 %43, %conv66
  store i64 %add69, ptr %length, align 8
  %inc71 = add nuw nsw i32 %j.0158, 1
  %call72 = tail call ptr @sg_next(ptr noundef %sg.1156) #13
  %exitcond159.not = icmp eq i32 %inc71, %conv34
  br i1 %exitcond159.not, label %if.end49.for.end73_crit_edge, label %if.end49.for.body37_crit_edge

if.end49.for.body37_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37

if.end49.for.end73_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end73

for.end73:                                        ; preds = %if.end49.for.end73_crit_edge, %for.body37.for.end73_crit_edge
  %sg_offset.1.lcssa = phi i32 [ %sg_offset.1157, %for.body37.for.end73_crit_edge ], [ 0, %if.end49.for.end73_crit_edge ]
  %j.0.lcssa = phi i32 [ %j.0158, %for.body37.for.end73_crit_edge ], [ %conv34, %if.end49.for.end73_crit_edge ]
  br i1 %tobool28.not, label %for.end73.if.end76_crit_edge, label %if.then75

for.end73.if.end76_crit_edge:                     ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.then75:                                        ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %meta_sg_offset_p to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sg_offset.1.lcssa, ptr %meta_sg_offset_p, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %for.end73.if.end76_crit_edge
  %meta_ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %j.0.lcssa, ptr %meta_ndescs, align 8
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %length, align 8
  %48 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_length, align 8
  %50 = trunc i64 %47 to i32
  %conv82 = sub i32 %50, %49
  %meta_length = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %meta_length to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv82, ptr %meta_length, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end76, %if.end22.if.end83_crit_edge
  %j.1 = phi i32 [ %j.0.lcssa, %if.end76 ], [ 0, %if.end22.if.end83_crit_edge ]
  %add84 = add i32 %j.1, %i.0.lcssa
  ret i32 %add84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndescs, align 8
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3
  %2 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !180

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %or3 = or i64 %addr, 3
  %inc = add i32 %1, 1
  %7 = ptrtoint ptr %ndescs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %ndescs, align 8
  %arrayidx = getelementptr i64, ptr %6, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or3, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @alloc_cache_mr(ptr noundef %ent, ptr nocapture noundef %mkc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_ent = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cache_ent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ent, ptr %cache_ent, align 4
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %umrc = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %umrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %umrc, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %call1.i = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %11) #13
  %12 = ptrtoint ptr %mkc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mkc, align 4
  %and4.i = and i32 %13, -31745
  %or75.i = or i32 %and4.i, 1024
  store i32 %or75.i, ptr %mkc, align 4
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i, align 8
  %add.ptr80.i = getelementptr i32, ptr %17, i32 7
  %18 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr80.i, align 4
  %20 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool82.not.i = icmp eq i32 %20, 0
  br i1 %tobool82.not.i, label %if.end.if.end.i_crit_edge, label %do.body83.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.body83.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and92.i = and i32 %or75.i, -292865
  %21 = ptrtoint ptr %mkc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and92.i, ptr %mkc, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body83.i, %if.end.if.end.i_crit_edge
  %22 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev.i, align 8
  %caps100.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps100.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps100.i, align 8
  %add.ptr105.i = getelementptr i32, ptr %25, i32 7
  %26 = ptrtoint ptr %add.ptr105.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr105.i, align 4
  %28 = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool108.not.i = icmp eq i32 %28, 0
  br i1 %tobool108.not.i, label %if.end.i.set_mkc_access_pd_addr_fields.exit_crit_edge, label %do.body110.i

if.end.i.set_mkc_access_pd_addr_fields.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_mkc_access_pd_addr_fields.exit

do.body110.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr121.i = getelementptr i32, ptr %mkc, i32 14
  %29 = ptrtoint ptr %add.ptr121.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr121.i, align 4
  %and122.i = and i32 %30, -65
  store i32 %and122.i, ptr %add.ptr121.i, align 4
  br label %set_mkc_access_pd_addr_fields.exit

set_mkc_access_pd_addr_fields.exit:               ; preds = %do.body110.i, %if.end.i.set_mkc_access_pd_addr_fields.exit_crit_edge
  %pdn.i = getelementptr inbounds %struct.mlx5_ib_pd, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %pdn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pdn.i, align 4
  %add.ptr136.i = getelementptr i32, ptr %mkc, i32 3
  %33 = ptrtoint ptr %add.ptr136.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr136.i, align 4
  %and137.i = and i32 %34, -16777216
  %and138.i = and i32 %32, 16777215
  %or140.i = or i32 %and137.i, %and138.i
  store i32 %or140.i, ptr %add.ptr136.i, align 4
  %add.ptr149.i = getelementptr i32, ptr %mkc, i32 1
  %35 = ptrtoint ptr %add.ptr149.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr149.i, align 4
  %or153.i = or i32 %36, -256
  store i32 %or153.i, ptr %add.ptr149.i, align 4
  %add.ptr165.i = getelementptr i64, ptr %mkc, i32 2
  %37 = ptrtoint ptr %add.ptr165.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %add.ptr165.i, align 8
  %38 = ptrtoint ptr %mkc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mkc, align 4
  %or15 = or i32 %39, 1073774592
  store i32 %or15, ptr %mkc, align 4
  %access_mode = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 5
  %40 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %access_mode, align 4
  %and26 = and i32 %or15, -769
  %and21 = shl i32 %41, 8
  %shl28 = and i32 %and21, 768
  %or29 = or i32 %shl28, %and26
  store i32 %or29, ptr %mkc, align 4
  %42 = load i32, ptr %access_mode, align 4
  %and41 = and i32 %or29, -469762049
  %43 = shl i32 %42, 24
  %shl43 = and i32 %43, 469762048
  %or44 = or i32 %and41, %shl43
  store i32 %or44, ptr %mkc, align 4
  %xlt = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 4
  %44 = ptrtoint ptr %xlt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xlt, align 4
  %add.ptr53 = getelementptr i32, ptr %mkc, i32 13
  %46 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr53, align 4
  %page = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 6
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page, align 4
  %add.ptr66 = getelementptr i32, ptr %mkc, i32 14
  %49 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr66, align 4
  %and67 = and i32 %50, -32
  %and68 = and i32 %48, 31
  %or70 = or i32 %and67, %and68
  store i32 %or70, ptr %add.ptr66, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_mkc_access_pd_addr_fields.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cache_work_func(ptr noundef %ent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cache2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %disabled = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 7
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 9
  %4 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %available_mrs, align 4
  %pending = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 11
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending, align 4
  %add = add i32 %7, %5
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 10
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limit, align 4
  %mul = shl i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp = icmp ult i32 %add, %mul
  br i1 %cmp, label %do.end, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  %fill_delay = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %fill_delay to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %fill_delay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %if.then9, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then9:                                         ; preds = %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %call = tail call fastcc i32 @add_keys(ptr noundef %ent, i32 noundef 1)
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %12 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load13 = load i8, ptr %disabled, align 4
  %bf.load13.fr = freeze i8 %bf.load13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load13.fr)
  %tobool15.not = icmp slt i8 %bf.load13.fr, 0
  br i1 %tobool15.not, label %if.then9.out_crit_edge, label %switch.early.test

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

switch.early.test:                                ; preds = %if.then9
  %13 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call, label %do.end25 [
    i32 -11, label %switch.early.test.out_crit_edge
    i32 0, label %switch.early.test.out_crit_edge101
  ]

switch.early.test.out_crit_edge101:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

switch.early.test.out_crit_edge:                  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end25:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %15 = tail call i32 @llvm.read_register.i32(metadata !170) #13
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
  %order = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 3
  %21 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %order, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 517, i32 noundef %20, i32 noundef %22, i32 noundef %call) #17
  %23 = ptrtoint ptr %cache2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cache2, align 4
  %dwork = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %dwork, i32 noundef 100) #13
  br label %out

if.else:                                          ; preds = %do.end.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %available_mrs31 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 9
  %25 = ptrtoint ptr %available_mrs31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %available_mrs31, align 4
  %limit32 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 10
  %27 = ptrtoint ptr %limit32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %limit32, align 4
  %mul33 = shl i32 %28, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mul33)
  %cmp34 = icmp ugt i32 %26, %mul33
  br i1 %cmp34, label %if.then36, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then36:                                        ; preds = %if.else
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %29 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 16384
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not = icmp eq i32 %33, 0
  br i1 %tobool.i.not, label %for.body.i.preheader, label %if.then36.lor.end_crit_edge

if.then36.lor.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

for.body.i.preheader:                             ; preds = %if.then36
  %lock.i95 = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i95) #13
  %available_mrs.i96 = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 9
  %34 = ptrtoint ptr %available_mrs.i96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %available_mrs.i96, align 4
  %limit.i97 = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 10
  %36 = ptrtoint ptr %limit.i97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %limit.i97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp2.i98 = icmp ult i32 %35, %37
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i95) #13
  br i1 %cmp2.i98, label %for.body.i.preheader.lor.end_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.lor.end_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.011.i99 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.011.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.cond.i.someone_adding.exit_crit_edge, label %for.body.i

for.cond.i.someone_adding.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %someone_adding.exit

for.body.i:                                       ; preds = %for.cond.i
  %lock.i = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 %inc.i, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %available_mrs.i = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 %inc.i, i32 9
  %38 = ptrtoint ptr %available_mrs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %available_mrs.i, align 4
  %limit.i = getelementptr %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 1, i32 %inc.i, i32 10
  %40 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %limit.i, align 4
  %cmp2.i = icmp ult i32 %39, %41
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #13
  br i1 %cmp2.i, label %for.body.i.someone_adding.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.someone_adding.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %someone_adding.exit

someone_adding.exit:                              ; preds = %for.body.i.someone_adding.exit_crit_edge, %for.cond.i.someone_adding.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %i.011.i99)
  %cmp.i.le = icmp ult i32 %i.011.i99, 22
  br i1 %cmp.i.le, label %someone_adding.exit.lor.end_crit_edge, label %do.end44

someone_adding.exit.lor.end_crit_edge:            ; preds = %someone_adding.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

do.end44:                                         ; preds = %someone_adding.exit
  call void @__sanitizer_cov_trace_pc() #15
  %last_add = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 10, i32 3
  %42 = ptrtoint ptr %last_add to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %last_add, align 4
  %add46 = add i32 %43, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp47 = icmp sgt i32 %sub, -1
  br label %lor.end

lor.end:                                          ; preds = %do.end44, %someone_adding.exit.lor.end_crit_edge, %for.body.i.preheader.lor.end_crit_edge, %if.then36.lor.end_crit_edge
  %45 = phi i1 [ true, %someone_adding.exit.lor.end_crit_edge ], [ true, %if.then36.lor.end_crit_edge ], [ %cmp47, %do.end44 ], [ true, %for.body.i.preheader.lor.end_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %46 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load51 = load i8, ptr %disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load51)
  %tobool53.not = icmp sgt i8 %bf.load51, -1
  br i1 %tobool53.not, label %if.end55, label %lor.end.out_crit_edge

lor.end.out_crit_edge:                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end55:                                         ; preds = %lor.end
  br i1 %45, label %if.then57, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %cache2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cache2, align 4
  %dwork59 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 15
  %call.i94 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %dwork59, i32 noundef 30000) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end55.if.end61_crit_edge
  tail call fastcc void @remove_cache_mr_locked(ptr noundef %ent)
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef %ent)
  br label %out

out:                                              ; preds = %if.end61, %lor.end.out_crit_edge, %if.else.out_crit_edge, %do.end25, %switch.early.test.out_crit_edge, %switch.early.test.out_crit_edge101, %if.then9.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_keys(ptr noundef %ent, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp54.not = icmp eq i32 %num, 0
  br i1 %cmp54.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1
  %pending = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 11
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %add.ptr3.i.i = getelementptr i8, ptr %call7.i.i, i32 20
  br label %for.body

for.cond:                                         ; preds = %if.end8
  %inc21 = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc21, %num
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.cond.for.body_crit_edge ]
  %call1 = tail call fastcc ptr @alloc_cache_mr(ptr noundef %ent, ptr noundef %add.ptr)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %if.end4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4:                                          ; preds = %for.body
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp5 = icmp ugt i32 %2, 7
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %for.end.sink.split

if.end8:                                          ; preds = %if.end4
  %inc = add nuw nsw i32 %2, 1
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc, ptr %pending, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call1, i32 0, i32 1
  %async_ctx = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 36
  %6 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call1, i32 0, i32 4
  %cb_work = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call1, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %and.i = and i32 %8, 65535
  %or.i = or i32 %and.i, 33554432
  store i32 %or.i, ptr %call7.i.i, align 8
  %mkey_var.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i.i, ptr %mkey_var.i.i, i32 1, ptr elementtype(i32) %mkey_var.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i.i = and i32 %asmresult.i.i.i.i.i.i, 255
  %10 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr3.i.i, align 4
  %and.i.i = and i32 %11, -256
  %or.i.i = or i32 %and.i.i, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr3.i.i, align 4
  %12 = ptrtoint ptr %mmkey to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1.i.i, ptr %mmkey, align 4
  %call.i = tail call i32 @mlx5_cmd_exec_cb(ptr noundef %async_ctx, ptr noundef nonnull %call7.i.i, i32 noundef 272, ptr noundef %6, i32 noundef 16, ptr noundef nonnull @create_mkey_callback, ptr noundef %cb_work) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %for.cond, label %if.then14

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pending, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %pending, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 13
  %18 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i50 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i50 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 237, i32 noundef %23, i32 noundef %call.i) #17
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %if.then14, %if.then6
  %err.1.ph = phi i32 [ %call.i, %if.then14 ], [ -11, %if.then6 ]
  tail call void @kfree(ptr noundef nonnull %call1) #13
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %err.1.ph, %for.end.sink.split ], [ 0, %for.cond.for.end_crit_edge ], [ -12, %for.body.for.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_cache_mr_locked(ptr noundef %ent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ent, align 4
  %cmp.i.not = icmp eq ptr %2, %ent
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %2, i32 -248
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 9
  %11 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %available_mrs, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %available_mrs, align 4
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 8
  %13 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total_mrs, align 4
  %dec30 = add i32 %14, -1
  store i32 %dec30, ptr %total_mrs, align 4
  %lock31 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock31) #13
  %dev = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 13
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 8
  %mmkey = getelementptr i8, ptr %2, i32 -104
  %19 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mmkey, align 8
  %call32 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %18, i32 noundef %20) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock31) #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @create_mkey_callback(i32 noundef %status, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_ent = getelementptr i8, ptr %context, i32 -28
  %0 = ptrtoint ptr %cache_ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_ent, align 4
  %dev1 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %context, i32 -240
  %4 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %5 = tail call i32 @llvm.read_register.i32(metadata !170) #13
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 152, i32 noundef %10, i32 noundef %status) #17
  tail call void @kfree(ptr noundef %add.ptr) #13
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %pending = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pending, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %pending, align 4
  %fill_delay = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %fill_delay to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 1, ptr %fill_delay, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #13
  %delay_timer = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 100
  %call21 = tail call i32 @mod_timer(ptr noundef %delay_timer, i32 noundef %add) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmkey = getelementptr i8, ptr %context, i32 -96
  %type = getelementptr i8, ptr %context, i32 -92
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %type, align 4
  %add.ptr22 = getelementptr i8, ptr %context, i32 -8
  %16 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr22, align 4
  %and = shl i32 %17, 8
  %18 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmkey, align 8
  %or = or i32 %19, %and
  store i32 %or, ptr %mmkey, align 8
  %wait = getelementptr i8, ptr %context, i32 -84
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.35, ptr noundef nonnull @create_mkey_callback.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_add = getelementptr inbounds %struct.mlx5_ib_dev, ptr %3, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %last_add to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %last_add, align 4
  %lock45 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 1
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock45) #13
  %list = getelementptr i8, ptr %context, i32 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %23, ptr noundef %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %context, i32 12
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %available_mrs, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %available_mrs, align 4
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_mrs, align 4
  %inc52 = add i32 %31, 1
  store i32 %inc52, ptr %total_mrs, align 4
  tail call fastcc void @queue_adjust_cache_locked(ptr noundef %1)
  %pending53 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %pending53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pending53, align 4
  %dec54 = add i32 %33, -1
  store i32 %dec54, ptr %pending53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock45, i32 noundef %call47) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %lbuf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lbuf) #13
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %lbuf, i32 255, i32 20)
  %3 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_mrs, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %lbuf, i32 noundef 20, ptr noundef nonnull @.str.48, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %lbuf, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lbuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @size_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %target = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target) #13
  %2 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %target, align 4, !annotation !186
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %target) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %3 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target, align 4
  %total_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %total_mrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_mrs, align 4
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %available_mrs, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub)
  %cmp = icmp ult i32 %4, %sub
  br i1 %cmp, label %if.end.err_unlock_crit_edge, label %if.end2

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unlock

if.end2:                                          ; preds = %if.end
  %sub6 = sub i32 %4, %sub
  %9 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub6, ptr %target, align 4
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %11)
  %cmp7 = icmp ult i32 %sub6, %11
  %mul = shl i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %mul)
  %cmp9 = icmp ugt i32 %sub6, %mul
  %or.cond = or i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.end2.err_unlock_crit_edge, label %if.end11

if.end2.err_unlock_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unlock

if.end11:                                         ; preds = %if.end2
  %call12 = call fastcc i32 @resize_available_mrs(ptr noundef %1, i32 noundef %sub6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup.sink.split_crit_edge, label %if.end11.err_unlock_crit_edge

if.end11.err_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unlock

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

err_unlock:                                       ; preds = %if.end11.err_unlock_crit_edge, %if.end2.err_unlock_crit_edge, %if.end.err_unlock_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.err_unlock_crit_edge ], [ -22, %if.end.err_unlock_crit_edge ], [ -22, %if.end2.err_unlock_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_unlock, %if.end11.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %err_unlock ], [ %count, %if.end11.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @resize_available_mrs(ptr noundef %ent, i32 noundef %target, i1 noundef zeroext %limit_fill) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 308, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %available_mrs = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 9
  %pending = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 11
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 10
  %lock38 = getelementptr inbounds %struct.mlx5_cache_ent, ptr %ent, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %target.addr.0 = phi i32 [ %target, %if.end ], [ %target.addr.1, %while.cond.backedge ]
  br i1 %limit_fill, label %if.then25, label %while.cond.if.end26_crit_edge

while.cond.if.end26_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %limit, align 4
  %mul = shl i32 %2, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %while.cond.if.end26_crit_edge
  %target.addr.1 = phi i32 [ %mul, %if.then25 ], [ %target.addr.0, %while.cond.if.end26_crit_edge ]
  %3 = ptrtoint ptr %available_mrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %available_mrs, align 4
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pending, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %target.addr.1, i32 %add)
  %cmp27 = icmp eq i32 %target.addr.1, %add
  br i1 %cmp27, label %if.end26.cleanup52_crit_edge, label %if.end29

if.end26.cleanup52_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup52

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %target.addr.1, i32 %add)
  %cmp33 = icmp ugt i32 %target.addr.1, %add
  br i1 %cmp33, label %if.then34, label %if.else50

if.then34:                                        ; preds = %if.end29
  %sub = sub i32 %target.addr.1, %add
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock38) #13
  %call39 = tail call fastcc i32 @add_keys(ptr noundef %ent, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call39)
  %cmp40 = icmp eq i32 %call39, -11
  br i1 %cmp40, label %if.end42.thread, label %if.end42

if.end42.thread:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock38) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else50, %if.end42.thread
  br label %while.cond

if.end42:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock38) #13
  br label %cleanup52

if.else50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @remove_cache_mr_locked(ptr noundef %ent)
  br label %while.cond.backedge

cleanup52:                                        ; preds = %if.end42, %if.end26.cleanup52_crit_edge
  %retval.3 = phi i32 [ %call39, %if.end42 ], [ 0, %if.end26.cleanup52_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @limit_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %lbuf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lbuf) #13
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 10
  %2 = call ptr @memset(ptr %lbuf, i32 255, i32 20)
  %3 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %limit, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %lbuf, i32 noundef 20, ptr noundef nonnull @.str.48, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %lbuf, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lbuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @limit_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %var = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var) #13
  %2 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %var, align 4, !annotation !186
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %var) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %3 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %var, align 4
  %limit = getelementptr inbounds %struct.mlx5_cache_ent, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %limit, align 4
  %call1 = call fastcc i32 @resize_available_mrs(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool3.not, i32 %count, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count.call1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_umr_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %status1 = getelementptr inbounds %struct.mlx5_ib_umr_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status1, align 4
  %done = getelementptr inbounds %struct.mlx5_ib_umr_context, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %done) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5r_odp_create_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_ib_alloc_implicit_mr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_odp_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_init_odp_mr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_find_best_pgsz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @reg_create(ptr noundef %pd, ptr noundef %umem, i64 noundef %iova, i32 noundef %access_flags, i32 noundef %page_size, i1 noundef zeroext %populate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
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
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_size)
  %tobool3.not = icmp eq i32 %page_size, 0
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 368) #16
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %pd10 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pd10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pd, ptr %pd10, align 4
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 4
  %access_flags11 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %access_flags11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %access_flags, ptr %access_flags11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page_size)
  %cmp.i = icmp ugt i32 %page_size, 1
  %sub.i341 = add i32 %page_size, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %sub.i341, i1 true) #13, !range !184
  %add.i = sub nuw nsw i32 32, %13
  %cond31 = select i1 %cmp.i, i32 %add.i, i32 0
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond31, ptr %11, align 8
  br i1 %populate, label %if.end39, label %if.end39.thread

if.end39:                                         ; preds = %if.end9
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %15 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %18 to i64
  %conv1.i = zext i32 %page_size to i64
  %sub.i342 = add nsw i64 %conv1.i, -1
  %add.i343 = add i64 %16, %sub.i342
  %add2.i = add i64 %add.i343, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i344 = add i32 %page_size, -1
  %conv7.i = zext i32 %sub6.i344 to i64
  %sub8.i = sub nsw i64 %sub.i342, %conv7.i
  %add11.i = add i64 %sub8.i, %16
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %page_size
  %add36 = shl i32 %div.i, 3
  %19 = add i32 %add36, 280
  %add38 = and i32 %19, -16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add38, i32 noundef 3520, i32 noundef -1) #19
  %tobool41.not = icmp eq ptr %call.i.i, null
  br i1 %tobool41.not, label %if.end39.err_1_crit_edge, label %if.then46

if.end39.err_1_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_1

if.end39.thread:                                  ; preds = %if.end9
  %call.i.i365 = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #19
  %tobool41.not366 = icmp eq ptr %call.i.i365, null
  br i1 %tobool41.not366, label %if.end39.thread.err_1_crit_edge, label %cond.false101

if.end39.thread.err_1_crit_edge:                  ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_1

if.then46:                                        ; preds = %if.end39
  %and47 = and i32 %access_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body81, label %do.end, !prof !185

do.end:                                           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1302, i32 noundef 9, ptr noundef null) #13
  br label %err_2

do.body81:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr44 = getelementptr i8, ptr %call.i.i, i32 272
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 8
  %shl = shl nuw i32 1, %21
  %cond78 = select i1 %tobool.not, i32 0, i32 3
  %22 = zext i32 %cond78 to i64
  tail call void @mlx5_ib_populate_pas(ptr noundef %umem, i32 noundef %shl, ptr noundef %add.ptr44, i64 noundef %22) #13
  %add.ptr90 = getelementptr i32, ptr %call.i.i, i32 3
  %23 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr90, align 4
  %and91 = and i32 %24, 2147483647
  %shl93 = shl nuw i32 %8, 7
  %or = or i32 %and91, %shl93
  store i32 %or, ptr %add.ptr90, align 4
  br label %cond.end103

cond.false101:                                    ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr90377 = getelementptr i32, ptr %call.i.i365, i32 3
  %25 = ptrtoint ptr %add.ptr90377 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr90377, align 4
  %and91378 = and i32 %26, 2147483647
  %shl93379 = shl nuw i32 %8, 7
  %or380 = or i32 %and91378, %shl93379
  store i32 %or380, ptr %add.ptr90377, align 4
  %umrc = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %umrc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %umrc, align 4
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false101, %do.body81
  %call.i.i368373385 = phi ptr [ %call.i.i365, %cond.false101 ], [ %call.i.i, %do.body81 ]
  %inlen.0367374383 = phi i32 [ 272, %cond.false101 ], [ %add38, %do.body81 ]
  %shl116 = phi i32 [ 1073774848, %cond.false101 ], [ 33024, %do.body81 ]
  %cond104 = phi ptr [ %28, %cond.false101 ], [ %pd, %do.body81 ]
  %add.ptr97387 = getelementptr i8, ptr %call.i.i368373385, i32 16
  tail call fastcc void @set_mkc_access_pd_addr_fields(ptr noundef %add.ptr97387, i32 noundef %access_flags, i64 noundef %iova, ptr noundef %cond104)
  %29 = ptrtoint ptr %add.ptr97387 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr97387, align 4
  %and114 = and i32 %30, -1073775361
  %or143 = or i32 %shl116, %and114
  store i32 %or143, ptr %add.ptr97387, align 4
  %length = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 8
  %conv155 = zext i32 %32 to i64
  %add.ptr156 = getelementptr i8, ptr %call.i.i368373385, i32 40
  %33 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv155, ptr %add.ptr156, align 8
  %add.ptr166 = getelementptr i8, ptr %call.i.i368373385, i32 48
  %34 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %add.ptr166, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %11, align 8
  %sh_prom.i = zext i32 %36 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i345 = xor i64 %notmask.i, -1
  %and.i346 = and i64 %sub.i345, %iova
  %add.i347 = add i64 %sub.i345, %conv155
  %add2.i348 = add i64 %add.i347, %and.i346
  %and4.i = and i64 %add2.i348, %notmask.i
  %shr.i = lshr i64 %and4.i, %sh_prom.i
  %conv.i349 = trunc i64 %shr.i to i32
  %add6.i = add i32 %conv.i349, 1
  %div.i350 = sdiv i32 %add6.i, 2
  %add.ptr183 = getelementptr i8, ptr %call.i.i368373385, i32 68
  %37 = ptrtoint ptr %add.ptr183 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i350, ptr %add.ptr183, align 4
  %add.ptr197 = getelementptr i8, ptr %call.i.i368373385, i32 72
  %38 = ptrtoint ptr %add.ptr197 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr197, align 4
  %and198 = and i32 %39, -32
  %and199 = and i32 %36, 31
  %or201 = or i32 %and198, %and199
  store i32 %or201, ptr %add.ptr197, align 4
  br i1 %populate, label %do.body207, label %cond.end103.if.end224_crit_edge

cond.end103.if.end224_crit_edge:                  ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

do.body207:                                       ; preds = %cond.end103
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr216 = getelementptr i32, ptr %call.i.i368373385, i32 24
  %40 = ptrtoint ptr %add.ptr216 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div.i350, ptr %add.ptr216, align 4
  br label %if.end224

if.end224:                                        ; preds = %do.body207, %cond.end103.if.end224_crit_edge
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1
  %mkey_var.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i.i, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i.i, ptr %mkey_var.i.i, i32 1, ptr elementtype(i32) %mkey_var.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i.i = and i32 %asmresult.i.i.i.i.i.i, 255
  %add.ptr3.i.i = getelementptr i8, ptr %call.i.i368373385, i32 20
  %42 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr3.i.i, align 4
  %and.i.i = and i32 %43, -256
  %or.i.i = or i32 %and.i.i, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr3.i.i, align 4
  %44 = ptrtoint ptr %mmkey to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv1.i.i, ptr %mmkey, align 8
  %45 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mdev, align 8
  %call.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %46, ptr noundef %mmkey, ptr noundef nonnull %call.i.i368373385, i32 noundef %inlen.0367374383) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end232, label %do.end230

do.end230:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  %47 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %48 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i362 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i362 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 1333, i32 noundef %53) #17
  br label %err_2

if.end232:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @mlx5_ib_create_mkey.__key) #13
  %type = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %type, align 4
  %umem234 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %umem234 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %umem, ptr %umem234, align 8
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length, align 8
  %conv236 = zext i32 %57 to i64
  %58 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mmkey, align 8
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %lkey.i, align 8
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %rkey.i, align 4
  %length5.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %length5.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv236, ptr %length5.i, align 8
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %1, ptr %call7.i.i, align 8
  %iova8.i = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %iova8.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %iova, ptr %iova8.i, align 8
  %65 = ptrtoint ptr %access_flags11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %access_flags, ptr %access_flags11, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i368373385) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_create.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reg_create, %if.then248)) #13
          to label %cleanup [label %if.then248], !srcloc !187

if.then248:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  %66 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %67 = tail call i32 @llvm.read_register.i32(metadata !170) #13
  %and.i363 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i363 to ptr
  %task251 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task251 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task251, align 8
  %pid252 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid252 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid252, align 8
  %73 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mmkey, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_create.__UNIQUE_ID_ddebug561, ptr noundef %66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef 1341, i32 noundef %72, i32 noundef %74) #13
  br label %cleanup

err_2:                                            ; preds = %do.end230, %do.end
  %call.i.i369 = phi ptr [ %call.i.i, %do.end ], [ %call.i.i368373385, %do.end230 ]
  %err.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end230 ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i369) #13
  br label %err_1

err_1:                                            ; preds = %err_2, %if.end39.thread.err_1_crit_edge, %if.end39.err_1_crit_edge
  %err.1 = phi i32 [ %err.0, %err_2 ], [ -12, %if.end39.err_1_crit_edge ], [ -12, %if.end39.thread.err_1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %75 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_1, %if.then248, %if.end232, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %75, %err_1 ], [ %call7.i.i, %if.then248 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end232 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_populate_pas(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_dmabuf_invalidate_cb(ptr nocapture noundef readonly %attach) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %importer_priv = getelementptr inbounds %struct.dma_buf_attachment, ptr %attach, i32 0, i32 7
  %0 = ptrtoint ptr %importer_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %importer_priv, align 4
  %private = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %attach1 = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %attach1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attach1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv, align 4
  %dep_map = getelementptr inbounds %struct.mutex, ptr %10, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !180

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1574, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sgt = getelementptr inbounds %struct.ib_umem_dmabuf, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @mlx5_ib_update_mr_pas(ptr noundef %3, i32 noundef 1)
  tail call void @ib_umem_dmabuf_unmap_pages(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_dmabuf_unmap_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mlx5_alloc_mkey_descs(ptr nocapture noundef readonly %pd, ptr noundef %mr, i32 noundef %ndescs, i32 noundef %desc_size, i32 noundef %page_shift, i32 noundef %access_mode, ptr noundef %in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %access_mode1 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %access_mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %access_mode, ptr %access_mode1, align 4
  %desc_size2 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %desc_size2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %desc_size, ptr %desc_size2, align 8
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %max_descs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ndescs, ptr %max_descs, align 4
  %5 = load ptr, ptr %device, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 8
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  %mul.i = mul i32 %desc_size, %ndescs
  %add.i = add i32 %mul.i, 1920
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #19
  %descs_alloc.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %descs_alloc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i.i, ptr %descs_alloc.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %call9.i.i.i to i32
  %add5.i = add i32 %12, 2047
  %and.i = and i32 %add5.i, -2048
  %13 = inttoptr i32 %and.i to ptr
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %11, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #13
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !185

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i27.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i27.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i27.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %18, %if.end.i.i27.i ], [ %16, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %desc_map34.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %desc_map34.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %desc_map34.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef -1) #13
  br label %if.then11.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef %13, i32 noundef %mul.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %and.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i
  %and.i.i = and i32 %add5.i, 2048
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %mul.i, i32 noundef 1, i32 noundef 0) #13
  %desc_map.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 2
  %21 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call41.i.i, ptr %desc_map.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i, i32 noundef %call41.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then11.i_crit_edge, label %if.end

dma_map_single_attrs.exit.i.if.then11.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i

if.then11.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then11.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %22 = ptrtoint ptr %descs_alloc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %descs_alloc.i, align 4
  tail call void @kfree(ptr noundef %23) #13
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit.i
  %add.ptr.i = getelementptr i8, ptr %in, i32 16
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev.i.i, align 8
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i.i, align 8
  %call1.i.i = tail call zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %29) #13
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  %and4.i.i = and i32 %31, -31745
  %or75.i.i = or i32 %and4.i.i, 1024
  store i32 %or75.i.i, ptr %add.ptr.i, align 4
  %32 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i.i, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps.i.i, align 8
  %add.ptr80.i.i = getelementptr i32, ptr %35, i32 7
  %36 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr80.i.i, align 4
  %38 = and i32 %37, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool82.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool82.not.i.i, label %if.end.if.end.i.i_crit_edge, label %do.body83.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.body83.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo197.i.i = select i1 %call1.i.i, i32 262144, i32 0
  %and92.i.i = and i32 %or75.i.i, -292865
  %or95.i.i = or i32 %and92.i.i, %phi.bo197.i.i
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or95.i.i, ptr %add.ptr.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body83.i.i, %if.end.if.end.i.i_crit_edge
  %40 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev.i.i, align 8
  %caps100.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %caps100.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %caps100.i.i, align 8
  %add.ptr105.i.i = getelementptr i32, ptr %43, i32 7
  %44 = ptrtoint ptr %add.ptr105.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr105.i.i, align 4
  %46 = and i32 %45, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool108.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool108.not.i.i, label %if.end.i.i.mlx5_set_umr_free_mkey.exit_crit_edge, label %do.body110.i.i

if.end.i.i.mlx5_set_umr_free_mkey.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_set_umr_free_mkey.exit

do.body110.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo.i.i = select i1 %call1.i.i, i32 64, i32 0
  %add.ptr121.i.i = getelementptr i8, ptr %in, i32 72
  %47 = ptrtoint ptr %add.ptr121.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr121.i.i, align 4
  %and122.i.i = and i32 %48, -65
  %or125.i.i = or i32 %and122.i.i, %phi.bo.i.i
  store i32 %or125.i.i, ptr %add.ptr121.i.i, align 4
  br label %mlx5_set_umr_free_mkey.exit

mlx5_set_umr_free_mkey.exit:                      ; preds = %do.body110.i.i, %if.end.i.i.mlx5_set_umr_free_mkey.exit_crit_edge
  %pdn.i.i = getelementptr inbounds %struct.mlx5_ib_pd, ptr %pd, i32 0, i32 1
  %49 = ptrtoint ptr %pdn.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pdn.i.i, align 4
  %add.ptr136.i.i = getelementptr i8, ptr %in, i32 28
  %51 = ptrtoint ptr %add.ptr136.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr136.i.i, align 4
  %and137.i.i = and i32 %52, -16777216
  %and138.i.i = and i32 %50, 16777215
  %or140.i.i = or i32 %and137.i.i, %and138.i.i
  store i32 %or140.i.i, ptr %add.ptr136.i.i, align 4
  %add.ptr149.i.i = getelementptr i8, ptr %in, i32 20
  %53 = ptrtoint ptr %add.ptr149.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr149.i.i, align 4
  %or153.i.i = or i32 %54, -256
  store i32 %or153.i.i, ptr %add.ptr149.i.i, align 4
  %add.ptr165.i.i = getelementptr i8, ptr %in, i32 32
  %55 = ptrtoint ptr %add.ptr165.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %add.ptr165.i.i, align 8
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %in, i32 68
  %58 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %ndescs, ptr %add.ptr12.i, align 4
  %or.i = and i32 %57, -1543537409
  %and22.i = shl i32 %access_mode, 8
  %shl29.i = and i32 %and22.i, 768
  %or30.i = or i32 %shl29.i, %or.i
  %or57.i = or i32 %or30.i, 1073774592
  store i32 %or57.i, ptr %add.ptr.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %in, i32 72
  %59 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr66.i, align 4
  %and67.i = and i32 %60, -32
  %and68.i = and i32 %page_shift, 31
  %or70.i = or i32 %and67.i, %and68.i
  store i32 %or70.i, ptr %add.ptr66.i, align 4
  %mmkey = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1
  %mkey_var.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mkey_var.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %mkey_var.i.i, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mkey_var.i.i, ptr %mkey_var.i.i, i32 1, ptr elementtype(i32) %mkey_var.i.i) #13, !srcloc !182
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !183
  %conv1.i.i = and i32 %asmresult.i.i.i.i.i.i, 255
  %62 = ptrtoint ptr %add.ptr149.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr149.i.i, align 4
  %and.i.i1 = and i32 %63, -256
  %or.i.i = or i32 %and.i.i1, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr149.i.i, align 4
  %64 = ptrtoint ptr %mmkey to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv1.i.i, ptr %mmkey, align 4
  %mdev.i2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %mdev.i2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mdev.i2, align 8
  %call.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %66, ptr noundef %mmkey, ptr noundef %in, i32 noundef 272) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i3 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i3, label %if.end8, label %err_free_descs

if.end8:                                          ; preds = %mlx5_set_umr_free_mkey.exit
  call void @__sanitizer_cov_trace_pc() #15
  %wait.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @mlx5_ib_create_mkey.__key) #13
  %type = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type, align 4
  %68 = ptrtoint ptr %mmkey to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mmkey, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 2
  %70 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 3
  %71 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %rkey, align 4
  br label %cleanup

err_free_descs:                                   ; preds = %mlx5_set_umr_free_mkey.exit
  %umem.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 3
  %72 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %umem.i, align 8
  %tobool.not.i5 = icmp eq ptr %73, null
  br i1 %tobool.not.i5, label %land.lhs.true.i, label %err_free_descs.cleanup_crit_edge

err_free_descs.cleanup_crit_edge:                 ; preds = %err_free_descs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %err_free_descs
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %11, align 8
  %tobool1.not.i = icmp eq ptr %75, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mr, align 8
  %78 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_descs, align 4
  %80 = ptrtoint ptr %desc_size2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %desc_size2, align 8
  %mul.i6 = mul i32 %81, %79
  %mdev.i7 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %mdev.i7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev.i7, align 8
  %pdev.i8 = getelementptr inbounds %struct.mlx5_core_dev, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %pdev.i8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev.i8, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %desc_map.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3.i, i32 noundef %87, i32 noundef %mul.i6, i32 noundef 1, i32 noundef 0) #13
  %descs_alloc.i10 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %mr, i32 0, i32 4, i32 0, i32 1
  %88 = ptrtoint ptr %descs_alloc.i10 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %descs_alloc.i10, align 4
  tail call void @kfree(ptr noundef %89) #13
  %90 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %err_free_descs.cleanup_crit_edge, %if.end8, %if.then11.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call.i, %err_free_descs.cleanup_crit_edge ], [ %call.i, %land.lhs.true.i.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ -12, %if.then11.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_psv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_ib_alloc_pi_mr(ptr noundef %pd, i32 noundef %max_num_sg, i32 noundef %max_num_meta_sg, i32 noundef %desc_size, i32 noundef %access_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %max_num_sg, 3
  %add1 = add i32 %add, %max_num_meta_sg
  %and = and i32 %add1, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pd3 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pd3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pd, ptr %pd3, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 272) #16
  %tobool7.not = icmp eq ptr %call7.i.i36, null
  br i1 %tobool7.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %access_mode)
  %cmp = icmp eq i32 %access_mode, 1
  %spec.select = select i1 %cmp, i32 12, i32 0
  %call12 = tail call fastcc i32 @_mlx5_alloc_mkey_descs(ptr noundef %pd, ptr noundef nonnull %call7.i.i, i32 noundef %and, i32 noundef %desc_size, i32 noundef %spec.select, i32 noundef %access_mode, ptr noundef nonnull %call7.i.i36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_free_in

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %umem = getelementptr inbounds %struct.mlx5_ib_mr, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %umem, align 8
  br label %cleanup.sink.split

err_free_in:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i36) #13
  %phi.cast = inttoptr i32 %call12 to ptr
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free_in, %if.end15, %if.end.cleanup.sink.split_crit_edge
  %call7.i.i.sink = phi ptr [ %call7.i.i36, %if.end15 ], [ %call7.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %call7.i.i, %err_free_in ]
  %retval.0.ph = phi ptr [ %call7.i.i, %if.end15 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup.sink.split_crit_edge ], [ %phi.cast, %err_free_in ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_set_page_pi(ptr nocapture noundef %ibmr, i64 noundef %addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ndescs, align 8
  %meta_ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meta_ndescs, align 8
  %add = add i32 %3, %1
  %max_descs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %max_descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp eq i32 %add, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !180

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %ibmr, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %or3 = or i64 %addr, 3
  %inc = add i32 %3, 1
  %9 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %meta_ndescs, align 8
  %arrayidx = getelementptr i64, ptr %8, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or3, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168}
!llvm.named.register.sp = !{!170}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 577, i32 6}
!2 = !{ptr @mlx5_mr_cache_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 712, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 713, i32 14}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 715, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5_mr_cache_init._entry, !8, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5_mr_cache_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mlx5_mr_cache_init.__key.7, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 720, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5_mr_cache_init.__key.9, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 724, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx5_mr_cache_init.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 729, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_mr_cache_init.__key.13, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 730, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx5_mr_cache_init.__key.15, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1557, i32 2}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mlx5_ib_reg_user_mr.__UNIQUE_ID_ddebug567, !29, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1602, i32 2}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug568, !34, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1614, i32 3}
!39 = !{ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug569, !38, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1626, i32 2}
!42 = !{ptr @mlx5_ib_reg_user_mr_dmabuf.__UNIQUE_ID_ddebug570, !41, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1791, i32 2}
!45 = !{ptr @mlx5_ib_rereg_user_mr.__UNIQUE_ID_ddebug571, !44, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1957, i32 4}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlx5_ib_dereg_mr._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mlx5_ib_dereg_mr._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1960, i32 4}
!53 = !{ptr @mlx5_ib_dereg_mr._entry.27, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mlx5_ib_dereg_mr._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 2355, i32 3}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mlx5_ib_check_mr_status._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlx5_ib_check_mr_status._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 2364, i32 4}
!62 = !{ptr @mlx5_ib_check_mr_status._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mlx5_ib_check_mr_status._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @xlt_emergency_page, !65, !"xlt_emergency_page", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 52, i32 7}
!66 = !{ptr @create_cache_mr.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 271, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 514, i32 5}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__cache_work_func._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @__cache_work_func._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 237, i32 4}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @add_keys._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @add_keys._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 152, i32 3}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @create_mkey_callback._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @create_mkey_callback._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @create_mkey_callback.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 165, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 686, i32 35}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 690, i32 22}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 692, i32 23}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 693, i32 23}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 694, i32 22}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 695, i32 22}
!98 = !{ptr @size_fops, !99, !"size_fops", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 386, i32 37}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 379, i32 37}
!102 = !{ptr @limit_fops, !103, !"limit_fops", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 431, i32 37}
!104 = !{ptr @mlx5_ib_create_mkey.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 110, i32 3}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1069, i32 3}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mlx5_ib_create_xlt_wr._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @mlx5_ib_create_xlt_wr._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 53, i32 8}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @xlt_emergency_page_mutex, !114, !"xlt_emergency_page_mutex", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 884, i32 3}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mlx5_ib_post_send_wait._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mlx5_ib_post_send_wait._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 888, i32 4}
!128 = !{ptr @mlx5_ib_post_send_wait._entry.59, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mlx5_ib_post_send_wait._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @init_completion.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../include/linux/completion.h", i32 87, i32 2}
!132 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @xa_init_flags.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1470, i32 2}
!138 = !{ptr @create_real_mr.__UNIQUE_ID_ddebug566, !137, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1333, i32 3}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @reg_create._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @reg_create._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1341, i32 2}
!146 = !{ptr @reg_create.__UNIQUE_ID_ddebug561, !145, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!147 = !{ptr @mlx5_ib_dmabuf_attach_ops, !148, !"mlx5_ib_dmabuf_attach_ops", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 1583, i32 34}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/hw/mlx5/mlx5_ib.h", i32 1627, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 2223, i32 3}
!153 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @__mlx5_ib_alloc_mr._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @__mlx5_ib_alloc_mr._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 2176, i32 3}
!158 = !{ptr @mlx5_alloc_integrity_descs._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mlx5_alloc_integrity_descs._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @mlx5_alloc_integrity_descs._entry.72, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/hw/mlx5/mr.c", i32 2179, i32 3}
!162 = !{ptr @mlx5_alloc_integrity_descs._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!165 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!170 = !{!"sp"}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 2148635133}
!182 = !{i64 2148550418, i64 2148550450, i64 2148550479, i64 2148550513, i64 2148550544, i64 2148550567}
!183 = !{i64 2148635362}
!184 = !{i32 0, i32 33}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{!"auto-init"}
!187 = !{i64 2148374296, i64 2148374301, i64 2148374314, i64 2148374358, i64 2148374392, i64 2148374413}
!188 = !{i64 2148549698, i64 2148549724, i64 2148549753, i64 2148549787, i64 2148549818, i64 2148549841}
!189 = !{i64 2148552163, i64 2148552189, i64 2148552218, i64 2148552252, i64 2148552283, i64 2148552306}
!190 = !{i64 2148639253}
!191 = !{i64 2148553693, i64 2148553725, i64 2148553754, i64 2148553788, i64 2148553819, i64 2148553842}
!192 = !{i64 2149273977}
!193 = !{i64 2152279211, i64 2152279236}
!194 = !{i64 4774766}
!195 = !{i64 4774963}
!196 = !{i64 2152260196}
!197 = !{i64 2152279892, i64 2152279917}
!198 = !{i8 0, i8 2}
