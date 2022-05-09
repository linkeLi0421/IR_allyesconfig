; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/srq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_srq_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i16 }
%struct.mlx5_ib_create_srq_resp = type { i32, i32 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.169, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.169 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
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
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.184 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.184 = type { ptr, %union.anon.185 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { ptr }
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
%struct.mlx5_ib_srq = type { %struct.ib_srq, %struct.mlx5_core_srq, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_frag_buf_ctrl, ptr, %struct.spinlock, i32, i32, i16, ptr, %struct.mutex, i32 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.181, %struct.rdma_restrack_entry }
%struct.anon.181 = type { ptr, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { ptr, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_core_srq = type { %struct.mlx5_core_rsc_common, i32, i32, i32, i32, i32, ptr, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.195, i32, i32 }
%union.anon.195 = type { ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_ib_xrcd = type { %struct.ib_xrcd, i32 }
%struct.ib_xrcd = type { ptr, %struct.atomic_t, ptr, %struct.rw_semaphore, %struct.xarray }
%struct.mlx5_ib_cq = type { %struct.ib_cq, %struct.mlx5_core_cq, %struct.mlx5_ib_cq_buf, %struct.mlx5_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.work_struct, i16 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.132, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.132 = type { %struct.work_struct }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.203, i32, %struct.list_head, ptr, i16 }
%struct.anon.203 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_ib_cq_buf = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, i32, i32 }
%struct.mlx5_ib_pd = type { %struct.ib_pd, i32, i16 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.uverbs_attr = type { %union.anon.164 }
%union.anon.164 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.165, i16, i16, i8 }
%union.anon.165 = type { i64 }
%struct.mlx5_ib_create_srq = type { i64, i64, i32, i32, i32, i32 }
%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_srq_next_seg = type { [2 x i8], i16, i8, [11 x i8] }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }

@mlx5_ib_create_srq.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_ib_create_srq\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/srq.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): max_wr %d, cap %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&srq->mutex\00", [20 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->lock\00", [21 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 248, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): create srq %s failed, err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq._entry_ptr = internal global ptr @mlx5_ib_create_srq._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): TM SRQ max_num_tags exceeding limit\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): create SRQ failed, err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): create SRQ with srqn 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_ib_create_srq.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): copy to user failed\0A\00", [59 x i8] zeroinitializer }, align 32
@create_srq_user.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"create_srq_user\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): failed copy udata\0A\00", [61 x i8] zeroinitializer }, align 32
@create_srq_user.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): failed umem get, size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@create_srq_user.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): map doorbell failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@create_srq_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 115, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): alloc dbell rec failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"create_srq_kernel\00", [46 x i8] zeroinitializer }, align 32
@create_srq_kernel._entry_ptr = internal global ptr @create_srq_kernel._entry, section ".printk_index", align 4
@create_srq_kernel.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): buf alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@create_srq_kernel.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): srq->buf.page_shift = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_ib_srq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mlx5_ib: Unexpected event type %d on SRQ %06x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_ib_srq_event\00", [46 x i8] zeroinitializer }, align 32
@mlx5_ib_srq_event._entry_ptr = internal global ptr @mlx5_ib_srq_event._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 20]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 211, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 217, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 218, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 247, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 267, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 284, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 288, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 300, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 59, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 81, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 89, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 230, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 156, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 115, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 121, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 139, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/srq.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 35, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @create_srq_kernel._entry, ptr @create_srq_kernel._entry_ptr, ptr @mlx5_ib_create_srq._entry, ptr @mlx5_ib_create_srq._entry_ptr, ptr @mlx5_ib_srq_event._entry, ptr @mlx5_ib_srq_event._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx5_ib_create_srq.__key, ptr @.str.4, ptr @mlx5_ib_create_srq.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_srq.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_create_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_srq_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_srq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_create_srq(ptr noundef %ib_srq, ptr nocapture noundef %init_attr, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca %struct.mlx5_srq_attr, align 8
  %resp = alloca %struct.mlx5_ib_create_srq_resp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_srq, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %in) #9
  %2 = call ptr @memset(ptr %in, i32 0, i32 96)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %8, 24
  %shl = shl nuw i32 1, %shr
  %srq_type = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 3
  %9 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %switch = icmp ult i32 %10, 3
  br i1 %switch, label %if.end, label %entry.cleanup385_crit_edge

entry.cleanup385_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup385

if.end:                                           ; preds = %entry
  %attr = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %shl)
  %cmp7.not = icmp ult i32 %12, %shl
  br i1 %cmp7.not, label %do.body18, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_srq, %if.then12)) #9
          to label %cleanup385 [label %if.then12], !srcloc !75

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %14 = tail call i32 @llvm.read_register.i32(metadata !65) #9
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
  %20 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %attr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_srq.__UNIQUE_ID_ddebug515, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef %19, i32 noundef %21, i32 noundef %shl) #9
  br label %cleanup385

do.body18:                                        ; preds = %if.end
  %mutex = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5_ib_create_srq.__key) #9
  %lock = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mlx5_ib_create_srq.__key.5, i16 noundef signext 3) #9
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp30 = icmp eq i32 %23, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true) #9, !range !76
  %sub.i.i.i = sub nuw nsw i32 32, %24
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %cmp30, i32 1, i32 %sub.i.i.op.i
  %msrq = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1
  %max = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.i, ptr %max, align 4
  %max_sge = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_sge, align 4
  %max_gs = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %max_gs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max_gs, align 4
  %mul = shl i32 %27, 4
  %add71 = add i32 %mul, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add71)
  %cmp72 = icmp eq i32 %add71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add71)
  %cmp76 = icmp ugt i32 %27, %add71
  %or.cond = select i1 %cmp72, i1 true, i1 %cmp76
  br i1 %or.cond, label %do.body18.cleanup385_crit_edge, label %if.end79

do.body18.cleanup385_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup385

