; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/wr.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/wr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_ib_mr = type { %struct.ib_mr, %struct.mlx5_ib_mkey, ptr, ptr, %union.anon.199 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.129, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.129 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5_ib_mkey = type { i32, i32, i32, %struct.wait_queue_head, %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.199 = type { %struct.anon.202 }
%struct.anon.202 = type { i32, i32, ptr, %struct.xarray, %union.anon.203, %struct.ib_odp_counters, i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.203 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ib_odp_counters = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.127, ptr, i32, i32, i32, %union.anon.141 }
%union.anon.127 = type { i64 }
%union.anon.141 = type { i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_odp_caps = type { i64, %struct.anon.144 }
%struct.anon.144 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
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
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.190, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.192, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.190 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.191] }
%struct.anon.191 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.154 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.154 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.192 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.196, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%union.anon.196 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.197, i32, i32 }
%union.anon.197 = type { ptr }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
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
%struct.mlx5_ib_cq = type { %struct.ib_cq, %struct.mlx5_core_cq, %struct.mlx5_ib_cq_buf, %struct.mlx5_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head, i32, %struct.list_head, i32, %struct.work_struct, i16 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.140, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.140 = type { %struct.work_struct }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.218, i32, %struct.list_head, ptr, i16 }
%struct.anon.218 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_ib_cq_buf = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, i32, i32 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.188 }
%union.anon.188 = type { i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.mlx5_wqe_raddr_seg = type { i64, i32, i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.198, i64, i32, [28 x i8] }
%union.anon.198 = type { i16 }
%struct.mlx5_ib_pd = type { %struct.ib_pd, i32, i16 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.mlx5_core_sig_ctx = type { %struct.mlx5_core_psv, %struct.mlx5_core_psv, %struct.ib_sig_err, i8, i8, i32 }
%struct.mlx5_core_psv = type { i32, %struct.psv_layout }
%struct.psv_layout = type { i32, i16, i16, i16, i16, i32 }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%struct.mlx5_klm = type { i32, i32, i64 }
%struct.mlx5_stride_block_ctrl_seg = type { i32, i32, i32, i16, i16 }
%struct.mlx5_bsf_basic = type { i8, i8, %union.anon.204, %union.anon.205, i32, i32, i32 }
%union.anon.204 = type { i8 }
%union.anon.205 = type { i8 }
%struct.mlx5_bsf = type { %struct.mlx5_bsf_basic, %struct.mlx5_bsf_ext, %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl }
%struct.mlx5_bsf_ext = type { i32, i32, i32, i32 }
%struct.mlx5_bsf_inl = type { i16, i16, i32, i8, i8, [3 x i8], i8, i16 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.mlx5_ib_ah = type { %struct.ib_ah, %struct.mlx5_av, i8 }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_av = type { %union.anon.206, i32, i8, i8, %union.anon.208, [4 x i8], [6 x i8], i8, i8, i32, [16 x i8] }
%union.anon.206 = type { i64 }
%union.anon.208 = type { i16 }
%struct.mlx5_umr_wr = type { %struct.ib_send_wr, i64, i64, ptr, i32, i32, i64, i32, i32, i8 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.mlx5_wqe_data_seg = type { i32, i32, i64 }
%struct.wr_list = type { i16, i16 }
%struct.ib_recv_wr = type { ptr, %union.anon.142, ptr, i32 }
%union.anon.142 = type { i64 }
%struct.mlx5_rwqe_sig = type { [4 x i8], i8, [11 x i8] }
%struct.mlx5_seg_set_psv = type { i32, i16, i16, i32, i32 }

@mlx5_ib_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:%d:(pid %d): \0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_ib_post_send\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx5/wr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send._entry_ptr = internal global ptr @mlx5_ib_post_send._entry, section ".printk_index", align 4
@mlx5_ib_post_send._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send._entry_ptr.6 = internal global ptr @mlx5_ib_post_send._entry.5, section ".printk_index", align 4
@mlx5_ib_post_send._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send._entry_ptr.8 = internal global ptr @mlx5_ib_post_send._entry.7, section ".printk_index", align 4
@mlx5_ib_post_send._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Send SMP MADs is not allowed\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send._entry_ptr.11 = internal global ptr @mlx5_ib_post_send._entry.9, section ".printk_index", align 4
@mlx5_ib_post_send._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_ib_post_send._entry_ptr.13 = internal global ptr @mlx5_ib_post_send._entry.12, section ".printk_index", align 4
@mlx5_ib_opcode = internal constant { [241 x i32], [252 x i8] } { [241 x i32] [i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 37, i32 0, i32 1, i32 14, i32 0, i32 20, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37], [252 x i8] zeroinitializer }, align 32
@handle_qpt_rc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): Atomic operations are not supported yet\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_qpt_rc\00", [18 x i8] zeroinitializer }, align 32
@handle_qpt_rc._entry_ptr = internal global ptr @handle_qpt_rc._entry, section ".printk_index", align 4
@set_reg_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 876, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Fast update for MR access flags is not possible\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_reg_wr\00", [21 x i8] zeroinitializer }, align 32
@set_reg_wr._entry_ptr = internal global ptr @set_reg_wr._entry, section ".printk_index", align 4
@set_reg_wr._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 882, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Invalid IB_SEND_INLINE send flag\0A\00", [46 x i8] zeroinitializer }, align 32
@set_reg_wr._entry_ptr.20 = internal global ptr @set_reg_wr._entry.18, section ".printk_index", align 4
@handle_reg_mr_integrity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 1106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"handle_reg_mr_integrity\00", [40 x i8] zeroinitializer }, align 32
@handle_reg_mr_integrity._entry_ptr = internal global ptr @handle_reg_mr_integrity._entry, section ".printk_index", align 4
@handle_reg_mr_integrity._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 1130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@handle_reg_mr_integrity._entry_ptr.23 = internal global ptr @handle_reg_mr_integrity._entry.22, section ".printk_index", align 4
@set_sig_data_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Bad block size given: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_sig_data_segment\00", [43 x i8] zeroinitializer }, align 32
@set_sig_data_segment._entry_ptr = internal global ptr @set_sig_data_segment._entry, section ".printk_index", align 4
@handle_psv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 1051, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"handle_psv\00", [21 x i8] zeroinitializer }, align 32
@handle_psv._entry_ptr = internal global ptr @handle_psv._entry, section ".printk_index", align 4
@handle_psv._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 1057, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@handle_psv._entry_ptr.28 = internal global ptr @handle_psv._entry.27, section ".printk_index", align 4
@set_psv_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Bad signature type (%d) is given.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_psv_wr\00", [21 x i8] zeroinitializer }, align 32
@set_psv_wr._entry_ptr = internal global ptr @set_psv_wr._entry, section ".printk_index", align 4
@handle_qpt_reg_umr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:(pid %d): bad opcode %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle_qpt_reg_umr\00", [45 x i8] zeroinitializer }, align 32
@handle_qpt_reg_umr._entry_ptr = internal global ptr @handle_qpt_reg_umr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 9, i64 4096, i64 4097]
@__sancov_gen_cov_switch_values.34 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 12, i64 32, i64 33]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 16, i64 512, i64 520, i64 4096, i64 4160]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 16, i64 512, i64 520, i64 4096, i64 4160]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1314, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1322, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1331, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1375, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1401, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"mlx5_ib_opcode\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 11, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1173, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 874, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 881, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1106, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1130, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 710, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1051, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1057, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 845, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/wr.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1258, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @handle_psv._entry, ptr @handle_psv._entry.27, ptr @handle_psv._entry_ptr, ptr @handle_psv._entry_ptr.28, ptr @handle_qpt_rc._entry, ptr @handle_qpt_rc._entry_ptr, ptr @handle_qpt_reg_umr._entry, ptr @handle_qpt_reg_umr._entry_ptr, ptr @handle_reg_mr_integrity._entry, ptr @handle_reg_mr_integrity._entry.22, ptr @handle_reg_mr_integrity._entry_ptr, ptr @handle_reg_mr_integrity._entry_ptr.23, ptr @mlx5_ib_post_send._entry, ptr @mlx5_ib_post_send._entry.12, ptr @mlx5_ib_post_send._entry.5, ptr @mlx5_ib_post_send._entry.7, ptr @mlx5_ib_post_send._entry.9, ptr @mlx5_ib_post_send._entry_ptr, ptr @mlx5_ib_post_send._entry_ptr.11, ptr @mlx5_ib_post_send._entry_ptr.13, ptr @mlx5_ib_post_send._entry_ptr.6, ptr @mlx5_ib_post_send._entry_ptr.8, ptr @set_psv_wr._entry, ptr @set_psv_wr._entry_ptr, ptr @set_reg_wr._entry, ptr @set_reg_wr._entry.18, ptr @set_reg_wr._entry_ptr, ptr @set_reg_wr._entry_ptr.20, ptr @set_sig_data_segment._entry, ptr @set_sig_data_segment._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, ptr @mlx5_ib_opcode, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_post_send._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_opcode to i32), i32 964, i32 1216, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_qpt_rc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_reg_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_reg_wr._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_reg_mr_integrity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_reg_mr_integrity._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sig_data_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_psv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_psv._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_psv_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_qpt_reg_umr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr noundef %bad_wr, i1 noundef zeroext %drain) local_unnamed_addr #0 align 64 {
entry:
  %pa_pi_mr.i.i = alloca %struct.mlx5_ib_mr, align 8
  %reg_pi_wr.i.i = alloca %struct.ib_reg_wr, align 8
  %ctrl = alloca ptr, align 4
  %cur_edge = alloca ptr, align 4
  %size = alloca i32, align 4
  %idx = alloca i32, align 4
  %seg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #7
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ctrl, align 4
  %1 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibqp, align 4
  %mdev1 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_edge) #7
  %5 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur_edge, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %size, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg) #7
  %7 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %seg, align 4, !annotation !76
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 14
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ne i32 %9, 2
  %10 = or i1 %cmp, %drain
  br i1 %10, label %if.end, label %if.then, !prof !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 22
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @mlx5_ib_gsi_post_send(ptr noundef %ibqp, ptr noundef %wr, ptr noundef %bad_wr) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %bf10 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13
  %sq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7
  %lock = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 6
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %tobool17.not680 = icmp eq ptr %wr, null
  br i1 %tobool17.not680, label %if.end9.if.end205_crit_edge, label %for.body.lr.ph

if.end9.if.end205_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

for.body.lr.ph:                                   ; preds = %if.end9
  %max_gs = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 9
  %head.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 12
  %tail.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 13
  %max_post.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 8
  %send_cq.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %cur_post.i553 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 14
  %wqe_cnt.i555 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 7
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 3
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 6
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 2
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 5
  %sq_signal_bits.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 5
  %cur_edge19.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 16
  %next_fence71 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 6
  %umr_fence = getelementptr inbounds %struct.mlx5_ib_dev, ptr %2, i32 0, i32 29
  %wr_data.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 2
  %sz_m1.i.i.i.i454 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 9
  %port = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 10
  %mr4.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_pi_wr.i.i, i32 0, i32 1
  %access6.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_pi_wr.i.i, i32 0, i32 3
  %key.i46.i = getelementptr inbounds %struct.ib_reg_wr, ptr %reg_pi_wr.i.i, i32 0, i32 2
  %lkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 2
  %ndescs28.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 1, i32 2
  %data_length29.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 4, i32 0, i32 4
  %data_iova30.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %meta_ndescs34.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 4, i32 0, i32 3, i32 1
  %meta_length35.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 4, i32 0, i32 3, i32 2
  %pi_iova36.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %length40.i.i = getelementptr inbounds %struct.ib_mr, ptr %pa_pi_mr.i.i, i32 0, i32 5
  %pd.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %integrity_en.i.i.i = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 26
  %max_inline_data.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc180.for.body_crit_edge, %for.body.lr.ph
  %next_fence.0691 = phi i8 [ 0, %for.body.lr.ph ], [ %next_fence.1, %for.inc180.for.body_crit_edge ]
  %nreq.0685 = phi i32 [ 0, %for.body.lr.ph ], [ %inc181, %for.inc180.for.body_crit_edge ]
  %wr.addr.0681 = phi ptr [ %wr, %for.body.lr.ph ], [ %1284, %for.inc180.for.body_crit_edge ]
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 4
  %14 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %15)
  %cmp18 = icmp ugt i32 %15, 240
  br i1 %cmp18, label %do.end29, label %if.end31, !prof !78

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %17 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1314, i32 noundef %22) #10
  %23 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

if.end31:                                         ; preds = %for.body
  %num_sge32 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 3
  %24 = ptrtoint ptr %num_sge32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sge32, align 4
  %26 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_gs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp34 = icmp sgt i32 %25, %27
  br i1 %cmp34, label %do.end45, label %if.end50, !prof !78

do.end45:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %28 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %29 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i306 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i306 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid49, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1322, i32 noundef %34) #10
  %35 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

if.end50:                                         ; preds = %if.end31
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 5
  %36 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %send_flags.i, align 4
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head.i.i, align 4
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i.i, align 4
  %sub.i.i550 = add i32 %39, %nreq.0685
  %add.i.i551 = sub i32 %sub.i.i550, %41
  %42 = ptrtoint ptr %max_post.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_post.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i551, i32 %43)
  %cmp.i.i552 = icmp ult i32 %add.i.i551, %43
  br i1 %cmp.i.i552, label %if.end50.if.end.i568_crit_edge, label %mlx5_wq_overflow.exit.i, !prof !77

if.end50.if.end.i568_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i568

mlx5_wq_overflow.exit.i:                          ; preds = %if.end50
  %44 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %send_cq.i, align 8
  %lock.i.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %45, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head.i.i, align 4
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tail.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  %sub4.i.i = add i32 %47, %nreq.0685
  %add6.i.i = sub i32 %sub4.i.i, %49
  %50 = ptrtoint ptr %max_post.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_post.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i, i32 %51)
  %cmp8.i.not.i = icmp ult i32 %add6.i.i, %51
  br i1 %cmp8.i.not.i, label %mlx5_wq_overflow.exit.i.if.end.i568_crit_edge, label %do.end56, !prof !77

mlx5_wq_overflow.exit.i.if.end.i568_crit_edge:    ; preds = %mlx5_wq_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i568

if.end.i568:                                      ; preds = %mlx5_wq_overflow.exit.i.if.end.i568_crit_edge, %if.end50.if.end.i568_crit_edge
  %52 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cur_post.i553, align 4
  %conv.i554 = zext i16 %53 to i32
  %54 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wqe_cnt.i555, align 8
  %sub.i556 = add i32 %55, 65535
  %and.i557 = and i32 %sub.i556, %conv.i554
  %56 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i557, ptr %idx, align 4
  %57 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i32.i = zext i16 %58 to i32
  %add.i33.i = add nuw nsw i32 %and.i557, %conv.i32.i
  %59 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i558 = zext i8 %60 to i32
  %shr.i.i559 = lshr i32 %add.i33.i, %conv1.i.i558
  %61 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sq, align 4
  %arrayidx.i.i560 = getelementptr %struct.mlx5_buf_list, ptr %62, i32 %shr.i.i559
  %63 = ptrtoint ptr %arrayidx.i.i560 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i560, align 4
  %65 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i561 = zext i16 %66 to i32
  %and.i.i562 = and i32 %add.i33.i, %conv2.i.i561
  %67 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i563 = zext i8 %68 to i32
  %shl.i.i564 = shl i32 %and.i.i562, %conv3.i.i563
  %add.ptr.i.i565 = getelementptr i8, ptr %64, i32 %shl.i.i564
  %69 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr.i.i565, ptr %seg, align 4
  %70 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i.i565, ptr %ctrl, align 4
  %add.ptr.i566 = getelementptr i8, ptr %add.ptr.i.i565, i32 8
  %71 = ptrtoint ptr %add.ptr.i566 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %add.ptr.i566, align 4
  %72 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %opcode, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %73, label %if.end.i568.if.end61_crit_edge [
    i32 3, label %if.end.i568.return.sink.split.i.i_crit_edge
    i32 1, label %if.end.i568.return.sink.split.i.i_crit_edge908
    i32 9, label %if.end.i568.return.sink.split.i.i_crit_edge909
  ]

if.end.i568.return.sink.split.i.i_crit_edge909:   ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

if.end.i568.return.sink.split.i.i_crit_edge908:   ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

if.end.i568.return.sink.split.i.i_crit_edge:      ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i

if.end.i568.if.end61_crit_edge:                   ; preds = %if.end.i568
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

return.sink.split.i.i:                            ; preds = %if.end.i568.return.sink.split.i.i_crit_edge, %if.end.i568.return.sink.split.i.i_crit_edge908, %if.end.i568.return.sink.split.i.i_crit_edge909
  %ex2.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 6
  %75 = ptrtoint ptr %ex2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ex2.i.i, align 8
  br label %if.end61

do.end56:                                         ; preds = %mlx5_wq_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %78 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i308 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i308 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task59, align 8
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid60 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid60, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1331, i32 noundef %83) #10
  %84 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

if.end61:                                         ; preds = %return.sink.split.i.i, %if.end.i568.if.end61_crit_edge
  %retval.0.i34.i = phi i32 [ 0, %if.end.i568.if.end61_crit_edge ], [ %76, %return.sink.split.i.i ]
  %85 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i565, i32 0, i32 5
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i34.i, ptr %85, align 4
  %87 = ptrtoint ptr %sq_signal_bits.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sq_signal_bits.i, align 4
  %89 = trunc i32 %37 to i8
  %90 = shl i8 %89, 2
  %91 = and i8 %90, 8
  %92 = lshr i8 %89, 1
  %93 = and i8 %92, 2
  %or.i569 = or i8 %93, %91
  %or15.i = or i8 %or.i569, %88
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i565, i32 0, i32 4
  %94 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %or15.i, ptr %fm_ce_se.i, align 1
  %95 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg, align 4
  %add.ptr17.i570 = getelementptr i8, ptr %96, i32 16
  store ptr %add.ptr17.i570, ptr %seg, align 4
  %97 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %size, align 4
  %98 = ptrtoint ptr %cur_edge19.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur_edge19.i, align 8
  %100 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %cur_edge, align 4
  %101 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %opcode, align 8
  %103 = and i32 %102, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %103)
  %switch = icmp eq i32 %103, 32
  br i1 %switch, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %umr_fence to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %umr_fence, align 4
  br label %if.end79

if.else:                                          ; preds = %if.end61
  %106 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %send_flags.i, align 4
  %and = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  %108 = ptrtoint ptr %next_fence71 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %next_fence71, align 1
  br i1 %tobool69.not, label %if.else.if.end79_crit_edge, label %if.then70

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool72.not = icmp eq i8 %109, 0
  %. = select i1 %tobool72.not, i8 64, i8 -128
  br label %if.end79

if.end79:                                         ; preds = %if.then70, %if.else.if.end79_crit_edge, %if.then68
  %next_fence.1 = phi i8 [ 32, %if.then68 ], [ %next_fence.0691, %if.then70 ], [ %next_fence.0691, %if.else.if.end79_crit_edge ]
  %fence.0 = phi i8 [ %105, %if.then68 ], [ %., %if.then70 ], [ %109, %if.else.if.end79_crit_edge ]
  %110 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type, align 8
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %111, label %if.end79.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 2, label %if.end79.sw.bb81_crit_edge
    i32 3, label %sw.bb98
    i32 0, label %sw.bb99
    i32 4097, label %if.end79.sw.bb118_crit_edge
    i32 4, label %sw.bb119
    i32 4096, label %sw.bb120
  ]

if.end79.sw.bb118_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb118

if.end79.sw.bb81_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

if.end79.sw.epilog_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %seg, align 4
  %add.ptr = getelementptr i8, ptr %114, i32 16
  store ptr %add.ptr, ptr %seg, align 4
  %115 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size, align 4
  %add = add i32 %116, 1
  store i32 %add, ptr %size, align 4
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb, %if.end79.sw.bb81_crit_edge
  %117 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %opcode, align 8
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %118, label %sw.bb81.if.else91_crit_edge [
    i32 4, label %sw.bb81.sw.bb.i_crit_edge
    i32 0, label %sw.bb81.sw.bb.i_crit_edge910
    i32 1, label %sw.bb81.sw.bb.i_crit_edge911
    i32 5, label %sw.bb81.do.end.i_crit_edge
    i32 6, label %sw.bb81.do.end.i_crit_edge912
    i32 12, label %sw.bb81.do.end.i_crit_edge913
    i32 7, label %sw.bb2.i
    i32 32, label %sw.bb3.i
    i32 33, label %sw.bb7.i
  ]

sw.bb81.do.end.i_crit_edge913:                    ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb81.do.end.i_crit_edge912:                    ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb81.do.end.i_crit_edge:                       ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb81.sw.bb.i_crit_edge911:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb81.sw.bb.i_crit_edge910:                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb81.sw.bb.i_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb81.if.else91_crit_edge:                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91

sw.bb.i:                                          ; preds = %sw.bb81.sw.bb.i_crit_edge, %sw.bb81.sw.bb.i_crit_edge910, %sw.bb81.sw.bb.i_crit_edge911
  %120 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %seg, align 4
  %remote_addr.i.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0681, i32 0, i32 1
  %122 = ptrtoint ptr %remote_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %remote_addr.i.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0681, i32 0, i32 2
  %124 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rkey.i.i, align 8
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %123, ptr %121, align 8
  %rkey1.i.i.i = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, ptr %121, i32 0, i32 1
  %127 = ptrtoint ptr %rkey1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %125, ptr %rkey1.i.i.i, align 8
  %reserved.i.i.i = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, ptr %121, i32 0, i32 2
  %128 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %reserved.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %121, i32 16
  store ptr %add.ptr.i.i, ptr %seg, align 4
  %129 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size, align 4
  %add.i.i = add i32 %130, 1
  store i32 %add.i.i, ptr %size, align 4
  br label %if.else91thread-pre-split

do.end.i:                                         ; preds = %sw.bb81.do.end.i_crit_edge, %sw.bb81.do.end.i_crit_edge912, %sw.bb81.do.end.i_crit_edge913
  %131 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %132 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 68
  %136 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 1173, i32 noundef %137) #10
  br label %if.then90

sw.bb2.i:                                         ; preds = %sw.bb81
  %138 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %idx, align 4
  %140 = ptrtoint ptr %wr_data.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wr_data.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %141, i32 %139
  %142 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 7, ptr %arrayidx.i.i, align 4
  %ex.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 6
  %143 = ptrtoint ptr %ex.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ex.i.i, align 8
  %145 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctrl, align 4
  %147 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %146, i32 0, i32 5
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %144, ptr %147, align 4
  %149 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %seg, align 4
  %151 = call ptr @memset(ptr %150, i32 0, i32 48)
  %mkey_mask.i.i.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %150, i32 0, i32 4
  %152 = ptrtoint ptr %mkey_mask.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 536870912, ptr %mkey_mask.i.i.i.i, align 8
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -128, ptr %150, align 8
  %154 = load ptr, ptr %seg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %154, i32 48
  store ptr %add.ptr.i.i.i, ptr %seg, align 4
  %155 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %size, align 4
  %add.i.i.i = add i32 %156, 3
  store i32 %add.i.i.i, ptr %size, align 4
  %157 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i, %158
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb2.i.handle_post_send_edge.exit.i.i.i_crit_edge, !prof !78

sw.bb2.i.handle_post_send_edge.exit.i.i.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i.i.i = zext i16 %160 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i, 2
  %add.i.i.i.i = add nuw nsw i32 %shr.i.i.i.i, %conv.i.i.i.i
  %161 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i.i.i = add i32 %162, -1
  %and.i.i.i.i = and i32 %add.i.i.i.i, %sub.i.i.i.i
  %163 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %164 to i32
  %add.i.i.i.i.i.i = add nuw nsw i32 %and.i.i.i.i, %conv.i.i.i.i.i.i
  %165 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i.i.i = zext i16 %166 to i32
  %or.i.i.i.i.i.i = or i32 %add.i.i.i.i.i.i, %conv1.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = sub nsw i32 %or.i.i.i.i.i.i, %conv.i.i.i.i.i.i
  %167 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %169 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i.i, i32 %168) #7
  %add.i6.i.i.i.i.i = add i32 %169, %conv.i.i.i.i.i.i
  %170 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i.i.i = zext i8 %171 to i32
  %shr.i.i.i.i.i.i = lshr i32 %add.i6.i.i.i.i.i, %conv1.i7.i.i.i.i.i
  %172 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %173, i32 %shr.i.i.i.i.i.i
  %174 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %add.i6.i.i.i.i.i, %conv1.i.i.i.i.i.i
  %176 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i.i.i = zext i8 %177 to i32
  %shl.i.i.i.i.i.i = shl i32 %and.i.i.i.i.i.i, %conv3.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %175, i32 64
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %shl.i.i.i.i.i.i
  %178 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %add.ptr.i.i.i.i.i, ptr %cur_edge, align 4
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i.i, %conv1.i7.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %173, i32 %shr.i.i.i.i.i
  %179 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i.i, %conv1.i.i.i.i.i.i
  %shl.i.i.i.i.i = shl i32 %and.i.i.i.i.i, %conv3.i.i.i.i.i.i
  %add.ptr.i9.i.i.i.i = getelementptr i8, ptr %180, i32 %shl.i.i.i.i.i
  %181 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %add.ptr.i9.i.i.i.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i.i.i

handle_post_send_edge.exit.i.i.i:                 ; preds = %if.end.i.i.i.i, %sw.bb2.i.handle_post_send_edge.exit.i.i.i_crit_edge
  %182 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg, align 4
  %184 = call ptr @memset(ptr %183, i32 0, i32 64)
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 64, ptr %183, align 8
  %186 = load ptr, ptr %seg, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %186, i32 64
  store ptr %add.ptr1.i.i.i, ptr %seg, align 4
  %187 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %size, align 4
  %add2.i.i.i = add i32 %188, 4
  store i32 %add2.i.i.i, ptr %size, align 4
  %189 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i14.i.i.i = icmp eq ptr %add.ptr1.i.i.i, %190
  br i1 %cmp.not.i14.i.i.i, label %if.end.i51.i.i.i, label %handle_post_send_edge.exit.i.i.i.if.else91thread-pre-split_crit_edge, !prof !78

handle_post_send_edge.exit.i.i.i.if.else91thread-pre-split_crit_edge: ; preds = %handle_post_send_edge.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91thread-pre-split

if.end.i51.i.i.i:                                 ; preds = %handle_post_send_edge.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %cur_post.i553, align 4
  %conv.i16.i.i.i = zext i16 %192 to i32
  %shr.i17.i.i.i = lshr i32 %add2.i.i.i, 2
  %add.i18.i.i.i = add nuw nsw i32 %shr.i17.i.i.i, %conv.i16.i.i.i
  %193 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i20.i.i.i = add i32 %194, -1
  %and.i21.i.i.i = and i32 %add.i18.i.i.i, %sub.i20.i.i.i
  %195 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i23.i.i.i = zext i16 %196 to i32
  %add.i.i.i24.i.i.i = add nuw nsw i32 %and.i21.i.i.i, %conv.i.i.i23.i.i.i
  %197 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i26.i.i.i = zext i16 %198 to i32
  %or.i.i.i27.i.i.i = or i32 %add.i.i.i24.i.i.i, %conv1.i.i.i26.i.i.i
  %sub.i.i.i28.i.i.i = sub nsw i32 %or.i.i.i27.i.i.i, %conv.i.i.i23.i.i.i
  %199 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %201 = call i32 @llvm.umin.i32(i32 %sub.i.i.i28.i.i.i, i32 %200) #7
  %add.i6.i.i30.i.i.i = add i32 %201, %conv.i.i.i23.i.i.i
  %202 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i32.i.i.i = zext i8 %203 to i32
  %shr.i.i.i33.i.i.i = lshr i32 %add.i6.i.i30.i.i.i, %conv1.i7.i.i32.i.i.i
  %204 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i34.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %205, i32 %shr.i.i.i33.i.i.i
  %206 = ptrtoint ptr %arrayidx.i.i.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx.i.i.i34.i.i.i, align 4
  %and.i.i.i35.i.i.i = and i32 %add.i6.i.i30.i.i.i, %conv1.i.i.i26.i.i.i
  %208 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i37.i.i.i = zext i8 %209 to i32
  %shl.i.i.i38.i.i.i = shl i32 %and.i.i.i35.i.i.i, %conv3.i.i.i37.i.i.i
  %add.ptr.i.i.i39.i.i.i = getelementptr i8, ptr %207, i32 64
  %add.ptr.i.i40.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i39.i.i.i, i32 %shl.i.i.i38.i.i.i
  %210 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %add.ptr.i.i40.i.i.i, ptr %cur_edge, align 4
  %shr.i.i44.i.i.i = lshr i32 %add.i.i.i24.i.i.i, %conv1.i7.i.i32.i.i.i
  %arrayidx.i.i45.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %205, i32 %shr.i.i44.i.i.i
  %211 = ptrtoint ptr %arrayidx.i.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i.i45.i.i.i, align 4
  %and.i.i47.i.i.i = and i32 %add.i.i.i24.i.i.i, %conv1.i.i.i26.i.i.i
  %shl.i.i49.i.i.i = shl i32 %and.i.i47.i.i.i, %conv3.i.i.i37.i.i.i
  %add.ptr.i9.i50.i.i.i = getelementptr i8, ptr %212, i32 %shl.i.i49.i.i.i
  %213 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %add.ptr.i9.i50.i.i.i, ptr %seg, align 4
  br label %if.else91thread-pre-split

