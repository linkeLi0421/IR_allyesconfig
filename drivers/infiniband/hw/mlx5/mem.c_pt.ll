; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/mem.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.166 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.161 }
%struct.anon.161 = type { i64, i64 }
%union.anon.166 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
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
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.195, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%union.anon.195 = type { %struct.mlx5_ib_raw_packet_qp }
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
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.197 }
%union.anon.197 = type { i32 }
%struct.wr_list = type { i16, i16 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx5/mem.c\00", [63 x i8] zeroinitializer }, align 32
@__const.mlx5_ib_test_wc.cq_attr = private unnamed_addr constant %struct.ib_cq_init_attr { i32 256, i32 0, i32 0 }, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_ib\00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_test_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): Error %d while trying to test write-combining support\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_ib_test_wc\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_test_wc._entry_ptr = internal global ptr @mlx5_ib_test_wc._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 95, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 234, i32 7 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx5/mem.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 291, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 3936, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 3498, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mlx5_ib_test_wc._entry, ptr @mlx5_ib_test_wc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_test_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_populate_pas(ptr nocapture noundef readonly %umem, i32 noundef %page_size, ptr nocapture noundef writeonly %pas, i64 noundef %access_flags) local_unnamed_addr #0 align 64 {
entry:
  %biter = alloca %struct.ib_block_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter) #6
  %0 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_block_iter, ptr %biter, i32 0, i32 4
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %2 = call ptr @memset(ptr %biter, i32 255, i32 20)
  %3 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sgt_append.i, align 8
  %nents.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter, ptr noundef %4, i32 noundef %6, i32 noundef %page_size) #6
  %call3 = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #6
  br i1 %call3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pas.addr.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %pas, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sh_prom.i = zext i32 %10 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %11 = trunc i64 %notmask.i to i32
  %conv1.i = and i32 %8, %11
  %conv = zext i32 %conv1.i to i64
  %or = or i64 %conv, %access_flags
  %12 = ptrtoint ptr %pas.addr.04 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or, ptr %pas.addr.04, align 8
  %incdec.ptr = getelementptr i64, ptr %pas.addr.04, i32 1
  %call = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter) #6
  br i1 %call, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx5_umem_find_best_quantized_pgoff(ptr noundef %umem, i32 noundef %pgsz_bitmap, i32 noundef %page_offset_bits, i64 noundef %pgoff_bitmask, i32 noundef %scale, ptr nocapture noundef writeonly %page_offset_quantized) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %notmask = shl nsw i32 -1, %page_offset_bits
  %sub = xor i32 %notmask, -1
  %conv = zext i32 %sub to i64
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %0 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt_append.i, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address.i, align 4
  %address.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 4
  %4 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address.i, align 4
  %and.i = and i32 %5, 4095
  %add.i = add i32 %and.i, %3
  %6 = trunc i64 %pgoff_bitmask to i32
  %conv2.i = and i32 %add.i, %6
  %call.i = tail call i32 @ib_umem_find_best_pgsz(ptr noundef %umem, i32 noundef %pgsz_bitmap, i32 noundef %conv2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt_append.i, align 8
  %dma_address.i60 = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address.i60, align 4
  %11 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address.i, align 4
  %and.i.i = and i32 %12, 4095
  %add.i61 = add i32 %and.i.i, %10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %page_size.0 = phi i32 [ %call.i, %if.end ], [ %div558, %while.cond.while.cond_crit_edge ]
  %sub.i.pn = add i32 %page_size.0, -1
  %page_offset.0.in = and i32 %sub.i.pn, %add.i61
  %page_offset.0 = zext i32 %page_offset.0.in to i64
  %div = udiv i32 %page_size.0, %scale
  %conv3 = zext i32 %div to i64
  %mul = mul nuw i64 %conv3, %conv
  %neg = xor i64 %mul, -1
  %and = and i64 %page_offset.0, %neg
  %tobool4.not = icmp eq i64 %and, 0
  %div558 = lshr i32 %page_size.0, 1
  br i1 %tobool4.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and8 = and i32 %page_size.0, %pgsz_bitmap
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %while.end.cleanup_crit_edge, label %if.end11

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %while.end
  %div14 = udiv i32 %page_offset.0.in, %div
  %13 = ptrtoint ptr %page_offset_quantized to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div14, ptr %page_offset_quantized, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div14, i32 %sub)
  %cmp = icmp ugt i32 %div14, %sub
  br i1 %cmp, label %do.end, label %if.end11.cleanup_crit_edge, !prof !28

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %do.end ], [ %page_size.0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_test_wc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  %qp_init_attr = alloca %struct.ib_qp_init_attr, align 4
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #6
  %0 = call ptr @memcpy(ptr %cq_attr, ptr @__const.mlx5_ib_test_wc.cq_attr, i32 12)
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_init_attr) #6
  %7 = call ptr @memset(ptr %qp_init_attr, i32 0, i32 72)
  %8 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 134217728, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #6
  %16 = call ptr @memset(ptr %qp_attr, i32 0, i32 216)
  %17 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, [4 x i8], { { ptr, [4 x i8], %union.ib_gid, i32, i8, i8, i8, [1 x i8] }, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, { { i32, i8, i8, [2 x i8] } } }, { { ptr, [4 x i8], %union.ib_gid, i32, i8, i8, i8, [1 x i8] }, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, { { i32, i8, i8, [2 x i8] } } }, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i32, i8, i8, i8, [1 x i8], i32, i8, [3 x i8], i32, ptr, [4 x i8] }, ptr %qp_attr, i32 0, i32 21
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %17, align 4
  %add.ptr7 = getelementptr i32, ptr %4, i32 19
  %19 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool.not = icmp sgt i32 %20, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %roce_en = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %roce_en to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %roce_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool11.not = icmp eq i32 %22, 0
  %23 = and i32 %6, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %23)
  %cmp = icmp eq i32 %23, 256
  %or.cond = select i1 %tobool11.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %if.then14, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %wc_support = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %wc_support to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %wc_support, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %wc_support, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %wc_bfreg = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 24
  %call18 = tail call i32 @mlx5_alloc_bfreg(ptr noundef %2, ptr noundef %wc_bfreg, i1 noundef zeroext true, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end21:                                         ; preds = %if.end16
  %wc = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 24, i32 2
  %27 = ptrtoint ptr %wc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wc, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not = icmp eq i8 %28, 0
  br i1 %tobool23.not, label %print_err.thread128, label %if.end25

print_err.thread128:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev, align 8
  tail call void @mlx5_free_bfreg(ptr noundef %30, ptr noundef %wc_bfreg) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call ptr @__ib_alloc_pd(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.1) #6
  %cmp.i120 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call26 to i32
  br label %print_err

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @__ib_create_cq(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.1) #6
  %cmp.i121 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call31 to i32
  br label %out2

if.end35:                                         ; preds = %if.end30
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 3
  %33 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call31, ptr %recv_cq, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_init_attr, i32 0, i32 2
  %34 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call31, ptr %send_cq, align 4
  %call.i = call ptr @ib_create_qp_kernel(ptr noundef %call26, ptr noundef nonnull %qp_init_attr, ptr noundef nonnull @.str.1) #6
  %cmp.i122 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call.i to i32
  br label %out3

if.end40:                                         ; preds = %if.end35
  %36 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %qp_attr, align 8
  %call41 = call i32 @ib_modify_qp(ptr noundef %call.i, ptr noundef nonnull %qp_attr, i32 noundef 113) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out4_crit_edge

if.end40.out4_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %out4

if.end44:                                         ; preds = %if.end40
  %37 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %qp_attr, align 8
  %call46 = call i32 @ib_modify_qp(ptr noundef %call.i, ptr noundef nonnull %qp_attr, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out4_crit_edge

if.end44.out4_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out4

if.end49:                                         ; preds = %if.end44
  %38 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %qp_attr, align 8
  %call51 = call i32 @ib_modify_qp(ptr noundef %call.i, ptr noundef nonnull %qp_attr, i32 noundef 65537) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.out4_crit_edge

if.end49.out4_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out4

if.end54:                                         ; preds = %if.end49
  %call55 = call fastcc i32 @test_wc_do_send(ptr noundef %dev, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.out4_crit_edge, label %if.end58

if.end54.out4_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %out4

if.end58:                                         ; preds = %if.end54
  %call59 = call fastcc i32 @test_wc_poll_cq_result(ptr noundef %call31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp sgt i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end58.out4_crit_edge

if.end58.out4_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out4

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %wc_support62 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %39 = ptrtoint ptr %wc_support62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load63 = load i8, ptr %wc_support62, align 8
  %bf.set65 = or i8 %bf.load63, 16
  store i8 %bf.set65, ptr %wc_support62, align 8
  br label %out4

out4:                                             ; preds = %if.then61, %if.end58.out4_crit_edge, %if.end54.out4_crit_edge, %if.end49.out4_crit_edge, %if.end44.out4_crit_edge, %if.end40.out4_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end40.out4_crit_edge ], [ %call46, %if.end44.out4_crit_edge ], [ %call51, %if.end49.out4_crit_edge ], [ %call55, %if.end54.out4_crit_edge ], [ 0, %if.then61 ], [ %call59, %if.end58.out4_crit_edge ]
  %call.i123 = call i32 @ib_destroy_qp_user(ptr noundef %call.i, ptr noundef null) #6
  br label %out3

out3:                                             ; preds = %out4, %if.then38
  %ret.1 = phi i32 [ %35, %if.then38 ], [ %ret.0, %out4 ]
  call fastcc void @ib_destroy_cq(ptr noundef %call31)
  br label %out2

out2:                                             ; preds = %out3, %if.then33
  %ret.2 = phi i32 [ %32, %if.then33 ], [ %ret.1, %out3 ]
  %call.i124 = call i32 @ib_dealloc_pd_user(ptr noundef %call26, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i, label %out2.print_err_crit_edge, label %land.rhs.i

out2.print_err_crit_edge:                         ; preds = %out2
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_err

land.rhs.i:                                       ; preds = %out2
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.print_err_crit_edge, label %if.then.i, !prof !30

land.rhs.i.print_err_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %print_err

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.8) #6
  br label %print_err

print_err:                                        ; preds = %if.then.i, %land.rhs.i.print_err_crit_edge, %out2.print_err_crit_edge, %if.then28
  %ret.3 = phi i32 [ %31, %if.then28 ], [ %ret.2, %out2.print_err_crit_edge ], [ %ret.2, %land.rhs.i.print_err_crit_edge ], [ %ret.2, %if.then.i ]
  %40 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev, align 8
  call void @mlx5_free_bfreg(ptr noundef %41, ptr noundef %wc_bfreg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool70.not = icmp eq i32 %ret.3, 0
  br i1 %tobool70.not, label %print_err.cleanup_crit_edge, label %print_err.do.end_crit_edge

print_err.do.end_crit_edge:                       ; preds = %print_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

print_err.cleanup_crit_edge:                      ; preds = %print_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %print_err.do.end_crit_edge, %if.end16.do.end_crit_edge
  %ret.4127 = phi i32 [ %ret.3, %print_err.do.end_crit_edge ], [ %call18, %if.end16.do.end_crit_edge ]
  %42 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %43 = call i32 @llvm.read_register.i32(metadata !18) #6
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 294, i32 noundef %48, i32 noundef %ret.4127) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %print_err.cleanup_crit_edge, %print_err.thread128, %if.then14, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.then12.cleanup_crit_edge ], [ %ret.4127, %do.end ], [ 0, %print_err.cleanup_crit_edge ], [ 0, %print_err.thread128 ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_init_attr) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_alloc_bfreg(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_wc_do_send(ptr nocapture noundef readonly %dev, ptr noundef %qp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %call = tail call fastcc i32 @post_send_nop(ptr noundef %dev, ptr noundef %qp, i64 noundef 191, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @post_send_nop(ptr noundef %dev, ptr noundef %qp, i64 noundef 2989, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %for.end ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_wc_poll_cq_result(ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  %wc = alloca %struct.ib_wc, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wc) #6
  %0 = call ptr @memset(ptr %wc, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 10
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll_cq.i, align 4
  %call.i = call i32 %5(ptr noundef %cq, i32 noundef 1, ptr noundef nonnull %wc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %lor.lhs.false

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.body
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %do.cond, label %if.end9

do.cond:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  %cmp6 = icmp sgt i32 %sub, -1
  br i1 %cmp6, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 191, i64 %10)
  %cmp10.not = icmp eq i64 %10, 191
  %spec.select1 = select i1 %cmp10.not, i32 %call.i, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select1, %if.end9 ], [ %call.i, %do.body.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -110, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wc) #6
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ib_destroy_cq(ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @ib_destroy_cq_user(ptr noundef %cq, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !30

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.7) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_free_bfreg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_find_best_pgsz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @post_send_nop(ptr nocapture noundef readonly %dev, ptr noundef %ibqp, i64 noundef %wr_id, i1 noundef zeroext %signaled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body3, !prof !28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf1 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13
  %sq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7
  %lock = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 6
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %cur_post = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 14
  %4 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cur_post, align 4
  %conv10 = zext i16 %5 to i32
  %wqe_cnt = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 7
  %6 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wqe_cnt, align 8
  %sub = add i32 %7, 65535
  %and = and i32 %sub, %conv10
  %strides_offset.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 3
  %8 = ptrtoint ptr %strides_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %strides_offset.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %and, %conv.i
  %log_frag_strides.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 6
  %10 = ptrtoint ptr %log_frag_strides.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %log_frag_strides.i, align 2
  %conv1.i = zext i8 %11 to i32
  %shr.i = lshr i32 %add.i, %conv1.i
  %12 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sq, align 4
  %arrayidx.i = getelementptr %struct.mlx5_buf_list, ptr %13, i32 %shr.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %frag_sz_m1.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %frag_sz_m1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_sz_m1.i, align 4
  %conv2.i = zext i16 %17 to i32
  %and.i = and i32 %add.i, %conv2.i
  %log_stride.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 5
  %18 = ptrtoint ptr %log_stride.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %log_stride.i, align 1
  %conv3.i = zext i8 %19 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shl.i
  %20 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  %conv16 = select i1 %signaled, i8 8, i8 0
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i, i32 0, i32 4
  %21 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %fm_ce_se, align 1
  %22 = load i16, ptr %cur_post, align 4
  %conv19 = zext i16 %22 to i32
  %shl = shl nuw nsw i32 %conv19, 8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %add.ptr.i, align 4
  %qpn = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qpn, align 4
  %shl20 = shl i32 %25, 8
  %or21 = or i32 %shl20, 1
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or21, ptr %qpn_ds, align 4
  %wrid = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wrid, align 8
  %arrayidx = getelementptr i64, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %wr_id, ptr %arrayidx, align 8
  %w_list = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %w_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %w_list, align 8
  %arrayidx24 = getelementptr %struct.wr_list, ptr %31, i32 %and
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayidx24, align 2
  %head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 12
  %33 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %head, align 4
  %add = add i32 %34, 1
  %wqe_head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 4
  %35 = ptrtoint ptr %wqe_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wqe_head, align 4
  %arrayidx27 = getelementptr i32, ptr %36, i32 %and
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %arrayidx27, align 4
  %38 = load i16, ptr %cur_post, align 4
  %add31 = add i16 %38, 1
  store i16 %add31, ptr %cur_post, align 4
  %39 = load ptr, ptr %w_list, align 8
  %next = getelementptr %struct.wr_list, ptr %39, i32 %and, i32 1
  %40 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %add31, ptr %next, align 2
  %41 = load i32, ptr %head, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %head, align 4
  %mmio_wqe.sroa.0.0.copyload = load i32, ptr %add.ptr.i, align 4
  %mmio_wqe.sroa.5.0.copyload = load i32, ptr %qpn_ds, align 4
  %mmio_wqe.sroa.6.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 8
  %42 = ptrtoint ptr %mmio_wqe.sroa.6.0.add.ptr.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %mmio_wqe.sroa.6.0.copyload = load i32, ptr %mmio_wqe.sroa.6.0.add.ptr.i.sroa_idx, align 4
  %mmio_wqe.sroa.9.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 12
  %43 = ptrtoint ptr %mmio_wqe.sroa.9.0.add.ptr.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %mmio_wqe.sroa.9.0.copyload = load i32, ptr %mmio_wqe.sroa.9.0.add.ptr.i.sroa_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cur_post, align 4
  %conv49 = zext i16 %45 to i32
  %db = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 3
  %46 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %db, align 8
  %arrayidx51 = getelementptr i32, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv49, ptr %arrayidx51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %bfreg = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13, i32 2
  %offset = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13, i32 1
  %49 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bfreg, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %mmio_wqe.sroa.0.0.copyload) #6, !srcloc !33
  %add.ptr.i101 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %mmio_wqe.sroa.5.0.copyload) #6, !srcloc !33
  %55 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bfreg, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %add.ptr.1 = getelementptr i8, ptr %58, i32 %60
  %add.ptr59.1 = getelementptr i8, ptr %add.ptr.1, i32 8
  %mmio_wqe.sroa.6.sroa.0.0.insert.insert = or i32 %mmio_wqe.sroa.6.0.copyload, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.1, i32 %mmio_wqe.sroa.6.sroa.0.0.insert.insert) #6, !srcloc !33
  %add.ptr.i101.1 = getelementptr i8, ptr %add.ptr59.1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.1, i32 %mmio_wqe.sroa.9.0.copyload) #6, !srcloc !33
  %61 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bfreg, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  %add.ptr.2 = getelementptr i8, ptr %64, i32 %66
  %add.ptr59.2 = getelementptr i8, ptr %add.ptr.2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.2, i32 0) #6, !srcloc !33
  %add.ptr.i101.2 = getelementptr i8, ptr %add.ptr59.2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.2, i32 0) #6, !srcloc !33
  %67 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bfreg, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %offset, align 4
  %add.ptr.3 = getelementptr i8, ptr %70, i32 %72
  %add.ptr59.3 = getelementptr i8, ptr %add.ptr.3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.3, i32 0) #6, !srcloc !33
  %add.ptr.i101.3 = getelementptr i8, ptr %add.ptr59.3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.3, i32 0) #6, !srcloc !33
  %73 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bfreg, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  %add.ptr.4 = getelementptr i8, ptr %76, i32 %78
  %add.ptr59.4 = getelementptr i8, ptr %add.ptr.4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.4, i32 0) #6, !srcloc !33
  %add.ptr.i101.4 = getelementptr i8, ptr %add.ptr59.4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.4, i32 0) #6, !srcloc !33
  %79 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bfreg, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset, align 4
  %add.ptr.5 = getelementptr i8, ptr %82, i32 %84
  %add.ptr59.5 = getelementptr i8, ptr %add.ptr.5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.5, i32 0) #6, !srcloc !33
  %add.ptr.i101.5 = getelementptr i8, ptr %add.ptr59.5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.5, i32 0) #6, !srcloc !33
  %85 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bfreg, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset, align 4
  %add.ptr.6 = getelementptr i8, ptr %88, i32 %90
  %add.ptr59.6 = getelementptr i8, ptr %add.ptr.6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.6, i32 0) #6, !srcloc !33
  %add.ptr.i101.6 = getelementptr i8, ptr %add.ptr59.6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.6, i32 0) #6, !srcloc !33
  %91 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bfreg, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %95 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset, align 4
  %add.ptr.7 = getelementptr i8, ptr %94, i32 %96
  %add.ptr59.7 = getelementptr i8, ptr %add.ptr.7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.7, i32 0) #6, !srcloc !33
  %add.ptr.i101.7 = getelementptr i8, ptr %add.ptr59.7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.7, i32 0) #6, !srcloc !33
  %97 = ptrtoint ptr %bf1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bf1, align 4
  %99 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset, align 4
  %xor = xor i32 %100, %98
  store i32 %xor, ptr %offset, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body3 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/mem.c", i32 95, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/mem.c", i32 234, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/mlx5/mem.c", i32 291, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_ib_test_wc._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_ib_test_wc._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2158893974}
!32 = !{i64 2158894181}
!33 = !{i64 6001985}