if.end79:                                         ; preds = %do.body18
  %sub85 = or i32 %mul, 15
  %29 = tail call i32 @llvm.ctlz.i32(i32 %sub85, i1 true) #9, !range !76
  %sub.i.i.i516.pn = sub nuw nsw i32 32, %29
  %cond110 = shl nuw i32 1, %sub.i.i.i516.pn
  %30 = tail call i32 @llvm.umax.i32(i32 %cond110, i32 32)
  %sub122 = add i32 %30, -16
  %div501 = lshr i32 %sub122, 4
  %max_avail_gather = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %max_avail_gather to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div501, ptr %max_avail_gather, align 4
  %32 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 true) #9, !range !76
  %cond137 = xor i32 %32, 31
  %wqe_shift = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond137, ptr %wqe_shift, align 4
  %mul141 = mul i32 %30, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul141, i32 %30)
  %cmp142 = icmp ult i32 %mul141, %30
  br i1 %cmp142, label %if.end79.cleanup385_crit_edge, label %if.end145

if.end79.cleanup385_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup385

if.end145:                                        ; preds = %if.end79
  %34 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %srq_type, align 4
  %36 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %in, align 8
  %tobool147.not = icmp eq ptr %udata, null
  br i1 %tobool147.not, label %if.else, label %if.then148

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %pd = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 1
  %37 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pd, align 4
  %call149 = call fastcc i32 @create_srq_user(ptr noundef %38, ptr noundef %ib_srq, ptr noundef nonnull %in, ptr noundef nonnull %udata, i32 noundef %mul141)
  br label %if.end151

if.else:                                          ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %call150 = call fastcc i32 @create_srq_kernel(ptr noundef %1, ptr noundef %ib_srq, ptr noundef nonnull %in, i32 noundef %mul141)
  br label %if.end151

if.end151:                                        ; preds = %if.else, %if.then148
  %err.0 = phi i32 [ %call149, %if.then148 ], [ %call150, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool152.not = icmp eq i32 %err.0, 0
  br i1 %tobool152.not, label %cond.end184, label %do.end156

do.end156:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %39 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %40 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i519 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i519 to ptr
  %task159 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task159 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task159, align 8
  %pid160 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid160 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid160, align 8
  %cond162 = select i1 %tobool147.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 248, i32 noundef %45, ptr noundef nonnull %cond162, i32 noundef %err.0) #12
  br label %cleanup385

cond.end184:                                      ; preds = %if.end151
  %46 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i520 = icmp eq i32 %47, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 true) #9, !range !76
  %sub.i.op.i521 = xor i32 %48, 31
  %sub.i522 = select i1 %tobool.not.i.i520, i32 -1, i32 %sub.i.op.i521
  %log_size = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 2
  %49 = ptrtoint ptr %log_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i522, ptr %log_size, align 8
  %50 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wqe_shift, align 4
  %sub188 = add i32 %51, -4
  %wqe_shift189 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 3
  %52 = ptrtoint ptr %wqe_shift189 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub188, ptr %wqe_shift189, align 4
  %wq_sig = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 12
  %53 = ptrtoint ptr %wq_sig to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wq_sig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool190.not = icmp eq i32 %54, 0
  br i1 %tobool190.not, label %cond.end184.if.end192_crit_edge, label %if.then191

cond.end184.if.end192_crit_edge:                  ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then191:                                       ; preds = %cond.end184
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %or = or i32 %56, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %cond.end184.if.end192_crit_edge
  %57 = ptrtoint ptr %srq_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %srq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp194 = icmp eq i32 %58, 1
  br i1 %cmp194, label %land.lhs.true196, label %if.end205

land.lhs.true196:                                 ; preds = %if.end192
  %59 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool197.not = icmp eq ptr %61, null
  br i1 %tobool197.not, label %if.end205.thread532, label %if.end205.thread

if.end205.thread532:                              ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #11
  %xrcdn0533 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %xrcdn0533 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xrcdn0533, align 4
  %xrcd204534 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 7
  %64 = ptrtoint ptr %xrcd204534 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %xrcd204534, align 4
  br label %if.then271

if.end205.thread:                                 ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #11
  %xrcdn = getelementptr inbounds %struct.mlx5_ib_xrcd, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %xrcdn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %xrcdn, align 4
  %xrcd202 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 7
  %67 = ptrtoint ptr %xrcd202 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %xrcd202, align 4
  br label %if.then271

if.end205:                                        ; preds = %if.end192
  %xrcdn0 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %xrcdn0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xrcdn0, align 4
  %xrcd204 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 7
  %70 = ptrtoint ptr %xrcd204 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %xrcd204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp207 = icmp eq i32 %58, 2
  br i1 %cmp207, label %cond.end229, label %if.else275

cond.end229:                                      ; preds = %if.end205
  %71 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i523 = icmp eq i32 %73, 0
  %74 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 true) #9, !range !76
  %sub.i.op.i524.op = sub nuw nsw i32 32, %74
  %add231 = select i1 %tobool.not.i.i523, i32 0, i32 %sub.i.op.i524.op
  %tm_log_list_size = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 16
  %75 = ptrtoint ptr %tm_log_list_size to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add231, ptr %tm_log_list_size, align 8
  %76 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdev, align 8
  %caps234 = getelementptr inbounds %struct.mlx5_core_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %caps234 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %caps234, align 8
  %add.ptr239 = getelementptr i32, ptr %79, i32 47
  %80 = ptrtoint ptr %add.ptr239 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr239, align 4
  %shr240 = lshr i32 %81, 8
  %and241 = and i32 %shr240, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %add231, i32 %and241)
  %cmp242 = icmp ugt i32 %add231, %and241
  br i1 %cmp242, label %do.body245, label %if.end265

do.body245:                                       ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_srq, %if.then257)) #9
          to label %err_usr_kern_srq [label %if.then257], !srcloc !75

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  %82 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %83 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i526 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i526 to ptr
  %task260 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task260 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task260, align 8
  %pid261 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid261 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid261, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_srq.__UNIQUE_ID_ddebug518, ptr noundef %82, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 267, i32 noundef %88) #9
  br label %err_usr_kern_srq