sw.bb3.i:                                         ; preds = %sw.bb81
  %214 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %idx, align 4
  %216 = ptrtoint ptr %wr_data.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %wr_data.i, align 4
  %arrayidx.i42.i = getelementptr i32, ptr %217, i32 %215
  %218 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 32, ptr %arrayidx.i42.i, align 4
  %key.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0681, i32 0, i32 2
  %219 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %key.i.i, align 4
  %221 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ctrl, align 4
  %223 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %222, i32 0, i32 5
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %220, ptr %223, align 4
  %call2.i.i = call fastcc i32 @set_reg_wr(ptr noundef %ibqp, ptr noundef nonnull %wr.addr.0681, ptr noundef nonnull %seg, ptr noundef nonnull %size, ptr noundef nonnull %cur_edge, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %sw.bb3.i.if.else91thread-pre-split_crit_edge, label %sw.bb3.i.if.then90_crit_edge, !prof !77

sw.bb3.i.if.then90_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

sw.bb3.i.if.else91thread-pre-split_crit_edge:     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91thread-pre-split

sw.bb7.i:                                         ; preds = %sw.bb81
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %pa_pi_mr.i.i) #7
  %225 = call ptr @memset(ptr %pa_pi_mr.i.i, i32 255, i32 368)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reg_pi_wr.i.i) #7
  %226 = call ptr @memset(ptr %reg_pi_wr.i.i, i32 255, i32 56)
  %227 = ptrtoint ptr %wr_data.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wr_data.i, align 4
  %229 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %idx, align 4
  %arrayidx.i44.i = getelementptr i32, ptr %228, i32 %230
  %231 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 33, ptr %arrayidx.i44.i, align 4
  %mr1.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0681, i32 0, i32 1
  %232 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mr1.i.i, align 8
  %pi_mr3.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %234 = ptrtoint ptr %pi_mr3.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pi_mr3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %235, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb7.i
  %236 = call ptr @memset(ptr %reg_pi_wr.i.i, i32 0, i32 56)
  %237 = ptrtoint ptr %mr4.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %235, ptr %mr4.i.i, align 8
  %access.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0681, i32 0, i32 3
  %238 = ptrtoint ptr %access.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %access.i.i, align 8
  %240 = ptrtoint ptr %access6.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %access6.i.i, align 8
  %rkey.i45.i = getelementptr inbounds %struct.ib_mr, ptr %235, i32 0, i32 3
  %241 = ptrtoint ptr %rkey.i45.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rkey.i45.i, align 4
  %243 = ptrtoint ptr %key.i46.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %key.i46.i, align 4
  %244 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ctrl, align 4
  %246 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %245, i32 0, i32 5
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %242, ptr %246, align 4
  %call9.i.i = call fastcc i32 @set_reg_wr(ptr noundef %ibqp, ptr noundef nonnull %reg_pi_wr.i.i, ptr noundef nonnull %seg, ptr noundef nonnull %size, ptr noundef nonnull %cur_edge, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end.i.i, label %if.then.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge, !prof !77

if.then.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %248 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %seg, align 4
  %250 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %size, align 4
  %conv.i.i = trunc i32 %251 to i8
  %252 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cur_edge, align 4
  %254 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 1
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %254, align 8
  call fastcc void @finish_wqe(ptr noundef %ibqp, ptr noundef %245, ptr noundef %249, i8 noundef zeroext %conv.i.i, ptr noundef %253, i32 noundef %230, i64 noundef %256, i32 noundef %nreq.0685, i8 noundef zeroext %fence.0, i32 noundef 37) #7
  %257 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %send_flags.i, align 4
  %259 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %head.i.i, align 4
  %261 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %tail.i.i, align 4
  %sub.i.i574 = add i32 %260, %nreq.0685
  %add.i.i575 = sub i32 %sub.i.i574, %262
  %263 = ptrtoint ptr %max_post.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %max_post.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i575, i32 %264)
  %cmp.i.i577 = icmp ult i32 %add.i.i575, %264
  br i1 %cmp.i.i577, label %if.end.i.i.if.end.i605_crit_edge, label %mlx5_wq_overflow.exit.i583, !prof !77

if.end.i.i.if.end.i605_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i605

mlx5_wq_overflow.exit.i583:                       ; preds = %if.end.i.i
  %265 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %send_cq.i, align 8
  %lock.i.i579 = getelementptr inbounds %struct.mlx5_ib_cq, ptr %266, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i579) #7
  %267 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %head.i.i, align 4
  %269 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %tail.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i579) #7
  %sub4.i.i580 = add i32 %268, %nreq.0685
  %add6.i.i581 = sub i32 %sub4.i.i580, %270
  %271 = ptrtoint ptr %max_post.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %max_post.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i.i581, i32 %272)
  %cmp8.i.not.i582 = icmp ult i32 %add6.i.i581, %272
  br i1 %cmp8.i.not.i582, label %mlx5_wq_overflow.exit.i583.if.end.i605_crit_edge, label %mlx5_wq_overflow.exit.i583.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, !prof !77

mlx5_wq_overflow.exit.i583.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %mlx5_wq_overflow.exit.i583
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

mlx5_wq_overflow.exit.i583.if.end.i605_crit_edge: ; preds = %mlx5_wq_overflow.exit.i583
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i605

if.end.i605:                                      ; preds = %mlx5_wq_overflow.exit.i583.if.end.i605_crit_edge, %if.end.i.i.if.end.i605_crit_edge
  %273 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %cur_post.i553, align 4
  %conv.i585 = zext i16 %274 to i32
  %275 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %wqe_cnt.i555, align 8
  %sub.i587 = add i32 %276, 65535
  %and.i588 = and i32 %sub.i587, %conv.i585
  %277 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %and.i588, ptr %idx, align 4
  %278 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i32.i590 = zext i16 %279 to i32
  %add.i33.i591 = add nuw nsw i32 %and.i588, %conv.i32.i590
  %280 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i593 = zext i8 %281 to i32
  %shr.i.i594 = lshr i32 %add.i33.i591, %conv1.i.i593
  %282 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sq, align 4
  %arrayidx.i.i595 = getelementptr %struct.mlx5_buf_list, ptr %283, i32 %shr.i.i594
  %284 = ptrtoint ptr %arrayidx.i.i595 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i595, align 4
  %286 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i597 = zext i16 %287 to i32
  %and.i.i598 = and i32 %add.i33.i591, %conv2.i.i597
  %288 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i600 = zext i8 %289 to i32
  %shl.i.i601 = shl i32 %and.i.i598, %conv3.i.i600
  %add.ptr.i.i602 = getelementptr i8, ptr %285, i32 %shl.i.i601
  %290 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %add.ptr.i.i602, ptr %seg, align 4
  %291 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %add.ptr.i.i602, ptr %ctrl, align 4
  %add.ptr.i603 = getelementptr i8, ptr %add.ptr.i.i602, i32 8
  %292 = ptrtoint ptr %add.ptr.i603 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 0, ptr %add.ptr.i603, align 4
  %293 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %opcode, align 8
  %295 = zext i32 %294 to i64
  call void @__sanitizer_cov_trace_switch(i64 %295, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %294, label %if.end.i605.__begin_wqe.exit619.thread_crit_edge [
    i32 3, label %if.end.i605.return.sink.split.i.i607_crit_edge
    i32 1, label %if.end.i605.return.sink.split.i.i607_crit_edge914
    i32 9, label %if.end.i605.return.sink.split.i.i607_crit_edge915
  ]

if.end.i605.return.sink.split.i.i607_crit_edge915: ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i607

if.end.i605.return.sink.split.i.i607_crit_edge914: ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i607

if.end.i605.return.sink.split.i.i607_crit_edge:   ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i.i607

if.end.i605.__begin_wqe.exit619.thread_crit_edge: ; preds = %if.end.i605
  call void @__sanitizer_cov_trace_pc() #9
  br label %__begin_wqe.exit619.thread

return.sink.split.i.i607:                         ; preds = %if.end.i605.return.sink.split.i.i607_crit_edge, %if.end.i605.return.sink.split.i.i607_crit_edge914, %if.end.i605.return.sink.split.i.i607_crit_edge915
  %ex2.i.i606 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 6
  %296 = ptrtoint ptr %ex2.i.i606 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %ex2.i.i606, align 8
  br label %__begin_wqe.exit619.thread

__begin_wqe.exit619.thread:                       ; preds = %return.sink.split.i.i607, %if.end.i605.__begin_wqe.exit619.thread_crit_edge
  %retval.0.i34.i608 = phi i32 [ 0, %if.end.i605.__begin_wqe.exit619.thread_crit_edge ], [ %297, %return.sink.split.i.i607 ]
  %298 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i602, i32 0, i32 5
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %retval.0.i34.i608, ptr %298, align 4
  %300 = ptrtoint ptr %sq_signal_bits.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %sq_signal_bits.i, align 4
  %302 = trunc i32 %258 to i8
  %303 = shl i8 %302, 2
  %304 = and i8 %303, 8
  %305 = lshr i8 %302, 1
  %306 = and i8 %305, 2
  %or.i612 = or i8 %306, %304
  %or15.i613 = or i8 %or.i612, %301
  %fm_ce_se.i614 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i602, i32 0, i32 4
  %307 = ptrtoint ptr %fm_ce_se.i614 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %or15.i613, ptr %fm_ce_se.i614, align 1
  %308 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %seg, align 4
  %add.ptr17.i615 = getelementptr i8, ptr %309, i32 16
  store ptr %add.ptr17.i615, ptr %seg, align 4
  %310 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 1, ptr %size, align 4
  %311 = ptrtoint ptr %cur_edge19.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cur_edge19.i, align 8
  %313 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %312, ptr %cur_edge, align 4
  br label %if.end42.i.i

if.else.i.i:                                      ; preds = %sw.bb7.i
  %314 = call ptr @memset(ptr %pa_pi_mr.i.i, i32 0, i32 368)
  %pd.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 1
  %315 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %pd.i.i, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %316, align 4
  %319 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %lkey.i.i, align 8
  %ndescs.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 1, i32 2
  %320 = ptrtoint ptr %ndescs.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %ndescs.i.i, align 8
  %322 = ptrtoint ptr %ndescs28.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %ndescs28.i.i, align 8
  %data_length.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 4
  %323 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %data_length.i.i, align 8
  %325 = ptrtoint ptr %data_length29.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %data_length29.i.i, align 8
  %data_iova.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %326 = ptrtoint ptr %data_iova.i.i to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %data_iova.i.i, align 8
  %328 = ptrtoint ptr %data_iova30.i.i to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %327, ptr %data_iova30.i.i, align 8
  %meta_ndescs.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 1
  %329 = ptrtoint ptr %meta_ndescs.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %meta_ndescs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool31.not.i.i = icmp eq i32 %330, 0
  br i1 %tobool31.not.i.i, label %if.else.i.i.if.end37.i.i_crit_edge, label %if.then32.i.i

if.else.i.i.if.end37.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

if.then32.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %331 = ptrtoint ptr %meta_ndescs34.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %meta_ndescs34.i.i, align 8
  %meta_length.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 2
  %332 = ptrtoint ptr %meta_length.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %meta_length.i.i, align 4
  %334 = ptrtoint ptr %meta_length35.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %meta_length35.i.i, align 4
  %pi_iova.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %335 = ptrtoint ptr %pi_iova.i.i to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %pi_iova.i.i, align 8
  %337 = ptrtoint ptr %pi_iova36.i.i to i32
  call void @__asan_store8_noabort(i32 %337)
  store i64 %336, ptr %pi_iova36.i.i, align 8
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then32.i.i, %if.else.i.i.if.end37.i.i_crit_edge
  %length.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 5
  %338 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %length.i.i, align 8
  %340 = ptrtoint ptr %length40.i.i to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 %339, ptr %length40.i.i, align 8
  %341 = ptrtoint ptr %pi_mr3.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %pa_pi_mr.i.i, ptr %pi_mr3.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end37.i.i, %__begin_wqe.exit619.thread
  %rkey44.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 3
  %342 = ptrtoint ptr %rkey44.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %rkey44.i.i, align 4
  %344 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ctrl, align 4
  %346 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %345, i32 0, i32 5
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %343, ptr %346, align 4
  %348 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mr1.i.i, align 8
  %pi_mr2.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %349, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %350 = ptrtoint ptr %pi_mr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %pi_mr2.i.i.i, align 4
  %sig_attrs3.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %349, i32 0, i32 11
  %352 = ptrtoint ptr %sig_attrs3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %sig_attrs3.i.i.i, align 8
  %354 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pd.i.i.i, align 4
  %pdn5.i.i.i = getelementptr inbounds %struct.mlx5_ib_pd, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %pdn5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %pdn5.i.i.i, align 4
  %358 = ptrtoint ptr %num_sge32 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %num_sge32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %cmp.not.i.i.i = icmp eq i32 %359, 0
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end42.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, !prof !77

if.end42.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

lor.lhs.false.i.i.i:                              ; preds = %if.end42.i.i
  %access.i.i.i = getelementptr inbounds %struct.ib_reg_wr, ptr %wr.addr.0681, i32 0, i32 3
  %360 = ptrtoint ptr %access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %access.i.i.i, align 8
  %and.i165.i.i = and i32 %361, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i165.i.i, 0
  br i1 %tobool7.not.i.i.i, label %lor.lhs.false14.i.i.i, label %lor.lhs.false.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, !prof !77

lor.lhs.false.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

lor.lhs.false14.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %sig.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %349, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %362 = ptrtoint ptr %sig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %sig.i.i.i, align 8
  %tobool15.not.i.i.i = icmp eq ptr %363, null
  br i1 %tobool15.not.i.i.i, label %lor.lhs.false14.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, label %lor.lhs.false24.i.i.i, !prof !78

lor.lhs.false14.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %lor.lhs.false14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

lor.lhs.false24.i.i.i:                            ; preds = %lor.lhs.false14.i.i.i
  %364 = ptrtoint ptr %integrity_en.i.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %integrity_en.i.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool26.not.i.i.i = icmp eq i8 %365, 0
  br i1 %tobool26.not.i.i.i, label %lor.lhs.false24.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, label %lor.lhs.false35.i.i.i, !prof !78

lor.lhs.false24.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %lor.lhs.false24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

lor.lhs.false35.i.i.i:                            ; preds = %lor.lhs.false24.i.i.i
  %sig_status_checked.i.i.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %363, i32 0, i32 3
  %366 = ptrtoint ptr %sig_status_checked.i.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %sig_status_checked.i.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool37.not.i.i.i = icmp eq i8 %367, 0
  br i1 %tobool37.not.i.i.i, label %lor.lhs.false35.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, label %if.end.i.i.i, !prof !78

lor.lhs.false35.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %lor.lhs.false35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

if.end.i.i.i:                                     ; preds = %lor.lhs.false35.i.i.i
  %length.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %351, i32 0, i32 5
  %368 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %length.i.i.i, align 8
  %mem.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1
  %370 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %seg, align 4
  %372 = call ptr @memset(ptr %371, i32 0, i32 48)
  %373 = ptrtoint ptr %371 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 -96, ptr %371, align 8
  %xlt_octowords.i.i.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %371, i32 0, i32 2
  %374 = ptrtoint ptr %xlt_octowords.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 4, ptr %xlt_octowords.i.i.i.i, align 4
  %375 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %371, i32 0, i32 3
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 4, ptr %375, align 2
  %mkey_mask.i.i.i47.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %371, i32 0, i32 4
  %377 = ptrtoint ptr %mkey_mask.i.i.i47.i to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 547238723, ptr %mkey_mask.i.i.i47.i, align 8
  %378 = load ptr, ptr %seg, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %378, i32 48
  store ptr %add.ptr.i.i48.i, ptr %seg, align 4
  %379 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %size, align 4
  %add.i.i49.i = add i32 %380, 3
  store i32 %add.i.i49.i, ptr %size, align 4
  %381 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i.i51.i = icmp eq ptr %add.ptr.i.i48.i, %382
  br i1 %cmp.not.i.i.i51.i, label %if.end.i.i.i85.i, label %if.end.i.i.i.handle_post_send_edge.exit.i.i86.i_crit_edge, !prof !78

if.end.i.i.i.handle_post_send_edge.exit.i.i86.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i.i86.i

if.end.i.i.i85.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %383 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %cur_post.i553, align 4
  %conv.i99.i.i.i = zext i16 %384 to i32
  %shr.i.i.i53.i = lshr i32 %add.i.i49.i, 2
  %add.i.i.i54.i = add nuw nsw i32 %shr.i.i.i53.i, %conv.i99.i.i.i
  %385 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i.i56.i = add i32 %386, -1
  %and.i.i.i57.i = and i32 %add.i.i.i54.i, %sub.i.i.i56.i
  %387 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i.i59.i = zext i16 %388 to i32
  %add.i.i.i.i.i60.i = add nuw nsw i32 %and.i.i.i57.i, %conv.i.i.i.i.i59.i
  %389 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i.i62.i = zext i16 %390 to i32
  %or.i.i.i.i.i63.i = or i32 %add.i.i.i.i.i60.i, %conv1.i.i.i.i.i62.i
  %sub.i.i.i.i.i64.i = sub nsw i32 %or.i.i.i.i.i63.i, %conv.i.i.i.i.i59.i
  %391 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %393 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i64.i, i32 %392) #7
  %add.i6.i.i.i.i66.i = add i32 %393, %conv.i.i.i.i.i59.i
  %394 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i.i68.i = zext i8 %395 to i32
  %shr.i.i.i.i.i69.i = lshr i32 %add.i6.i.i.i.i66.i, %conv1.i7.i.i.i.i68.i
  %396 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i.i70.i = getelementptr %struct.mlx5_buf_list, ptr %397, i32 %shr.i.i.i.i.i69.i
  %398 = ptrtoint ptr %arrayidx.i.i.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx.i.i.i.i.i70.i, align 4
  %and.i.i.i.i.i71.i = and i32 %add.i6.i.i.i.i66.i, %conv1.i.i.i.i.i62.i
  %400 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i.i73.i = zext i8 %401 to i32
  %shl.i.i.i.i.i74.i = shl i32 %and.i.i.i.i.i71.i, %conv3.i.i.i.i.i73.i
  %add.ptr.i.i.i.i.i75.i = getelementptr i8, ptr %399, i32 64
  %add.ptr.i.i.i.i76.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i75.i, i32 %shl.i.i.i.i.i74.i
  %402 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %add.ptr.i.i.i.i76.i, ptr %cur_edge, align 4
  %shr.i.i.i.i79.i = lshr i32 %add.i.i.i.i.i60.i, %conv1.i7.i.i.i.i68.i
  %arrayidx.i.i.i.i80.i = getelementptr %struct.mlx5_buf_list, ptr %397, i32 %shr.i.i.i.i79.i
  %403 = ptrtoint ptr %arrayidx.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %arrayidx.i.i.i.i80.i, align 4
  %and.i.i101.i.i.i = and i32 %add.i.i.i.i.i60.i, %conv1.i.i.i.i.i62.i
  %shl.i.i.i.i83.i = shl i32 %and.i.i101.i.i.i, %conv3.i.i.i.i.i73.i
  %add.ptr.i9.i.i.i84.i = getelementptr i8, ptr %404, i32 %shl.i.i.i.i83.i
  %405 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %add.ptr.i9.i.i.i84.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i.i86.i

handle_post_send_edge.exit.i.i86.i:               ; preds = %if.end.i.i.i85.i, %if.end.i.i.i.handle_post_send_edge.exit.i.i86.i_crit_edge
  %406 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %seg, align 4
  %408 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %mr1.i.i, align 8
  %410 = ptrtoint ptr %access.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %access.i.i.i, align 8
  %rkey.i.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %409, i32 0, i32 3
  %412 = ptrtoint ptr %rkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %rkey.i.i.i.i, align 4
  %sig.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %409, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %414 = ptrtoint ptr %sig.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %sig.i.i.i.i, align 8
  %sigerr_count.i.i.i.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %415, i32 0, i32 5
  %416 = ptrtoint ptr %sigerr_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %sigerr_count.i.i.i.i, align 4
  %418 = call ptr @memset(ptr %407, i32 0, i32 64)
  %and.i.i102.i.i.i = shl i32 %411, 3
  %419 = and i32 %and.i.i102.i.i.i, 64
  %and1.i.i.i.i.i = shl i32 %411, 4
  %420 = and i32 %and1.i.i.i.i.i, 32
  %or.i.i.i.i.i = or i32 %419, %420
  %and4.i.i.i.i.i = shl i32 %411, 2
  %421 = and i32 %and4.i.i.i.i.i, 16
  %or7.i.i.i.i.i = or i32 %or.i.i.i.i.i, %421
  %422 = and i32 %and.i.i102.i.i.i, 8
  %or11.i.i.i.i.i = or i32 %or7.i.i.i.i.i, %422
  %423 = trunc i32 %or11.i.i.i.i.i to i8
  %424 = or i8 %423, -122
  %flags.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 2
  %425 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %flags.i.i.i.i, align 2
  %or5.i.i.i.i = or i32 %413, -256
  %qpn_mkey7_0.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 4
  %426 = ptrtoint ptr %qpn_mkey7_0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %or5.i.i.i.i, ptr %qpn_mkey7_0.i.i.i.i, align 4
  %conv.i103.i.i.i = shl i32 %417, 26
  %shl.i.i.i.i = and i32 %conv.i103.i.i.i, 67108864
  %or8.i.i.i.i = or i32 %357, %shl.i.i.i.i
  %or9.i.i.i.i = or i32 %or8.i.i.i.i, 1090519040
  %flags_pd.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 6
  %427 = ptrtoint ptr %flags_pd.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %or9.i.i.i.i, ptr %flags_pd.i.i.i.i, align 4
  %conv10.i.i.i.i = and i64 %369, 4294967295
  %len.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 8
  %428 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %428)
  store i64 %conv10.i.i.i.i, ptr %len.i.i.i.i, align 8
  %xlt_oct_size.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 11
  %429 = ptrtoint ptr %xlt_oct_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 4, ptr %xlt_oct_size.i.i.i.i, align 4
  %bsfs_octo_size.i.i.i.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %407, i32 0, i32 9
  %430 = ptrtoint ptr %bsfs_octo_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 4, ptr %bsfs_octo_size.i.i.i.i, align 8
  %431 = load ptr, ptr %seg, align 4
  %add.ptr53.i.i.i = getelementptr i8, ptr %431, i32 64
  store ptr %add.ptr53.i.i.i, ptr %seg, align 4
  %432 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %size, align 4
  %add54.i.i.i = add i32 %433, 4
  store i32 %add54.i.i.i, ptr %size, align 4
  %434 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i105.i.i.i = icmp eq ptr %add.ptr53.i.i.i, %435
  br i1 %cmp.not.i105.i.i.i, label %if.end.i142.i.i.i, label %handle_post_send_edge.exit.i.i86.i.handle_post_send_edge.exit143.i.i.i_crit_edge, !prof !78

handle_post_send_edge.exit.i.i86.i.handle_post_send_edge.exit143.i.i.i_crit_edge: ; preds = %handle_post_send_edge.exit.i.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit143.i.i.i

if.end.i142.i.i.i:                                ; preds = %handle_post_send_edge.exit.i.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  %436 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %cur_post.i553, align 4
  %conv.i107.i.i.i = zext i16 %437 to i32
  %shr.i108.i.i.i = lshr i32 %add54.i.i.i, 2
  %add.i109.i.i.i = add nuw nsw i32 %shr.i108.i.i.i, %conv.i107.i.i.i
  %438 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i111.i.i.i = add i32 %439, -1
  %and.i112.i.i.i = and i32 %add.i109.i.i.i, %sub.i111.i.i.i
  %440 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %440)
  %441 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i114.i.i.i = zext i16 %441 to i32
  %add.i.i.i115.i.i.i = add nuw nsw i32 %and.i112.i.i.i, %conv.i.i.i114.i.i.i
  %442 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i117.i.i.i = zext i16 %443 to i32
  %or.i.i.i118.i.i.i = or i32 %add.i.i.i115.i.i.i, %conv1.i.i.i117.i.i.i
  %sub.i.i.i119.i.i.i = sub nsw i32 %or.i.i.i118.i.i.i, %conv.i.i.i114.i.i.i
  %444 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %446 = call i32 @llvm.umin.i32(i32 %sub.i.i.i119.i.i.i, i32 %445) #7
  %add.i6.i.i121.i.i.i = add i32 %446, %conv.i.i.i114.i.i.i
  %447 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i123.i.i.i = zext i8 %448 to i32
  %shr.i.i.i124.i.i.i = lshr i32 %add.i6.i.i121.i.i.i, %conv1.i7.i.i123.i.i.i
  %449 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i125.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %450, i32 %shr.i.i.i124.i.i.i
  %451 = ptrtoint ptr %arrayidx.i.i.i125.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %arrayidx.i.i.i125.i.i.i, align 4
  %and.i.i.i126.i.i.i = and i32 %add.i6.i.i121.i.i.i, %conv1.i.i.i117.i.i.i
  %453 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i128.i.i.i = zext i8 %454 to i32
  %shl.i.i.i129.i.i.i = shl i32 %and.i.i.i126.i.i.i, %conv3.i.i.i128.i.i.i
  %add.ptr.i.i.i130.i.i.i = getelementptr i8, ptr %452, i32 64
  %add.ptr.i.i131.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i130.i.i.i, i32 %shl.i.i.i129.i.i.i
  %455 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %add.ptr.i.i131.i.i.i, ptr %cur_edge, align 4
  %shr.i.i135.i.i.i = lshr i32 %add.i.i.i115.i.i.i, %conv1.i7.i.i123.i.i.i
  %arrayidx.i.i136.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %450, i32 %shr.i.i135.i.i.i
  %456 = ptrtoint ptr %arrayidx.i.i136.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx.i.i136.i.i.i, align 4
  %and.i.i138.i.i.i = and i32 %add.i.i.i115.i.i.i, %conv1.i.i.i117.i.i.i
  %shl.i.i140.i.i.i = shl i32 %and.i.i138.i.i.i, %conv3.i.i.i128.i.i.i
  %add.ptr.i9.i141.i.i.i = getelementptr i8, ptr %457, i32 %shl.i.i140.i.i.i
  %458 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %add.ptr.i9.i141.i.i.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit143.i.i.i

handle_post_send_edge.exit143.i.i.i:              ; preds = %if.end.i142.i.i.i, %handle_post_send_edge.exit.i.i86.i.handle_post_send_edge.exit143.i.i.i_crit_edge
  %459 = ptrtoint ptr %mr1.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %mr1.i.i, align 8
  %pi_mr1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %460, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4
  %461 = ptrtoint ptr %pi_mr1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %pi_mr1.i.i.i.i, align 4
  %data_length.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %462, i32 0, i32 4, i32 0, i32 4
  %463 = ptrtoint ptr %data_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %data_length.i.i.i.i, align 8
  %lkey.i.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %462, i32 0, i32 2
  %465 = ptrtoint ptr %lkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %lkey.i.i.i.i, align 8
  %data_iova.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %462, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 2
  %467 = ptrtoint ptr %data_iova.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %data_iova.i.i.i.i, align 8
  %meta_ndescs.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %462, i32 0, i32 4, i32 0, i32 3, i32 1
  %469 = ptrtoint ptr %meta_ndescs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %meta_ndescs.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %470)
  %tobool.not.i.i.i.i = icmp eq i32 %470, 0
  br i1 %tobool.not.i.i.i.i, label %handle_post_send_edge.exit143.i.i.i.if.then8.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

handle_post_send_edge.exit143.i.i.i.if.then8.i.i.i.i_crit_edge: ; preds = %handle_post_send_edge.exit143.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %handle_post_send_edge.exit143.i.i.i
  %meta_length.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %462, i32 0, i32 4, i32 0, i32 3, i32 2
  %471 = ptrtoint ptr %meta_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %meta_length.i.i.i.i, align 4
  %pi_iova.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %462, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4, i32 6
  %473 = ptrtoint ptr %pi_iova.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %473)
  %474 = load i64, ptr %pi_iova.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %468, i64 %474)
  %cmp5.i.i.i.i = icmp eq i64 %468, %474
  call void @__sanitizer_cov_trace_cmp4(i32 %464, i32 %472)
  %cmp7.i.i.i.i = icmp eq i32 %464, %472
  %or.cond1.i.i.i.i = select i1 %cmp5.i.i.i.i, i1 %cmp7.i.i.i.i, i1 false
  br i1 %or.cond1.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then8.i.i.i.i_crit_edge, label %if.else.i.i.i.i

lor.lhs.false.i.i.i.i.if.then8.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i.if.then8.i.i.i.i_crit_edge, %handle_post_send_edge.exit143.i.i.i.if.then8.i.i.i.i_crit_edge
  %475 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %seg, align 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %464, ptr %476, align 8
  %key.i.i.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %476, i32 0, i32 1
  %478 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %466, ptr %key.i.i.i.i, align 4
  %va.i.i.i.i = getelementptr inbounds %struct.mlx5_klm, ptr %476, i32 0, i32 2
  %479 = ptrtoint ptr %va.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %479)
  store i64 %468, ptr %va.i.i.i.i, align 8
  br label %if.end32.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i
  %pi_interval.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 1
  %480 = ptrtoint ptr %pi_interval.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %pi_interval.i.i.i.i, align 4
  %482 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %mem.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %483)
  %cond.i.i.i.i.i = icmp eq i32 %483, 1
  br i1 %cond.i.i.i.i.i, label %cleanup.i.i.i.i, label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i.i.i.i = zext i16 %481 to i32
  %call15.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv14.i.i.i.i) #10
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

cleanup.i.i.i.i:                                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %484 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %seg, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %485, i32 16
  %add.ptr9.i.i.i.i = getelementptr i8, ptr %485, i32 32
  %conv17.i.i.i.i = zext i16 %481 to i32
  %add.i144.i.i.i = add nuw nsw i32 %conv17.i.i.i.i, 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %add.i144.i.i.i, ptr %485, align 4
  %op.i.i.i.i = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, ptr %485, i32 0, i32 1
  %487 = ptrtoint ptr %op.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 1024, ptr %op.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %464, %conv17.i.i.i.i
  %repeat_count.i.i.i.i = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, ptr %485, i32 0, i32 2
  %488 = ptrtoint ptr %repeat_count.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %div.i.i.i.i, ptr %repeat_count.i.i.i.i, align 4
  %num_entries.i.i.i.i = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, ptr %485, i32 0, i32 4
  %489 = ptrtoint ptr %num_entries.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 2, ptr %num_entries.i.i.i.i, align 2
  %bcount19.i.i.i.i = getelementptr i8, ptr %485, i32 18
  %490 = ptrtoint ptr %bcount19.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %481, ptr %bcount19.i.i.i.i, align 2
  %key20.i.i.i.i = getelementptr i8, ptr %485, i32 20
  %491 = ptrtoint ptr %key20.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %466, ptr %key20.i.i.i.i, align 4
  %va21.i.i.i.i = getelementptr i8, ptr %485, i32 24
  %492 = ptrtoint ptr %va21.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %492)
  store i64 %468, ptr %va21.i.i.i.i, align 8
  %493 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %493)
  store i16 %481, ptr %add.ptr.i.i.i.i, align 8
  %bcount23.i.i.i.i = getelementptr i8, ptr %485, i32 34
  %494 = ptrtoint ptr %bcount23.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 8, ptr %bcount23.i.i.i.i, align 2
  %key24.i.i.i.i = getelementptr i8, ptr %485, i32 36
  %495 = ptrtoint ptr %key24.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %466, ptr %key24.i.i.i.i, align 4
  %va25.i.i.i.i = getelementptr i8, ptr %485, i32 40
  %496 = ptrtoint ptr %va25.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %496)
  store i64 %474, ptr %va25.i.i.i.i, align 8
  %497 = ptrtoint ptr %add.ptr9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 8, ptr %add.ptr9.i.i.i.i, align 8
  br label %if.end32.i.i.i.i

if.end32.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i, %if.then8.i.i.i.i
  %498 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %seg, align 4
  %add.ptr33.i.i.i.i = getelementptr i8, ptr %499, i32 64
  store ptr %add.ptr33.i.i.i.i, ptr %seg, align 4
  %500 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %size, align 4
  %add35.i.i.i.i = add i32 %501, 4
  store i32 %add35.i.i.i.i, ptr %size, align 4
  %502 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %add.ptr33.i.i.i.i, %503
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end32.i.i.i.i.handle_post_send_edge.exit.i.i.i.i_crit_edge, !prof !78

if.end32.i.i.i.i.handle_post_send_edge.exit.i.i.i.i_crit_edge: ; preds = %if.end32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end32.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %504 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i145.i.i.i = zext i16 %505 to i32
  %shr.i.i146.i.i.i = lshr i32 %add35.i.i.i.i, 2
  %add.i.i147.i.i.i = add nuw nsw i32 %shr.i.i146.i.i.i, %conv.i.i145.i.i.i
  %506 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i.i.i.i = add i32 %507, -1
  %and.i.i148.i.i.i = and i32 %add.i.i147.i.i.i, %sub.i.i.i.i.i
  %508 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %508)
  %509 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i.i.i.i = zext i16 %509 to i32
  %add.i.i.i.i.i.i.i = add nuw nsw i32 %and.i.i148.i.i.i, %conv.i.i.i.i.i.i.i
  %510 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i.i.i.i = zext i16 %511 to i32
  %or.i.i.i.i.i.i.i = or i32 %add.i.i.i.i.i.i.i, %conv1.i.i.i.i.i.i.i
  %sub.i.i.i.i.i.i.i = sub nsw i32 %or.i.i.i.i.i.i.i, %conv.i.i.i.i.i.i.i
  %512 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %514 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i.i.i, i32 %513) #7
  %add.i6.i.i.i.i.i.i = add i32 %514, %conv.i.i.i.i.i.i.i
  %515 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i.i.i.i = zext i8 %516 to i32
  %shr.i.i.i.i.i.i.i = lshr i32 %add.i6.i.i.i.i.i.i, %conv1.i7.i.i.i.i.i.i
  %517 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %518, i32 %shr.i.i.i.i.i.i.i
  %519 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %arrayidx.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %add.i6.i.i.i.i.i.i, %conv1.i.i.i.i.i.i.i
  %521 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i.i.i.i = zext i8 %522 to i32
  %shl.i.i.i.i.i.i.i = shl i32 %and.i.i.i.i.i.i.i, %conv3.i.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %520, i32 64
  %add.ptr.i.i.i149.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i.i, i32 %shl.i.i.i.i.i.i.i
  %523 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %add.ptr.i.i.i149.i.i.i, ptr %cur_edge, align 4
  %shr.i.i.i153.i.i.i = lshr i32 %add.i.i.i.i.i.i.i, %conv1.i7.i.i.i.i.i.i
  %arrayidx.i.i.i154.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %518, i32 %shr.i.i.i153.i.i.i
  %524 = ptrtoint ptr %arrayidx.i.i.i154.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %arrayidx.i.i.i154.i.i.i, align 4
  %and.i.i.i155.i.i.i = and i32 %add.i.i.i.i.i.i.i, %conv1.i.i.i.i.i.i.i
  %shl.i.i.i157.i.i.i = shl i32 %and.i.i.i155.i.i.i, %conv3.i.i.i.i.i.i.i
  %add.ptr.i9.i.i.i.i.i = getelementptr i8, ptr %525, i32 %shl.i.i.i157.i.i.i
  %526 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %526)
  store ptr %add.ptr.i9.i.i.i.i.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i.i.i.i

handle_post_send_edge.exit.i.i.i.i:               ; preds = %if.end.i.i.i.i.i, %if.end32.i.i.i.i.handle_post_send_edge.exit.i.i.i.i_crit_edge
  %527 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %seg, align 4
  %sig.i.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %460, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %529 = ptrtoint ptr %sig.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %sig.i.i.i.i.i, align 8
  %wire3.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2
  %531 = call ptr @memset(ptr %528, i32 0, i32 64)
  %532 = ptrtoint ptr %528 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 -128, ptr %528, align 4
  %533 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %353, align 4
  %check_byte_mask.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 1
  %535 = ptrtoint ptr %check_byte_mask.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %534, ptr %check_byte_mask.i.i.i.i.i, align 1
  %raw_data_size.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 4
  %536 = ptrtoint ptr %raw_data_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %464, ptr %raw_data_size.i.i.i.i.i, align 4
  %537 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %mem.i.i.i, align 4
  %539 = zext i32 %538 to i64
  call void @__sanitizer_cov_trace_switch(i64 %539, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %538, label %handle_post_send_edge.exit.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge [
    i32 0, label %handle_post_send_edge.exit.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge
    i32 1, label %sw.bb.i.i.i.i.i
  ]

handle_post_send_edge.exit.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge: ; preds = %handle_post_send_edge.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i.i

handle_post_send_edge.exit.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %handle_post_send_edge.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

sw.bb.i.i.i.i.i:                                  ; preds = %handle_post_send_edge.exit.i.i.i.i
  %pi_interval.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 1
  %540 = ptrtoint ptr %pi_interval.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %pi_interval.i.i.i.i.i, align 4
  %542 = zext i16 %541 to i64
  call void @__sanitizer_cov_trace_switch(i64 %542, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %541, label %sw.default.i.i.i.i.i.i [
    i16 512, label %sw.bb.i.i.i.i.i.bs_selector.exit.i.i.i.i.i_crit_edge
    i16 520, label %sw.bb1.i.i.i.i.i.i
    i16 4096, label %sw.bb2.i.i.i.i.i.i
    i16 4160, label %sw.bb3.i.i.i.i.i.i
  ]

sw.bb.i.i.i.i.i.bs_selector.exit.i.i.i.i.i_crit_edge: ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit.i.i.i.i.i

sw.bb1.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit.i.i.i.i.i

sw.bb2.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit.i.i.i.i.i

sw.bb3.i.i.i.i.i.i:                               ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit.i.i.i.i.i

sw.default.i.i.i.i.i.i:                           ; preds = %sw.bb.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit.i.i.i.i.i

bs_selector.exit.i.i.i.i.i:                       ; preds = %sw.default.i.i.i.i.i.i, %sw.bb3.i.i.i.i.i.i, %sw.bb2.i.i.i.i.i.i, %sw.bb1.i.i.i.i.i.i, %sw.bb.i.i.i.i.i.bs_selector.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi i8 [ 0, %sw.default.i.i.i.i.i.i ], [ 4, %sw.bb3.i.i.i.i.i.i ], [ 3, %sw.bb2.i.i.i.i.i.i ], [ 2, %sw.bb1.i.i.i.i.i.i ], [ 1, %sw.bb.i.i.i.i.i.bs_selector.exit.i.i.i.i.i_crit_edge ]
  %mem7.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 3
  %543 = ptrtoint ptr %mem7.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 %retval.0.i.i.i.i.i.i, ptr %mem7.i.i.i.i.i, align 1
  %544 = ptrtoint ptr %530 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %530, align 8
  %m_bfs_psv.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 6
  %546 = ptrtoint ptr %m_bfs_psv.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %545, ptr %m_bfs_psv.i.i.i.i.i, align 4
  %m_inl.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3
  %547 = ptrtoint ptr %m_inl.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 -16384, ptr %m_inl.i.i.i.i.i, align 4
  %sig.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1
  %app_tag.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 3
  %548 = ptrtoint ptr %app_tag.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %app_tag.i.i.i.i.i.i, align 4
  %dif_apptag.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 1
  %550 = ptrtoint ptr %dif_apptag.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 %549, ptr %dif_apptag.i.i.i.i.i.i, align 2
  %ref_tag.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 4
  %551 = ptrtoint ptr %ref_tag.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %ref_tag.i.i.i.i.i.i, align 4
  %dif_reftag.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 2
  %553 = ptrtoint ptr %dif_reftag.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %552, ptr %dif_reftag.i.i.i.i.i.i, align 4
  %rp_inv_seed.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 4
  %554 = ptrtoint ptr %rp_inv_seed.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 -128, ptr %rp_inv_seed.i.i.i.i.i.i, align 1
  %555 = ptrtoint ptr %sig.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %sig.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %556)
  %cmp.i.i.i.i.i.i = icmp eq i32 %556, 0
  %conv.i.i2.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i8 1, i8 2
  %sig_type.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 3
  %557 = ptrtoint ptr %sig_type.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %conv.i.i2.i.i.i.i, ptr %sig_type.i.i.i.i.i.i, align 4
  %ref_remap.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 5
  %558 = ptrtoint ptr %ref_remap.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %ref_remap.i.i.i.i.i.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %559)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %559, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %bs_selector.exit.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

bs_selector.exit.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge: ; preds = %bs_selector.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %bs_selector.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dif_inc_ref_guard_check.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 6
  %560 = ptrtoint ptr %dif_inc_ref_guard_check.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %dif_inc_ref_guard_check.i.i.i.i.i.i, align 1
  %562 = or i8 %561, 64
  store i8 %562, ptr %dif_inc_ref_guard_check.i.i.i.i.i.i, align 1
  br label %if.end.i.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i.i, %bs_selector.exit.i.i.i.i.i.if.end.i.i.i.i.i.i_crit_edge
  %app_escape.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 6
  %563 = ptrtoint ptr %app_escape.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %app_escape.i.i.i.i.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool7.not.i.i.i.i.i.i = icmp eq i8 %564, 0
  br i1 %tobool7.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.mlx5_fill_inl_bsf.exit.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i.i

if.end.i.i.i.i.i.i.mlx5_fill_inl_bsf.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_fill_inl_bsf.exit.i.i.i.i.i

if.then8.i.i.i.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ref_escape.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 7
  %565 = ptrtoint ptr %ref_escape.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %ref_escape.i.i.i.i.i.i, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %566)
  %tobool10.not.i.i.i.i.i.i = icmp eq i8 %566, 0
  %dif_inc_ref_guard_check16.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 6
  %567 = ptrtoint ptr %dif_inc_ref_guard_check16.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %dif_inc_ref_guard_check16.i.i.i.i.i.i, align 1
  %..i.i.i.i.i.i = select i1 %tobool10.not.i.i.i.i.i.i, i8 1, i8 2
  %569 = or i8 %..i.i.i.i.i.i, %568
  store i8 %569, ptr %dif_inc_ref_guard_check16.i.i.i.i.i.i, align 1
  br label %mlx5_fill_inl_bsf.exit.i.i.i.i.i

mlx5_fill_inl_bsf.exit.i.i.i.i.i:                 ; preds = %if.then8.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.mlx5_fill_inl_bsf.exit.i.i.i.i.i_crit_edge
  %apptag_check_mask.i.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 8
  %570 = ptrtoint ptr %apptag_check_mask.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %570)
  %571 = load i16, ptr %apptag_check_mask.i.i.i.i.i.i, align 4
  %dif_app_bitmask_check.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 3, i32 7
  %572 = ptrtoint ptr %dif_app_bitmask_check.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %571, ptr %dif_app_bitmask_check.i.i.i.i.i.i, align 2
  br label %sw.epilog.i.i.i.i.i

sw.epilog.i.i.i.i.i:                              ; preds = %mlx5_fill_inl_bsf.exit.i.i.i.i.i, %handle_post_send_edge.exit.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge
  %573 = ptrtoint ptr %wire3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %wire3.i.i.i.i.i, align 4
  %575 = zext i32 %574 to i64
  call void @__sanitizer_cov_trace_switch(i64 %575, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %574, label %sw.epilog.i.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge [
    i32 0, label %sw.epilog.i.i.i.i.i.if.end39.i.i.i.i_crit_edge
    i32 1, label %sw.bb10.i.i.i.i.i
  ]

sw.epilog.i.i.i.i.i.if.end39.i.i.i.i_crit_edge:   ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i.i.i

sw.epilog.i.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge: ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i.sink.split

sw.bb10.i.i.i.i.i:                                ; preds = %sw.epilog.i.i.i.i.i
  %sig11.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1
  %pi_interval12.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 1
  %576 = ptrtoint ptr %pi_interval12.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %576)
  %577 = load i16, ptr %pi_interval12.i.i.i.i.i, align 4
  %sig14.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1
  %pi_interval15.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 1
  %578 = ptrtoint ptr %pi_interval15.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %pi_interval15.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %577, i16 %579)
  %cmp.i.i.i.i.i = icmp eq i16 %577, %579
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %sw.bb10.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge

sw.bb10.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge:    ; preds = %sw.bb10.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %sw.bb10.i.i.i.i.i
  %580 = ptrtoint ptr %mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %mem.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %581)
  %cmp20.i.i.i.i.i = icmp eq i32 %581, 1
  br i1 %cmp20.i.i.i.i.i, label %if.then.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i
  %582 = ptrtoint ptr %528 to i32
  call void @__asan_store1_noabort(i32 %582)
  store i8 -112, ptr %528, align 4
  %583 = ptrtoint ptr %sig11.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %sig11.i.i.i.i.i, align 4
  %585 = ptrtoint ptr %sig14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %sig14.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %584, i32 %586)
  %cmp28.i.i.i.i.i = icmp eq i32 %584, %586
  br i1 %cmp28.i.i.i.i.i, label %if.then30.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i3.i.i.i.i_crit_edge

if.then.i.i.i.i.i.if.end.i3.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i3.i.i.i.i

if.then30.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %wire31.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 2
  %587 = ptrtoint ptr %wire31.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %wire31.i.i.i.i.i, align 2
  %589 = or i8 %588, -64
  store i8 %589, ptr %wire31.i.i.i.i.i, align 2
  br label %if.end.i3.i.i.i.i

if.end.i3.i.i.i.i:                                ; preds = %if.then30.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i3.i.i.i.i_crit_edge
  %app_tag.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 3
  %590 = ptrtoint ptr %app_tag.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %app_tag.i.i.i.i.i, align 4
  %app_tag38.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 3
  %592 = ptrtoint ptr %app_tag38.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %app_tag38.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %591, i16 %593)
  %cmp40.i.i.i.i.i = icmp eq i16 %591, %593
  br i1 %cmp40.i.i.i.i.i, label %if.then42.i.i.i.i.i, label %if.end.i3.i.i.i.i.if.end47.i.i.i.i.i_crit_edge

if.end.i3.i.i.i.i.if.end47.i.i.i.i.i_crit_edge:   ; preds = %if.end.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i.i.i.i

if.then42.i.i.i.i.i:                              ; preds = %if.end.i3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %wire43.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 2
  %594 = ptrtoint ptr %wire43.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %wire43.i.i.i.i.i, align 2
  %596 = or i8 %595, 48
  store i8 %596, ptr %wire43.i.i.i.i.i, align 2
  br label %if.end47.i.i.i.i.i

if.end47.i.i.i.i.i:                               ; preds = %if.then42.i.i.i.i.i, %if.end.i3.i.i.i.i.if.end47.i.i.i.i.i_crit_edge
  %ref_tag.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 1, i32 1, i32 0, i32 4
  %597 = ptrtoint ptr %ref_tag.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %ref_tag.i.i.i.i.i, align 4
  %ref_tag50.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 4
  %599 = ptrtoint ptr %ref_tag50.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %ref_tag50.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %598, i32 %600)
  %cmp51.i.i.i.i.i = icmp eq i32 %598, %600
  br i1 %cmp51.i.i.i.i.i, label %if.then53.i.i.i.i.i, label %if.end47.i.i.i.i.i.if.end64.i.i.i.i.i_crit_edge

if.end47.i.i.i.i.i.if.end64.i.i.i.i.i_crit_edge:  ; preds = %if.end47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i.i.i.i.i

if.then53.i.i.i.i.i:                              ; preds = %if.end47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %wire54.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 2
  %601 = ptrtoint ptr %wire54.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %wire54.i.i.i.i.i, align 2
  %603 = or i8 %602, 15
  store i8 %603, ptr %wire54.i.i.i.i.i, align 2
  br label %if.end64.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge, %sw.bb10.i.i.i.i.i.if.else.i.i.i.i.i_crit_edge
  %604 = zext i16 %579 to i64
  call void @__sanitizer_cov_trace_switch(i64 %604, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %579, label %sw.default.i104.i.i.i.i.i [
    i16 512, label %if.else.i.i.i.i.i.bs_selector.exit106.i.i.i.i.i_crit_edge
    i16 520, label %sw.bb1.i101.i.i.i.i.i
    i16 4096, label %sw.bb2.i102.i.i.i.i.i
    i16 4160, label %sw.bb3.i103.i.i.i.i.i
  ]

if.else.i.i.i.i.i.bs_selector.exit106.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit106.i.i.i.i.i

sw.bb1.i101.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit106.i.i.i.i.i

sw.bb2.i102.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit106.i.i.i.i.i

sw.bb3.i103.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit106.i.i.i.i.i

sw.default.i104.i.i.i.i.i:                        ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bs_selector.exit106.i.i.i.i.i

bs_selector.exit106.i.i.i.i.i:                    ; preds = %sw.default.i104.i.i.i.i.i, %sw.bb3.i103.i.i.i.i.i, %sw.bb2.i102.i.i.i.i.i, %sw.bb1.i101.i.i.i.i.i, %if.else.i.i.i.i.i.bs_selector.exit106.i.i.i.i.i_crit_edge
  %retval.0.i105.i.i.i.i.i = phi i8 [ 0, %sw.default.i104.i.i.i.i.i ], [ 4, %sw.bb3.i103.i.i.i.i.i ], [ 3, %sw.bb2.i102.i.i.i.i.i ], [ 2, %sw.bb1.i101.i.i.i.i.i ], [ 1, %if.else.i.i.i.i.i.bs_selector.exit106.i.i.i.i.i_crit_edge ]
  %wire63.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 2
  %605 = ptrtoint ptr %wire63.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 %retval.0.i105.i.i.i.i.i, ptr %wire63.i.i.i.i.i, align 2
  br label %if.end64.i.i.i.i.i

if.end64.i.i.i.i.i:                               ; preds = %bs_selector.exit106.i.i.i.i.i, %if.then53.i.i.i.i.i, %if.end47.i.i.i.i.i.if.end64.i.i.i.i.i_crit_edge
  %psv_wire.i.i.i.i.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %530, i32 0, i32 1
  %606 = ptrtoint ptr %psv_wire.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %psv_wire.i.i.i.i.i, align 4
  %w_bfs_psv.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf_basic, ptr %528, i32 0, i32 5
  %608 = ptrtoint ptr %w_bfs_psv.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 %607, ptr %w_bfs_psv.i.i.i.i.i, align 4
  %w_inl.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2
  %609 = ptrtoint ptr %w_inl.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 -16384, ptr %w_inl.i.i.i.i.i, align 4
  %app_tag.i108.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 3
  %610 = ptrtoint ptr %app_tag.i108.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %app_tag.i108.i.i.i.i.i, align 4
  %dif_apptag.i109.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 1
  %612 = ptrtoint ptr %dif_apptag.i109.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %611, ptr %dif_apptag.i109.i.i.i.i.i, align 2
  %ref_tag.i110.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 4
  %613 = ptrtoint ptr %ref_tag.i110.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %ref_tag.i110.i.i.i.i.i, align 4
  %dif_reftag.i111.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 2
  %615 = ptrtoint ptr %dif_reftag.i111.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %614, ptr %dif_reftag.i111.i.i.i.i.i, align 4
  %rp_inv_seed.i112.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 4
  %616 = ptrtoint ptr %rp_inv_seed.i112.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 -128, ptr %rp_inv_seed.i112.i.i.i.i.i, align 1
  %617 = ptrtoint ptr %sig14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %sig14.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %cmp.i113.i.i.i.i.i = icmp eq i32 %618, 0
  %conv.i114.i.i.i.i.i = select i1 %cmp.i113.i.i.i.i.i, i8 1, i8 2
  %sig_type.i115.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 3
  %619 = ptrtoint ptr %sig_type.i115.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %conv.i114.i.i.i.i.i, ptr %sig_type.i115.i.i.i.i.i, align 4
  %ref_remap.i116.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 5
  %620 = ptrtoint ptr %ref_remap.i116.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %ref_remap.i116.i.i.i.i.i, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool.not.i117.i.i.i.i.i = icmp eq i8 %621, 0
  br i1 %tobool.not.i117.i.i.i.i.i, label %if.end64.i.i.i.i.i.if.end.i122.i.i.i.i.i_crit_edge, label %if.then.i119.i.i.i.i.i

if.end64.i.i.i.i.i.if.end.i122.i.i.i.i.i_crit_edge: ; preds = %if.end64.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i122.i.i.i.i.i

if.then.i119.i.i.i.i.i:                           ; preds = %if.end64.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dif_inc_ref_guard_check.i118.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 6
  %622 = ptrtoint ptr %dif_inc_ref_guard_check.i118.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %dif_inc_ref_guard_check.i118.i.i.i.i.i, align 1
  %624 = or i8 %623, 64
  store i8 %624, ptr %dif_inc_ref_guard_check.i118.i.i.i.i.i, align 1
  br label %if.end.i122.i.i.i.i.i

if.end.i122.i.i.i.i.i:                            ; preds = %if.then.i119.i.i.i.i.i, %if.end64.i.i.i.i.i.if.end.i122.i.i.i.i.i_crit_edge
  %app_escape.i120.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 6
  %625 = ptrtoint ptr %app_escape.i120.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %app_escape.i120.i.i.i.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %626)
  %tobool7.not.i121.i.i.i.i.i = icmp eq i8 %626, 0
  br i1 %tobool7.not.i121.i.i.i.i.i, label %if.end.i122.i.i.i.i.i.mlx5_fill_inl_bsf.exit130.i.i.i.i.i_crit_edge, label %if.then8.i127.i.i.i.i.i

if.end.i122.i.i.i.i.i.mlx5_fill_inl_bsf.exit130.i.i.i.i.i_crit_edge: ; preds = %if.end.i122.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_fill_inl_bsf.exit130.i.i.i.i.i

if.then8.i127.i.i.i.i.i:                          ; preds = %if.end.i122.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ref_escape.i123.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 7
  %627 = ptrtoint ptr %ref_escape.i123.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %ref_escape.i123.i.i.i.i.i, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %628)
  %tobool10.not.i124.i.i.i.i.i = icmp eq i8 %628, 0
  %dif_inc_ref_guard_check16.i125.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 6
  %629 = ptrtoint ptr %dif_inc_ref_guard_check16.i125.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %dif_inc_ref_guard_check16.i125.i.i.i.i.i, align 1
  %..i126.i.i.i.i.i = select i1 %tobool10.not.i124.i.i.i.i.i, i8 1, i8 2
  %631 = or i8 %..i126.i.i.i.i.i, %630
  store i8 %631, ptr %dif_inc_ref_guard_check16.i125.i.i.i.i.i, align 1
  br label %mlx5_fill_inl_bsf.exit130.i.i.i.i.i

mlx5_fill_inl_bsf.exit130.i.i.i.i.i:              ; preds = %if.then8.i127.i.i.i.i.i, %if.end.i122.i.i.i.i.i.mlx5_fill_inl_bsf.exit130.i.i.i.i.i_crit_edge
  %apptag_check_mask.i128.i.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %353, i32 0, i32 2, i32 1, i32 0, i32 8
  %632 = ptrtoint ptr %apptag_check_mask.i128.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %apptag_check_mask.i128.i.i.i.i.i, align 4
  %dif_app_bitmask_check.i129.i.i.i.i.i = getelementptr inbounds %struct.mlx5_bsf, ptr %528, i32 0, i32 2, i32 7
  %634 = ptrtoint ptr %dif_app_bitmask_check.i129.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 %633, ptr %dif_app_bitmask_check.i129.i.i.i.i.i, align 2
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %mlx5_fill_inl_bsf.exit130.i.i.i.i.i, %sw.epilog.i.i.i.i.i.if.end39.i.i.i.i_crit_edge
  %635 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %seg, align 4
  %add.ptr40.i.i.i.i = getelementptr i8, ptr %636, i32 64
  store ptr %add.ptr40.i.i.i.i, ptr %seg, align 4
  %637 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %size, align 4
  %add41.i.i.i.i = add i32 %638, 4
  store i32 %add41.i.i.i.i, ptr %size, align 4
  %639 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i4.i.i.i.i = icmp eq ptr %add.ptr40.i.i.i.i, %640
  br i1 %cmp.not.i4.i.i.i.i, label %if.end.i41.i.i.i.i, label %if.end39.i.i.i.i.if.end61.i.i_crit_edge, !prof !78