if.end265:                                        ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #11
  %flags266 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 1
  %89 = ptrtoint ptr %flags266 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags266, align 4
  %or267 = or i32 %90, 4
  store i32 %or267, ptr %flags266, align 4
  br label %if.then271

if.then271:                                       ; preds = %if.end265, %if.end205.thread, %if.end205.thread532
  %ext272 = getelementptr inbounds %struct.ib_srq_init_attr, ptr %init_attr, i32 0, i32 4
  br label %if.end281

if.else275:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  %devr276 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 8
  br label %if.end281

if.end281:                                        ; preds = %if.else275, %if.then271
  %.sink.in = phi ptr [ %devr276, %if.else275 ], [ %ext272, %if.then271 ]
  %91 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %91)
  %.sink = load ptr, ptr %.sink.in, align 4
  %mcq278 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %.sink, i32 0, i32 1
  %92 = ptrtoint ptr %mcq278 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mcq278, align 8
  %cqn280 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 9
  %94 = ptrtoint ptr %cqn280 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %cqn280, align 4
  %pd282 = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 1
  %95 = ptrtoint ptr %pd282 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pd282, align 4
  %pdn = getelementptr inbounds %struct.mlx5_ib_pd, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pdn, align 4
  %pd284 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 10
  %99 = ptrtoint ptr %pd284 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %pd284, align 8
  %dma = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma, align 4
  %conv285 = zext i32 %101 to i64
  %db_record = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 13
  %102 = ptrtoint ptr %db_record to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv285, ptr %db_record, align 8
  %call287 = call i32 @mlx5_cmd_create_srq(ptr noundef %1, ptr noundef %msrq, ptr noundef nonnull %in) #9
  %pas = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %103 = ptrtoint ptr %pas to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pas, align 8
  call void @kvfree(ptr noundef %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %do.body311, label %do.body290

do.body290:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_srq, %if.then302)) #9
          to label %err_usr_kern_srq [label %if.then302], !srcloc !75

if.then302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  %105 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %106 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i527 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i527 to ptr
  %task305 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task305 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task305, align 8
  %pid306 = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 68
  %110 = ptrtoint ptr %pid306 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pid306, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_srq.__UNIQUE_ID_ddebug519, ptr noundef %105, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %111, i32 noundef %call287) #9
  br label %err_usr_kern_srq

do.body311:                                       ; preds = %if.end281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_srq, %if.then323)) #9
          to label %do.end331 [label %if.then323], !srcloc !75

if.then323:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #11
  %112 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %113 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i528 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i528 to ptr
  %task326 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task326 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task326, align 8
  %pid327 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 68
  %117 = ptrtoint ptr %pid327 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pid327, align 8
  %srqn = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %srqn, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_srq.__UNIQUE_ID_ddebug520, ptr noundef %112, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef %118, i32 noundef %120) #9
  br label %do.end331

do.end331:                                        ; preds = %if.then323, %do.body311
  %event = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 6
  %121 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mlx5_ib_srq_event, ptr %event, align 4
  %srqn334 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %srqn334 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %srqn334, align 4
  %srq_num = getelementptr inbounds %struct.ib_srq, ptr %ib_srq, i32 0, i32 7, i32 1, i32 0, i32 1
  %124 = ptrtoint ptr %srq_num to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %srq_num, align 4
  br i1 %tobool147.not, label %do.end331.if.end372_crit_edge, label %if.then337

do.end331.if.end372_crit_edge:                    ; preds = %do.end331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end372

if.then337:                                       ; preds = %do.end331
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #9
  %125 = getelementptr inbounds %struct.mlx5_ib_create_srq_resp, ptr %resp, i32 0, i32 1
  %126 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %resp, align 4
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %125, align 4
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %128 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %outlen, align 4
  %130 = call i32 @llvm.umin.i32(i32 %129, i32 8)
  %call348 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %resp, i32 noundef %130)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %cleanup.thread, label %do.body351

cleanup.thread:                                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #9
  br label %if.end372

do.body351:                                       ; preds = %if.then337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ib_create_srq, %if.then363)) #9
          to label %err_usr_kern_srq.thread [label %if.then363], !srcloc !75

if.then363:                                       ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #11
  %131 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %132 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i529 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i529 to ptr
  %task366 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task366 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task366, align 8
  %pid367 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 68
  %136 = ptrtoint ptr %pid367 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pid367, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ib_create_srq.__UNIQUE_ID_ddebug523, ptr noundef %131, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef %137) #9
  br label %err_usr_kern_srq.thread

if.end372:                                        ; preds = %cleanup.thread, %do.end331.if.end372_crit_edge
  %138 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max, align 4
  %sub375 = add i32 %139, -1
  %140 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub375, ptr %attr, align 4
  br label %cleanup385

err_usr_kern_srq.thread:                          ; preds = %if.then363, %do.body351
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #9
  %call379 = call i32 @mlx5_cmd_destroy_srq(ptr noundef %1, ptr noundef %msrq) #9
  br label %destroy_srq_user.exit

err_usr_kern_srq:                                 ; preds = %if.then302, %do.body290, %if.then257, %do.body245
  %err.2 = phi i32 [ %call287, %if.then302 ], [ -22, %if.then257 ], [ -22, %do.body245 ], [ %call287, %do.body290 ]
  br i1 %tobool147.not, label %if.else383, label %err_usr_kern_srq.destroy_srq_user.exit_crit_edge

err_usr_kern_srq.destroy_srq_user.exit_crit_edge: ; preds = %err_usr_kern_srq
  call void @__sanitizer_cov_trace_pc() #11
  br label %destroy_srq_user.exit

destroy_srq_user.exit:                            ; preds = %err_usr_kern_srq.destroy_srq_user.exit_crit_edge, %err_usr_kern_srq.thread
  %err.2543 = phi i32 [ -14, %err_usr_kern_srq.thread ], [ %err.2, %err_usr_kern_srq.destroy_srq_user.exit_crit_edge ]
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %141 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %context.i, align 4
  %db.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 3
  call void @mlx5_ib_db_unmap_user(ptr noundef %142, ptr noundef %db.i) #9
  %umem.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ib_srq, i32 0, i32 10
  %143 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %umem.i, align 4
  call void @ib_umem_release(ptr noundef %144) #9
  br label %cleanup385

if.else383:                                       ; preds = %err_usr_kern_srq
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @destroy_srq_kernel(ptr noundef %1, ptr noundef %ib_srq)
  br label %cleanup385

cleanup385:                                       ; preds = %if.else383, %destroy_srq_user.exit, %if.end372, %do.end156, %if.end79.cleanup385_crit_edge, %do.body18.cleanup385_crit_edge, %if.then12, %do.body, %entry.cleanup385_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end156 ], [ 0, %if.end372 ], [ -95, %entry.cleanup385_crit_edge ], [ -22, %if.then12 ], [ -22, %do.body18.cleanup385_crit_edge ], [ -22, %if.end79.cleanup385_crit_edge ], [ %err.2, %if.else383 ], [ %err.2543, %destroy_srq_user.exit ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_srq_user(ptr nocapture noundef readonly %pd, ptr noundef %srq, ptr nocapture noundef %in, ptr noundef readonly %udata, i32 noundef %buf_size) unnamed_addr #0 align 64 {
entry:
  %ucmd = alloca %struct.mlx5_ib_create_srq, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ucmd) #9
  %2 = call ptr @memset(ptr %ucmd, i32 0, i32 32)
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %5 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inlen, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 32)
  %8 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udata, align 4
  call void @__check_object_size(ptr noundef nonnull %ucmd, i32 noundef %7, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %cond.end.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

cond.end.if.end.i.i.i_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %7, i32 -1226833920) #13, !srcloc !77
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !78

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd, i32 noundef %7) #9
  %11 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !79
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd, ptr noundef %9, i32 noundef %7) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %cond.end.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %7, %cond.end.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %7, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end16, label %if.then11.i.i.i, !prof !78

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %7, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_srq_user.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_srq_user, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !75

if.then14:                                        ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %16 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_srq_user.__UNIQUE_ID_ddebug510, ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 59, i32 noundef %21) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end.i.i.i
  %reserved0 = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 3
  %22 = ptrtoint ptr %reserved0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reserved0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %reserved1 = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 5
  %24 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reserved1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not = icmp eq i32 %25, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp22 = icmp ugt i32 %27, 32
  br i1 %cmp22, label %land.lhs.true, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end20
  %sub = add i32 %27, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub)
  %cmp.i.i = icmp ugt i32 %sub, 65535
  br i1 %cmp.i.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true
  %28 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udata, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 32
  %call.i.i = call ptr @memdup_user(ptr noundef %add.ptr.i, i32 noundef %sub) #9
  %cmp.i.i.i160 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i160, label %if.end.i.i.cleanup_crit_edge, label %ib_is_udata_cleared.exit

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ib_is_udata_cleared.exit:                         ; preds = %if.end.i.i
  %call4.i.i = call ptr @memchr_inv(ptr noundef %call.i.i, i32 noundef 0, i32 noundef %sub) #9
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  call void @kfree(ptr noundef %call.i.i) #9
  br i1 %tobool.not.i.i, label %ib_is_udata_cleared.exit.if.end26_crit_edge, label %ib_is_udata_cleared.exit.cleanup_crit_edge

ib_is_udata_cleared.exit.cleanup_crit_edge:       ; preds = %ib_is_udata_cleared.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ib_is_udata_cleared.exit.if.end26_crit_edge:      ; preds = %ib_is_udata_cleared.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %ib_is_udata_cleared.exit.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %30 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp27.not = icmp eq i32 %31, 0
  br i1 %cmp27.not, label %if.end26.if.end34_crit_edge, label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  %32 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inlen, align 4
  %cqe_version1.i = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %cond, i32 0, i32 4
  %34 = ptrtoint ptr %cqe_version1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cqe_version1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %33)
  %cmp.i = icmp ugt i32 %33, 27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true2.i, label %if.then28.if.end.i_crit_edge

if.then28.if.end.i_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %if.then28
  %uidx.i = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 4
  %36 = ptrtoint ptr %uidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %uidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %37)
  %cmp3.i = icmp eq i32 %37, 16777215
  br i1 %cmp3.i, label %land.lhs.true2.i.if.end34_crit_edge, label %land.lhs.true2.i.if.end.i_crit_edge

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true2.i.if.end34_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %if.then28.if.end.i_crit_edge
  %cmp7.not.i = xor i1 %cmp.i, %tobool.not.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end10.i.if.end34_crit_edge, label %if.then.i.i161

if.end10.i.if.end34_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i.i161:                                   ; preds = %if.end10.i
  %uidx11.i = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 4
  %38 = ptrtoint ptr %uidx11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %uidx11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %39)
  %40 = icmp ult i32 %39, 16777215
  br i1 %40, label %if.then.i.i161.if.end34_crit_edge, label %if.then.i.i161.cleanup_crit_edge

if.then.i.i161.cleanup_crit_edge:                 ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i161.if.end34_crit_edge:                ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %if.then.i.i161.if.end34_crit_edge, %if.end10.i.if.end34_crit_edge, %land.lhs.true2.i.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %uidx.1 = phi i32 [ 16777215, %if.end26.if.end34_crit_edge ], [ 16777215, %land.lhs.true2.i.if.end34_crit_edge ], [ %39, %if.then.i.i161.if.end34_crit_edge ], [ 16777215, %if.end10.i.if.end34_crit_edge ]
  %flags = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 2
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and = and i32 %42, 1
  %wq_sig = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 12
  %43 = ptrtoint ptr %wq_sig to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and, ptr %wq_sig, align 4
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %46 = ptrtoint ptr %ucmd to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ucmd, align 8
  %conv = trunc i64 %47 to i32
  %call41 = call ptr @ib_umem_get(ptr noundef %45, i32 noundef %conv, i32 noundef %buf_size, i32 noundef 0) #9
  %umem = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 10
  %48 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call41, ptr %umem, align 4
  %cmp.i164 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.body45, label %if.end67