if.end39.i.i.i.i.if.end61.i.i_crit_edge:          ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.end.i41.i.i.i.i:                               ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %641 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %641)
  %642 = load i16, ptr %cur_post.i553, align 4
  %conv.i6.i.i.i.i = zext i16 %642 to i32
  %shr.i7.i.i.i.i = lshr i32 %add41.i.i.i.i, 2
  %add.i8.i.i.i.i = add nuw nsw i32 %shr.i7.i.i.i.i, %conv.i6.i.i.i.i
  %643 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i10.i.i.i.i = add i32 %644, -1
  %and.i11.i.i.i.i = and i32 %add.i8.i.i.i.i, %sub.i10.i.i.i.i
  %645 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i13.i.i.i.i = zext i16 %646 to i32
  %add.i.i.i14.i.i.i.i = add nuw nsw i32 %and.i11.i.i.i.i, %conv.i.i.i13.i.i.i.i
  %647 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %647)
  %648 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i16.i.i.i.i = zext i16 %648 to i32
  %or.i.i.i17.i.i.i.i = or i32 %add.i.i.i14.i.i.i.i, %conv1.i.i.i16.i.i.i.i
  %sub.i.i.i18.i.i.i.i = sub nsw i32 %or.i.i.i17.i.i.i.i, %conv.i.i.i13.i.i.i.i
  %649 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %651 = call i32 @llvm.umin.i32(i32 %sub.i.i.i18.i.i.i.i, i32 %650) #7
  %add.i6.i.i20.i.i.i.i = add i32 %651, %conv.i.i.i13.i.i.i.i
  %652 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i22.i.i.i.i = zext i8 %653 to i32
  %shr.i.i.i23.i.i.i.i = lshr i32 %add.i6.i.i20.i.i.i.i, %conv1.i7.i.i22.i.i.i.i
  %654 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i24.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %655, i32 %shr.i.i.i23.i.i.i.i
  %656 = ptrtoint ptr %arrayidx.i.i.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %arrayidx.i.i.i24.i.i.i.i, align 4
  %and.i.i.i25.i.i.i.i = and i32 %add.i6.i.i20.i.i.i.i, %conv1.i.i.i16.i.i.i.i
  %658 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i27.i.i.i.i = zext i8 %659 to i32
  %shl.i.i.i28.i.i.i.i = shl i32 %and.i.i.i25.i.i.i.i, %conv3.i.i.i27.i.i.i.i
  %add.ptr.i.i.i29.i.i.i.i = getelementptr i8, ptr %657, i32 64
  %add.ptr.i.i30.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i29.i.i.i.i, i32 %shl.i.i.i28.i.i.i.i
  %660 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %660)
  store ptr %add.ptr.i.i30.i.i.i.i, ptr %cur_edge, align 4
  %shr.i.i34.i.i.i.i = lshr i32 %add.i.i.i14.i.i.i.i, %conv1.i7.i.i22.i.i.i.i
  %arrayidx.i.i35.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %655, i32 %shr.i.i34.i.i.i.i
  %661 = ptrtoint ptr %arrayidx.i.i35.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %arrayidx.i.i35.i.i.i.i, align 4
  %and.i.i37.i.i.i.i = and i32 %add.i.i.i14.i.i.i.i, %conv1.i.i.i16.i.i.i.i
  %shl.i.i39.i.i.i.i = shl i32 %and.i.i37.i.i.i.i, %conv3.i.i.i27.i.i.i.i
  %add.ptr.i9.i40.i.i.i.i = getelementptr i8, ptr %662, i32 %shl.i.i39.i.i.i.i
  %663 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %663)
  store ptr %add.ptr.i9.i40.i.i.i.i, ptr %seg, align 4
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end.i41.i.i.i.i, %if.end39.i.i.i.i.if.end61.i.i_crit_edge
  %664 = ptrtoint ptr %sig.i.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %sig.i.i.i, align 8
  %sig_status_checked62.i.i.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %665, i32 0, i32 3
  %666 = ptrtoint ptr %sig_status_checked62.i.i.i to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 0, ptr %sig_status_checked62.i.i.i, align 8
  %667 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %ctrl, align 4
  %669 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %seg, align 4
  %conv62.i.i = trunc i32 %add41.i.i.i.i to i8
  %671 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %cur_edge, align 4
  %673 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %idx, align 4
  %675 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 1
  %676 = ptrtoint ptr %675 to i32
  call void @__asan_load8_noabort(i32 %676)
  %677 = load i64, ptr %675, align 8
  call fastcc void @finish_wqe(ptr noundef %ibqp, ptr noundef %668, ptr noundef %670, i8 noundef zeroext %conv62.i.i, ptr noundef %672, i32 noundef %674, i64 noundef %677, i32 noundef %nreq.0685, i8 noundef zeroext %fence.0, i32 noundef 37) #7
  %sig_attrs64.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 11
  %678 = ptrtoint ptr %sig_attrs64.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %sig_attrs64.i.i, align 8
  %mem.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %679, i32 0, i32 1
  %sig.i.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %233, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %680 = ptrtoint ptr %sig.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %sig.i.i, align 8
  %682 = ptrtoint ptr %681 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %681, align 8
  %call65.i.i = call fastcc i32 @handle_psv(ptr noundef %2, ptr noundef %ibqp, ptr noundef nonnull %wr.addr.0681, ptr noundef nonnull %ctrl, ptr noundef nonnull %seg, ptr noundef nonnull %size, ptr noundef nonnull %cur_edge, ptr noundef nonnull %idx, i32 noundef %nreq.0685, ptr noundef %mem.i.i, i32 noundef %683, i8 noundef zeroext %next_fence.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %tobool66.not.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end74.i.i, label %if.end61.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge, !prof !77

if.end61.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i

if.end74.i.i:                                     ; preds = %if.end61.i.i
  %wire.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %679, i32 0, i32 2
  %684 = ptrtoint ptr %sig.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %sig.i.i, align 8
  %psv_wire.i.i = getelementptr inbounds %struct.mlx5_core_sig_ctx, ptr %685, i32 0, i32 1
  %686 = ptrtoint ptr %psv_wire.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %psv_wire.i.i, align 4
  %call77.i.i = call fastcc i32 @handle_psv(ptr noundef %2, ptr noundef %ibqp, ptr noundef nonnull %wr.addr.0681, ptr noundef nonnull %ctrl, ptr noundef nonnull %seg, ptr noundef nonnull %size, ptr noundef nonnull %cur_edge, ptr noundef nonnull %idx, i32 noundef %nreq.0685, ptr noundef %wire.i.i, i32 noundef %687, i8 noundef zeroext %next_fence.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i)
  %tobool78.not.i.i = icmp eq i32 %call77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end17.i, label %if.end74.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge, !prof !77

if.end74.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge: ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_reg_mr_integrity.exit.thread.i

handle_reg_mr_integrity.exit.thread.i.sink.split: ; preds = %sw.epilog.i.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %handle_post_send_edge.exit.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %cleanup.thread.i.i.i.i, %lor.lhs.false35.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %lor.lhs.false24.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %lor.lhs.false14.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %lor.lhs.false.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %if.end42.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge, %mlx5_wq_overflow.exit.i583.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge
  %.sink787 = phi i32 [ 1130, %cleanup.thread.i.i.i.i ], [ 1106, %mlx5_wq_overflow.exit.i583.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %sw.epilog.i.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %handle_post_send_edge.exit.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %lor.lhs.false35.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %lor.lhs.false24.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %lor.lhs.false14.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %lor.lhs.false.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ 1130, %if.end42.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ]
  %err.0.i.ph.i.ph = phi i32 [ -22, %cleanup.thread.i.i.i.i ], [ -12, %mlx5_wq_overflow.exit.i583.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %sw.epilog.i.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %handle_post_send_edge.exit.i.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %lor.lhs.false35.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %lor.lhs.false24.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %lor.lhs.false14.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %lor.lhs.false.i.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ], [ -22, %if.end42.i.i.handle_reg_mr_integrity.exit.thread.i.sink.split_crit_edge ]
  %688 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %689 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i166.i.i = and i32 %689, -16384
  %690 = inttoptr i32 %and.i166.i.i to ptr
  %task59.i.i = getelementptr inbounds %struct.thread_info, ptr %690, i32 0, i32 2
  %691 = ptrtoint ptr %task59.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %task59.i.i, align 8
  %pid60.i.i = getelementptr inbounds %struct.task_struct, ptr %692, i32 0, i32 68
  %693 = ptrtoint ptr %pid60.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %pid60.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %688, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef %.sink787, i32 noundef %694) #10
  br label %handle_reg_mr_integrity.exit.thread.i

handle_reg_mr_integrity.exit.thread.i:            ; preds = %handle_reg_mr_integrity.exit.thread.i.sink.split, %if.end74.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge, %if.end61.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge, %if.then.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge
  %err.0.i.ph.i = phi i32 [ %err.0.i.ph.i.ph, %handle_reg_mr_integrity.exit.thread.i.sink.split ], [ %call9.i.i, %if.then.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge ], [ %call65.i.i, %if.end61.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge ], [ %call77.i.i, %if.end74.i.i.handle_reg_mr_integrity.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reg_pi_wr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %pa_pi_mr.i.i) #7
  br label %if.then90

if.end17.i:                                       ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %695 = ptrtoint ptr %next_fence71 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 32, ptr %next_fence71, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reg_pi_wr.i.i) #7
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %pa_pi_mr.i.i) #7
  br label %if.else91thread-pre-split

if.then90:                                        ; preds = %handle_reg_mr_integrity.exit.thread.i, %sw.bb3.i.if.then90_crit_edge, %do.end.i
  %err.0.i = phi i32 [ -95, %do.end.i ], [ %err.0.i.ph.i, %handle_reg_mr_integrity.exit.thread.i ], [ %call2.i.i, %sw.bb3.i.if.then90_crit_edge ]
  %696 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %696)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

if.else91thread-pre-split:                        ; preds = %if.end17.i, %sw.bb3.i.if.else91thread-pre-split_crit_edge, %if.end.i51.i.i.i, %handle_post_send_edge.exit.i.i.i.if.else91thread-pre-split_crit_edge, %sw.bb.i
  %num_sge.0.ph.ph = phi i32 [ 0, %if.end17.i ], [ %25, %sw.bb.i ], [ 0, %if.end.i51.i.i.i ], [ 0, %handle_post_send_edge.exit.i.i.i.if.else91thread-pre-split_crit_edge ], [ 0, %sw.bb3.i.if.else91thread-pre-split_crit_edge ]
  %697 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %697)
  %.pr = load i32, ptr %opcode, align 8
  br label %if.else91

if.else91:                                        ; preds = %if.else91thread-pre-split, %sw.bb81.if.else91_crit_edge
  %698 = phi i32 [ %.pr, %if.else91thread-pre-split ], [ %118, %sw.bb81.if.else91_crit_edge ]
  %num_sge.0.ph = phi i32 [ %num_sge.0.ph.ph, %if.else91thread-pre-split ], [ %25, %sw.bb81.if.else91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %698)
  %cmp93 = icmp eq i32 %698, 33
  br i1 %cmp93, label %if.else91.for.inc180_crit_edge, label %if.else91.sw.epilog_crit_edge

if.else91.sw.epilog_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else91.for.inc180_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc180

sw.bb98:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %switch.i = icmp ult i32 %102, 2
  br i1 %switch.i, label %sw.bb.i316, label %sw.bb98.sw.epilog_crit_edge

sw.bb98.sw.epilog_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i316:                                       ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  %699 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %seg, align 4
  %remote_addr.i.i310 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0681, i32 0, i32 1
  %701 = ptrtoint ptr %remote_addr.i.i310 to i32
  call void @__asan_load8_noabort(i32 %701)
  %702 = load i64, ptr %remote_addr.i.i310, align 8
  %rkey.i.i311 = getelementptr inbounds %struct.ib_rdma_wr, ptr %wr.addr.0681, i32 0, i32 2
  %703 = ptrtoint ptr %rkey.i.i311 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %rkey.i.i311, align 8
  %705 = ptrtoint ptr %700 to i32
  call void @__asan_store8_noabort(i32 %705)
  store i64 %702, ptr %700, align 8
  %rkey1.i.i.i312 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, ptr %700, i32 0, i32 1
  %706 = ptrtoint ptr %rkey1.i.i.i312 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %704, ptr %rkey1.i.i.i312, align 8
  %reserved.i.i.i313 = getelementptr inbounds %struct.mlx5_wqe_raddr_seg, ptr %700, i32 0, i32 2
  %707 = ptrtoint ptr %reserved.i.i.i313 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 0, ptr %reserved.i.i.i313, align 4
  %add.ptr.i.i314 = getelementptr i8, ptr %700, i32 16
  store ptr %add.ptr.i.i314, ptr %seg, align 4
  %708 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %size, align 4
  %add.i.i315 = add i32 %709, 1
  store i32 %add.i.i315, ptr %size, align 4
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end79
  %710 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %port, align 4
  %sub = add i32 %711, -1
  %arrayidx = getelementptr %struct.mlx5_ib_dev, ptr %2, i32 0, i32 40, i32 %sub
  %712 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %arrayidx, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %713)
  %tobool100.not = icmp eq i8 %713, 0
  br i1 %tobool100.not, label %do.end112, label %sw.bb99.sw.bb118_crit_edge, !prof !78

sw.bb99.sw.bb118_crit_edge:                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb118

do.end112:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  %714 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %715 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i317 = and i32 %715, -16384
  %716 = inttoptr i32 %and.i317 to ptr
  %task115 = getelementptr inbounds %struct.thread_info, ptr %716, i32 0, i32 2
  %717 = ptrtoint ptr %task115 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %task115, align 8
  %pid116 = getelementptr inbounds %struct.task_struct, ptr %718, i32 0, i32 68
  %719 = ptrtoint ptr %pid116 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %pid116, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %714, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1375, i32 noundef %720) #10
  %721 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

sw.bb118:                                         ; preds = %sw.bb99.sw.bb118_crit_edge, %if.end79.sw.bb118_crit_edge
  %722 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %seg, align 4
  %ah.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 1
  %724 = ptrtoint ptr %ah.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %ah.i.i, align 8
  %av2.i.i = getelementptr inbounds %struct.mlx5_ib_ah, ptr %725, i32 0, i32 1
  %726 = call ptr @memcpy(ptr %723, ptr %av2.i.i, i32 48)
  %remote_qpn.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 5
  %727 = ptrtoint ptr %remote_qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load i32, ptr %remote_qpn.i.i, align 8
  %or.i.i = or i32 %728, -2147483648
  %dqp_dct.i.i = getelementptr inbounds %struct.mlx5_av, ptr %723, i32 0, i32 1
  %729 = ptrtoint ptr %dqp_dct.i.i to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 %or.i.i, ptr %dqp_dct.i.i, align 8
  %remote_qkey.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 6
  %730 = ptrtoint ptr %remote_qkey.i.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %remote_qkey.i.i, align 4
  %732 = ptrtoint ptr %723 to i32
  call void @__asan_store4_noabort(i32 %732)
  store i32 %731, ptr %723, align 8
  %733 = load ptr, ptr %seg, align 4
  %add.ptr.i = getelementptr i8, ptr %733, i32 48
  store ptr %add.ptr.i, ptr %seg, align 4
  %734 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %size, align 4
  %add.i = add i32 %735, 3
  store i32 %add.i, ptr %size, align 4
  %736 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i = icmp eq ptr %add.ptr.i, %737
  br i1 %cmp.not.i.i, label %if.end.i.i331, label %sw.bb118.sw.epilog_crit_edge, !prof !78

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i331:                                    ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  %738 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %738)
  %739 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i318 = zext i16 %739 to i32
  %shr.i.i = lshr i32 %add.i, 2
  %add.i.i319 = add nuw nsw i32 %shr.i.i, %conv.i.i318
  %740 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i = add i32 %741, -1
  %and.i.i320 = and i32 %add.i.i319, %sub.i.i
  %742 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %742)
  %743 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i321 = zext i16 %743 to i32
  %add.i.i.i.i322 = add nuw nsw i32 %and.i.i320, %conv.i.i.i.i321
  %744 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i = zext i16 %745 to i32
  %or.i.i.i.i = or i32 %add.i.i.i.i322, %conv1.i.i.i.i
  %sub.i.i.i.i323 = sub nsw i32 %or.i.i.i.i, %conv.i.i.i.i321
  %746 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %748 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i323, i32 %747) #7
  %add.i6.i.i.i = add i32 %748, %conv.i.i.i.i321
  %749 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i = zext i8 %750 to i32
  %shr.i.i.i.i324 = lshr i32 %add.i6.i.i.i, %conv1.i7.i.i.i
  %751 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %752, i32 %shr.i.i.i.i324
  %753 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i325 = and i32 %add.i6.i.i.i, %conv1.i.i.i.i
  %755 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i = zext i8 %756 to i32
  %shl.i.i.i.i326 = shl i32 %and.i.i.i.i325, %conv3.i.i.i.i
  %add.ptr.i.i.i.i327 = getelementptr i8, ptr %754, i32 64
  %add.ptr.i.i.i328 = getelementptr i8, ptr %add.ptr.i.i.i.i327, i32 %shl.i.i.i.i326
  %757 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %757)
  store ptr %add.ptr.i.i.i328, ptr %cur_edge, align 4
  %shr.i.i.i = lshr i32 %add.i.i.i.i322, %conv1.i7.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %752, i32 %shr.i.i.i
  %758 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i330 = and i32 %add.i.i.i.i322, %conv1.i.i.i.i
  %shl.i.i.i = shl i32 %and.i.i.i330, %conv3.i.i.i.i
  %add.ptr.i9.i.i = getelementptr i8, ptr %759, i32 %shl.i.i.i
  %760 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %760)
  store ptr %add.ptr.i9.i.i, ptr %seg, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end79
  %761 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %seg, align 4
  %ah.i.i332 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 1
  %763 = ptrtoint ptr %ah.i.i332 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %ah.i.i332, align 8
  %av2.i.i333 = getelementptr inbounds %struct.mlx5_ib_ah, ptr %764, i32 0, i32 1
  %765 = call ptr @memcpy(ptr %762, ptr %av2.i.i333, i32 48)
  %remote_qpn.i.i334 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 5
  %766 = ptrtoint ptr %remote_qpn.i.i334 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %remote_qpn.i.i334, align 8
  %or.i.i335 = or i32 %767, -2147483648
  %dqp_dct.i.i336 = getelementptr inbounds %struct.mlx5_av, ptr %762, i32 0, i32 1
  %768 = ptrtoint ptr %dqp_dct.i.i336 to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 %or.i.i335, ptr %dqp_dct.i.i336, align 8
  %remote_qkey.i.i337 = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 6
  %769 = ptrtoint ptr %remote_qkey.i.i337 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %remote_qkey.i.i337, align 4
  %771 = ptrtoint ptr %762 to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 %770, ptr %762, align 8
  %772 = load ptr, ptr %seg, align 4
  %add.ptr.i338 = getelementptr i8, ptr %772, i32 48
  store ptr %add.ptr.i338, ptr %seg, align 4
  %773 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %size, align 4
  %add.i339 = add i32 %774, 3
  store i32 %add.i339, ptr %size, align 4
  %775 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i341 = icmp eq ptr %add.ptr.i338, %776
  br i1 %cmp.not.i.i341, label %if.end.i.i378, label %sw.bb119.handle_post_send_edge.exit.i_crit_edge, !prof !78

sw.bb119.handle_post_send_edge.exit.i_crit_edge:  ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i

if.end.i.i378:                                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #9
  %777 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %777)
  %778 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i343 = zext i16 %778 to i32
  %shr.i.i344 = lshr i32 %add.i339, 2
  %add.i.i345 = add nuw nsw i32 %shr.i.i344, %conv.i.i343
  %779 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i347 = add i32 %780, -1
  %and.i.i348 = and i32 %add.i.i345, %sub.i.i347
  %781 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %781)
  %782 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i350 = zext i16 %782 to i32
  %add.i.i.i.i351 = add nuw nsw i32 %and.i.i348, %conv.i.i.i.i350
  %783 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %783)
  %784 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i353 = zext i16 %784 to i32
  %or.i.i.i.i354 = or i32 %add.i.i.i.i351, %conv1.i.i.i.i353
  %sub.i.i.i.i355 = sub nsw i32 %or.i.i.i.i354, %conv.i.i.i.i350
  %785 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %787 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i355, i32 %786) #7
  %add.i6.i.i.i357 = add i32 %787, %conv.i.i.i.i350
  %788 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i359 = zext i8 %789 to i32
  %shr.i.i.i.i360 = lshr i32 %add.i6.i.i.i357, %conv1.i7.i.i.i359
  %790 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i361 = getelementptr %struct.mlx5_buf_list, ptr %791, i32 %shr.i.i.i.i360
  %792 = ptrtoint ptr %arrayidx.i.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %arrayidx.i.i.i.i361, align 4
  %and.i.i.i.i362 = and i32 %add.i6.i.i.i357, %conv1.i.i.i.i353
  %794 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i364 = zext i8 %795 to i32
  %shl.i.i.i.i365 = shl i32 %and.i.i.i.i362, %conv3.i.i.i.i364
  %add.ptr.i.i.i.i366 = getelementptr i8, ptr %793, i32 64
  %add.ptr.i.i.i367 = getelementptr i8, ptr %add.ptr.i.i.i.i366, i32 %shl.i.i.i.i365
  %796 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %796)
  store ptr %add.ptr.i.i.i367, ptr %cur_edge, align 4
  %shr.i.i.i371 = lshr i32 %add.i.i.i.i351, %conv1.i7.i.i.i359
  %arrayidx.i.i.i372 = getelementptr %struct.mlx5_buf_list, ptr %791, i32 %shr.i.i.i371
  %797 = ptrtoint ptr %arrayidx.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %arrayidx.i.i.i372, align 4
  %and.i.i.i374 = and i32 %add.i.i.i.i351, %conv1.i.i.i.i353
  %shl.i.i.i376 = shl i32 %and.i.i.i374, %conv3.i.i.i.i364
  %add.ptr.i9.i.i377 = getelementptr i8, ptr %798, i32 %shl.i.i.i376
  %799 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %799)
  store ptr %add.ptr.i9.i.i377, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i

handle_post_send_edge.exit.i:                     ; preds = %if.end.i.i378, %sw.bb119.handle_post_send_edge.exit.i_crit_edge
  %800 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load i32, ptr %flags.i, align 8
  %and.i379 = and i32 %801, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i379)
  %tobool.not.i380 = icmp eq i32 %and.i379, 0
  br i1 %tobool.not.i380, label %handle_post_send_edge.exit.i.sw.epilog_crit_edge, label %if.then.i

handle_post_send_edge.exit.i.sw.epilog_crit_edge: ; preds = %handle_post_send_edge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %handle_post_send_edge.exit.i
  %802 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %seg, align 4
  %804 = call ptr @memset(ptr %803, i32 0, i32 16)
  %add.ptr1.i = getelementptr i8, ptr %803, i32 16
  store ptr %add.ptr1.i, ptr %seg, align 4
  %add2.i = add i32 %774, 4
  %805 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 %add2.i, ptr %size, align 4
  %806 = call ptr @memset(ptr %add.ptr1.i, i32 0, i32 16)
  %807 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %send_flags.i, align 4
  %and.i20.i = and i32 %808, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i.i381 = icmp eq i32 %and.i20.i, 0
  br i1 %tobool.not.i.i381, label %if.then.i.if.end.i21.i_crit_edge, label %if.then.i.i382

if.then.i.if.end.i21.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i21.i

if.then.i.i382:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %cs_flags.i.i = getelementptr i8, ptr %803, i32 20
  %809 = ptrtoint ptr %cs_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %809)
  store i8 -64, ptr %cs_flags.i.i, align 4
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %if.then.i.i382, %if.then.i.if.end.i21.i_crit_edge
  %810 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %opcode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %811)
  %cmp.i.i = icmp eq i32 %811, 10
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end22.i.i

if.then1.i.i:                                     ; preds = %if.end.i21.i
  %header.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 2
  %812 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %header.i.i, align 4
  %hlen.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 3
  %814 = ptrtoint ptr %hlen.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %hlen.i.i, align 8
  %mss.i.i = getelementptr inbounds %struct.ib_ud_wr, ptr %wr.addr.0681, i32 0, i32 4
  %816 = ptrtoint ptr %mss.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %mss.i.i, align 4
  %conv.i22.i = trunc i32 %817 to i16
  %mss2.i.i = getelementptr i8, ptr %803, i32 22
  %818 = ptrtoint ptr %mss2.i.i to i32
  call void @__asan_store2_noabort(i32 %818)
  store i16 %conv.i22.i, ptr %mss2.i.i, align 2
  %conv3.i.i = trunc i32 %815 to i16
  %819 = getelementptr i8, ptr %803, i32 28
  %820 = ptrtoint ptr %819 to i32
  call void @__asan_store2_noabort(i32 %820)
  store i16 %conv3.i.i, ptr %819, align 4
  %821 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %cur_edge, align 4
  %start.i.i = getelementptr i8, ptr %803, i32 30
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %822 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %start.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv4.i.i = sext i32 %sub.ptr.sub.i.i to i64
  %conv5.i.i = zext i32 %815 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv4.i.i, i64 %conv5.i.i)
  %cmp7.i.i = icmp ult i64 %conv4.i.i, %conv5.i.i
  %sub.ptr.sub..i.i = select i1 %cmp7.i.i, i32 %sub.ptr.sub.i.i, i32 %815
  %823 = call ptr @memcpy(ptr %start.i.i, ptr %813, i32 %sub.ptr.sub..i.i)
  %add12.i.i = add i32 %sub.ptr.sub..i.i, 29
  %and13.i.i = and i32 %add12.i.i, -16
  %div58.i.i = lshr i32 %add12.i.i, 4
  %824 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %size, align 4
  %add14.i.i = add i32 %div58.i.i, %825
  store i32 %add14.i.i, ptr %size, align 4
  %826 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %seg, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %827, i32 %and13.i.i
  store ptr %add.ptr15.i.i, ptr %seg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %815, i32 %sub.ptr.sub..i.i)
  %cmp16.i.i = icmp ugt i32 %815, %sub.ptr.sub..i.i
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.then1.i.i.set_eth_seg.exit.i_crit_edge

if.then1.i.i.set_eth_seg.exit.i_crit_edge:        ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_eth_seg.exit.i

if.then18.i.i:                                    ; preds = %if.then1.i.i
  %828 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i.i383 = icmp eq ptr %add.ptr15.i.i, %829
  br i1 %cmp.not.i.i.i383, label %if.end.i.i.i395, label %if.then18.i.i.handle_post_send_edge.exit.i.i_crit_edge, !prof !78

if.then18.i.i.handle_post_send_edge.exit.i.i_crit_edge: ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i.i

if.end.i.i.i395:                                  ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %830 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %830)
  %831 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i23.i = zext i16 %831 to i32
  %shr.i.i24.i = lshr i32 %add14.i.i, 2
  %add.i.i25.i = add nuw nsw i32 %shr.i.i24.i, %conv.i.i23.i
  %832 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i.i = add i32 %833, -1
  %and.i.i26.i = and i32 %add.i.i25.i, %sub.i.i.i
  %834 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %834)
  %835 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i.i384 = zext i16 %835 to i32
  %add.i.i.i.i.i385 = add nuw nsw i32 %and.i.i26.i, %conv.i.i.i.i.i384
  %836 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %836)
  %837 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i.i386 = zext i16 %837 to i32
  %or.i.i.i.i.i387 = or i32 %add.i.i.i.i.i385, %conv1.i.i.i.i.i386
  %sub.i.i.i.i.i388 = sub nsw i32 %or.i.i.i.i.i387, %conv.i.i.i.i.i384
  %838 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %840 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i388, i32 %839) #7
  %add.i6.i.i.i.i = add i32 %840, %conv.i.i.i.i.i384
  %841 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %841)
  %842 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i.i = zext i8 %842 to i32
  %shr.i.i.i.i.i389 = lshr i32 %add.i6.i.i.i.i, %conv1.i7.i.i.i.i
  %843 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i.i390 = getelementptr %struct.mlx5_buf_list, ptr %844, i32 %shr.i.i.i.i.i389
  %845 = ptrtoint ptr %arrayidx.i.i.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %arrayidx.i.i.i.i.i390, align 4
  %and.i.i.i.i.i391 = and i32 %add.i6.i.i.i.i, %conv1.i.i.i.i.i386
  %847 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %847)
  %848 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i.i392 = zext i8 %848 to i32
  %shl.i.i.i.i.i393 = shl i32 %and.i.i.i.i.i391, %conv3.i.i.i.i.i392
  %add.ptr.i.i.i.i.i394 = getelementptr i8, ptr %846, i32 64
  %add.ptr.i.i.i27.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i394, i32 %shl.i.i.i.i.i393
  %849 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %849)
  store ptr %add.ptr.i.i.i27.i, ptr %cur_edge, align 4
  %shr.i.i.i31.i = lshr i32 %add.i.i.i.i.i385, %conv1.i7.i.i.i.i
  %arrayidx.i.i.i32.i = getelementptr %struct.mlx5_buf_list, ptr %844, i32 %shr.i.i.i31.i
  %850 = ptrtoint ptr %arrayidx.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %arrayidx.i.i.i32.i, align 4
  %and.i.i.i33.i = and i32 %add.i.i.i.i.i385, %conv1.i.i.i.i.i386
  %shl.i.i.i35.i = shl i32 %and.i.i.i33.i, %conv3.i.i.i.i.i392
  %add.ptr.i9.i.i.i = getelementptr i8, ptr %851, i32 %shl.i.i.i35.i
  %852 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %852)
  store ptr %add.ptr.i9.i.i.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i.i