do.body45:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_srq_user.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_srq_user, %if.then57)) #9
          to label %do.end64 [label %if.then57], !srcloc !75

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %49 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %50 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i165 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i165 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task60, align 8
  %pid61 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid61, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_srq_user.__UNIQUE_ID_ddebug511, ptr noundef %49, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 81, i32 noundef %55, i32 noundef %buf_size) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %56 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %umem, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end34
  %umem69 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 15
  %59 = ptrtoint ptr %umem69 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call41, ptr %umem69, align 4
  %db_addr = getelementptr inbounds %struct.mlx5_ib_create_srq, ptr %ucmd, i32 0, i32 1
  %60 = ptrtoint ptr %db_addr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %db_addr, align 8
  %conv70 = trunc i64 %61 to i32
  %db = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 3
  %call71 = call i32 @mlx5_ib_db_map_user(ptr noundef %cond, i32 noundef %conv70, ptr noundef %db) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end94, label %do.body74

do.body74:                                        ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_srq_user.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_srq_user, %if.then86)) #9
          to label %err_umem [label %if.then86], !srcloc !75

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %62 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %63 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i166 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i166 to ptr
  %task89 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task89 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task89, align 8
  %pid90 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid90, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_srq_user.__UNIQUE_ID_ddebug512, ptr noundef %62, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, i32 noundef 89, i32 noundef %68) #9
  br label %err_umem

if.end94:                                         ; preds = %if.end67
  %69 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp96.not = icmp eq i32 %70, 1
  br i1 %cmp96.not, label %if.end94.cond.end102_crit_edge, label %cond.true98

if.end94.cond.end102_crit_edge:                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end102

cond.true98:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %uid = getelementptr inbounds %struct.mlx5_ib_pd, ptr %pd, i32 0, i32 2
  %71 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %uid, align 4
  br label %cond.end102

cond.end102:                                      ; preds = %cond.true98, %if.end94.cond.end102_crit_edge
  %cond103 = phi i16 [ %72, %cond.true98 ], [ 0, %if.end94.cond.end102_crit_edge ]
  %uid105 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 20
  %73 = ptrtoint ptr %uid105 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %cond103, ptr %uid105, align 8
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %caps, align 8
  %add.ptr106 = getelementptr i32, ptr %77, i32 15
  %78 = ptrtoint ptr %add.ptr106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr106, align 4
  %and107 = and i32 %79, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and107)
  %cmp108 = icmp ne i32 %and107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp112.not = icmp eq i32 %70, 0
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp112.not
  br i1 %or.cond, label %cond.end102.cleanup_crit_edge, label %if.then114

cond.end102.cleanup_crit_edge:                    ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then114:                                       ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #11
  %user_index = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 12
  %80 = ptrtoint ptr %user_index to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %uidx.1, ptr %user_index, align 8
  br label %cleanup

err_umem:                                         ; preds = %if.then86, %do.body74
  %81 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %umem, align 4
  call void @ib_umem_release(ptr noundef %82) #9
  br label %cleanup

cleanup:                                          ; preds = %err_umem, %if.then114, %cond.end102.cleanup_crit_edge, %do.end64, %if.then.i.i161.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %ib_is_udata_cleared.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then14, %if.then11.i.i.i
  %retval.0 = phi i32 [ %58, %do.end64 ], [ %call71, %err_umem ], [ -14, %if.then14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %ib_is_udata_cleared.exit.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %cond.end102.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then.i.i161.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ucmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_srq_kernel(ptr noundef %dev, ptr noundef %srq, ptr nocapture noundef %in, i32 noundef %buf_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %db = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 3
  %call = tail call i32 @mlx5_db_alloc(ptr noundef %1, ptr noundef %db) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %3 = tail call i32 @llvm.read_register.i32(metadata !65) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 115, i32 noundef %8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 8
  %buf = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2
  %numa_node = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 17, i32 17
  %11 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numa_node, align 8
  %call4 = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %10, i32 noundef %buf_size, ptr noundef %buf, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end20, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_srq_kernel.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_srq_kernel, %if.then12)) #9
          to label %err_db [label %if.then12], !srcloc !75

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %14 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i152 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i152 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task15, align 8
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid16, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_srq_kernel.__UNIQUE_ID_ddebug513, ptr noundef %13, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 121, i32 noundef %19) #9
  br label %err_db

if.end20:                                         ; preds = %if.end
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %wqe_shift = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wqe_shift, align 4
  %conv = trunc i32 %23 to i8
  %max = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 true) #9, !range !76
  %sub.i.op.i = xor i32 %26, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %conv36 = trunc i32 %sub.i to i8
  %fbc = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4
  %27 = ptrtoint ptr %fbc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %fbc, align 4
  %log_stride2.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 5
  %28 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %log_stride2.i.i, align 1
  %log_sz3.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %log_sz3.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36, ptr %log_sz3.i.i, align 4
  %conv.i.i = and i32 %sub.i, 255
  %notmask.i.i = shl nsw i32 -1, %conv.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i.i, ptr %sz_m1.i.i, align 4
  %sub7.i.i = sub i8 12, %conv
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %sub7.i.i, ptr %log_frag_strides.i.i, align 2
  %conv10.i.i = zext i8 %sub7.i.i to i32
  %notmask1.i.i = shl nsw i32 -1, %conv10.i.i
  %32 = trunc i32 %notmask1.i.i to i16
  %conv13.i.i = xor i16 %32, -1
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv13.i.i, ptr %frag_sz_m1.i.i, align 4
  %strides_offset14.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %strides_offset14.i.i, align 2
  %head = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 7
  %35 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %head, align 4
  %sub39 = add i32 %25, -1
  %tail = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 8
  %36 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub39, ptr %tail, align 4
  %wqe_ctr = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 9
  %37 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %wqe_ctr, align 4
  %38 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp42167 = icmp sgt i32 %39, 0
  br i1 %cmp42167, label %if.end20.for.body_crit_edge, label %if.end20.do.body49_crit_edge