handle_post_send_edge.exit.i.i:                   ; preds = %if.end.i.i.i395, %if.then18.i.i.handle_post_send_edge.exit.i.i_crit_edge
  %sub.i36.i = sub i32 %815, %sub.ptr.sub..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i36.i)
  %tobool.not26.i.i.i = icmp eq i32 %sub.i36.i, 0
  br i1 %tobool.not26.i.i.i, label %handle_post_send_edge.exit.i.i.set_eth_seg.exit.i_crit_edge, label %while.body.lr.ph.i.i.i, !prof !78

handle_post_send_edge.exit.i.i.set_eth_seg.exit.i_crit_edge: ; preds = %handle_post_send_edge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_eth_seg.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %handle_post_send_edge.exit.i.i
  %add.ptr19.i.i = getelementptr i8, ptr %813, i32 %sub.ptr.sub..i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %handle_post_send_edge.exit.i.i.i420.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %src.addr.028.i.i.i = phi ptr [ %add.ptr19.i.i, %while.body.lr.ph.i.i.i ], [ %add.ptr.i.i37.i, %handle_post_send_edge.exit.i.i.i420.while.body.i.i.i_crit_edge ]
  %n.addr.027.i.i.i = phi i32 [ %sub.i36.i, %while.body.lr.ph.i.i.i ], [ %sub.i59.i.i, %handle_post_send_edge.exit.i.i.i420.while.body.i.i.i_crit_edge ]
  %853 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %cur_edge, align 4
  %855 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %seg, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %854 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %856 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %857 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i.i.i, i32 %n.addr.027.i.i.i) #7
  %858 = call ptr @memcpy(ptr %856, ptr %src.addr.028.i.i.i, i32 %857)
  %sub.i59.i.i = sub i32 %n.addr.027.i.i.i, %857
  %add.ptr.i.i37.i = getelementptr i8, ptr %src.addr.028.i.i.i, i32 %857
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i59.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %sub.i59.i.i, 0
  %add.i60.i.i = add i32 %857, 15
  %and.i61.i.i = and i32 %add.i60.i.i, -16
  %cond7.i.i.i = select i1 %tobool3.not.i.i.i, i32 %and.i61.i.i, i32 %857
  %859 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %seg, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %860, i32 %cond7.i.i.i
  store ptr %add.ptr8.i.i.i, ptr %seg, align 4
  %shr.i62.i.i = lshr i32 %cond7.i.i.i, 4
  %861 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %size, align 4
  %add9.i.i.i = add i32 %shr.i62.i.i, %862
  store i32 %add9.i.i.i, ptr %size, align 4
  %863 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i.i.i403 = icmp eq ptr %add.ptr8.i.i.i, %864
  br i1 %cmp.not.i.i.i.i403, label %if.end.i.i.i.i419, label %while.body.i.i.i.handle_post_send_edge.exit.i.i.i420_crit_edge, !prof !78

while.body.i.i.i.handle_post_send_edge.exit.i.i.i420_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i.i.i420

if.end.i.i.i.i419:                                ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %865 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %865)
  %866 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i63.i.i = zext i16 %866 to i32
  %shr.i.i64.i.i = lshr i32 %add9.i.i.i, 2
  %add.i.i65.i.i = add nuw nsw i32 %shr.i.i64.i.i, %conv.i.i63.i.i
  %867 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i.i38.i = add i32 %868, -1
  %and.i.i66.i.i = and i32 %add.i.i65.i.i, %sub.i.i.i38.i
  %869 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %869)
  %870 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i.i.i404 = zext i16 %870 to i32
  %add.i.i.i.i.i.i405 = add nuw nsw i32 %and.i.i66.i.i, %conv.i.i.i.i.i.i404
  %871 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %871)
  %872 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i.i.i406 = zext i16 %872 to i32
  %or.i.i.i.i.i.i407 = or i32 %add.i.i.i.i.i.i405, %conv1.i.i.i.i.i.i406
  %sub.i.i.i.i.i.i408 = sub nsw i32 %or.i.i.i.i.i.i407, %conv.i.i.i.i.i.i404
  %873 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %875 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i.i.i408, i32 %874) #7
  %add.i6.i.i.i.i.i409 = add i32 %875, %conv.i.i.i.i.i.i404
  %876 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i.i.i410 = zext i8 %877 to i32
  %shr.i.i.i.i.i.i411 = lshr i32 %add.i6.i.i.i.i.i409, %conv1.i7.i.i.i.i.i410
  %878 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i.i.i412 = getelementptr %struct.mlx5_buf_list, ptr %879, i32 %shr.i.i.i.i.i.i411
  %880 = ptrtoint ptr %arrayidx.i.i.i.i.i.i412 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %arrayidx.i.i.i.i.i.i412, align 4
  %and.i.i.i.i.i.i413 = and i32 %add.i6.i.i.i.i.i409, %conv1.i.i.i.i.i.i406
  %882 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %882)
  %883 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i.i.i414 = zext i8 %883 to i32
  %shl.i.i.i.i.i.i415 = shl i32 %and.i.i.i.i.i.i413, %conv3.i.i.i.i.i.i414
  %add.ptr.i.i.i.i.i.i416 = getelementptr i8, ptr %881, i32 64
  %add.ptr.i.i.i67.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i416, i32 %shl.i.i.i.i.i.i415
  %884 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %884)
  store ptr %add.ptr.i.i.i67.i.i, ptr %cur_edge, align 4
  %shr.i.i.i71.i.i = lshr i32 %add.i.i.i.i.i.i405, %conv1.i7.i.i.i.i.i410
  %arrayidx.i.i.i72.i.i = getelementptr %struct.mlx5_buf_list, ptr %879, i32 %shr.i.i.i71.i.i
  %885 = ptrtoint ptr %arrayidx.i.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %arrayidx.i.i.i72.i.i, align 4
  %and.i.i.i73.i.i = and i32 %add.i.i.i.i.i.i405, %conv1.i.i.i.i.i.i406
  %shl.i.i.i75.i.i = shl i32 %and.i.i.i73.i.i, %conv3.i.i.i.i.i.i414
  %add.ptr.i9.i.i.i.i418 = getelementptr i8, ptr %886, i32 %shl.i.i.i75.i.i
  %887 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %887)
  store ptr %add.ptr.i9.i.i.i.i418, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i.i.i420

handle_post_send_edge.exit.i.i.i420:              ; preds = %if.end.i.i.i.i419, %while.body.i.i.i.handle_post_send_edge.exit.i.i.i420_crit_edge
  br i1 %tobool3.not.i.i.i, label %handle_post_send_edge.exit.i.i.i420.set_eth_seg.exit.i_crit_edge, label %handle_post_send_edge.exit.i.i.i420.while.body.i.i.i_crit_edge, !prof !78

handle_post_send_edge.exit.i.i.i420.while.body.i.i.i_crit_edge: ; preds = %handle_post_send_edge.exit.i.i.i420
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

handle_post_send_edge.exit.i.i.i420.set_eth_seg.exit.i_crit_edge: ; preds = %handle_post_send_edge.exit.i.i.i420
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_eth_seg.exit.i

if.end22.i.i:                                     ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  %888 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %seg, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %889, i32 16
  store ptr %add.ptr23.i.i, ptr %seg, align 4
  %890 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %size, align 4
  %add24.i.i = add i32 %891, 1
  store i32 %add24.i.i, ptr %size, align 4
  br label %set_eth_seg.exit.i

set_eth_seg.exit.i:                               ; preds = %if.end22.i.i, %handle_post_send_edge.exit.i.i.i420.set_eth_seg.exit.i_crit_edge, %handle_post_send_edge.exit.i.i.set_eth_seg.exit.i_crit_edge, %if.then1.i.i.set_eth_seg.exit.i_crit_edge
  %892 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %seg, align 4
  %894 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i39.i = icmp eq ptr %893, %895
  br i1 %cmp.not.i39.i, label %if.end.i76.i, label %set_eth_seg.exit.i.sw.epilog_crit_edge, !prof !78

set_eth_seg.exit.i.sw.epilog_crit_edge:           ; preds = %set_eth_seg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i76.i:                                     ; preds = %set_eth_seg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %896 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load i32, ptr %size, align 4
  %898 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %898)
  %899 = load i16, ptr %cur_post.i553, align 4
  %conv.i41.i = zext i16 %899 to i32
  %shr.i42.i = lshr i32 %897, 2
  %add.i43.i = add nuw nsw i32 %shr.i42.i, %conv.i41.i
  %900 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i45.i = add i32 %901, -1
  %and.i46.i = and i32 %add.i43.i, %sub.i45.i
  %902 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %902)
  %903 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i48.i = zext i16 %903 to i32
  %add.i.i.i49.i = add nuw nsw i32 %and.i46.i, %conv.i.i.i48.i
  %904 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %904)
  %905 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i51.i = zext i16 %905 to i32
  %or.i.i.i52.i = or i32 %add.i.i.i49.i, %conv1.i.i.i51.i
  %sub.i.i.i53.i = sub nsw i32 %or.i.i.i52.i, %conv.i.i.i48.i
  %906 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %908 = call i32 @llvm.umin.i32(i32 %sub.i.i.i53.i, i32 %907) #7
  %add.i6.i.i55.i = add i32 %908, %conv.i.i.i48.i
  %909 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i57.i = zext i8 %910 to i32
  %shr.i.i.i58.i = lshr i32 %add.i6.i.i55.i, %conv1.i7.i.i57.i
  %911 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i59.i = getelementptr %struct.mlx5_buf_list, ptr %912, i32 %shr.i.i.i58.i
  %913 = ptrtoint ptr %arrayidx.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %arrayidx.i.i.i59.i, align 4
  %and.i.i.i60.i = and i32 %add.i6.i.i55.i, %conv1.i.i.i51.i
  %915 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i62.i = zext i8 %916 to i32
  %shl.i.i.i63.i = shl i32 %and.i.i.i60.i, %conv3.i.i.i62.i
  %add.ptr.i.i.i64.i = getelementptr i8, ptr %914, i32 64
  %add.ptr.i.i65.i = getelementptr i8, ptr %add.ptr.i.i.i64.i, i32 %shl.i.i.i63.i
  %917 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %917)
  store ptr %add.ptr.i.i65.i, ptr %cur_edge, align 4
  %shr.i.i69.i = lshr i32 %add.i.i.i49.i, %conv1.i7.i.i57.i
  %arrayidx.i.i70.i = getelementptr %struct.mlx5_buf_list, ptr %912, i32 %shr.i.i69.i
  %918 = ptrtoint ptr %arrayidx.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %arrayidx.i.i70.i, align 4
  %and.i.i72.i = and i32 %add.i.i.i49.i, %conv1.i.i.i51.i
  %shl.i.i74.i = shl i32 %and.i.i72.i, %conv3.i.i.i62.i
  %add.ptr.i9.i75.i = getelementptr i8, ptr %919, i32 %shl.i.i74.i
  %920 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %920)
  store ptr %add.ptr.i9.i75.i, ptr %seg, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %102)
  %cmp.not.i = icmp eq i32 %102, 240
  br i1 %cmp.not.i, label %if.end.i428, label %if.then.i426, !prof !77

if.then.i426:                                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #9
  %921 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %922 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i.i423 = and i32 %922, -16384
  %923 = inttoptr i32 %and.i.i423 to ptr
  %task.i424 = getelementptr inbounds %struct.thread_info, ptr %923, i32 0, i32 2
  %924 = ptrtoint ptr %task.i424 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %task.i424, align 8
  %pid.i425 = getelementptr inbounds %struct.task_struct, ptr %925, i32 0, i32 68
  %926 = ptrtoint ptr %pid.i425 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load i32, ptr %pid.i425, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %921, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 1258, i32 noundef %927, i32 noundef %102) #10
  br label %out

if.end.i428:                                      ; preds = %sw.bb120
  %928 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load i32, ptr %idx, align 4
  %930 = ptrtoint ptr %wr_data.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %wr_data.i, align 4
  %arrayidx.i = getelementptr i32, ptr %931, i32 %929
  %932 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %932)
  store i32 240, ptr %arrayidx.i, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 8
  %933 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %mkey.i, align 4
  %935 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %ctrl, align 4
  %937 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %936, i32 0, i32 5
  %938 = ptrtoint ptr %937 to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 %934, ptr %937, align 4
  %939 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %seg, align 4
  %941 = call ptr @memset(ptr %940, i32 0, i32 48)
  %ignore_free_state.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 9
  %942 = ptrtoint ptr %ignore_free_state.i.i to i32
  call void @__asan_load1_noabort(i32 %942)
  %bf.load.i.i = load i8, ptr %ignore_free_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i427 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i427, label %if.then.i.i430, label %if.end.i428.if.end4.i.i_crit_edge

if.end.i428.if.end4.i.i_crit_edge:                ; preds = %if.end.i428
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.then.i.i430:                                   ; preds = %if.end.i428
  call void @__sanitizer_cov_trace_pc() #9
  %943 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load i32, ptr %send_flags.i, align 4
  %and.i36.i = and i32 %944, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool1.not.i.i = icmp eq i32 %and.i36.i, 0
  %..i.i = select i1 %tobool1.not.i.i, i8 32, i8 64
  %945 = ptrtoint ptr %940 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 %..i.i, ptr %940, align 8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i430, %if.end.i428.if.end4.i.i_crit_edge
  %xlt_size.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 5
  %946 = ptrtoint ptr %xlt_size.i.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %xlt_size.i.i, align 8
  %conv.i.i431 = zext i32 %947 to i64
  %add.i.i.i432 = add nuw nsw i64 %conv.i.i431, 63
  %and.i.i.i433 = lshr i64 %add.i.i.i432, 4
  %948 = trunc i64 %and.i.i.i433 to i16
  %conv6.i.i = and i16 %948, -4
  %xlt_octowords.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 2
  %949 = ptrtoint ptr %xlt_octowords.i.i to i32
  call void @__asan_store2_noabort(i32 %949)
  store i16 %conv6.i.i, ptr %xlt_octowords.i.i, align 4
  %950 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %send_flags.i, align 4
  %and8.i.i = and i32 %951, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end19.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %offset11.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 2
  %952 = ptrtoint ptr %offset11.i.i to i32
  call void @__asan_load8_noabort(i32 %952)
  %953 = load i64, ptr %offset11.i.i, align 8
  %add.i123.i.i = add i64 %953, 63
  %and.i124.i.i = lshr i64 %add.i123.i.i, 4
  %954 = trunc i64 %and.i124.i.i to i16
  %conv14.i.i = and i16 %954, -4
  %955 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 3
  %956 = ptrtoint ptr %955 to i32
  call void @__asan_store2_noabort(i32 %956)
  store i16 %conv14.i.i, ptr %955, align 2
  %shr.i.i434 = lshr i64 %add.i123.i.i, 20
  %conv15.i.i = trunc i64 %shr.i.i434 to i32
  %xlt_offset_47_16.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 5
  %957 = ptrtoint ptr %xlt_offset_47_16.i.i to i32
  call void @__asan_store4_noabort(i32 %957)
  store i32 %conv15.i.i, ptr %xlt_offset_47_16.i.i, align 8
  %958 = ptrtoint ptr %940 to i32
  call void @__asan_load1_noabort(i32 %958)
  %959 = load i8, ptr %940, align 8
  %960 = or i8 %959, 16
  store i8 %960, ptr %940, align 8
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end19.i.i_crit_edge
  %961 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %send_flags.i, align 4
  %and21.i.i = and i32 %962, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end19.i.i.if.end26.i.i_crit_edge, label %if.then23.i.i

if.end19.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mkey_mask.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 4
  %963 = ptrtoint ptr %mkey_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %963)
  %964 = load i64, ptr %mkey_mask.i.i, align 8
  %or25.i.i = or i64 %964, 67
  store i64 %or25.i.i, ptr %mkey_mask.i.i, align 8
  %965 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %965)
  %.pr.i.i = load i32, ptr %send_flags.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %if.end19.i.i.if.end26.i.i_crit_edge
  %966 = phi i32 [ %.pr.i.i, %if.then23.i.i ], [ %962, %if.end19.i.i.if.end26.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %966)
  %tobool29.not.i.i = icmp sgt i32 %966, -1
  br i1 %tobool29.not.i.i, label %if.end26.i.i.if.end69.i.i_crit_edge, label %if.then30.i.i

if.end26.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69.i.i

if.then30.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %967 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %mdev1, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %968, i32 0, i32 8
  %969 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i435 = getelementptr i32, ptr %970, i32 16
  %971 = ptrtoint ptr %add.ptr.i.i435 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %add.ptr.i.i435, align 4
  %add.ptr41.i.i = getelementptr i32, ptr %970, i32 6
  %973 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load i32, ptr %add.ptr41.i.i, align 4
  %975 = and i32 %972, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %975)
  %tobool.not.i.i.i = icmp eq i32 %975, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i64 1966080, i64 4063232
  %976 = shl i32 %974, 10
  %977 = and i32 %976, 33554432
  %978 = zext i32 %977 to i64
  %979 = or i64 %spec.select.i.i.i, %978
  %980 = and i32 %974, 16384
  %981 = zext i32 %980 to i64
  %982 = shl nuw nsw i64 %981, 33
  %983 = or i64 %979, %982
  %mkey_mask64.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 4
  %984 = ptrtoint ptr %mkey_mask64.i.i to i32
  call void @__asan_load8_noabort(i32 %984)
  %985 = load i64, ptr %mkey_mask64.i.i, align 8
  %or65.i.i = or i64 %985, %983
  %or68.i.i = or i64 %or65.i.i, 128
  store i64 %or68.i.i, ptr %mkey_mask64.i.i, align 8
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then30.i.i, %if.end26.i.i.if.end69.i.i_crit_edge
  %986 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load i32, ptr %send_flags.i, align 4
  %and71.i.i = and i32 %987, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end69.i.i.if.end77.i.i_crit_edge, label %if.then73.i.i

if.end69.i.i.if.end77.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i.i

if.then73.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mkey_mask75.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 4
  %988 = ptrtoint ptr %mkey_mask75.i.i to i32
  call void @__asan_load8_noabort(i32 %988)
  %989 = load i64, ptr %mkey_mask75.i.i, align 8
  %or76.i.i = or i64 %989, 536879104
  store i64 %or76.i.i, ptr %mkey_mask75.i.i, align 8
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then73.i.i, %if.end69.i.i.if.end77.i.i_crit_edge
  %990 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load i32, ptr %send_flags.i, align 4
  %and79.i.i = and i32 %991, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end77.i.i.if.end85.i.i_crit_edge, label %if.then81.i.i

if.end77.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i.i

if.then81.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mkey_mask83.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 4
  %992 = ptrtoint ptr %mkey_mask83.i.i to i32
  call void @__asan_load8_noabort(i32 %992)
  %993 = load i64, ptr %mkey_mask83.i.i, align 8
  %or84.i.i = or i64 %993, 536870912
  store i64 %or84.i.i, ptr %mkey_mask83.i.i, align 8
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.then81.i.i, %if.end77.i.i.if.end85.i.i_crit_edge
  %994 = ptrtoint ptr %num_sge32 to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load i32, ptr %num_sge32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %995)
  %tobool86.not.i.i = icmp eq i32 %995, 0
  br i1 %tobool86.not.i.i, label %if.then87.i.i, label %if.end85.i.i.if.end92.i.i_crit_edge

if.end85.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i.i

if.then87.i.i:                                    ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %996 = ptrtoint ptr %940 to i32
  call void @__asan_load1_noabort(i32 %996)
  %997 = load i8, ptr %940, align 8
  %998 = or i8 %997, -128
  store i8 %998, ptr %940, align 8
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then87.i.i, %if.end85.i.i.if.end92.i.i_crit_edge
  %mkey_mask93.i.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %940, i32 0, i32 4
  %999 = ptrtoint ptr %mkey_mask93.i.i to i32
  call void @__asan_load8_noabort(i32 %999)
  %1000 = load i64, ptr %mkey_mask93.i.i, align 8
  %and.i126.i.i = and i64 %1000, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i126.i.i)
  %tobool.not.i127.i.i = icmp eq i64 %and.i126.i.i, 0
  br i1 %tobool.not.i127.i.i, label %if.end92.i.i.if.end.i.i.i437_crit_edge, label %land.lhs.true.i.i.i

if.end92.i.i.if.end.i.i.i437_crit_edge:           ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i437

land.lhs.true.i.i.i:                              ; preds = %if.end92.i.i
  %1001 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %mdev1, align 8
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1002, i32 0, i32 8
  %1003 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i436 = getelementptr i32, ptr %1004, i32 16
  %1005 = ptrtoint ptr %add.ptr.i.i.i436 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load i32, ptr %add.ptr.i.i.i436, align 4
  %1007 = and i32 %1006, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1007)
  %tobool2.not.i.i.i = icmp eq i32 %1007, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i437_crit_edge, label %land.lhs.true.i.i.i.out_crit_edge

land.lhs.true.i.i.i.out_crit_edge:                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i.i.i.if.end.i.i.i437_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i437

if.end.i.i.i437:                                  ; preds = %land.lhs.true.i.i.i.if.end.i.i.i437_crit_edge, %if.end92.i.i.if.end.i.i.i437_crit_edge
  %and3.i.i.i = and i64 %1000, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i64 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i437.if.end17.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

if.end.i.i.i437.if.end17.i.i.i_crit_edge:         ; preds = %if.end.i.i.i437
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %if.end.i.i.i437
  %1008 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %mdev1, align 8
  %caps7.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1009, i32 0, i32 8
  %1010 = ptrtoint ptr %caps7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %caps7.i.i.i, align 8
  %add.ptr12.i.i.i = getelementptr i32, ptr %1011, i32 16
  %1012 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load i32, ptr %add.ptr12.i.i.i, align 4
  %1014 = and i32 %1013, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1014)
  %tobool15.not.i.i.i438 = icmp eq i32 %1014, 0
  br i1 %tobool15.not.i.i.i438, label %land.lhs.true5.i.i.i.if.end17.i.i.i_crit_edge, label %land.lhs.true5.i.i.i.out_crit_edge

land.lhs.true5.i.i.i.out_crit_edge:               ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true5.i.i.i.if.end17.i.i.i_crit_edge:    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i.if.end17.i.i.i_crit_edge, %if.end.i.i.i437.if.end17.i.i.i_crit_edge
  %and18.i.i.i = and i64 %1000, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i.i.i)
  %tobool19.not.i.i.i = icmp eq i64 %and18.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %if.end17.i.i.i.if.end32.i.i.i_crit_edge, label %land.lhs.true20.i.i.i

if.end17.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %if.end17.i.i.i
  %1015 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %mdev1, align 8
  %caps22.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1016, i32 0, i32 8
  %1017 = ptrtoint ptr %caps22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %caps22.i.i.i, align 8
  %add.ptr27.i.i.i = getelementptr i32, ptr %1018, i32 6
  %1019 = ptrtoint ptr %add.ptr27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %add.ptr27.i.i.i, align 4
  %1021 = and i32 %1020, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1021)
  %tobool30.not.i.i.i = icmp eq i32 %1021, 0
  br i1 %tobool30.not.i.i.i, label %land.lhs.true20.i.i.i.out_crit_edge, label %land.lhs.true20.i.i.i.if.end32.i.i.i_crit_edge

land.lhs.true20.i.i.i.if.end32.i.i.i_crit_edge:   ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i.i

land.lhs.true20.i.i.i.out_crit_edge:              ; preds = %land.lhs.true20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32.i.i.i:                                   ; preds = %land.lhs.true20.i.i.i.if.end32.i.i.i_crit_edge, %if.end17.i.i.i.if.end32.i.i.i_crit_edge
  %and33.i.i.i = and i64 %1000, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i64 %and33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %if.end32.i.i.i.if.end13.i_crit_edge, label %land.lhs.true35.i.i.i

if.end32.i.i.i.if.end13.i_crit_edge:              ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true35.i.i.i:                            ; preds = %if.end32.i.i.i
  %1022 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %mdev1, align 8
  %caps37.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1023, i32 0, i32 8
  %1024 = ptrtoint ptr %caps37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %caps37.i.i.i, align 8
  %add.ptr42.i.i.i = getelementptr i32, ptr %1025, i32 6
  %1026 = ptrtoint ptr %add.ptr42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load i32, ptr %add.ptr42.i.i.i, align 4
  %1028 = and i32 %1027, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1028)
  %tobool45.not.i.i.i = icmp eq i32 %1028, 0
  br i1 %tobool45.not.i.i.i, label %land.lhs.true35.i.i.i.out_crit_edge, label %land.lhs.true35.i.i.i.if.end13.i_crit_edge

land.lhs.true35.i.i.i.if.end13.i_crit_edge:       ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

land.lhs.true35.i.i.i.out_crit_edge:              ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13.i:                                       ; preds = %land.lhs.true35.i.i.i.if.end13.i_crit_edge, %if.end32.i.i.i.if.end13.i_crit_edge
  %1029 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %seg, align 4
  %add.ptr.i440 = getelementptr i8, ptr %1030, i32 48
  store ptr %add.ptr.i440, ptr %seg, align 4
  %1031 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load i32, ptr %size, align 4
  %add.i441 = add i32 %1032, 3
  store i32 %add.i441, ptr %size, align 4
  %1033 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i442 = icmp eq ptr %add.ptr.i440, %1034
  br i1 %cmp.not.i.i442, label %if.end.i.i473, label %if.end13.i.handle_post_send_edge.exit.i474_crit_edge, !prof !78

if.end13.i.handle_post_send_edge.exit.i474_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i474

if.end.i.i473:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %1035 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %1035)
  %1036 = load i16, ptr %cur_post.i553, align 4
  %conv.i37.i = zext i16 %1036 to i32
  %shr.i38.i = lshr i32 %add.i441, 2
  %add.i.i444 = add nuw nsw i32 %shr.i38.i, %conv.i37.i
  %1037 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i446 = add i32 %1038, -1
  %and.i39.i = and i32 %add.i.i444, %sub.i.i446
  %1039 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %1039)
  %1040 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i448 = zext i16 %1040 to i32
  %add.i.i.i.i449 = add nuw nsw i32 %and.i39.i, %conv.i.i.i.i448
  %1041 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %1041)
  %1042 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i451 = zext i16 %1042 to i32
  %or.i.i.i.i452 = or i32 %add.i.i.i.i449, %conv1.i.i.i.i451
  %sub.i.i.i.i453 = sub nsw i32 %or.i.i.i.i452, %conv.i.i.i.i448
  %1043 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %1045 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i453, i32 %1044) #7
  %add.i6.i.i.i455 = add i32 %1045, %conv.i.i.i.i448
  %1046 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %1046)
  %1047 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i457 = zext i8 %1047 to i32
  %shr.i.i.i.i458 = lshr i32 %add.i6.i.i.i455, %conv1.i7.i.i.i457
  %1048 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i459 = getelementptr %struct.mlx5_buf_list, ptr %1049, i32 %shr.i.i.i.i458
  %1050 = ptrtoint ptr %arrayidx.i.i.i.i459 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %arrayidx.i.i.i.i459, align 4
  %and.i.i.i.i460 = and i32 %add.i6.i.i.i455, %conv1.i.i.i.i451
  %1052 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %1052)
  %1053 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i462 = zext i8 %1053 to i32
  %shl.i.i.i.i463 = shl i32 %and.i.i.i.i460, %conv3.i.i.i.i462
  %add.ptr.i.i.i.i464 = getelementptr i8, ptr %1051, i32 64
  %add.ptr.i.i40.i = getelementptr i8, ptr %add.ptr.i.i.i.i464, i32 %shl.i.i.i.i463
  %1054 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %1054)
  store ptr %add.ptr.i.i40.i, ptr %cur_edge, align 4
  %shr.i.i.i467 = lshr i32 %add.i.i.i.i449, %conv1.i7.i.i.i457
  %arrayidx.i.i.i468 = getelementptr %struct.mlx5_buf_list, ptr %1049, i32 %shr.i.i.i467
  %1055 = ptrtoint ptr %arrayidx.i.i.i468 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %arrayidx.i.i.i468, align 4
  %and.i.i42.i = and i32 %add.i.i.i.i449, %conv1.i.i.i.i451
  %shl.i.i.i471 = shl i32 %and.i.i42.i, %conv3.i.i.i.i462
  %add.ptr.i9.i.i472 = getelementptr i8, ptr %1056, i32 %shl.i.i.i471
  %1057 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %1057)
  store ptr %add.ptr.i9.i.i472, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i474