if.end20.do.body49_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %40 = phi i32 [ %55, %for.body.for.body_crit_edge ], [ %39, %if.end20.for.body_crit_edge ]
  %i.0168 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %41 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %strides_offset14.i.i, align 2
  %conv.i.i153 = zext i16 %42 to i32
  %add.i.i = add nuw i32 %i.0168, %conv.i.i153
  %43 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %44 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %45 = ptrtoint ptr %fbc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fbc, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %46, i32 %shr.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i, align 4
  %49 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %50 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %51 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %log_stride2.i.i, align 1
  %conv3.i.i = zext i8 %52 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %shl.i.i
  %add = add nuw nsw i32 %i.0168, 1
  %sub47 = add i32 %40, 65535
  %and = and i32 %sub47, %add
  %conv48 = trunc i32 %and to i16
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv48, ptr %next_wqe_index, align 2
  %54 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max, align 4
  %cmp42 = icmp slt i32 %add, %55
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.do.body49_crit_edge

for.body.do.body49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body49:                                        ; preds = %for.body.do.body49_crit_edge, %if.end20.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_srq_kernel.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_srq_kernel, %if.then61)) #9
          to label %do.end70 [label %if.then61], !srcloc !75

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %56 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %57 = tail call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i156 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i156 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task64, align 8
  %pid65 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid65, align 8
  %page_shift = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %page_shift to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %page_shift, align 4
  %conv67 = zext i8 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @create_srq_kernel.__UNIQUE_ID_ddebug514, ptr noundef %56, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 139, i32 noundef %62, i32 noundef %conv67) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then61, %do.body49
  %npages = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %npages, align 4
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %66, i32 8) #9
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !82

kvcalloc.exit.thread:                             ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  %pas161 = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %69 = ptrtoint ptr %pas161 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pas161, align 8
  br label %err_buf

kvcalloc.exit:                                    ; preds = %do.end70
  %70 = extractvalue { i32, i1 } %67, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %70, i32 noundef 3520, i32 noundef -1) #14
  %pas = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 14
  %71 = ptrtoint ptr %pas to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i.i.i, ptr %pas, align 8
  %tobool74.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool74.not, label %kvcalloc.exit.err_buf_crit_edge, label %if.end76

kvcalloc.exit.err_buf_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_buf

if.end76:                                         ; preds = %kvcalloc.exit
  tail call void @mlx5_fill_page_frag_array(ptr noundef %buf, ptr noundef nonnull %call.i.i.i) #9
  %72 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max, align 4
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %73, i32 8) #9
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !82

kvmalloc_array.exit.thread:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %wrid164 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 5
  %76 = ptrtoint ptr %wrid164 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %wrid164, align 4
  br label %if.then84

kvmalloc_array.exit:                              ; preds = %if.end76
  %77 = extractvalue { i32, i1 } %74, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %77, i32 noundef 3264, i32 noundef -1) #14
  %wrid = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 5
  %78 = ptrtoint ptr %wrid to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i, ptr %wrid, align 4
  %tobool83.not = icmp eq ptr %call.i.i, null
  br i1 %tobool83.not, label %kvmalloc_array.exit.if.then84_crit_edge, label %if.end85

kvmalloc_array.exit.if.then84_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then84

if.then84:                                        ; preds = %kvmalloc_array.exit.if.then84_crit_edge, %kvmalloc_array.exit.thread
  %79 = ptrtoint ptr %pas to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pas, align 8
  tail call void @kvfree(ptr noundef %80) #9
  br label %err_buf

if.end85:                                         ; preds = %kvmalloc_array.exit
  %wq_sig = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 12
  %81 = ptrtoint ptr %wq_sig to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %wq_sig, align 4
  %page_shift87 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %page_shift87 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %page_shift87, align 4
  %conv88 = zext i8 %83 to i32
  %sub89 = add nsw i32 %conv88, -12
  %log_page_size = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 4
  %84 = ptrtoint ptr %log_page_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub89, ptr %log_page_size, align 8
  %85 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %88, i32 15
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr, align 4
  %and91 = and i32 %90, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 1
  br i1 %cmp92, label %land.lhs.true, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end85
  %91 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp94.not = icmp eq i32 %92, 0
  br i1 %cmp94.not, label %land.lhs.true.cleanup_crit_edge, label %if.then96

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then96:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %user_index = getelementptr inbounds %struct.mlx5_srq_attr, ptr %in, i32 0, i32 12
  %93 = ptrtoint ptr %user_index to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 16777215, ptr %user_index, align 8
  br label %cleanup

err_buf:                                          ; preds = %if.then84, %kvcalloc.exit.err_buf_crit_edge, %kvcalloc.exit.thread
  %94 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_frag_buf_free(ptr noundef %95, ptr noundef %buf) #9
  br label %err_db

err_db:                                           ; preds = %err_buf, %if.then12, %do.body7
  %96 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_db_free(ptr noundef %97, ptr noundef %db) #9
  br label %cleanup