handle_post_send_edge.exit.i474:                  ; preds = %if.end.i.i473, %if.end13.i.handle_post_send_edge.exit.i474_crit_edge
  %1058 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %seg, align 4
  %1060 = call ptr @memset(ptr %1059, i32 0, i32 64)
  %1061 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %send_flags.i, align 4
  %and.i44.i = and i32 %1062, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %tobool.not.i45.i = icmp eq i32 %and.i44.i, 0
  br i1 %tobool.not.i45.i, label %handle_post_send_edge.exit.i474.do.body7.i.i_crit_edge, label %do.body.i.i

handle_post_send_edge.exit.i474.do.body7.i.i_crit_edge: ; preds = %handle_post_send_edge.exit.i474
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i.i

do.body.i.i:                                      ; preds = %handle_post_send_edge.exit.i474
  call void @__sanitizer_cov_trace_pc() #9
  %1063 = ptrtoint ptr %1059 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %1059, align 4
  %or.i.i475 = or i32 %1064, 1073741824
  store i32 %or.i.i475, ptr %1059, align 4
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %do.body.i.i, %handle_post_send_edge.exit.i474.do.body7.i.i_crit_edge
  %access_flags.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 7
  %1065 = ptrtoint ptr %access_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load i32, ptr %access_flags.i.i, align 8
  %1067 = ptrtoint ptr %1059 to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load i32, ptr %1059, align 4
  %and16.i.i = and i32 %1068, -16385
  %1069 = shl i32 %1066, 11
  %shl18.i.i = and i32 %1069, 16384
  %or19.i.i = or i32 %and16.i.i, %shl18.i.i
  store i32 %or19.i.i, ptr %1059, align 4
  %1070 = load i32, ptr %access_flags.i.i, align 8
  %and36.i.i = and i32 %or19.i.i, -8193
  %1071 = shl i32 %1070, 12
  %shl38.i.i = and i32 %1071, 8192
  %or39.i.i = or i32 %shl38.i.i, %and36.i.i
  store i32 %or39.i.i, ptr %1059, align 4
  %1072 = load i32, ptr %access_flags.i.i, align 8
  %and56.i.i = and i32 %or39.i.i, -4097
  %1073 = shl i32 %1072, 10
  %shl58.i.i = and i32 %1073, 4096
  %or59.i.i = or i32 %and56.i.i, %shl58.i.i
  store i32 %or59.i.i, ptr %1059, align 4
  %1074 = load i32, ptr %access_flags.i.i, align 8
  %and76.i.i = and i32 %or59.i.i, -3073
  %and66.i.i = shl i32 %1074, 11
  %shl78.i.i = and i32 %and66.i.i, 2048
  %or79.i.i = or i32 %shl78.i.i, %and76.i.i
  %or92.i.i = or i32 %or79.i.i, 1024
  store i32 %or92.i.i, ptr %1059, align 4
  %1075 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %mdev1, align 8
  %caps.i47.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1076, i32 0, i32 8
  %1077 = ptrtoint ptr %caps.i47.i to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %caps.i47.i, align 8
  %add.ptr96.i.i = getelementptr i32, ptr %1078, i32 6
  %1079 = ptrtoint ptr %add.ptr96.i.i to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load i32, ptr %add.ptr96.i.i, align 4
  %1081 = and i32 %1080, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1081)
  %tobool98.not.i.i = icmp eq i32 %1081, 0
  br i1 %tobool98.not.i.i, label %do.body7.i.i.if.end120.i.i_crit_edge, label %do.body100.i.i

do.body7.i.i.if.end120.i.i_crit_edge:             ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i.i

do.body100.i.i:                                   ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1082 = ptrtoint ptr %access_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %access_flags.i.i, align 8
  %and113.i.i = and i32 %or92.i.i, -262145
  %1084 = lshr i32 %1083, 2
  %shl115.i.i = and i32 %1084, 262144
  %or116.i.i = or i32 %shl115.i.i, %and113.i.i
  %1085 = ptrtoint ptr %1059 to i32
  call void @__asan_store4_noabort(i32 %1085)
  store i32 %or116.i.i, ptr %1059, align 4
  br label %if.end120.i.i

if.end120.i.i:                                    ; preds = %do.body100.i.i, %do.body7.i.i.if.end120.i.i_crit_edge
  %1086 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %mdev1, align 8
  %caps122.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1087, i32 0, i32 8
  %1088 = ptrtoint ptr %caps122.i.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %caps122.i.i, align 8
  %add.ptr127.i.i = getelementptr i32, ptr %1089, i32 6
  %1090 = ptrtoint ptr %add.ptr127.i.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load i32, ptr %add.ptr127.i.i, align 4
  %1092 = and i32 %1091, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1092)
  %tobool130.not.i.i = icmp eq i32 %1092, 0
  br i1 %tobool130.not.i.i, label %if.end120.i.i.if.end152.i.i_crit_edge, label %do.body132.i.i

if.end120.i.i.if.end152.i.i_crit_edge:            ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i.i

do.body132.i.i:                                   ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %1093 = ptrtoint ptr %access_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load i32, ptr %access_flags.i.i, align 8
  %add.ptr144.i.i = getelementptr i32, ptr %1059, i32 14
  %1095 = ptrtoint ptr %add.ptr144.i.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load i32, ptr %add.ptr144.i.i, align 4
  %and145.i.i = and i32 %1096, -65
  %1097 = lshr i32 %1094, 14
  %shl147.i.i = and i32 %1097, 64
  %or148.i.i = or i32 %and145.i.i, %shl147.i.i
  store i32 %or148.i.i, ptr %add.ptr144.i.i, align 4
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %do.body132.i.i, %if.end120.i.i.if.end152.i.i_crit_edge
  %pd.i.i476 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 3
  %1098 = ptrtoint ptr %pd.i.i476 to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %pd.i.i476, align 8
  %tobool153.not.i.i = icmp eq ptr %1099, null
  br i1 %tobool153.not.i.i, label %if.end152.i.i.if.end170.i.i_crit_edge, label %do.body155.i.i

if.end152.i.i.if.end170.i.i_crit_edge:            ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170.i.i

do.body155.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdn.i.i = getelementptr inbounds %struct.mlx5_ib_pd, ptr %1099, i32 0, i32 1
  %1100 = ptrtoint ptr %pdn.i.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load i32, ptr %pdn.i.i, align 4
  %add.ptr162.i.i = getelementptr i32, ptr %1059, i32 3
  %1102 = ptrtoint ptr %add.ptr162.i.i to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load i32, ptr %add.ptr162.i.i, align 4
  %and163.i.i = and i32 %1103, -16777216
  %and164.i.i = and i32 %1101, 16777215
  %or166.i.i = or i32 %and163.i.i, %and164.i.i
  store i32 %or166.i.i, ptr %add.ptr162.i.i, align 4
  br label %if.end170.i.i

if.end170.i.i:                                    ; preds = %do.body155.i.i, %if.end152.i.i.if.end170.i.i_crit_edge
  %1104 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load i32, ptr %send_flags.i, align 4
  %and172.i.i = and i32 %1105, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i.i)
  %tobool173.not.i.i = icmp eq i32 %and172.i.i, 0
  br i1 %tobool173.not.i.i, label %if.end170.i.i.set_reg_mkey_segment.exit.i_crit_edge, label %land.lhs.true.i.i

if.end170.i.i.set_reg_mkey_segment.exit.i_crit_edge: ; preds = %if.end170.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_reg_mkey_segment.exit.i

land.lhs.true.i.i:                                ; preds = %if.end170.i.i
  %length.i.i477 = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 6
  %1106 = ptrtoint ptr %length.i.i477 to i32
  call void @__asan_load8_noabort(i32 %1106)
  %1107 = load i64, ptr %length.i.i477, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1107)
  %tobool174.not.i.i = icmp eq i64 %1107, 0
  br i1 %tobool174.not.i.i, label %do.body176.i.i, label %land.lhs.true.i.i.set_reg_mkey_segment.exit.i_crit_edge

land.lhs.true.i.i.set_reg_mkey_segment.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_reg_mkey_segment.exit.i

do.body176.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr181.i.i = getelementptr i32, ptr %1059, i32 3
  %1108 = ptrtoint ptr %add.ptr181.i.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load i32, ptr %add.ptr181.i.i, align 4
  %or185.i.i = or i32 %1109, -2147483648
  store i32 %or185.i.i, ptr %add.ptr181.i.i, align 4
  br label %set_reg_mkey_segment.exit.i

set_reg_mkey_segment.exit.i:                      ; preds = %do.body176.i.i, %land.lhs.true.i.i.set_reg_mkey_segment.exit.i_crit_edge, %if.end170.i.i.set_reg_mkey_segment.exit.i_crit_edge
  %virt_addr.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 1
  %1110 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %1110)
  %1111 = load i64, ptr %virt_addr.i.i, align 8
  %add.ptr198.i.i = getelementptr i64, ptr %1059, i32 2
  %1112 = ptrtoint ptr %add.ptr198.i.i to i32
  call void @__asan_store8_noabort(i32 %1112)
  store i64 %1111, ptr %add.ptr198.i.i, align 8
  %length211.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 6
  %1113 = ptrtoint ptr %length211.i.i to i32
  call void @__asan_load8_noabort(i32 %1113)
  %1114 = load i64, ptr %length211.i.i, align 8
  %add.ptr212.i.i = getelementptr i64, ptr %1059, i32 3
  %1115 = ptrtoint ptr %add.ptr212.i.i to i32
  call void @__asan_store8_noabort(i32 %1115)
  store i64 %1114, ptr %add.ptr212.i.i, align 8
  %page_shift.i.i = getelementptr inbounds %struct.mlx5_umr_wr, ptr %wr.addr.0681, i32 0, i32 4
  %1116 = ptrtoint ptr %page_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load i32, ptr %page_shift.i.i, align 4
  %add.ptr222.i.i = getelementptr i32, ptr %1059, i32 14
  %1118 = ptrtoint ptr %add.ptr222.i.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load i32, ptr %add.ptr222.i.i, align 4
  %and223.i.i = and i32 %1119, -32
  %and224.i.i = and i32 %1117, 31
  %or226.i.i = or i32 %and223.i.i, %and224.i.i
  store i32 %or226.i.i, ptr %add.ptr222.i.i, align 4
  %add.ptr235.i.i = getelementptr i32, ptr %1059, i32 1
  %1120 = ptrtoint ptr %add.ptr235.i.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load i32, ptr %add.ptr235.i.i, align 4
  %or239.i.i = or i32 %1121, -256
  store i32 %or239.i.i, ptr %add.ptr235.i.i, align 4
  %1122 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load i32, ptr %mkey.i, align 4
  %or253.i.i = or i32 %1123, -256
  store i32 %or253.i.i, ptr %add.ptr235.i.i, align 4
  %1124 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %seg, align 4
  %add.ptr15.i = getelementptr i8, ptr %1125, i32 64
  store ptr %add.ptr15.i, ptr %seg, align 4
  %1126 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load i32, ptr %size, align 4
  %add16.i = add i32 %1127, 4
  store i32 %add16.i, ptr %size, align 4
  %1128 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i48.i = icmp eq ptr %add.ptr15.i, %1129
  br i1 %cmp.not.i48.i, label %if.end.i85.i, label %set_reg_mkey_segment.exit.i.sw.epilog_crit_edge, !prof !78

set_reg_mkey_segment.exit.i.sw.epilog_crit_edge:  ; preds = %set_reg_mkey_segment.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i85.i:                                     ; preds = %set_reg_mkey_segment.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %1130 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %1130)
  %1131 = load i16, ptr %cur_post.i553, align 4
  %conv.i50.i = zext i16 %1131 to i32
  %shr.i51.i = lshr i32 %add16.i, 2
  %add.i52.i = add nuw nsw i32 %shr.i51.i, %conv.i50.i
  %1132 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i54.i = add i32 %1133, -1
  %and.i55.i = and i32 %add.i52.i, %sub.i54.i
  %1134 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %1134)
  %1135 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i57.i = zext i16 %1135 to i32
  %add.i.i.i58.i = add nuw nsw i32 %and.i55.i, %conv.i.i.i57.i
  %1136 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %1136)
  %1137 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i60.i = zext i16 %1137 to i32
  %or.i.i.i61.i = or i32 %add.i.i.i58.i, %conv1.i.i.i60.i
  %sub.i.i.i62.i = sub nsw i32 %or.i.i.i61.i, %conv.i.i.i57.i
  %1138 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %1140 = call i32 @llvm.umin.i32(i32 %sub.i.i.i62.i, i32 %1139) #7
  %add.i6.i.i64.i = add i32 %1140, %conv.i.i.i57.i
  %1141 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %1141)
  %1142 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i66.i = zext i8 %1142 to i32
  %shr.i.i.i67.i = lshr i32 %add.i6.i.i64.i, %conv1.i7.i.i66.i
  %1143 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i68.i = getelementptr %struct.mlx5_buf_list, ptr %1144, i32 %shr.i.i.i67.i
  %1145 = ptrtoint ptr %arrayidx.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %arrayidx.i.i.i68.i, align 4
  %and.i.i.i69.i = and i32 %add.i6.i.i64.i, %conv1.i.i.i60.i
  %1147 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %1147)
  %1148 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i71.i = zext i8 %1148 to i32
  %shl.i.i.i72.i = shl i32 %and.i.i.i69.i, %conv3.i.i.i71.i
  %add.ptr.i.i.i73.i = getelementptr i8, ptr %1146, i32 64
  %add.ptr.i.i74.i = getelementptr i8, ptr %add.ptr.i.i.i73.i, i32 %shl.i.i.i72.i
  %1149 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %1149)
  store ptr %add.ptr.i.i74.i, ptr %cur_edge, align 4
  %shr.i.i78.i = lshr i32 %add.i.i.i58.i, %conv1.i7.i.i66.i
  %arrayidx.i.i79.i = getelementptr %struct.mlx5_buf_list, ptr %1144, i32 %shr.i.i78.i
  %1150 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %arrayidx.i.i79.i, align 4
  %and.i.i81.i = and i32 %add.i.i.i58.i, %conv1.i.i.i60.i
  %shl.i.i83.i = shl i32 %and.i.i81.i, %conv3.i.i.i71.i
  %add.ptr.i9.i84.i = getelementptr i8, ptr %1151, i32 %shl.i.i83.i
  %1152 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %1152)
  store ptr %add.ptr.i9.i84.i, ptr %seg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i85.i, %set_reg_mkey_segment.exit.i.sw.epilog_crit_edge, %if.end.i76.i, %set_eth_seg.exit.i.sw.epilog_crit_edge, %handle_post_send_edge.exit.i.sw.epilog_crit_edge, %if.end.i.i331, %sw.bb118.sw.epilog_crit_edge, %sw.bb.i316, %sw.bb98.sw.epilog_crit_edge, %if.else91.sw.epilog_crit_edge, %if.end79.sw.epilog_crit_edge
  %num_sge.1 = phi i32 [ %25, %if.end79.sw.epilog_crit_edge ], [ %num_sge.0.ph, %if.else91.sw.epilog_crit_edge ], [ %25, %sw.bb98.sw.epilog_crit_edge ], [ %25, %sw.bb.i316 ], [ %25, %sw.bb118.sw.epilog_crit_edge ], [ %25, %if.end.i.i331 ], [ %25, %handle_post_send_edge.exit.i.sw.epilog_crit_edge ], [ %25, %set_eth_seg.exit.i.sw.epilog_crit_edge ], [ %25, %if.end.i76.i ], [ %25, %set_reg_mkey_segment.exit.i.sw.epilog_crit_edge ], [ %25, %if.end.i85.i ]
  %1153 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load i32, ptr %send_flags.i, align 4
  %and132 = and i32 %1154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sge.1)
  %tobool134.not = icmp eq i32 %num_sge.1, 0
  %or.cond = select i1 %tobool133.not, i1 true, i1 %tobool134.not
  br i1 %or.cond, label %for.cond154.preheader, label %if.then135

for.cond154.preheader:                            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sge.1)
  %cmp155677 = icmp sgt i32 %num_sge.1, 0
  br i1 %cmp155677, label %for.body157.lr.ph, label %for.cond154.preheader.if.end175_crit_edge

for.cond154.preheader.if.end175_crit_edge:        ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

for.body157.lr.ph:                                ; preds = %for.cond154.preheader
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 2
  br label %for.body157

if.then135:                                       ; preds = %sw.epilog
  %1155 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load ptr, ptr %seg, align 4
  %add.ptr.i479 = getelementptr i8, ptr %1156, i32 4
  store ptr %add.ptr.i479, ptr %seg, align 4
  %1157 = ptrtoint ptr %num_sge32 to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load i32, ptr %num_sge32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1158)
  %cmp63.i = icmp sgt i32 %1158, 0
  br i1 %cmp63.i, label %for.body.lr.ph.i, label %if.then135.set_data_inl_seg.exit.thread_crit_edge

if.then135.set_data_inl_seg.exit.thread_crit_edge: ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_data_inl_seg.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then135
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %handle_post_send_edge.exit.i521.for.cond.i_crit_edge, %while.cond.preheader.i.for.cond.i_crit_edge
  %offset.1.lcssa.i = phi i32 [ %offset.064.i, %while.cond.preheader.i.for.cond.i_crit_edge ], [ %add19.i, %handle_post_send_edge.exit.i521.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %1159 = ptrtoint ptr %num_sge32 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %num_sge32, align 4
  %cmp.i = icmp slt i32 %inc.i, %1160
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.set_data_inl_seg.exit.thread_crit_edge

for.cond.i.set_data_inl_seg.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_data_inl_seg.exit.thread

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.066.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %inl.065.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i488, %for.cond.i.for.body.i_crit_edge ]
  %offset.064.i = phi i32 [ 4, %for.body.lr.ph.i ], [ %offset.1.lcssa.i, %for.cond.i.for.body.i_crit_edge ]
  %1161 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %sg_list.i, align 8
  %length.i = getelementptr %struct.ib_sge, ptr %1162, i32 %i.066.i, i32 1
  %1163 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load i32, ptr %length.i, align 8
  %add.i488 = add i32 %1164, %inl.065.i
  %1165 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load i32, ptr %max_inline_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i488, i32 %1166)
  %cmp4.i = icmp sgt i32 %add.i488, %1166
  br i1 %cmp4.i, label %do.end147, label %while.cond.preheader.i, !prof !78

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1164)
  %tobool7.not59.i = icmp eq i32 %1164, 0
  br i1 %tobool7.not59.i, label %while.cond.preheader.i.for.cond.i_crit_edge, label %while.body.preheader.i, !prof !78

while.cond.preheader.i.for.cond.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %arrayidx.i489 = getelementptr %struct.ib_sge, ptr %1162, i32 %i.066.i
  %1167 = ptrtoint ptr %arrayidx.i489 to i32
  call void @__asan_load8_noabort(i32 %1167)
  %1168 = load i64, ptr %arrayidx.i489, align 8
  %conv.i = trunc i64 %1168 to i32
  %1169 = inttoptr i32 %conv.i to ptr
  br label %while.body.i

while.body.i:                                     ; preds = %handle_post_send_edge.exit.i521.while.body.i_crit_edge, %while.body.preheader.i
  %addr.062.i = phi ptr [ %add.ptr17.i, %handle_post_send_edge.exit.i521.while.body.i_crit_edge ], [ %1169, %while.body.preheader.i ]
  %len.061.i = phi i32 [ %sub.i, %handle_post_send_edge.exit.i521.while.body.i_crit_edge ], [ %1164, %while.body.preheader.i ]
  %offset.160.i = phi i32 [ %add19.i, %handle_post_send_edge.exit.i521.while.body.i_crit_edge ], [ %offset.064.i, %while.body.preheader.i ]
  %1170 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %seg, align 4
  %1172 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i490 = icmp eq ptr %1171, %1173
  br i1 %cmp.not.i.i490, label %if.end.i.i520, label %while.body.i.handle_post_send_edge.exit.i521_crit_edge, !prof !78

while.body.i.handle_post_send_edge.exit.i521_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i521

if.end.i.i520:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %1174 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load i32, ptr %size, align 4
  %shr.i = lshr i32 %offset.160.i, 4
  %add14.i = add i32 %1175, %shr.i
  %1176 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %1176)
  %1177 = load i16, ptr %cur_post.i553, align 4
  %conv.i.i491 = zext i16 %1177 to i32
  %shr.i.i492 = lshr i32 %add14.i, 2
  %add.i.i493 = add nuw nsw i32 %shr.i.i492, %conv.i.i491
  %1178 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i.i494 = add i32 %1179, -1
  %and.i.i495 = and i32 %add.i.i493, %sub.i.i494
  %1180 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %1180)
  %1181 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i.i496 = zext i16 %1181 to i32
  %add.i.i.i.i497 = add nuw nsw i32 %and.i.i495, %conv.i.i.i.i496
  %1182 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %1182)
  %1183 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i.i498 = zext i16 %1183 to i32
  %or.i.i.i.i499 = or i32 %add.i.i.i.i497, %conv1.i.i.i.i498
  %sub.i.i.i.i500 = sub nsw i32 %or.i.i.i.i499, %conv.i.i.i.i496
  %1184 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %1186 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i500, i32 %1185) #7
  %add.i6.i.i.i501 = add i32 %1186, %conv.i.i.i.i496
  %1187 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %1187)
  %1188 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i.i502 = zext i8 %1188 to i32
  %shr.i.i.i.i503 = lshr i32 %add.i6.i.i.i501, %conv1.i7.i.i.i502
  %1189 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i504 = getelementptr %struct.mlx5_buf_list, ptr %1190, i32 %shr.i.i.i.i503
  %1191 = ptrtoint ptr %arrayidx.i.i.i.i504 to i32
  call void @__asan_load4_noabort(i32 %1191)
  %1192 = load ptr, ptr %arrayidx.i.i.i.i504, align 4
  %and.i.i.i.i505 = and i32 %add.i6.i.i.i501, %conv1.i.i.i.i498
  %1193 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %1193)
  %1194 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i.i506 = zext i8 %1194 to i32
  %shl.i.i.i.i507 = shl i32 %and.i.i.i.i505, %conv3.i.i.i.i506
  %add.ptr.i.i.i.i508 = getelementptr i8, ptr %1192, i32 64
  %add.ptr.i.i.i509 = getelementptr i8, ptr %add.ptr.i.i.i.i508, i32 %shl.i.i.i.i507
  %1195 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %1195)
  store ptr %add.ptr.i.i.i509, ptr %cur_edge, align 4
  %shr.i.i.i513 = lshr i32 %add.i.i.i.i497, %conv1.i7.i.i.i502
  %arrayidx.i.i.i514 = getelementptr %struct.mlx5_buf_list, ptr %1190, i32 %shr.i.i.i513
  %1196 = ptrtoint ptr %arrayidx.i.i.i514 to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %arrayidx.i.i.i514, align 4
  %and.i.i.i516 = and i32 %add.i.i.i.i497, %conv1.i.i.i.i498
  %shl.i.i.i518 = shl i32 %and.i.i.i516, %conv3.i.i.i.i506
  %add.ptr.i9.i.i519 = getelementptr i8, ptr %1197, i32 %shl.i.i.i518
  %1198 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %1198)
  store ptr %add.ptr.i9.i.i519, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i521

handle_post_send_edge.exit.i521:                  ; preds = %if.end.i.i520, %while.body.i.handle_post_send_edge.exit.i521_crit_edge
  %1199 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %cur_edge, align 4
  %1201 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %seg, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1200 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1202 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %1203 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i, i32 %len.061.i) #7
  %1204 = call ptr @memcpy(ptr %1202, ptr %addr.062.i, i32 %1203)
  %sub.i = sub i32 %len.061.i, %1203
  %add.ptr17.i = getelementptr i8, ptr %addr.062.i, i32 %1203
  %1205 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load ptr, ptr %seg, align 4
  %add.ptr18.i = getelementptr i8, ptr %1206, i32 %1203
  store ptr %add.ptr18.i, ptr %seg, align 4
  %add19.i = add i32 %1203, %offset.160.i
  %tobool7.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool7.not.i, label %handle_post_send_edge.exit.i521.for.cond.i_crit_edge, label %handle_post_send_edge.exit.i521.while.body.i_crit_edge, !prof !78

handle_post_send_edge.exit.i521.while.body.i_crit_edge: ; preds = %handle_post_send_edge.exit.i521
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

handle_post_send_edge.exit.i521.for.cond.i_crit_edge: ; preds = %handle_post_send_edge.exit.i521
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

set_data_inl_seg.exit.thread:                     ; preds = %for.cond.i.set_data_inl_seg.exit.thread_crit_edge, %if.then135.set_data_inl_seg.exit.thread_crit_edge
  %inl.0.lcssa.i = phi i32 [ 0, %if.then135.set_data_inl_seg.exit.thread_crit_edge ], [ %add.i488, %for.cond.i.set_data_inl_seg.exit.thread_crit_edge ]
  %or.i = or i32 %inl.0.lcssa.i, -2147483648
  %1207 = ptrtoint ptr %1156 to i32
  call void @__asan_store4_noabort(i32 %1207)
  store i32 %or.i, ptr %1156, align 4
  %add22.i = add i32 %inl.0.lcssa.i, 19
  %div56.i = lshr i32 %add22.i, 4
  %1208 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load i32, ptr %size, align 4
  %add23.i = add i32 %1209, %div56.i
  store i32 %add23.i, ptr %size, align 4
  br label %if.end175

do.end147:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %1210 = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 13
  %1211 = call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i522 = and i32 %1211, -16384
  %1212 = inttoptr i32 %and.i522 to ptr
  %task150 = getelementptr inbounds %struct.thread_info, ptr %1212, i32 0, i32 2
  %1213 = ptrtoint ptr %task150 to i32
  call void @__asan_load4_noabort(i32 %1213)
  %1214 = load ptr, ptr %task150, align 8
  %pid151 = getelementptr inbounds %struct.task_struct, ptr %1214, i32 0, i32 68
  %1215 = ptrtoint ptr %pid151 to i32
  call void @__asan_load4_noabort(i32 %1215)
  %1216 = load i32, ptr %pid151, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1210, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1401, i32 noundef %1216) #10
  %1217 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %1217)
  store ptr %wr.addr.0681, ptr %bad_wr, align 4
  br label %out

for.body157:                                      ; preds = %for.inc.for.body157_crit_edge, %for.body157.lr.ph
  %i.0678 = phi i32 [ 0, %for.body157.lr.ph ], [ %inc, %for.inc.for.body157_crit_edge ]
  %1218 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %seg, align 4
  %1220 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i523 = icmp eq ptr %1219, %1221
  br i1 %cmp.not.i523, label %if.end.i546, label %for.body157.handle_post_send_edge.exit_crit_edge, !prof !78

for.body157.handle_post_send_edge.exit_crit_edge: ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit

if.end.i546:                                      ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #9
  %1222 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load i32, ptr %size, align 4
  %1224 = ptrtoint ptr %cur_post.i553 to i32
  call void @__asan_load2_noabort(i32 %1224)
  %1225 = load i16, ptr %cur_post.i553, align 4
  %conv.i524 = zext i16 %1225 to i32
  %shr.i525 = lshr i32 %1223, 2
  %add.i526 = add nuw nsw i32 %shr.i525, %conv.i524
  %1226 = ptrtoint ptr %wqe_cnt.i555 to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load i32, ptr %wqe_cnt.i555, align 4
  %sub.i527 = add i32 %1227, -1
  %and.i528 = and i32 %add.i526, %sub.i527
  %1228 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %1228)
  %1229 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i.i529 = zext i16 %1229 to i32
  %add.i.i.i530 = add nuw nsw i32 %and.i528, %conv.i.i.i529
  %1230 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %1230)
  %1231 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i.i531 = zext i16 %1231 to i32
  %or.i.i.i = or i32 %add.i.i.i530, %conv1.i.i.i531
  %sub.i.i.i532 = sub nsw i32 %or.i.i.i, %conv.i.i.i529
  %1232 = ptrtoint ptr %sz_m1.i.i.i.i454 to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load i32, ptr %sz_m1.i.i.i.i454, align 4
  %1234 = call i32 @llvm.umin.i32(i32 %sub.i.i.i532, i32 %1233) #7
  %add.i6.i.i = add i32 %1234, %conv.i.i.i529
  %1235 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %1235)
  %1236 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i.i = zext i8 %1236 to i32
  %shr.i.i.i533 = lshr i32 %add.i6.i.i, %conv1.i7.i.i
  %1237 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i534 = getelementptr %struct.mlx5_buf_list, ptr %1238, i32 %shr.i.i.i533
  %1239 = ptrtoint ptr %arrayidx.i.i.i534 to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %arrayidx.i.i.i534, align 4
  %and.i.i.i535 = and i32 %add.i6.i.i, %conv1.i.i.i531
  %1241 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %1241)
  %1242 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i.i536 = zext i8 %1242 to i32
  %shl.i.i.i537 = shl i32 %and.i.i.i535, %conv3.i.i.i536
  %add.ptr.i.i.i538 = getelementptr i8, ptr %1240, i32 64
  %add.ptr.i.i539 = getelementptr i8, ptr %add.ptr.i.i.i538, i32 %shl.i.i.i537
  %1243 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %1243)
  store ptr %add.ptr.i.i539, ptr %cur_edge, align 4
  %shr.i.i542 = lshr i32 %add.i.i.i530, %conv1.i7.i.i
  %arrayidx.i.i543 = getelementptr %struct.mlx5_buf_list, ptr %1238, i32 %shr.i.i542
  %1244 = ptrtoint ptr %arrayidx.i.i543 to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %arrayidx.i.i543, align 4
  %and.i.i544 = and i32 %add.i.i.i530, %conv1.i.i.i531
  %shl.i.i = shl i32 %and.i.i544, %conv3.i.i.i536
  %add.ptr.i9.i = getelementptr i8, ptr %1245, i32 %shl.i.i
  %1246 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %1246)
  store ptr %add.ptr.i9.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit

handle_post_send_edge.exit:                       ; preds = %if.end.i546, %for.body157.handle_post_send_edge.exit_crit_edge
  %1247 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load ptr, ptr %sg_list, align 8
  %length = getelementptr %struct.ib_sge, ptr %1248, i32 %i.0678, i32 1
  %1249 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1250)
  %tobool160.not = icmp eq i32 %1250, 0
  br i1 %tobool160.not, label %handle_post_send_edge.exit.for.inc_crit_edge, label %if.end170, !prof !78

handle_post_send_edge.exit.for.inc_crit_edge:     ; preds = %handle_post_send_edge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end170:                                        ; preds = %handle_post_send_edge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx159 = getelementptr %struct.ib_sge, ptr %1248, i32 %i.0678
  %1251 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load ptr, ptr %seg, align 4
  %1253 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load i32, ptr %length, align 8
  %1255 = ptrtoint ptr %1252 to i32
  call void @__asan_store4_noabort(i32 %1255)
  store i32 %1254, ptr %1252, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %1248, i32 %i.0678, i32 2
  %1256 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %1252, i32 0, i32 1
  %1258 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %1258)
  store i32 %1257, ptr %lkey1.i, align 4
  %1259 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load8_noabort(i32 %1259)
  %1260 = load i64, ptr %arrayidx159, align 8
  %addr2.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %1252, i32 0, i32 2
  %1261 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %1261)
  store i64 %1260, ptr %addr2.i, align 8
  %1262 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load i32, ptr %size, align 4
  %add173 = add i32 %1263, 1
  store i32 %add173, ptr %size, align 4
  %1264 = load ptr, ptr %seg, align 4
  %add.ptr174 = getelementptr i8, ptr %1264, i32 16
  store ptr %add.ptr174, ptr %seg, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end170, %handle_post_send_edge.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0678, 1
  %exitcond.not = icmp eq i32 %inc, %num_sge.1
  br i1 %exitcond.not, label %for.inc.if.end175_crit_edge, label %for.inc.for.body157_crit_edge

for.inc.for.body157_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body157

for.inc.if.end175_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.end175:                                        ; preds = %for.inc.if.end175_crit_edge, %set_data_inl_seg.exit.thread, %for.cond154.preheader.if.end175_crit_edge
  %1265 = ptrtoint ptr %next_fence71 to i32
  call void @__asan_store1_noabort(i32 %1265)
  store i8 %next_fence.1, ptr %next_fence71, align 1
  %1266 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %ctrl, align 4
  %1268 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %seg, align 4
  %1270 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load i32, ptr %size, align 4
  %conv177 = trunc i32 %1271 to i8
  %1272 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %cur_edge, align 4
  %1274 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load i32, ptr %idx, align 4
  %1276 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.addr.0681, i32 0, i32 1
  %1277 = ptrtoint ptr %1276 to i32
  call void @__asan_load8_noabort(i32 %1277)
  %1278 = load i64, ptr %1276, align 8
  %1279 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load i32, ptr %opcode, align 8
  %arrayidx179 = getelementptr [241 x i32], ptr @mlx5_ib_opcode, i32 0, i32 %1280
  %1281 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load i32, ptr %arrayidx179, align 4
  call fastcc void @finish_wqe(ptr noundef %ibqp, ptr noundef %1267, ptr noundef %1269, i8 noundef zeroext %conv177, ptr noundef %1273, i32 noundef %1275, i64 noundef %1278, i32 noundef %nreq.0685, i8 noundef zeroext %fence.0, i32 noundef %1282)
  br label %for.inc180

for.inc180:                                       ; preds = %if.end175, %if.else91.for.inc180_crit_edge
  %inc181 = add i32 %nreq.0685, 1
  %1283 = ptrtoint ptr %wr.addr.0681 to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %wr.addr.0681, align 8
  %tobool17.not = icmp eq ptr %1284, null
  br i1 %tobool17.not, label %for.inc180.out_crit_edge, label %for.inc180.for.body_crit_edge

for.inc180.for.body_crit_edge:                    ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc180.out_crit_edge:                         ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc180.out_crit_edge, %do.end147, %land.lhs.true35.i.i.i.out_crit_edge, %land.lhs.true20.i.i.i.out_crit_edge, %land.lhs.true5.i.i.i.out_crit_edge, %land.lhs.true.i.i.i.out_crit_edge, %if.then.i426, %do.end112, %if.then90, %do.end56, %do.end45, %do.end29
  %nreq.0649 = phi i32 [ %nreq.0685, %do.end29 ], [ %nreq.0685, %do.end45 ], [ %nreq.0685, %do.end56 ], [ %nreq.0685, %do.end147 ], [ %nreq.0685, %do.end112 ], [ %nreq.0685, %if.then90 ], [ %nreq.0685, %if.then.i426 ], [ %inc181, %for.inc180.out_crit_edge ], [ %nreq.0685, %land.lhs.true.i.i.i.out_crit_edge ], [ %nreq.0685, %land.lhs.true5.i.i.i.out_crit_edge ], [ %nreq.0685, %land.lhs.true20.i.i.i.out_crit_edge ], [ %nreq.0685, %land.lhs.true35.i.i.i.out_crit_edge ]
  %err.4 = phi i32 [ -22, %do.end29 ], [ -22, %do.end45 ], [ -12, %do.end56 ], [ -12, %do.end147 ], [ -1, %do.end112 ], [ %err.0.i, %if.then90 ], [ -22, %if.then.i426 ], [ 0, %for.inc180.out_crit_edge ], [ -1, %land.lhs.true.i.i.i.out_crit_edge ], [ -1, %land.lhs.true5.i.i.i.out_crit_edge ], [ -1, %land.lhs.true20.i.i.i.out_crit_edge ], [ -1, %land.lhs.true35.i.i.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0649)
  %tobool183.not = icmp eq i32 %nreq.0649, 0
  br i1 %tobool183.not, label %out.if.end205_crit_edge, label %if.then190, !prof !78

out.if.end205_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.then190:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 12
  %1285 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load i32, ptr %head, align 4
  %add192 = add i32 %1286, %nreq.0649
  store i32 %add192, ptr %head, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %cur_post = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 7, i32 14
  %1287 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %1287)
  %1288 = load i16, ptr %cur_post, align 4
  %conv197 = zext i16 %1288 to i32
  %db = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 3
  %1289 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %db, align 8
  %arrayidx199 = getelementptr i32, ptr %1290, i32 1
  %1291 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %1291)
  store i32 %conv197, ptr %arrayidx199, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @arm_heavy_mb() #7
  %1292 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load ptr, ptr %ctrl, align 4
  %bfreg = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13, i32 2
  %1294 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %bfreg, align 4
  %1296 = ptrtoint ptr %1295 to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load ptr, ptr %1295, align 4
  %offset = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 13, i32 1
  %1298 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load i32, ptr %offset, align 4
  %add.ptr203 = getelementptr i8, ptr %1297, i32 %1299
  %1300 = ptrtoint ptr %1293 to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load i32, ptr %1293, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %1301) #7, !srcloc !82
  %arrayidx1.i = getelementptr i32, ptr %1293, i32 1
  %1302 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load i32, ptr %arrayidx1.i, align 4
  %add.ptr.i548 = getelementptr i8, ptr %add.ptr203, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i548, i32 %1303) #7, !srcloc !82
  %1304 = ptrtoint ptr %bf10 to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load i32, ptr %bf10, align 4
  %1306 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load i32, ptr %offset, align 4
  %xor = xor i32 %1307, %1305
  store i32 %xor, ptr %offset, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then190, %out.if.end205_crit_edge, %if.end9.if.end205_crit_edge
  %err.4745 = phi i32 [ %err.4, %if.then190 ], [ %err.4, %out.if.end205_crit_edge ], [ 0, %if.end9.if.end205_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.then7, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call8, %if.then7 ], [ %err.4745, %if.end205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_edge) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_gsi_post_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_wqe(ptr nocapture noundef %qp, ptr nocapture noundef %ctrl, ptr noundef %seg, i8 noundef zeroext %size, ptr noundef %cur_edge, i32 noundef %idx, i64 noundef %wr_id, i32 noundef %nreq, i8 noundef zeroext %fence, i32 noundef %mlx5_opcode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7
  %cur_post = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 14
  %0 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cur_post, align 4
  %conv = zext i16 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %mlx5_opcode
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %ctrl, align 4
  %conv4 = zext i8 %size to i32
  %qpn = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qpn, align 4
  %shl5 = shl i32 %4, 8
  %or6 = or i32 %shl5, %conv4
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %ctrl, i32 0, i32 1
  %5 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or6, ptr %qpn_ds, align 4
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fm_ce_se, align 1
  %or975 = or i8 %7, %fence
  store i8 %or975, ptr %fm_ce_se, align 1
  %flags_en = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 21
  %8 = ptrtoint ptr %flags_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags_en, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %12 = and i8 %11, 63
  %and.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp8.i.not.i = icmp eq i8 %12, 0
  br i1 %cmp8.i.not.i, label %if.then.wq_sig.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.wq_sig.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %wq_sig.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %res.09.i.i = phi i32 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %ctrl, i32 %i.010.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %xor.i.i = xor i32 %res.09.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shl.i
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i = trunc i32 %xor.i.i to i8
  %phi.bo.i.i = xor i8 %phi.cast.i.i, -1
  br label %wq_sig.exit

wq_sig.exit:                                      ; preds = %for.end.loopexit.i.i, %if.then.wq_sig.exit_crit_edge
  %res.0.lcssa.i.i = phi i8 [ -1, %if.then.wq_sig.exit_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %res.0.lcssa.i.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %wq_sig.exit, %entry.if.end_crit_edge
  %wrid = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wrid, align 8
  %arrayidx = getelementptr i64, ptr %17, i32 %idx
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %wr_id, ptr %arrayidx, align 8
  %conv14 = trunc i32 %mlx5_opcode to i16
  %w_list = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %w_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %w_list, align 8
  %arrayidx16 = getelementptr %struct.wr_list, ptr %20, i32 %idx
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv14, ptr %arrayidx16, align 2
  %head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 12
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head, align 4
  %add = add i32 %23, %nreq
  %wqe_head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %wqe_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wqe_head, align 4
  %arrayidx19 = getelementptr i32, ptr %25, i32 %idx
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %arrayidx19, align 4
  %mul = shl nuw nsw i32 %conv4, 4
  %sub = add nuw nsw i32 %mul, 63
  %div76 = lshr i32 %sub, 6
  %27 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cur_post, align 4
  %29 = trunc i32 %div76 to i16
  %conv26 = add i16 %28, %29
  store i16 %conv26, ptr %cur_post, align 4
  %30 = load ptr, ptr %w_list, align 8
  %next = getelementptr %struct.wr_list, ptr %30, i32 %idx, i32 1
  %31 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv26, ptr %next, align 2
  %32 = ptrtoint ptr %seg to i32
  %add32 = add i32 %32, 63
  %and33 = and i32 %add32, -64
  %33 = inttoptr i32 %and33 to ptr
  %cmp = icmp eq ptr %33, %cur_edge
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge, !prof !78

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cur_post, align 4
  %conv44 = zext i16 %35 to i32
  %wqe_cnt = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 7
  %36 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wqe_cnt, align 8
  %sub46 = add i32 %37, 65535
  %and47 = and i32 %sub46, %conv44
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 3
  %38 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i77 = zext i16 %39 to i32
  %add.i.i = add nuw nsw i32 %and47, %conv.i.i77
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 2
  %40 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv1.i.i = zext i16 %41 to i32
  %or.i.i = or i32 %add.i.i, %conv1.i.i
  %sub.i.i = sub nsw i32 %or.i.i, %conv.i.i77
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 1
  %42 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sz_m1.i.i, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %43) #7
  %add.i6.i = add i32 %44, %conv.i.i77
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 6
  %45 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i7.i = zext i8 %46 to i32
  %shr.i.i = lshr i32 %add.i6.i, %conv1.i7.i
  %47 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sq, align 4
  %arrayidx.i.i78 = getelementptr %struct.mlx5_buf_list, ptr %48, i32 %shr.i.i
  %49 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i78, align 4
  %and.i.i = and i32 %add.i6.i, %conv1.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 5
  %51 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %52 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %shl.i.i
  %add.ptr.i79 = getelementptr i8, ptr %add.ptr.i.i, i32 64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr.i79, %cond.true ], [ %cur_edge, %if.end.cond.end_crit_edge ]
  %cur_edge50 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 16
  %53 = ptrtoint ptr %cur_edge50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cond, ptr %cur_edge50, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_post_recv(ptr noundef %ibqp, ptr noundef %wr, ptr noundef %bad_wr, i1 noundef zeroext %drain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %mdev2 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ne i32 %5, 2
  %6 = or i1 %cmp, %drain
  br i1 %6, label %if.end, label %if.then, !prof !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wr, ptr %bad_wr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 22
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then7, label %do.body10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @mlx5_ib_gsi_post_recv(ptr noundef %ibqp, ptr noundef %wr, ptr noundef %bad_wr) #7
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %rq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4
  %lock = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 6
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %head = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 12
  %wqe_cnt = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 7
  %tobool18.not165 = icmp eq ptr %wr, null
  br i1 %tobool18.not165, label %do.body10.if.end90_crit_edge, label %for.body.lr.ph

do.body10.if.end90_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

for.body.lr.ph:                                   ; preds = %do.body10
  %10 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wqe_cnt, align 8
  %sub = add i32 %11, -1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head, align 4
  %and = and i32 %sub, %13
  %tail.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 13
  %max_post.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 8
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %max_gs = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 9
  %strides_offset.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 0, i32 3
  %log_frag_strides.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 0, i32 6
  %frag_sz_m1.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 0, i32 2
  %log_stride.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 0, i32 5
  %flags_en = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 21
  %wrid = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.lr.ph
  %ind.0169 = phi i32 [ %and, %for.body.lr.ph ], [ %and68, %if.end62.for.body_crit_edge ]
  %nreq.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %inc70, %if.end62.for.body_crit_edge ]
  %wr.addr.0166 = phi ptr [ %wr, %for.body.lr.ph ], [ %82, %if.end62.for.body_crit_edge ]
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %15, %nreq.0168
  %add.i = sub i32 %sub.i, %17
  %18 = ptrtoint ptr %max_post.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_post.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp.i = icmp ult i32 %add.i, %19
  br i1 %cmp.i, label %for.body.if.end24_crit_edge, label %mlx5_wq_overflow.exit, !prof !77

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

mlx5_wq_overflow.exit:                            ; preds = %for.body
  %20 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %recv_cq, align 4
  %lock.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %21, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head, align 4
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %sub4.i = add i32 %23, %nreq.0168
  %add6.i = sub i32 %sub4.i, %25
  %26 = ptrtoint ptr %max_post.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_post.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %27)
  %cmp8.i.not = icmp ult i32 %add6.i, %27
  br i1 %cmp8.i.not, label %mlx5_wq_overflow.exit.if.end24_crit_edge, label %mlx5_wq_overflow.exit.out.sink.split_crit_edge

mlx5_wq_overflow.exit.out.sink.split_crit_edge:   ; preds = %mlx5_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

mlx5_wq_overflow.exit.if.end24_crit_edge:         ; preds = %mlx5_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %mlx5_wq_overflow.exit.if.end24_crit_edge, %for.body.if.end24_crit_edge
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0166, i32 0, i32 3
  %28 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_sge, align 4
  %30 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_gs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp26 = icmp sgt i32 %29, %31
  br i1 %cmp26, label %if.end24.out.sink.split_crit_edge, label %if.end35, !prof !78

if.end24.out.sink.split_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end35:                                         ; preds = %if.end24
  %32 = ptrtoint ptr %strides_offset.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %strides_offset.i, align 2
  %conv.i151 = zext i16 %33 to i32
  %add.i152 = add i32 %ind.0169, %conv.i151
  %34 = ptrtoint ptr %log_frag_strides.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %log_frag_strides.i, align 2
  %conv1.i = zext i8 %35 to i32
  %shr.i = lshr i32 %add.i152, %conv1.i
  %36 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq, align 4
  %arrayidx.i = getelementptr %struct.mlx5_buf_list, ptr %37, i32 %shr.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %frag_sz_m1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frag_sz_m1.i, align 4
  %conv2.i = zext i16 %41 to i32
  %and.i = and i32 %add.i152, %conv2.i
  %42 = ptrtoint ptr %log_stride.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %log_stride.i, align 1
  %conv3.i = zext i8 %43 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %add.ptr.i = getelementptr i8, ptr %39, i32 %shl.i
  %44 = ptrtoint ptr %flags_en to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags_en, align 4
  %and38 = and i32 %45, 1
  %spec.select150 = getelementptr %struct.mlx5_wqe_data_seg, ptr %add.ptr.i, i32 %and38
  %46 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp44163 = icmp sgt i32 %47, 0
  br i1 %cmp44163, label %for.body46.lr.ph, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body46.lr.ph:                                 ; preds = %if.end35
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0166, i32 0, i32 2
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %i.0164 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc, %for.body46.for.body46_crit_edge ]
  %add.ptr = getelementptr %struct.mlx5_wqe_data_seg, ptr %spec.select150, i32 %i.0164
  %48 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg_list, align 8
  %add.ptr47 = getelementptr %struct.ib_sge, ptr %49, i32 %i.0164
  %length.i = getelementptr %struct.ib_sge, ptr %49, i32 %i.0164, i32 1
  %50 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i, align 8
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %49, i32 %i.0164, i32 2
  %53 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 0, i32 1
  %55 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %lkey1.i, align 4
  %56 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr47, align 8
  %addr2.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %add.ptr, i32 0, i32 2
  %58 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %addr2.i, align 8
  %inc = add nuw nsw i32 %i.0164, 1
  %59 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_sge, align 4
  %cmp44 = icmp slt i32 %inc, %60
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.end_crit_edge

for.body46.for.end_crit_edge:                     ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.end:                                          ; preds = %for.body46.for.end_crit_edge, %if.end35.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end35.for.end_crit_edge ], [ %inc, %for.body46.for.end_crit_edge ]
  %61 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_gs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %62)
  %cmp50 = icmp slt i32 %i.0.lcssa, %62
  br i1 %cmp50, label %if.then52, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.mlx5_wqe_data_seg, ptr %spec.select150, i32 %i.0.lcssa
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx, align 8
  %lkey = getelementptr %struct.mlx5_wqe_data_seg, ptr %spec.select150, i32 %i.0.lcssa, i32 1
  %64 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 256, ptr %lkey, align 4
  %addr = getelementptr %struct.mlx5_wqe_data_seg, ptr %spec.select150, i32 %i.0.lcssa, i32 2
  %65 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %addr, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %for.end.if.end55_crit_edge
  %66 = ptrtoint ptr %flags_en to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags_en, align 4
  %and57 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end62_crit_edge, label %if.then59

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.end55
  %68 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_gs, align 8
  %add.i153 = shl i32 %69, 2
  %shl.i154 = add i32 %add.i153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i154)
  %cmp8.i.i = icmp sgt i32 %shl.i154, 0
  br i1 %cmp8.i.i, label %if.then59.for.body.i.i_crit_edge, label %if.then59.set_sig_seg.exit_crit_edge

if.then59.set_sig_seg.exit_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_sig_seg.exit

if.then59.for.body.i.i_crit_edge:                 ; preds = %if.then59
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then59.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then59.for.body.i.i_crit_edge ]
  %res.09.i.i = phi i32 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then59.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %spec.select150, i32 %i.010.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %71 to i32
  %xor.i.i = xor i32 %res.09.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shl.i154
  br i1 %exitcond.not.i.i, label %for.end.loopexit.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i = trunc i32 %xor.i.i to i8
  %phi.bo.i.i = xor i8 %phi.cast.i.i, -1
  br label %set_sig_seg.exit

set_sig_seg.exit:                                 ; preds = %for.end.loopexit.i.i, %if.then59.set_sig_seg.exit_crit_edge
  %res.0.lcssa.i.i = phi i8 [ -1, %if.then59.set_sig_seg.exit_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %signature.i = getelementptr inbounds %struct.mlx5_rwqe_sig, ptr %spec.select150, i32 0, i32 1
  %72 = ptrtoint ptr %signature.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %res.0.lcssa.i.i, ptr %signature.i, align 1
  br label %if.end62

if.end62:                                         ; preds = %set_sig_seg.exit, %if.end55.if.end62_crit_edge
  %73 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0166, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %73, align 8
  %76 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wrid, align 8
  %arrayidx64 = getelementptr i64, ptr %77, i32 %ind.0169
  %78 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %75, ptr %arrayidx64, align 8
  %add = add i32 %ind.0169, 1
  %79 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wqe_cnt, align 8
  %sub67 = add i32 %80, -1
  %and68 = and i32 %sub67, %add
  %inc70 = add i32 %nreq.0168, 1
  %81 = ptrtoint ptr %wr.addr.0166 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr.addr.0166, align 8
  %tobool18.not = icmp eq ptr %82, null
  br i1 %tobool18.not, label %if.end62.out_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out.sink.split:                                   ; preds = %if.end24.out.sink.split_crit_edge, %mlx5_wq_overflow.exit.out.sink.split_crit_edge
  %err.0.ph = phi i32 [ -12, %mlx5_wq_overflow.exit.out.sink.split_crit_edge ], [ -22, %if.end24.out.sink.split_crit_edge ]
  %83 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %wr.addr.0166, ptr %bad_wr, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end62.out_crit_edge
  %nreq.0160 = phi i32 [ %nreq.0168, %out.sink.split ], [ %inc70, %if.end62.out_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %out.sink.split ], [ 0, %if.end62.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0160)
  %tobool72.not = icmp eq i32 %nreq.0160, 0
  br i1 %tobool72.not, label %out.if.end90_crit_edge, label %if.then79, !prof !78

out.if.end90_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then79:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %head, align 4
  %add82 = add i32 %85, %nreq.0160
  store i32 %add82, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %head, align 4
  %and88 = and i32 %87, 65535
  %db = getelementptr inbounds %struct.mlx5_ib_qp, ptr %ibqp, i32 0, i32 3
  %88 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %db, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and88, ptr %89, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then79, %out.if.end90_crit_edge, %do.body10.if.end90_crit_edge
  %err.0178 = phi i32 [ %err.0, %if.then79 ], [ %err.0, %out.if.end90_crit_edge ], [ 0, %do.body10.if.end90_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then7, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call8, %if.then7 ], [ %err.0178, %if.end90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_gsi_post_recv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__begin_wqe(ptr nocapture noundef readonly %qp, ptr nocapture noundef %seg, ptr nocapture noundef %ctrl, ptr nocapture noundef readonly %wr, ptr nocapture noundef writeonly %idx, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %cur_edge, i32 noundef %nreq, i1 noundef zeroext %send_signaled, i1 noundef zeroext %solicited) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7
  %head.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 13
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %sub.i = add i32 %1, %nreq
  %add.i = sub i32 %sub.i, %3
  %max_post.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %max_post.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_post.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i = icmp ult i32 %add.i, %5
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %mlx5_wq_overflow.exit, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mlx5_wq_overflow.exit:                            ; preds = %entry
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 2
  %6 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_cq, align 8
  %lock.i = getelementptr inbounds %struct.mlx5_ib_cq, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head.i, align 4
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %sub4.i = add i32 %9, %nreq
  %add6.i = sub i32 %sub4.i, %11
  %12 = ptrtoint ptr %max_post.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_post.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %13)
  %cmp8.i.not = icmp ult i32 %add6.i, %13
  br i1 %cmp8.i.not, label %mlx5_wq_overflow.exit.if.end_crit_edge, label %mlx5_wq_overflow.exit.return_crit_edge, !prof !77

mlx5_wq_overflow.exit.return_crit_edge:           ; preds = %mlx5_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

mlx5_wq_overflow.exit.if.end_crit_edge:           ; preds = %mlx5_wq_overflow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %mlx5_wq_overflow.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_post = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 14
  %14 = ptrtoint ptr %cur_post to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cur_post, align 4
  %conv = zext i16 %15 to i32
  %wqe_cnt = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 7
  %16 = ptrtoint ptr %wqe_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wqe_cnt, align 8
  %sub = add i32 %17, 65535
  %and = and i32 %sub, %conv
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %idx, align 4
  %strides_offset.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %strides_offset.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %strides_offset.i, align 2
  %conv.i32 = zext i16 %20 to i32
  %add.i33 = add nuw nsw i32 %and, %conv.i32
  %log_frag_strides.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 6
  %21 = ptrtoint ptr %log_frag_strides.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_frag_strides.i, align 2
  %conv1.i = zext i8 %22 to i32
  %shr.i = lshr i32 %add.i33, %conv1.i
  %23 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sq, align 4
  %arrayidx.i = getelementptr %struct.mlx5_buf_list, ptr %24, i32 %shr.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %frag_sz_m1.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 2
  %27 = ptrtoint ptr %frag_sz_m1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_sz_m1.i, align 4
  %conv2.i = zext i16 %28 to i32
  %and.i = and i32 %add.i33, %conv2.i
  %log_stride.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 5
  %29 = ptrtoint ptr %log_stride.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_stride.i, align 1
  %conv3.i = zext i8 %30 to i32
  %shl.i = shl i32 %and.i, %conv3.i
  %add.ptr.i = getelementptr i8, ptr %26, i32 %shl.i
  %31 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i, ptr %seg, align 4
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %ctrl, align 4
  %33 = load ptr, ptr %seg, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 8
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %add.ptr, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 4
  %35 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opcode.i, align 8
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %36, label %if.end.send_ieth.exit_crit_edge [
    i32 3, label %if.end.return.sink.split.i_crit_edge
    i32 1, label %if.end.return.sink.split.i_crit_edge38
    i32 9, label %if.end.return.sink.split.i_crit_edge39
  ]

if.end.return.sink.split.i_crit_edge39:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.end.return.sink.split.i_crit_edge38:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.end.return.sink.split.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.end.send_ieth.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_ieth.exit

return.sink.split.i:                              ; preds = %if.end.return.sink.split.i_crit_edge, %if.end.return.sink.split.i_crit_edge38, %if.end.return.sink.split.i_crit_edge39
  %ex2.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 6
  %38 = ptrtoint ptr %ex2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ex2.i, align 8
  br label %send_ieth.exit

send_ieth.exit:                                   ; preds = %return.sink.split.i, %if.end.send_ieth.exit_crit_edge
  %retval.0.i34 = phi i32 [ 0, %if.end.send_ieth.exit_crit_edge ], [ %39, %return.sink.split.i ]
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctrl, align 4
  %42 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %41, i32 0, i32 5
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i34, ptr %42, align 4
  %sq_signal_bits = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 5
  %44 = ptrtoint ptr %sq_signal_bits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sq_signal_bits, align 4
  %cond = select i1 %send_signaled, i8 8, i8 0
  %cond14 = select i1 %solicited, i8 2, i8 0
  %or = or i8 %cond14, %cond
  %or15 = or i8 %or, %45
  %46 = load ptr, ptr %ctrl, align 4
  %fm_ce_se = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %fm_ce_se to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or15, ptr %fm_ce_se, align 1
  %48 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %seg, align 4
  %add.ptr17 = getelementptr i8, ptr %49, i32 16
  store ptr %add.ptr17, ptr %seg, align 4
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %size, align 4
  %cur_edge19 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 16
  %51 = ptrtoint ptr %cur_edge19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur_edge19, align 8
  %53 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %cur_edge, align 4
  br label %return

return:                                           ; preds = %send_ieth.exit, %mlx5_wq_overflow.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %send_ieth.exit ], [ -12, %mlx5_wq_overflow.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_reg_wr(ptr noundef readonly %qp, ptr nocapture noundef readonly %wr, ptr nocapture noundef %seg, ptr nocapture noundef %size, ptr nocapture noundef %cur_edge, i1 noundef zeroext %check_not_free) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr1 = getelementptr inbounds %struct.ib_reg_wr, ptr %wr, i32 0, i32 1
  %0 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr1, align 8
  %pd2 = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 1
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ndescs, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 4
  %meta_ndescs = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %meta_ndescs, align 8
  %add = add i32 %10, %7
  %desc_size = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_size, align 8
  %mul = mul i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mul)
  %cmp = icmp slt i32 %mul, 65
  %access = getelementptr inbounds %struct.ib_reg_wr, ptr %wr, i32 0, i32 3
  %13 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %access, align 8
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %18, i32 16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %21 = and i32 %20, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %21)
  %.not.i = icmp eq i32 %21, 8388610
  br i1 %.not.i, label %land.lhs.true.i.do.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %and14.i = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true16.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true16.i:                                ; preds = %if.end.i
  %mdev17.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %mdev17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev17.i, align 8
  %caps18.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps18.i, align 8
  %add.ptr23.i = getelementptr i32, ptr %25, i32 7
  %26 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr23.i, align 4
  %28 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not.i = icmp eq i32 %28, 0
  br i1 %tobool26.not.i, label %land.lhs.true16.i.land.lhs.true42.i_crit_edge, label %land.lhs.true27.i