cleanup:                                          ; preds = %err_db, %if.then96, %land.lhs.true.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -12, %err_db ], [ 0, %if.then96 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_create_srq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ib_srq_event(ptr noundef %srq, i32 noundef %type) #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #9
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %event_handler = getelementptr i8, ptr %srq, i32 -112
  %1 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %srq, i32 -124
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %event, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %3, align 4
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 20, label %if.then.sw.epilog_crit_edge
    i32 18, label %sw.bb4
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %srqn = getelementptr inbounds %struct.mlx5_core_srq, ptr %srq, i32 0, i32 1
  %9 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srqn, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %type, i32 noundef %10) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %if.then.sw.epilog_crit_edge
  %storemerge = phi i32 [ 14, %sw.bb4 ], [ 15, %if.then.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %0, align 4
  %srq_context = getelementptr i8, ptr %srq, i32 -108
  %12 = ptrtoint ptr %srq_context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srq_context, align 4
  call void %2(ptr noundef nonnull %event, ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #13, !srcloc !83
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #9
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_destroy_srq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_srq_kernel(ptr nocapture noundef readonly %dev, ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wrid = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 5
  %0 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wrid, align 4
  tail call void @kvfree(ptr noundef %1) #9
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %buf = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2
  tail call void @mlx5_frag_buf_free(ptr noundef %3, ptr noundef %buf) #9
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %db = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 3
  tail call void @mlx5_db_free(ptr noundef %5, ptr noundef %db) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_modify_srq(ptr noundef %ibsrq, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %and = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %if.then4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srq_limit, align 4
  %max = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then4
  %msrq = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_limit, align 4
  %conv = trunc i32 %7 to i16
  %call9 = tail call i32 @mlx5_cmd_arm_srq(ptr noundef %1, ptr noundef %msrq, i16 noundef zeroext %conv, i32 noundef 1) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end6.if.end14_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end6.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_arm_srq(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_query_srq(ptr noundef %ibsrq, ptr nocapture noundef writeonly %srq_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %msrq = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1
  %call3 = tail call i32 @mlx5_cmd_query_srq(ptr noundef %1, ptr noundef %msrq, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_box_crit_edge

if.end.out_box_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_box

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lwm = getelementptr inbounds %struct.mlx5_srq_attr, ptr %call7.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %lwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lwm, align 4
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %5 = ptrtoint ptr %srq_limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %srq_limit, align 4
  %max = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  %sub = add i32 %7, -1
  %8 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %srq_attr, align 4
  %max_gs = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_gs, align 4
  %max_sge = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 1
  %11 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_sge, align 4
  br label %out_box

out_box:                                          ; preds = %if.end6, %if.end.out_box_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_box, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out_box ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_query_srq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_destroy_srq(ptr noundef %srq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srq, align 4
  %msrq2 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 1
  %call3 = tail call i32 @mlx5_cmd_destroy_srq(ptr noundef %1, ptr noundef %msrq2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %udata, null
  br i1 %tobool4.not, label %if.else, label %destroy_srq_user.exit

destroy_srq_user.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %context.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %db.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 3
  tail call void @mlx5_ib_db_unmap_user(ptr noundef %3, ptr noundef %db.i) #9
  %umem.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 10
  %4 = ptrtoint ptr %umem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %umem.i, align 4
  tail call void @ib_umem_release(ptr noundef %5) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %wrid.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 5
  %6 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrid.i, align 4
  tail call void @kvfree(ptr noundef %7) #9
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 8
  %buf.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 2
  tail call void @mlx5_frag_buf_free(ptr noundef %9, ptr noundef %buf.i) #9
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 8
  %db.i16 = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 3
  tail call void @mlx5_db_free(ptr noundef %11, ptr noundef %db.i16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %destroy_srq_user.exit, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_free_srq_wqe(ptr noundef %srq, i32 noundef %wqe_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %tail = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 8
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail, align 4
  %fbc.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.i.i = add i32 %1, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %5 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %6 = ptrtoint ptr %fbc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbc.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %7, i32 %shr.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %11 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %srq, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %13 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %shl.i.i
  %conv = trunc i32 %wqe_index to i16
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %next_wqe_index, align 2
  store i32 %wqe_index, ptr %tail, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %mdev2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 8
  %lock = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8 = icmp eq i32 %5, 2
  br i1 %cmp8, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %tobool.not131 = icmp eq ptr %wr, null
  br i1 %tobool.not131, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %max_gs = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 3
  %head = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 7
  %tail = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 8
  %wrid = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 5
  %fbc.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 4
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 4, i32 3
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 4, i32 6
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 4, i32 2
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 4, i32 5
  %max_avail_gather = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 1, i32 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wr, ptr %bad_wr, align 4
  br label %out

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0133 = phi ptr [ %wr, %for.body.lr.ph ], [ %60, %for.inc57.for.body_crit_edge ]
  %nreq.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc57.for.body_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 3
  %7 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_sge, align 4
  %9 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp10 = icmp ugt i32 %8, %10
  br i1 %cmp10, label %for.body.for.end60.sink.split_crit_edge, label %if.end15, !prof !82

for.body.for.end60.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60.sink.split

if.end15:                                         ; preds = %for.body
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head, align 4
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp16 = icmp eq i32 %12, %14
  br i1 %cmp16, label %if.end15.for.end60.sink.split_crit_edge, label %if.end25, !prof !82

if.end15.for.end60.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60.sink.split

if.end25:                                         ; preds = %if.end15
  %15 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  %18 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wrid, align 4
  %arrayidx = getelementptr i64, ptr %19, i32 %12
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %arrayidx, align 8
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head, align 4
  %23 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.i.i = add i32 %22, %conv.i.i
  %25 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %26 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %27 = ptrtoint ptr %fbc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbc.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %28, i32 %shr.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %32 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %33 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %34 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %shl.i.i
  %next_wqe_index = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %next_wqe_index to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_wqe_index, align 2
  %conv29 = zext i16 %36 to i32
  store i32 %conv29, ptr %head, align 4
  %add.ptr = getelementptr %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i, i32 1
  %37 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp33129 = icmp sgt i32 %38, 0
  br i1 %cmp33129, label %for.body35.lr.ph, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body35.lr.ph:                                 ; preds = %if.end25
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0133, i32 0, i32 2
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.lr.ph
  %i.0130 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc, %for.body35.for.body35_crit_edge ]
  %39 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg_list, align 8
  %length = getelementptr %struct.ib_sge, ptr %40, i32 %i.0130, i32 1
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length, align 8
  %arrayidx37 = getelementptr %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 %i.0130
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx37, align 8
  %44 = load ptr, ptr %sg_list, align 8
  %lkey = getelementptr %struct.ib_sge, ptr %44, i32 %i.0130, i32 2
  %45 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lkey, align 4
  %lkey41 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %arrayidx37, i32 0, i32 1
  %47 = ptrtoint ptr %lkey41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lkey41, align 4
  %48 = load ptr, ptr %sg_list, align 8
  %arrayidx43 = getelementptr %struct.ib_sge, ptr %48, i32 %i.0130
  %49 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx43, align 8
  %addr45 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %arrayidx37, i32 0, i32 2
  %51 = ptrtoint ptr %addr45 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %addr45, align 8
  %inc = add nuw nsw i32 %i.0130, 1
  %52 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_sge, align 4
  %cmp33 = icmp slt i32 %inc, %53
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.for.end_crit_edge

for.body35.for.end_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end:                                          ; preds = %for.body35.for.end_crit_edge, %if.end25.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %inc, %for.body35.for.end_crit_edge ]
  %54 = ptrtoint ptr %max_avail_gather to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_avail_gather, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %55)
  %cmp47 = icmp ult i32 %i.0.lcssa, %55
  br i1 %cmp47, label %if.then49, label %for.end.for.inc57_crit_edge

for.end.for.inc57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx50 = getelementptr %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 %i.0.lcssa
  %56 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx50, align 8
  %lkey53 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %arrayidx50, i32 0, i32 1
  %57 = ptrtoint ptr %lkey53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 256, ptr %lkey53, align 4
  %addr55 = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %arrayidx50, i32 0, i32 2
  %58 = ptrtoint ptr %addr55 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %addr55, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %if.then49, %for.end.for.inc57_crit_edge
  %inc58 = add i32 %nreq.0132, 1
  %59 = ptrtoint ptr %wr.addr.0133 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr.addr.0133, align 8
  %tobool.not = icmp eq ptr %60, null
  br i1 %tobool.not, label %for.inc57.for.end60_crit_edge, label %for.inc57.for.body_crit_edge

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc57.for.end60_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end60

for.end60.sink.split:                             ; preds = %if.end15.for.end60.sink.split_crit_edge, %for.body.for.end60.sink.split_crit_edge
  %err.0.ph = phi i32 [ -22, %for.body.for.end60.sink.split_crit_edge ], [ -12, %if.end15.for.end60.sink.split_crit_edge ]
  %61 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %wr.addr.0133, ptr %bad_wr, align 4
  br label %for.end60

for.end60:                                        ; preds = %for.end60.sink.split, %for.inc57.for.end60_crit_edge
  %nreq.0128 = phi i32 [ %nreq.0132, %for.end60.sink.split ], [ %inc58, %for.inc57.for.end60_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %for.end60.sink.split ], [ 0, %for.inc57.for.end60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0128)
  %tobool61.not = icmp eq i32 %nreq.0128, 0
  br i1 %tobool61.not, label %for.end60.out_crit_edge, label %if.then68, !prof !82

for.end60.out_crit_edge:                          ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then68:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #11
  %wqe_ctr = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 9
  %62 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %wqe_ctr, align 4
  %64 = trunc i32 %nreq.0128 to i16
  %conv70 = add i16 %63, %64
  store i16 %conv70, ptr %wqe_ctr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %wqe_ctr, align 4
  %conv75 = zext i16 %66 to i32
  %db = getelementptr inbounds %struct.mlx5_ib_srq, ptr %ibsrq, i32 0, i32 3
  %67 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %db, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv75, ptr %68, align 4
  br label %out

out:                                              ; preds = %if.then68, %for.end60.out_crit_edge, %if.then, %for.cond.preheader.out_crit_edge
  %err.1 = phi i32 [ -5, %if.then ], [ %err.0, %if.then68 ], [ %err.0, %for.end60.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_db_map_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_db_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_frag_buf_alloc_node(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fill_page_frag_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_frag_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_db_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_db_unmap_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 211, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug515, !1, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!6 = !{ptr @mlx5_ib_create_srq.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 217, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_ib_create_srq.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 218, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 247, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx5_ib_create_srq._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5_ib_create_srq._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 267, i32 4}
!22 = !{ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug518, !21, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 284, i32 3}
!25 = !{ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug519, !24, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 288, i32 2}
!28 = !{ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug520, !27, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 300, i32 4}
!31 = !{ptr @mlx5_ib_create_srq.__UNIQUE_ID_ddebug523, !30, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 59, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @create_srq_user.__UNIQUE_ID_ddebug510, !33, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 81, i32 3}
!38 = !{ptr @create_srq_user.__UNIQUE_ID_ddebug511, !37, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 89, i32 3}
!41 = !{ptr @create_srq_user.__UNIQUE_ID_ddebug512, !40, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 115, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @create_srq_kernel._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @create_srq_kernel._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 121, i32 3}
!56 = !{ptr @create_srq_kernel.__UNIQUE_ID_ddebug513, !55, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 139, i32 2}
!59 = !{ptr @create_srq_kernel.__UNIQUE_ID_ddebug514, !58, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx5/srq.c", i32 35, i32 4}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mlx5_ib_srq_event._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mlx5_ib_srq_event._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148962822, i64 2148962827, i64 2148962840, i64 2148962884, i64 2148962918, i64 2148962939}
!76 = !{i32 0, i32 33}
!77 = !{i64 2152740422, i64 2152740447}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 5235977}
!80 = !{i64 5236174}
!81 = !{i64 2152721407}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2152741103, i64 2152741128}
!84 = !{i64 2158948462}