land.lhs.true16.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true42.i

land.lhs.true27.i:                                ; preds = %land.lhs.true16.i
  %add.ptr34.i = getelementptr i32, ptr %25, i32 6
  %29 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr34.i, align 4
  %31 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool37.not.i = icmp eq i32 %31, 0
  br i1 %tobool37.not.i, label %land.lhs.true27.i.do.end_crit_edge, label %land.lhs.true27.i.land.lhs.true42.i_crit_edge

land.lhs.true27.i.land.lhs.true42.i_crit_edge:    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true42.i

land.lhs.true27.i.do.end_crit_edge:               ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true42.i:                                ; preds = %land.lhs.true27.i.land.lhs.true42.i_crit_edge, %land.lhs.true16.i.land.lhs.true42.i_crit_edge
  %32 = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool52.not.i = icmp eq i32 %32, 0
  br i1 %tobool52.not.i, label %land.lhs.true42.i.if.end_crit_edge, label %land.lhs.true53.i

land.lhs.true42.i.if.end_crit_edge:               ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true53.i:                                ; preds = %land.lhs.true42.i
  %add.ptr60.i = getelementptr i32, ptr %25, i32 6
  %33 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr60.i, align 4
  %35 = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool63.not.i = icmp eq i32 %35, 0
  br i1 %tobool63.not.i, label %land.lhs.true53.i.do.end_crit_edge, label %land.lhs.true53.i.if.end_crit_edge

land.lhs.true53.i.if.end_crit_edge:               ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true53.i.do.end_crit_edge:               ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %land.lhs.true53.i.do.end_crit_edge, %land.lhs.true27.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge
  %36 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qp, align 8
  %38 = getelementptr inbounds %struct.ib_device, ptr %37, i32 0, i32 13
  %39 = tail call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i98 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i98 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 876, i32 noundef %44) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true53.i.if.end_crit_edge, %land.lhs.true42.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 5
  %45 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %send_flags, align 4
  %and14 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end29, label %do.end21, !prof !77

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %qp, align 8
  %49 = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 13
  %50 = tail call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i99 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i99 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid28, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 882, i32 noundef %55) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %spec.select = select i1 %check_not_free, i8 32, i8 0
  %56 = or i8 %spec.select, -128
  %flags.1 = select i1 %cmp, i8 %56, i8 %spec.select
  %57 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %seg, align 4
  %59 = call ptr @memset(ptr %58, i32 0, i32 48)
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %flags.1, ptr %58, align 8
  %conv9.i = zext i32 %mul to i64
  %add.i.i = add nuw nsw i64 %conv9.i, 63
  %and.i.i = lshr i64 %add.i.i, 4
  %61 = trunc i64 %and.i.i to i16
  %conv2.i = and i16 %61, -4
  %xlt_octowords.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %58, i32 0, i32 2
  %62 = ptrtoint ptr %xlt_octowords.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv2.i, ptr %xlt_octowords.i, align 4
  %spec.select.i.i = select i1 %tobool.not, i64 547234115, i64 549331267
  %mkey_mask.i = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, ptr %58, i32 0, i32 4
  %63 = ptrtoint ptr %mkey_mask.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %spec.select.i.i, ptr %mkey_mask.i, align 8
  %64 = load ptr, ptr %seg, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 48
  store ptr %add.ptr, ptr %seg, align 4
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size, align 4
  %add41 = add i32 %66, 3
  store i32 %add41, ptr %size, align 4
  %sq = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7
  %67 = load ptr, ptr %seg, align 4
  %68 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i = icmp eq ptr %67, %69
  br i1 %cmp.not.i, label %if.end.i104, label %if.end29.handle_post_send_edge.exit_crit_edge, !prof !78

if.end29.handle_post_send_edge.exit_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit

if.end.i104:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %cur_post.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 14
  %70 = ptrtoint ptr %cur_post.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cur_post.i, align 4
  %conv.i = zext i16 %71 to i32
  %shr.i = lshr i32 %add41, 2
  %add.i100 = add nuw nsw i32 %shr.i, %conv.i
  %wqe_cnt.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 7
  %72 = ptrtoint ptr %wqe_cnt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wqe_cnt.i, align 4
  %sub.i = add i32 %73, -1
  %and.i101 = and i32 %add.i100, %sub.i
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 3
  %74 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %75 to i32
  %add.i.i.i = add nuw nsw i32 %and.i101, %conv.i.i.i
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 2
  %76 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i = zext i16 %77 to i32
  %or.i.i.i = or i32 %add.i.i.i, %conv1.i.i.i
  %sub.i.i.i = sub nsw i32 %or.i.i.i, %conv.i.i.i
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 1
  %78 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sz_m1.i.i.i, align 4
  %80 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %79) #7
  %add.i6.i.i = add i32 %80, %conv.i.i.i
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 6
  %81 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i7.i.i = zext i8 %82 to i32
  %shr.i.i.i = lshr i32 %add.i6.i.i, %conv1.i7.i.i
  %83 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %84, i32 %shr.i.i.i
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add.i6.i.i, %conv1.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 5
  %87 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %88 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 %shl.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 64
  %89 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i.i, ptr %cur_edge, align 4
  %90 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i = zext i16 %91 to i32
  %add.i.i102 = add nuw nsw i32 %and.i101, %conv.i.i
  %92 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i = zext i8 %92 to i32
  %shr.i.i = lshr i32 %add.i.i102, %conv1.i.i
  %93 = load ptr, ptr %sq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %93, i32 %shr.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i, align 4
  %96 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i = zext i16 %97 to i32
  %and.i.i103 = and i32 %add.i.i102, %conv2.i.i
  %98 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i = zext i8 %98 to i32
  %shl.i.i = shl i32 %and.i.i103, %conv3.i.i
  %add.ptr.i9.i = getelementptr i8, ptr %95, i32 %shl.i.i
  %99 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %add.ptr.i9.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit

handle_post_send_edge.exit:                       ; preds = %if.end.i104, %if.end29.handle_post_send_edge.exit_crit_edge
  %100 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %seg, align 4
  %key = getelementptr inbounds %struct.ib_reg_wr, ptr %wr, i32 0, i32 2
  %102 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %key, align 4
  %104 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %access, align 8
  %106 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ndescs, align 8
  %108 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %meta_ndescs, align 8
  %add.i106 = add i32 %107, 7
  %add2.i = add i32 %add.i106, %109
  %and.i107 = lshr i32 %add2.i, 1
  %shr.i108 = and i32 %and.i107, 2147483644
  %110 = call ptr @memset(ptr %101, i32 0, i32 64)
  %access_mode.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %111 = ptrtoint ptr %access_mode.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %access_mode.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %112, label %handle_post_send_edge.exit.set_reg_mkey_seg.exit_crit_edge [
    i32 1, label %cond.end12.i
    i32 2, label %if.then18.i
  ]

handle_post_send_edge.exit.set_reg_mkey_seg.exit_crit_edge: ; preds = %handle_post_send_edge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_reg_mkey_seg.exit

cond.end12.i:                                     ; preds = %handle_post_send_edge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %page_size.i = getelementptr inbounds %struct.ib_mr, ptr %1, i32 0, i32 6
  %114 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %page_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i.i.i = icmp eq i32 %115, 0
  %116 = tail call i32 @llvm.ctlz.i32(i32 %115, i1 true) #7, !range !84
  %117 = trunc i32 %116 to i8
  %118 = xor i8 %117, 31
  %conv14.i = select i1 %tobool.not.i.i.i, i8 -1, i8 %118
  %log2_page_size.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 13
  %119 = ptrtoint ptr %log2_page_size.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv14.i, ptr %log2_page_size.i, align 1
  br label %set_reg_mkey_seg.exit

if.then18.i:                                      ; preds = %handle_post_send_edge.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i110 = shl nuw i32 %shr.i108, 1
  br label %set_reg_mkey_seg.exit

set_reg_mkey_seg.exit:                            ; preds = %if.then18.i, %cond.end12.i, %handle_post_send_edge.exit.set_reg_mkey_seg.exit_crit_edge
  %ndescs.0.i = phi i32 [ %shr.i108, %cond.end12.i ], [ %mul.i110, %if.then18.i ], [ %shr.i108, %handle_post_send_edge.exit.set_reg_mkey_seg.exit_crit_edge ]
  %and.i.i111 = shl i32 %105, 3
  %120 = and i32 %and.i.i111, 64
  %and1.i.i = shl i32 %105, 4
  %121 = and i32 %and1.i.i, 32
  %or.i.i = or i32 %120, %121
  %and4.i.i = shl i32 %105, 2
  %122 = and i32 %and4.i.i, 16
  %or7.i.i = or i32 %or.i.i, %122
  %123 = and i32 %and.i.i111, 8
  %or11.i.i = or i32 %or7.i.i, %123
  %124 = ptrtoint ptr %access_mode.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %access_mode.i, align 4
  %conv.i47.i = or i32 %or11.i.i, %125
  %conv.i.i112 = trunc i32 %conv.i47.i to i8
  %conv23.i = or i8 %conv.i.i112, -124
  %flags.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 2
  %126 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv23.i, ptr %flags.i, align 2
  %or25.i = or i32 %103, -256
  %qpn_mkey7_0.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 4
  %127 = ptrtoint ptr %qpn_mkey7_0.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or25.i, ptr %qpn_mkey7_0.i, align 4
  %flags_pd.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 6
  %128 = ptrtoint ptr %flags_pd.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 16777216, ptr %flags_pd.i, align 4
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %1, i32 0, i32 4
  %129 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %iova.i, align 8
  %start_addr.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 7
  %131 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %start_addr.i, align 8
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %1, i32 0, i32 5
  %132 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %length.i, align 8
  %len.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 8
  %134 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %len.i, align 8
  %xlt_oct_size.i = getelementptr inbounds %struct.mlx5_mkey_seg, ptr %101, i32 0, i32 11
  %135 = ptrtoint ptr %xlt_oct_size.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %ndescs.0.i, ptr %xlt_oct_size.i, align 4
  %136 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %seg, align 4
  %add.ptr43 = getelementptr i8, ptr %137, i32 64
  store ptr %add.ptr43, ptr %seg, align 4
  %138 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %size, align 4
  %add44 = add i32 %139, 4
  store i32 %add44, ptr %size, align 4
  %140 = load ptr, ptr %seg, align 4
  %141 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i113 = icmp eq ptr %140, %142
  br i1 %cmp.not.i113, label %if.end.i150, label %set_reg_mkey_seg.exit.handle_post_send_edge.exit151_crit_edge, !prof !78

set_reg_mkey_seg.exit.handle_post_send_edge.exit151_crit_edge: ; preds = %set_reg_mkey_seg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit151

if.end.i150:                                      ; preds = %set_reg_mkey_seg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cur_post.i114 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 14
  %143 = ptrtoint ptr %cur_post.i114 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %cur_post.i114, align 4
  %conv.i115 = zext i16 %144 to i32
  %shr.i116 = lshr i32 %add44, 2
  %add.i117 = add nuw nsw i32 %shr.i116, %conv.i115
  %wqe_cnt.i118 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 7
  %145 = ptrtoint ptr %wqe_cnt.i118 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %wqe_cnt.i118, align 4
  %sub.i119 = add i32 %146, -1
  %and.i120 = and i32 %add.i117, %sub.i119
  %strides_offset.i.i.i121 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 3
  %147 = ptrtoint ptr %strides_offset.i.i.i121 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %strides_offset.i.i.i121, align 2
  %conv.i.i.i122 = zext i16 %148 to i32
  %add.i.i.i123 = add nuw nsw i32 %and.i120, %conv.i.i.i122
  %frag_sz_m1.i.i.i124 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 2
  %149 = ptrtoint ptr %frag_sz_m1.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %frag_sz_m1.i.i.i124, align 4
  %conv1.i.i.i125 = zext i16 %150 to i32
  %or.i.i.i126 = or i32 %add.i.i.i123, %conv1.i.i.i125
  %sub.i.i.i127 = sub nsw i32 %or.i.i.i126, %conv.i.i.i122
  %sz_m1.i.i.i128 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 1
  %151 = ptrtoint ptr %sz_m1.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sz_m1.i.i.i128, align 4
  %153 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i127, i32 %152) #7
  %add.i6.i.i129 = add i32 %153, %conv.i.i.i122
  %log_frag_strides.i.i.i130 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 6
  %154 = ptrtoint ptr %log_frag_strides.i.i.i130 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %log_frag_strides.i.i.i130, align 2
  %conv1.i7.i.i131 = zext i8 %155 to i32
  %shr.i.i.i132 = lshr i32 %add.i6.i.i129, %conv1.i7.i.i131
  %156 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i133 = getelementptr %struct.mlx5_buf_list, ptr %157, i32 %shr.i.i.i132
  %158 = ptrtoint ptr %arrayidx.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i.i133, align 4
  %and.i.i.i134 = and i32 %add.i6.i.i129, %conv1.i.i.i125
  %log_stride.i.i.i135 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 5
  %160 = ptrtoint ptr %log_stride.i.i.i135 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %log_stride.i.i.i135, align 1
  %conv3.i.i.i136 = zext i8 %161 to i32
  %shl.i.i.i137 = shl i32 %and.i.i.i134, %conv3.i.i.i136
  %add.ptr.i.i.i138 = getelementptr i8, ptr %159, i32 %shl.i.i.i137
  %add.ptr.i.i139 = getelementptr i8, ptr %add.ptr.i.i.i138, i32 64
  %162 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %add.ptr.i.i139, ptr %cur_edge, align 4
  %163 = ptrtoint ptr %strides_offset.i.i.i121 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %strides_offset.i.i.i121, align 2
  %conv.i.i140 = zext i16 %164 to i32
  %add.i.i141 = add nuw nsw i32 %and.i120, %conv.i.i140
  %165 = load i8, ptr %log_frag_strides.i.i.i130, align 2
  %conv1.i.i142 = zext i8 %165 to i32
  %shr.i.i143 = lshr i32 %add.i.i141, %conv1.i.i142
  %166 = load ptr, ptr %sq, align 4
  %arrayidx.i.i144 = getelementptr %struct.mlx5_buf_list, ptr %166, i32 %shr.i.i143
  %167 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i.i144, align 4
  %169 = ptrtoint ptr %frag_sz_m1.i.i.i124 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %frag_sz_m1.i.i.i124, align 4
  %conv2.i.i145 = zext i16 %170 to i32
  %and.i.i146 = and i32 %add.i.i141, %conv2.i.i145
  %171 = load i8, ptr %log_stride.i.i.i135, align 1
  %conv3.i.i147 = zext i8 %171 to i32
  %shl.i.i148 = shl i32 %and.i.i146, %conv3.i.i147
  %add.ptr.i9.i149 = getelementptr i8, ptr %168, i32 %shl.i.i148
  %172 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr.i9.i149, ptr %seg, align 4
  br label %handle_post_send_edge.exit151

handle_post_send_edge.exit151:                    ; preds = %if.end.i150, %set_reg_mkey_seg.exit.handle_post_send_edge.exit151_crit_edge
  br i1 %cmp, label %if.then47, label %if.else

if.then47:                                        ; preds = %handle_post_send_edge.exit151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not26.i = icmp eq i32 %mul, 0
  br i1 %tobool.not26.i, label %if.then47.memcpy_send_wqe.exit_crit_edge, label %while.body.lr.ph.i, !prof !78

if.then47.memcpy_send_wqe.exit_crit_edge:         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %memcpy_send_wqe.exit

while.body.lr.ph.i:                               ; preds = %if.then47
  %173 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %8, align 8
  %cur_post.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 14
  %wqe_cnt.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 7
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 3
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 2
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 1
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 6
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 7, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %handle_post_send_edge.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %src.addr.028.i = phi ptr [ %174, %while.body.lr.ph.i ], [ %add.ptr.i153, %handle_post_send_edge.exit.i.while.body.i_crit_edge ]
  %n.addr.027.i = phi i32 [ %mul, %while.body.lr.ph.i ], [ %sub.i152, %handle_post_send_edge.exit.i.while.body.i_crit_edge ]
  %175 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur_edge, align 4
  %177 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %seg, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %176 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %178 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %179 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub.i, i32 %n.addr.027.i) #7
  %180 = call ptr @memcpy(ptr %178, ptr %src.addr.028.i, i32 %179)
  %sub.i152 = sub i32 %n.addr.027.i, %179
  %add.ptr.i153 = getelementptr i8, ptr %src.addr.028.i, i32 %179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i152)
  %tobool3.not.i = icmp eq i32 %sub.i152, 0
  %add.i154 = add i32 %179, 15
  %and.i155 = and i32 %add.i154, -16
  %cond7.i = select i1 %tobool3.not.i, i32 %and.i155, i32 %179
  %181 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %seg, align 4
  %add.ptr8.i = getelementptr i8, ptr %182, i32 %cond7.i
  store ptr %add.ptr8.i, ptr %seg, align 4
  %shr.i156 = lshr i32 %cond7.i, 4
  %183 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size, align 4
  %add9.i = add i32 %shr.i156, %184
  store i32 %add9.i, ptr %size, align 4
  %185 = load ptr, ptr %seg, align 4
  %186 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur_edge, align 4
  %cmp.not.i.i = icmp eq ptr %185, %187
  br i1 %cmp.not.i.i, label %if.end.i.i, label %while.body.i.handle_post_send_edge.exit.i_crit_edge, !prof !78

while.body.i.handle_post_send_edge.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_post_send_edge.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %cur_post.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %cur_post.i.i, align 4
  %conv.i.i157 = zext i16 %189 to i32
  %shr.i.i158 = lshr i32 %add9.i, 2
  %add.i.i159 = add nuw nsw i32 %shr.i.i158, %conv.i.i157
  %190 = ptrtoint ptr %wqe_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %wqe_cnt.i.i, align 4
  %sub.i.i160 = add i32 %191, -1
  %and.i.i161 = and i32 %add.i.i159, %sub.i.i160
  %192 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %193 to i32
  %add.i.i.i.i = add nuw nsw i32 %and.i.i161, %conv.i.i.i.i
  %194 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv1.i.i.i.i = zext i16 %195 to i32
  %or.i.i.i.i = or i32 %add.i.i.i.i, %conv1.i.i.i.i
  %sub.i.i.i.i = sub nsw i32 %or.i.i.i.i, %conv.i.i.i.i
  %196 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %198 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %197) #7
  %add.i6.i.i.i = add i32 %198, %conv.i.i.i.i
  %199 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i7.i.i.i = zext i8 %200 to i32
  %shr.i.i.i.i = lshr i32 %add.i6.i.i.i, %conv1.i7.i.i.i
  %201 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %202, i32 %shr.i.i.i.i
  %203 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %add.i6.i.i.i, %conv1.i.i.i.i
  %205 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %206 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %204, i32 64
  %add.ptr.i.i.i162 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %shl.i.i.i.i
  %207 = ptrtoint ptr %cur_edge to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %add.ptr.i.i.i162, ptr %cur_edge, align 4
  %208 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i163 = zext i16 %209 to i32
  %add.i.i.i164 = add nuw nsw i32 %and.i.i161, %conv.i.i.i163
  %210 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i165 = zext i8 %210 to i32
  %shr.i.i.i166 = lshr i32 %add.i.i.i164, %conv1.i.i.i165
  %211 = load ptr, ptr %sq, align 4
  %arrayidx.i.i.i167 = getelementptr %struct.mlx5_buf_list, ptr %211, i32 %shr.i.i.i166
  %212 = ptrtoint ptr %arrayidx.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i.i.i167, align 4
  %214 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i = zext i16 %215 to i32
  %and.i.i.i168 = and i32 %add.i.i.i164, %conv2.i.i.i
  %216 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i169 = zext i8 %216 to i32
  %shl.i.i.i170 = shl i32 %and.i.i.i168, %conv3.i.i.i169
  %add.ptr.i9.i.i = getelementptr i8, ptr %213, i32 %shl.i.i.i170
  %217 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %add.ptr.i9.i.i, ptr %seg, align 4
  br label %handle_post_send_edge.exit.i

handle_post_send_edge.exit.i:                     ; preds = %if.end.i.i, %while.body.i.handle_post_send_edge.exit.i_crit_edge
  br i1 %tobool3.not.i, label %handle_post_send_edge.exit.i.memcpy_send_wqe.exit_crit_edge, label %handle_post_send_edge.exit.i.while.body.i_crit_edge, !prof !78

handle_post_send_edge.exit.i.while.body.i_crit_edge: ; preds = %handle_post_send_edge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

handle_post_send_edge.exit.i.memcpy_send_wqe.exit_crit_edge: ; preds = %handle_post_send_edge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %memcpy_send_wqe.exit

memcpy_send_wqe.exit:                             ; preds = %handle_post_send_edge.exit.i.memcpy_send_wqe.exit_crit_edge, %if.then47.memcpy_send_wqe.exit_crit_edge
  %218 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %size, align 4
  %add49 = add i32 %219, 3
  %and50 = and i32 %add49, -4
  br label %if.end53

if.else:                                          ; preds = %handle_post_send_edge.exit151
  call void @__sanitizer_cov_trace_pc() #9
  %220 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %seg, align 4
  %222 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %desc_size, align 8
  %224 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ndescs, align 8
  %226 = ptrtoint ptr %meta_ndescs to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %meta_ndescs, align 8
  %add.i174 = add i32 %227, %225
  %mul.i175 = mul i32 %add.i174, %223
  %desc_map.i = getelementptr inbounds %struct.mlx5_ib_mr, ptr %1, i32 0, i32 4, i32 0, i32 2
  %228 = ptrtoint ptr %desc_map.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %desc_map.i, align 8
  %conv.i176 = zext i32 %229 to i64
  %addr.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %221, i32 0, i32 2
  %230 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %conv.i176, ptr %addr.i, align 8
  %add1.i = add i32 %mul.i175, 63
  %and.i177 = and i32 %add1.i, -64
  %231 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %and.i177, ptr %221, align 8
  %232 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %3, align 4
  %lkey.i = getelementptr inbounds %struct.mlx5_wqe_data_seg, ptr %221, i32 0, i32 1
  %234 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %lkey.i, align 4
  %235 = load ptr, ptr %seg, align 4
  %add.ptr51 = getelementptr i8, ptr %235, i32 16
  store ptr %add.ptr51, ptr %seg, align 4
  %236 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %size, align 4
  %add52 = add i32 %237, 1
  br label %if.end53

if.end53:                                         ; preds = %if.else, %memcpy_send_wqe.exit
  %storemerge = phi i32 [ %add52, %if.else ], [ %and50, %memcpy_send_wqe.exit ]
  %238 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %storemerge, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end21 ], [ 0, %if.end53 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_psv(ptr noundef %dev, ptr nocapture noundef %qp, ptr nocapture noundef readonly %wr, ptr nocapture noundef %ctrl, ptr nocapture noundef %seg, ptr nocapture noundef %size, ptr nocapture noundef %cur_edge, ptr nocapture noundef %idx, i32 noundef %nreq, ptr nocapture noundef readonly %domain, i32 noundef %psv_index, i8 noundef zeroext %next_fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__begin_wqe(ptr noundef %qp, ptr noundef %seg, ptr noundef %ctrl, ptr noundef %wr, ptr noundef %idx, ptr noundef %size, ptr noundef %cur_edge, i32 noundef %nreq, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 1051, i32 noundef %6) #10
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seg, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %psv_index, ptr %8, align 4
  %12 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %13, label %do.end15 [
    i32 0, label %if.end.if.end20_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bg.i = getelementptr inbounds %struct.ib_sig_domain, ptr %domain, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %bg.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bg.i, align 2
  %conv.i = zext i16 %16 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %app_tag.i = getelementptr inbounds %struct.ib_sig_domain, ptr %domain, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %app_tag.i, align 4
  %conv2.i = zext i16 %18 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %transient_sig.i = getelementptr inbounds %struct.mlx5_seg_set_psv, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %transient_sig.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %transient_sig.i, align 4
  %ref_tag.i = getelementptr inbounds %struct.ib_sig_domain, ptr %domain, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %ref_tag.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ref_tag.i, align 4
  %ref_tag4.i = getelementptr inbounds %struct.mlx5_seg_set_psv, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %ref_tag4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ref_tag4.i, align 4
  br label %if.end20

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %13) #10
  %23 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %24 = tail call i32 @llvm.read_register.i32(metadata !66) #7
  %and.i34 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i34 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef 1057, i32 noundef %29) #10
  br label %out

if.end20:                                         ; preds = %sw.bb.i, %if.end.if.end20_crit_edge
  %30 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %seg, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 16
  store ptr %add.ptr.i, ptr %seg, align 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %add.i = add i32 %33, 1
  store i32 %add.i, ptr %size, align 4
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl, align 4
  %36 = load ptr, ptr %seg, align 4
  %conv = trunc i32 %add.i to i8
  %37 = ptrtoint ptr %cur_edge to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur_edge, align 4
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx, align 4
  %41 = getelementptr inbounds %struct.ib_send_wr, ptr %wr, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  tail call fastcc void @finish_wqe(ptr noundef %qp, ptr noundef %35, ptr noundef %36, i8 noundef zeroext %conv, ptr noundef %38, i32 noundef %40, i64 noundef %43, i32 noundef %nreq, i8 noundef zeroext %next_fence, i32 noundef 32)
  br label %out

out:                                              ; preds = %if.end20, %do.end15, %do.end
  %err.0 = phi i32 [ -12, %do.end ], [ -22, %do.end15 ], [ 0, %if.end20 ]
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1314, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_ib_post_send._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_ib_post_send._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_post_send._entry.5, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1322, i32 4}
!10 = !{ptr @mlx5_ib_post_send._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @mlx5_ib_post_send._entry.7, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1331, i32 4}
!13 = !{ptr @mlx5_ib_post_send._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1375, i32 5}
!16 = !{ptr @mlx5_ib_post_send._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5_ib_post_send._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @mlx5_ib_post_send._entry.12, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1401, i32 5}
!20 = !{ptr @mlx5_ib_post_send._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1173, i32 3}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @handle_qpt_rc._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @handle_qpt_rc._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 874, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @set_reg_wr._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @set_reg_wr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 881, i32 3}
!33 = !{ptr @set_reg_wr._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @set_reg_wr._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1106, i32 4}
!37 = !{ptr @handle_reg_mr_integrity._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @handle_reg_mr_integrity._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @handle_reg_mr_integrity._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1130, i32 3}
!41 = !{ptr @handle_reg_mr_integrity._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 710, i32 4}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @set_sig_data_segment._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @set_sig_data_segment._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1051, i32 3}
!49 = !{ptr @handle_psv._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @handle_psv._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @handle_psv._entry.27, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1057, i32 3}
!53 = !{ptr @handle_psv._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 845, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @set_psv_wr._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @set_psv_wr._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 1258, i32 3}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @handle_qpt_reg_umr._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @handle_qpt_reg_umr._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mlx5_ib_opcode, !65, !"mlx5_ib_opcode", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mlx5/wr.c", i32 11, i32 18}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i8 0, i8 2}
!80 = !{i64 2159064545}
!81 = !{i64 2159064752}
!82 = !{i64 6405023}
!83 = !{i64 2159065498}
!84 = !{i32 0, i32 33}
