; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5dr_ste_action_modify_field = type { i16, i8, i8, i8, i8 }
%struct.mlx5dr_ste_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc, %struct.mlx5dr_match_spec, %struct.mlx5dr_match_misc2, %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc4, %struct.mlx5dr_match_misc5 }
%struct.mlx5dr_match_misc = type { [44 x i8], i32, i32, [3 x i32] }
%struct.mlx5dr_match_spec = type { i32, i32, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc2 = type { i128, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32] }
%struct.mlx5dr_match_misc3 = type { i32, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, i8, i8, i16, i32, i32, i32, i32 }
%struct.mlx5dr_match_misc4 = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5dr_match_misc5 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.mlx5dr_ste_actions_attr = type { i32, i16, i32, i16, i8, i64, i32, i32, i16, i16, %struct.anon.172, %struct.anon.173 }
%struct.anon.172 = type { i32, i32, i8, i8 }
%struct.anon.173 = type { i32, [2 x i32] }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.158, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.136] }
%struct.anon.136 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.137 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.137 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.158 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@dr_ste_v0_action_modify_field_arr = internal constant { [92 x %struct.mlx5dr_ste_action_modify_field], [152 x i8] } { [92 x %struct.mlx5dr_ste_action_modify_field] [%struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 1, i8 16, i8 47, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 1, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 2, i8 32, i8 47, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 0, i8 16, i8 47, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 0, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 4, i8 0, i8 5, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 48, i8 56, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 0, i8 15, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 16, i8 31, i8 0, i8 1 }, %struct.mlx5dr_ste_action_modify_field { i16 4, i8 8, i8 15, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 0, i8 15, i8 0, i8 2 }, %struct.mlx5dr_ste_action_modify_field { i16 8, i8 16, i8 31, i8 0, i8 2 }, %struct.mlx5dr_ste_action_modify_field { i16 6, i8 32, i8 63, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 6, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 7, i8 32, i8 63, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 7, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 3, i8 32, i8 63, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 3, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 5, i8 32, i8 63, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 5, i8 0, i8 31, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 3, i8 0, i8 31, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 3, i8 32, i8 63, i8 1, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 2, i8 0, i8 15, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 4, i8 8, i8 15, i8 2, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 22, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 22, i8 32, i8 63, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 12, i8 32, i8 63, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 12, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 13, i8 32, i8 63, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 13, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 14, i8 32, i8 63, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field { i16 14, i8 0, i8 31, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 9, i8 32, i8 63, i8 0, i8 0 }, %struct.mlx5dr_ste_action_modify_field zeroinitializer, %struct.mlx5dr_ste_action_modify_field { i16 9, i8 0, i8 31, i8 0, i8 0 }], [152 x i8] zeroinitializer }, align 32
@ste_ctx_v0 = dso_local global { %struct.mlx5dr_ste_ctx, [32 x i8] } { %struct.mlx5dr_ste_ctx { ptr @dr_ste_v0_build_eth_l2_src_dst_init, ptr @dr_ste_v0_build_eth_l3_ipv6_src_init, ptr @dr_ste_v0_build_eth_l3_ipv6_dst_init, ptr @dr_ste_v0_build_eth_l3_ipv4_5_tuple_init, ptr @dr_ste_v0_build_eth_l2_src_init, ptr @dr_ste_v0_build_eth_l2_dst_init, ptr @dr_ste_v0_build_eth_l2_tnl_init, ptr @dr_ste_v0_build_eth_l3_ipv4_misc_init, ptr @dr_ste_v0_build_eth_ipv6_l3_l4_init, ptr @dr_ste_v0_build_mpls_init, ptr @dr_ste_v0_build_tnl_gre_init, ptr @dr_ste_v0_build_tnl_mpls_init, ptr @dr_ste_v0_build_tnl_mpls_over_gre_init, ptr @dr_ste_v0_build_tnl_mpls_over_udp_init, ptr @dr_ste_v0_build_icmp_init, ptr @dr_ste_v0_build_general_purpose_init, ptr @dr_ste_v0_build_eth_l4_misc_init, ptr @dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_init, ptr @dr_ste_v0_build_flex_parser_tnl_geneve_init, ptr @dr_ste_v0_build_flex_parser_tnl_geneve_tlv_opt_init, ptr null, ptr @dr_ste_v0_build_register_0_init, ptr @dr_ste_v0_build_register_1_init, ptr @dr_ste_v0_build_src_gvmi_qpn_init, ptr @dr_ste_v0_build_flex_parser_0_init, ptr @dr_ste_v0_build_flex_parser_1_init, ptr @dr_ste_v0_build_flex_parser_tnl_gtpu_init, ptr @dr_ste_v0_build_tnl_header_0_1_init, ptr @dr_ste_v0_build_tnl_gtpu_flex_parser_0_init, ptr @dr_ste_v0_build_tnl_gtpu_flex_parser_1_init, ptr @dr_ste_v0_init, ptr @dr_ste_v0_set_next_lu_type, ptr @dr_ste_v0_get_next_lu_type, ptr @dr_ste_v0_set_miss_addr, ptr @dr_ste_v0_get_miss_addr, ptr @dr_ste_v0_set_hit_addr, ptr @dr_ste_v0_set_byte_mask, ptr @dr_ste_v0_get_byte_mask, i32 0, ptr @dr_ste_v0_set_actions_rx, ptr @dr_ste_v0_set_actions_tx, i32 92, ptr @dr_ste_v0_action_modify_field_arr, ptr @dr_ste_v0_set_action_set, ptr @dr_ste_v0_set_action_add, ptr @dr_ste_v0_set_action_copy, ptr @dr_ste_v0_set_action_decap_l3_list, ptr null }, [32 x i8] zeroinitializer }, align 32
@dr_ste_v0_build_src_gvmi_qpn_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Vport 0x%x is disabled or invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_ste_v0_build_src_gvmi_qpn_tag\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_ste_v0_build_src_gvmi_qpn_tag._entry_ptr = internal global ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 6]
@___asan_gen_.7 = private unnamed_addr constant [34 x i8] c"dr_ste_v0_action_modify_field_arr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 114, i32 52 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"ste_ctx_v0\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 1900, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 1675, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry, ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry_ptr, ptr @dr_ste_v0_action_modify_field_arr, ptr @ste_ctx_v0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_v0_action_modify_field_arr to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ste_ctx_v0 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l2_src_dst_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %entry.do.body13.i_crit_edge, label %do.body3.i

entry.do.body13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body3.i, %entry.do.body13.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr.i = lshr i160 %bf.load.i, 144
  %bf.cast.i = trunc i160 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool14.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool14.not.i, label %do.body13.i.do.end37.i_crit_edge, label %do.body16.i

do.body13.i.do.end37.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37.i

do.body16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr25.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr25.i, align 4
  %and26.i = and i32 %7, 65535
  %shl28.i = shl nuw i32 %bf.cast.i, 16
  %or29.i = or i32 %and26.i, %shl28.i
  store i32 %or29.i, ptr %add.ptr25.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load34.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load34.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.body16.i, %do.body13.i.do.end37.i_crit_edge
  %9 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool38.not.i = icmp eq i32 %10, 0
  br i1 %tobool38.not.i, label %lor.lhs.false.i, label %do.end37.i.do.body43.i_crit_edge

do.end37.i.do.body43.i_crit_edge:                 ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i

lor.lhs.false.i:                                  ; preds = %do.end37.i
  %smac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %11 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load39.i = load i32, ptr %smac_15_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load39.i)
  %tobool41.not.i = icmp ult i32 %bf.load39.i, 65536
  br i1 %tobool41.not.i, label %lor.lhs.false.i.do.body82.i_crit_edge, label %lor.lhs.false.i.do.body43.i_crit_edge

lor.lhs.false.i.do.body43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i

lor.lhs.false.i.do.body82.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82.i

do.body43.i:                                      ; preds = %lor.lhs.false.i.do.body43.i_crit_edge, %do.end37.i.do.body43.i_crit_edge
  %shr.i = lshr i32 %10, 16
  %add.ptr49.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr49.i, align 4
  %and50.i = and i32 %13, -65536
  %or53.i = or i32 %and50.i, %shr.i
  store i32 %or53.i, ptr %add.ptr49.i, align 4
  %14 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cond.i, align 4
  %smac_15_061.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %16 = ptrtoint ptr %smac_15_061.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load62.i = load i32, ptr %smac_15_061.i, align 4
  %or64.i = tail call i32 @llvm.fshl.i32(i32 %15, i32 %bf.load62.i, i32 16) #12
  %add.ptr68.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or64.i, ptr %add.ptr68.i, align 4
  %18 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cond.i, align 4
  %19 = ptrtoint ptr %smac_15_061.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load78.i = load i32, ptr %smac_15_061.i, align 4
  %bf.clear79.i = and i32 %bf.load78.i, 65535
  store i32 %bf.clear79.i, ptr %smac_15_061.i, align 4
  br label %do.body82.i

do.body82.i:                                      ; preds = %do.body43.i, %lor.lhs.false.i.do.body82.i_crit_edge
  %20 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 20)
  %bf.load83.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr84.i = lshr i160 %bf.load83.i, 128
  %21 = trunc i160 %bf.lshr84.i to i32
  %bf.cast86.i = and i32 %21, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast86.i)
  %tobool87.not.i = icmp eq i32 %bf.cast86.i, 0
  br i1 %tobool87.not.i, label %do.body82.i.do.body114.i_crit_edge, label %do.body89.i

do.body82.i.do.body114.i_crit_edge:               ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body114.i

do.body89.i:                                      ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr99.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %add.ptr99.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr99.i, align 4
  %and100.i = and i32 %23, -4096
  %or103.i = or i32 %and100.i, %bf.cast86.i
  store i32 %or103.i, ptr %add.ptr99.i, align 4
  %24 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load108.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear109.i = and i160 %bf.load108.i, -1393456292541243007882519017433090825912321
  store i160 %bf.clear109.i, ptr %dmac_15_0.i, align 4
  br label %do.body114.i

do.body114.i:                                     ; preds = %do.body89.i, %do.body82.i.do.body114.i_crit_edge
  %25 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 20)
  %bf.load115.i = load i160, ptr %dmac_15_0.i, align 4
  %26 = and i160 %bf.load115.i, 1393796574908163946345982392040522594123776
  %tobool119.not.i = icmp eq i160 %26, 0
  br i1 %tobool119.not.i, label %do.body114.i.do.body146.i_crit_edge, label %do.body121.i

do.body114.i.do.body146.i_crit_edge:              ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body146.i

do.body121.i:                                     ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr131.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %27 = ptrtoint ptr %add.ptr131.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr131.i, align 4
  %or135.i = or i32 %28, 65536
  store i32 %or135.i, ptr %add.ptr131.i, align 4
  %29 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load140.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear141.i = and i160 %bf.load140.i, -1393796574908163946345982392040522594123777
  store i160 %bf.clear141.i, ptr %dmac_15_0.i, align 4
  br label %do.body146.i

do.body146.i:                                     ; preds = %do.body121.i, %do.body114.i.do.body146.i_crit_edge
  %30 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load147.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr148.i = lshr i160 %bf.load147.i, 141
  %31 = trunc i160 %bf.lshr148.i to i32
  %bf.cast150.i = and i32 %31, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast150.i)
  %tobool151.not.i = icmp eq i32 %bf.cast150.i, 0
  br i1 %tobool151.not.i, label %do.body146.i.do.body178.i_crit_edge, label %do.body153.i

do.body146.i.do.body178.i_crit_edge:              ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body178.i

do.body153.i:                                     ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr163.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %32 = ptrtoint ptr %add.ptr163.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr163.i, align 4
  %and164.i = and i32 %33, -917505
  %shl166.i = shl nuw nsw i32 %bf.cast150.i, 17
  %or167.i = or i32 %and164.i, %shl166.i
  store i32 %or167.i, ptr %add.ptr163.i, align 4
  %34 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 20)
  %bf.load172.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear173.i = and i160 %bf.load172.i, -19513152048714295248843753488567316317732865
  store i160 %bf.clear173.i, ptr %dmac_15_0.i, align 4
  br label %do.body178.i

do.body178.i:                                     ; preds = %do.body153.i, %do.body146.i.do.body178.i_crit_edge
  %35 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load179.i = load i160, ptr %dmac_15_0.i, align 4
  %36 = and i160 %bf.load179.i, 608472288109550112718417538580480
  %tobool183.not.i = icmp eq i160 %36, 0
  br i1 %tobool183.not.i, label %do.body178.i.do.end204.i_crit_edge, label %do.body185.i

do.body178.i.do.end204.i_crit_edge:               ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end204.i

do.body185.i:                                     ; preds = %do.body178.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr190.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %37 = ptrtoint ptr %add.ptr190.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr190.i, align 4
  %or194.i = or i32 %38, 201326592
  store i32 %or194.i, ptr %add.ptr190.i, align 4
  %39 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 20)
  %bf.load199.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear200.i = and i160 %bf.load199.i, -608472288109550112718417538580481
  store i160 %bf.clear200.i, ptr %dmac_15_0.i, align 4
  br label %do.end204.i

do.end204.i:                                      ; preds = %do.body185.i, %do.body178.i.do.end204.i_crit_edge
  %40 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 20)
  %bf.load205.i = load i160, ptr %dmac_15_0.i, align 4
  %41 = and i160 %bf.load205.i, 2596148429267413814265248164610048
  %tobool209.not.i = icmp eq i160 %41, 0
  br i1 %tobool209.not.i, label %if.else.i, label %do.end204.i.if.end252.sink.split.i_crit_edge

do.end204.i.if.end252.sink.split.i_crit_edge:     ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252.sink.split.i

if.else.i:                                        ; preds = %do.end204.i
  %42 = and i160 %bf.load205.i, 1298074214633706907132624082305024
  %tobool232.not.i = icmp eq i160 %42, 0
  br i1 %tobool232.not.i, label %if.else.i.dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit_crit_edge, label %if.else.i.if.end252.sink.split.i_crit_edge

if.else.i.if.end252.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252.sink.split.i

if.else.i.dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit

if.end252.sink.split.i:                           ; preds = %if.else.i.if.end252.sink.split.i_crit_edge, %do.end204.i.if.end252.sink.split.i_crit_edge
  %.sink.i = phi i160 [ -2596148429267413814265248164610049, %do.end204.i.if.end252.sink.split.i_crit_edge ], [ -1298074214633706907132624082305025, %if.else.i.if.end252.sink.split.i_crit_edge ]
  %add.ptr216.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %43 = ptrtoint ptr %add.ptr216.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr216.i, align 4
  %or243.i = or i32 %44, 49152
  store i32 %or243.i, ptr %add.ptr216.i, align 4
  %45 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 20)
  %bf.load248.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear249.i = and i160 %bf.load248.i, %.sink.i
  store i160 %bf.clear249.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit

dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit:     ; preds = %if.end252.sink.split.i, %if.else.i.dr_ste_v0_build_eth_l2_src_dst_bit_mask.exit_crit_edge
  %46 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load1 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  %47 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool7.not = icmp eq i8 %47, 0
  %phi.cast = select i1 %tobool7.not, i16 54, i16 56
  %cond8 = select i1 %tobool3.not, i16 %phi.cast, i16 55
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %48 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %cond8, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %49 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %50 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dr_ste_v0_build_eth_l2_src_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l3_ipv6_src_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not97.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not97.i, ptr %inner.i, ptr %mask
  %src_ip_127_96.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 4
  %1 = ptrtoint ptr %src_ip_127_96.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_ip_127_96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %src_ip_127_96.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src_ip_127_96.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %src_ip_95_64.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 5
  %5 = ptrtoint ptr %src_ip_95_64.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_95_64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %src_ip_95_64.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_95_64.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %src_ip_63_32.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 6
  %9 = ptrtoint ptr %src_ip_63_32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip_63_32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not.i = icmp eq i32 %10, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42.i, align 4
  %12 = ptrtoint ptr %src_ip_63_32.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_ip_63_32.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %src_ip_31_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 7
  %13 = ptrtoint ptr %src_ip_31_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_ip_31_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not.i = icmp eq i32 %14, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v0_build_eth_l3_ipv6_src_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v0_build_eth_l3_ipv6_src_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l3_ipv6_src_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63.i, align 4
  %16 = ptrtoint ptr %src_ip_31_0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_ip_31_0.i, align 4
  br label %dr_ste_v0_build_eth_l3_ipv6_src_tag.exit

dr_ste_v0_build_eth_l3_ipv6_src_tag.exit:         ; preds = %do.body57.i, %do.body54.i.dr_ste_v0_build_eth_l3_ipv6_src_tag.exit_crit_edge
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  %phi.cast = select i1 %tobool4.not, i16 15, i16 31
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 16
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %19 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %20 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %21 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dr_ste_v0_build_eth_l3_ipv6_src_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l3_ipv6_dst_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not97.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not97.i, ptr %inner.i, ptr %mask
  %dst_ip_127_96.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 8
  %1 = ptrtoint ptr %dst_ip_127_96.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_127_96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dst_ip_127_96.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_127_96.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %dst_ip_95_64.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 9
  %5 = ptrtoint ptr %dst_ip_95_64.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_ip_95_64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %dst_ip_95_64.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dst_ip_95_64.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %dst_ip_63_32.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 10
  %9 = ptrtoint ptr %dst_ip_63_32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_ip_63_32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not.i = icmp eq i32 %10, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42.i, align 4
  %12 = ptrtoint ptr %dst_ip_63_32.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dst_ip_63_32.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %dst_ip_31_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 11
  %13 = ptrtoint ptr %dst_ip_31_0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_ip_31_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not.i = icmp eq i32 %14, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %15 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63.i, align 4
  %16 = ptrtoint ptr %dst_ip_31_0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_ip_31_0.i, align 4
  br label %dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit

dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit:         ; preds = %do.body57.i, %do.body54.i.dr_ste_v0_build_eth_l3_ipv6_dst_tag.exit_crit_edge
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %18 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  %phi.cast = select i1 %tobool4.not, i16 13, i16 30
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 14
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %19 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %20 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %21 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dr_ste_v0_build_eth_l3_ipv6_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l3_ipv4_5_tuple_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_eth_l3_ipv4_5_tuple_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  %phi.cast = select i1 %tobool4.not, i16 17, i16 32
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 18
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %3 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dr_ste_v0_build_eth_l3_ipv4_5_tuple_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l2_src_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %1 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %entry.do.body13.i_crit_edge, label %do.body3.i

entry.do.body13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cond.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body3.i, %entry.do.body13.i_crit_edge
  %smac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %5 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %smac_15_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load.i)
  %tobool14.not.i = icmp ult i32 %bf.load.i, 65536
  br i1 %tobool14.not.i, label %do.body13.i.dr_ste_v0_build_eth_l2_src_bit_mask.exit_crit_edge, label %do.body16.i

do.body13.i.dr_ste_v0_build_eth_l2_src_bit_mask.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l2_src_bit_mask.exit

do.body16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr.i = and i32 %bf.load.i, -65536
  %add.ptr24.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr24.i, align 4
  %and25.i = and i32 %7, 65535
  %or28.i = or i32 %and25.i, %bf.lshr.i
  store i32 %or28.i, ptr %add.ptr24.i, align 4
  %8 = ptrtoint ptr %smac_15_0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load33.i = load i32, ptr %smac_15_0.i, align 4
  %bf.clear.i = and i32 %bf.load33.i, 65535
  store i32 %bf.clear.i, ptr %smac_15_0.i, align 4
  br label %dr_ste_v0_build_eth_l2_src_bit_mask.exit

dr_ste_v0_build_eth_l2_src_bit_mask.exit:         ; preds = %do.body16.i, %do.body13.i.dr_ste_v0_build_eth_l2_src_bit_mask.exit_crit_edge
  tail call fastcc void @dr_ste_v0_build_eth_l2_src_or_dst_bit_mask(ptr noundef %mask, i1 noundef zeroext %tobool, ptr noundef %bit_mask) #12
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool3.not = icmp sgt i8 %bf.load1, -1
  %10 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  %phi.cast = select i1 %tobool7.not, i16 8, i16 28
  %cond8 = select i1 %tobool3.not, i16 %phi.cast, i16 9
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %cond8, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %12 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dr_ste_v0_build_eth_l2_src_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l2_dst_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not54.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not54.i, ptr %inner.i, ptr %mask
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load13.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr14.i = lshr i160 %bf.load13.i, 144
  %bf.cast.i = trunc i160 %bf.lshr14.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool15.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool15.not.i, label %do.body12.i.dr_ste_v0_build_eth_l2_dst_bit_mask.exit_crit_edge, label %do.body17.i

do.body12.i.dr_ste_v0_build_eth_l2_dst_bit_mask.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l2_dst_bit_mask.exit

do.body17.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr26.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26.i, align 4
  %and27.i = and i32 %7, 65535
  %shl29.i = shl nuw i32 %bf.cast.i, 16
  %or30.i = or i32 %and27.i, %shl29.i
  store i32 %or30.i, ptr %add.ptr26.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load35.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v0_build_eth_l2_dst_bit_mask.exit

dr_ste_v0_build_eth_l2_dst_bit_mask.exit:         ; preds = %do.body17.i, %do.body12.i.dr_ste_v0_build_eth_l2_dst_bit_mask.exit_crit_edge
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load39.i = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load39.i)
  %tobool41.i = icmp slt i8 %bf.load39.i, 0
  tail call fastcc void @dr_ste_v0_build_eth_l2_src_or_dst_bit_mask(ptr noundef %mask, i1 noundef zeroext %tobool41.i, ptr noundef %bit_mask) #12
  %10 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  %phi.cast = select i1 %tobool4.not, i16 6, i16 27
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 7
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %12 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %cond5, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %13 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %14 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dr_ste_v0_build_eth_l2_dst_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l2_tnl_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %inner1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  %cond.i = select i1 %tobool, ptr %inner1.i, ptr %mask
  %misc2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %dmac_47_16.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not.i = icmp eq i32 %2, 0
  br i1 %tobool3.not.i, label %entry.do.body14.i_crit_edge, label %do.body4.i

entry.do.body14.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %dmac_47_16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16.i, align 4
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body4.i, %entry.do.body14.i_crit_edge
  %dmac_15_0.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr.i = lshr i160 %bf.load.i, 144
  %bf.cast.i = trunc i160 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool15.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool15.not.i, label %do.body14.i.do.body39.i_crit_edge, label %do.body17.i

do.body14.i.do.body39.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39.i

do.body17.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr26.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26.i, align 4
  %and27.i = and i32 %7, 65535
  %shl29.i = shl nuw i32 %bf.cast.i, 16
  %or30.i = or i32 %and27.i, %shl29.i
  store i32 %or30.i, ptr %add.ptr26.i, align 4
  %8 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear.i = and i160 %bf.load35.i, 22300745198530623141535718272648361505980415
  store i160 %bf.clear.i, ptr %dmac_15_0.i, align 4
  br label %do.body39.i

do.body39.i:                                      ; preds = %do.body17.i, %do.body14.i.do.body39.i_crit_edge
  %9 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load40.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr41.i = lshr i160 %bf.load40.i, 128
  %10 = trunc i160 %bf.lshr41.i to i32
  %bf.cast43.i = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast43.i)
  %tobool44.not.i = icmp eq i32 %bf.cast43.i, 0
  br i1 %tobool44.not.i, label %do.body39.i.do.body71.i_crit_edge, label %do.body46.i

do.body39.i.do.body71.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71.i

do.body46.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr56.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %11 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr56.i, align 4
  %and57.i = and i32 %12, -4096
  %or60.i = or i32 %and57.i, %bf.cast43.i
  store i32 %or60.i, ptr %add.ptr56.i, align 4
  %13 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load65.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear66.i = and i160 %bf.load65.i, -1393456292541243007882519017433090825912321
  store i160 %bf.clear66.i, ptr %dmac_15_0.i, align 4
  br label %do.body71.i

do.body71.i:                                      ; preds = %do.body46.i, %do.body39.i.do.body71.i_crit_edge
  %14 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load72.i = load i160, ptr %dmac_15_0.i, align 4
  %15 = and i160 %bf.load72.i, 1393796574908163946345982392040522594123776
  %tobool76.not.i = icmp eq i160 %15, 0
  br i1 %tobool76.not.i, label %do.body71.i.do.body103.i_crit_edge, label %do.body78.i

do.body71.i.do.body103.i_crit_edge:               ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103.i

do.body78.i:                                      ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr88.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr88.i, align 4
  %or92.i = or i32 %17, 1048576
  store i32 %or92.i, ptr %add.ptr88.i, align 4
  %18 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load97.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear98.i = and i160 %bf.load97.i, -1393796574908163946345982392040522594123777
  store i160 %bf.clear98.i, ptr %dmac_15_0.i, align 4
  br label %do.body103.i

do.body103.i:                                     ; preds = %do.body78.i, %do.body71.i.do.body103.i_crit_edge
  %19 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load104.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.lshr105.i = lshr i160 %bf.load104.i, 141
  %20 = trunc i160 %bf.lshr105.i to i32
  %bf.cast107.i = and i32 %20, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast107.i)
  %tobool108.not.i = icmp eq i32 %bf.cast107.i, 0
  br i1 %tobool108.not.i, label %do.body103.i.do.body135.i_crit_edge, label %do.body110.i

do.body103.i.do.body135.i_crit_edge:              ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body135.i

do.body110.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr120.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %21 = ptrtoint ptr %add.ptr120.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr120.i, align 4
  %and121.i = and i32 %22, -14680065
  %shl123.i = shl nuw nsw i32 %bf.cast107.i, 21
  %or124.i = or i32 %and121.i, %shl123.i
  store i32 %or124.i, ptr %add.ptr120.i, align 4
  %23 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load129.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear130.i = and i160 %bf.load129.i, -19513152048714295248843753488567316317732865
  store i160 %bf.clear130.i, ptr %dmac_15_0.i, align 4
  br label %do.body135.i

do.body135.i:                                     ; preds = %do.body110.i, %do.body103.i.do.body135.i_crit_edge
  %24 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load136.i = load i160, ptr %dmac_15_0.i, align 4
  %25 = and i160 %bf.load136.i, 649037107316853453566312041152512
  %tobool140.not.i = icmp eq i160 %25, 0
  br i1 %tobool140.not.i, label %do.body135.i.do.body167.i_crit_edge, label %do.body142.i

do.body135.i.do.body167.i_crit_edge:              ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body167.i

do.body142.i:                                     ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr152.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %add.ptr152.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr152.i, align 4
  %or156.i = or i32 %27, -2147483648
  store i32 %or156.i, ptr %add.ptr152.i, align 4
  %28 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load161.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear162.i = and i160 %bf.load161.i, -649037107316853453566312041152513
  store i160 %bf.clear162.i, ptr %dmac_15_0.i, align 4
  br label %do.body167.i

do.body167.i:                                     ; preds = %do.body142.i, %do.body135.i.do.body167.i_crit_edge
  %ethertype.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 1
  %29 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load168.i = load i32, ptr %ethertype.i, align 4
  %bf.clear169.i = and i32 %bf.load168.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear169.i)
  %tobool170.not.i = icmp eq i32 %bf.clear169.i, 0
  br i1 %tobool170.not.i, label %do.body167.i.do.body195.i_crit_edge, label %do.body172.i

do.body167.i.do.body195.i_crit_edge:              ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body195.i

do.body172.i:                                     ; preds = %do.body167.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr180.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %add.ptr180.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr180.i, align 4
  %and181.i = and i32 %31, -65536
  %or184.i = or i32 %and181.i, %bf.clear169.i
  store i32 %or184.i, ptr %add.ptr180.i, align 4
  %32 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load189.i = load i32, ptr %ethertype.i, align 4
  %bf.clear190.i = and i32 %bf.load189.i, -65536
  store i32 %bf.clear190.i, ptr %ethertype.i, align 4
  br label %do.body195.i

do.body195.i:                                     ; preds = %do.body172.i, %do.body167.i.do.body195.i_crit_edge
  %33 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 20)
  %bf.load196.i = load i160, ptr %dmac_15_0.i, align 4
  %34 = and i160 %bf.load196.i, 608472288109550112718417538580480
  %tobool200.not.i = icmp eq i160 %34, 0
  br i1 %tobool200.not.i, label %do.body195.i.do.end221.i_crit_edge, label %do.body202.i

do.body195.i.do.end221.i_crit_edge:               ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end221.i

do.body202.i:                                     ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr207.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %35 = ptrtoint ptr %add.ptr207.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr207.i, align 4
  %or211.i = or i32 %36, 201326592
  store i32 %or211.i, ptr %add.ptr207.i, align 4
  %37 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load216.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear217.i = and i160 %bf.load216.i, -608472288109550112718417538580481
  store i160 %bf.clear217.i, ptr %dmac_15_0.i, align 4
  br label %do.end221.i

do.end221.i:                                      ; preds = %do.body202.i, %do.body195.i.do.end221.i_crit_edge
  %38 = ptrtoint ptr %misc2.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 44)
  %bf.load222.i = load i352, ptr %misc2.i, align 4
  %bf.lshr223.i = lshr i352 %bf.load222.i, 168
  %39 = trunc i352 %bf.lshr223.i to i32
  %bf.cast225.i = and i32 %39, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast225.i)
  %tobool226.not.i = icmp eq i32 %bf.cast225.i, 0
  br i1 %tobool226.not.i, label %do.end221.i.if.end249.i_crit_edge, label %do.body228.i

do.end221.i.if.end249.i_crit_edge:                ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249.i

do.body228.i:                                     ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl234.i = shl i32 %39, 8
  %add.ptr238.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %40 = ptrtoint ptr %add.ptr238.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl234.i, ptr %add.ptr238.i, align 4
  %41 = ptrtoint ptr %misc2.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load246.i = load i352, ptr %misc2.i, align 4
  %bf.clear247.i = and i352 %bf.load246.i, -6277101361242261607124642363064349240733902412545303511041
  store i352 %bf.clear247.i, ptr %misc2.i, align 4
  br label %if.end249.i

if.end249.i:                                      ; preds = %do.body228.i, %do.end221.i.if.end249.i_crit_edge
  %42 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load250.i = load i160, ptr %dmac_15_0.i, align 4
  %43 = and i160 %bf.load250.i, 3894222643901120721397872246915072
  %44 = icmp eq i160 %43, 0
  br i1 %44, label %if.end249.i.dr_ste_v0_build_eth_l2_tnl_bit_mask.exit_crit_edge, label %do.body261.i

if.end249.i.dr_ste_v0_build_eth_l2_tnl_bit_mask.exit_crit_edge: ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l2_tnl_bit_mask.exit

do.body261.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr266.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %45 = ptrtoint ptr %add.ptr266.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr266.i, align 4
  %or270.i = or i32 %46, 49152
  store i32 %or270.i, ptr %add.ptr266.i, align 4
  %47 = ptrtoint ptr %dmac_15_0.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 20)
  %bf.load275.i = load i160, ptr %dmac_15_0.i, align 4
  %bf.clear280.i = and i160 %bf.load275.i, -3894222643901120721397872246915073
  store i160 %bf.clear280.i, ptr %dmac_15_0.i, align 4
  br label %dr_ste_v0_build_eth_l2_tnl_bit_mask.exit

dr_ste_v0_build_eth_l2_tnl_bit_mask.exit:         ; preds = %do.body261.i, %if.end249.i.dr_ste_v0_build_eth_l2_tnl_bit_mask.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %48 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 10, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %49 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %50 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @dr_ste_v0_build_eth_l2_tnl_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l3_ipv4_misc_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  %inner.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not24.i = icmp slt i8 %bf.load.i, 0
  %cond.i = select i1 %tobool.not24.i, ptr %inner.i, ptr %mask
  %ttl_hoplimit.i = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond.i, i32 0, i32 3
  %1 = ptrtoint ptr %ttl_hoplimit.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load1.i = load i160, ptr %ttl_hoplimit.i, align 4
  %bf.lshr2.i = lshr i160 %bf.load1.i, 32
  %2 = trunc i160 %bf.lshr2.i to i32
  %bf.cast.i = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool3.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool3.not.i, label %entry.dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit_crit_edge, label %do.body4.i

entry.dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %4, 16777215
  %shl.i = shl i32 %2, 24
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %5 = ptrtoint ptr %ttl_hoplimit.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load16.i = load i160, ptr %ttl_hoplimit.i, align 4
  %bf.clear17.i = and i160 %bf.load16.i, -1095216660481
  store i160 %bf.clear17.i, ptr %ttl_hoplimit.i, align 4
  br label %dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit

dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit:        ; preds = %do.body4.i, %entry.dr_ste_v0_build_eth_l3_ipv4_misc_tag.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %6 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %phi.cast = select i1 %tobool4.not, i16 41, i16 43
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 42
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %9 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %10 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dr_ste_v0_build_eth_l3_ipv4_misc_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_ipv6_l3_l4_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_eth_ipv6_l3_l4_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  %phi.cast = select i1 %tobool4.not, i16 19, i16 33
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 20
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %3 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dr_ste_v0_build_eth_ipv6_l3_l4_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_mpls_init(ptr noundef %sb, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_mpls_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  %phi.cast = select i1 %tobool4.not, i16 21, i16 37
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 36
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %3 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %4 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dr_ste_v0_build_mpls_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_gre_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_tnl_gre_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 22, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v0_build_tnl_gre_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_mpls_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %misc2.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load.i = load i128, ptr %misc2.i, align 4
  %1 = and i128 %bf.load.i, 18446744069414584320
  %2 = icmp eq i128 %1, 0
  %sh.diff.i = lshr i128 %bf.load.i, 32
  %sh.diff.sink.i = select i1 %2, i128 %bf.load.i, i128 %sh.diff.i
  %.sink.i = select i1 %2, i128 -4294967296, i128 -18446744069414584321
  %tr.sh.diff.i = trunc i128 %sh.diff.sink.i to i32
  %bf.clear48.i = and i128 %.sink.i, %bf.load.i
  store i128 %bf.clear48.i, ptr %misc2.i, align 4
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tr.sh.diff.i, ptr %bit_mask, align 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 34, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %5 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %6 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dr_ste_v0_build_tnl_mpls_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_mpls_over_gre_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc21.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %misc21.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load.i = load i128, ptr %misc21.i, align 4
  %sh.diff.i = lshr i128 %bf.load.i, 32
  %tr.sh.diff.i = trunc i128 %sh.diff.i to i32
  %bf.clear28.i = and i128 %bf.load.i, -18446744069414584321
  store i128 %bf.clear28.i, ptr %misc21.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_mpls_over_gre.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flex_parser_id_mpls_over_gre.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flex_parser_id_mpls_over_gre.i, align 1
  %5 = shl i8 %4, 2
  %6 = and i8 %5, 12
  %7 = xor i8 %6, 12
  %mul.i.i = zext i8 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tr.sh.diff.i, ptr %add.ptr.i.i, align 4
  %9 = load i8, ptr %flex_parser_id_mpls_over_gre.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp ugt i8 %9, 3
  %conv2 = select i1 %cmp, i16 35, i16 34
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %11 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dr_ste_v0_build_tnl_mpls_over_gre_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_mpls_over_udp_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc21.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %misc21.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load.i = load i128, ptr %misc21.i, align 4
  %1 = trunc i128 %bf.load.i to i32
  %bf.clear27.i = and i128 %bf.load.i, -4294967296
  store i128 %bf.clear27.i, ptr %misc21.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_mpls_over_udp.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flex_parser_id_mpls_over_udp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flex_parser_id_mpls_over_udp.i, align 2
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 12
  %8 = xor i8 %7, 12
  %mul.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %add.ptr.i.i, align 4
  %10 = load i8, ptr %flex_parser_id_mpls_over_udp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp ugt i8 %10, 3
  %conv2 = select i1 %cmp, i16 35, i16 34
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %12 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dr_ste_v0_build_tnl_mpls_over_udp_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_icmp_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %icmpv4_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %icmpv4_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icmpv4_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %icmpv4_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %icmpv4_code.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %icmpv4_code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %icmpv4_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %icmpv4_header_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icmpv4_header_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.rhs.i.if.then.i_crit_edge

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %icmpv4_header_data5.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %icmpv4_code7.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_icmp_dw0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %7, i32 0, i32 9
  %flex_parser_id_icmp_dw1.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %7, i32 0, i32 10
  br label %dr_ste_v0_build_icmp_tag.exit

if.else.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %icmpv6_header_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 6
  %icmpv6_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 9
  %icmpv6_code.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 10
  %caps11.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %caps11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps11.i, align 4
  %flex_parser_id_icmpv6_dw0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %9, i32 0, i32 11
  %flex_parser_id_icmpv6_dw1.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %9, i32 0, i32 12
  br label %dr_ste_v0_build_icmp_tag.exit

dr_ste_v0_build_icmp_tag.exit:                    ; preds = %if.else.i, %if.then.i
  %icmp_header_data.0.i = phi ptr [ %icmpv4_header_data5.i, %if.then.i ], [ %icmpv6_header_data.i, %if.else.i ]
  %dw0_location.0.in.in.i = phi ptr [ %flex_parser_id_icmp_dw0.i, %if.then.i ], [ %flex_parser_id_icmpv6_dw0.i, %if.else.i ]
  %dw1_location.0.in.in.i = phi ptr [ %flex_parser_id_icmp_dw1.i, %if.then.i ], [ %flex_parser_id_icmpv6_dw1.i, %if.else.i ]
  %icmp_type.0.i = phi ptr [ %icmpv4_type.i, %if.then.i ], [ %icmpv6_type.i, %if.else.i ]
  %icmp_code.0.i = phi ptr [ %icmpv4_code7.i, %if.then.i ], [ %icmpv6_code.i, %if.else.i ]
  %10 = ptrtoint ptr %dw1_location.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %dw1_location.0.in38.i = load i8, ptr %dw1_location.0.in.in.i, align 1
  %11 = ptrtoint ptr %dw0_location.0.in.in.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %dw0_location.0.in37.i = load i8, ptr %dw0_location.0.in.in.i, align 2
  %12 = shl i8 %dw0_location.0.in37.i, 2
  %13 = and i8 %12, 12
  %14 = xor i8 %13, 12
  %mul.i.i = zext i8 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %15 = ptrtoint ptr %icmp_type.0.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %icmp_type.0.i, align 1
  %conv16.i = zext i8 %16 to i32
  %shl.i = shl nuw i32 %conv16.i, 24
  %17 = ptrtoint ptr %icmp_code.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %icmp_code.0.i, align 1
  %conv17.i = zext i8 %18 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or.i = or i32 %shl18.i, %shl.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %add.ptr.i.i, align 4
  store i8 0, ptr %icmp_code.0.i, align 1
  store i8 0, ptr %icmp_type.0.i, align 1
  %20 = shl i8 %dw1_location.0.in38.i, 2
  %21 = and i8 %20, 12
  %22 = xor i8 %21, 12
  %mul.i40.i = zext i8 %22 to i32
  %add.ptr.i41.i = getelementptr i8, ptr %bit_mask, i32 %mul.i40.i
  %23 = ptrtoint ptr %icmp_header_data.0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %icmp_header_data.0.i, align 4
  %25 = ptrtoint ptr %add.ptr.i41.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr.i41.i, align 4
  store i32 0, ptr %icmp_header_data.0.i, align 4
  %26 = ptrtoint ptr %icmpv4_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %icmpv4_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %lor.lhs.false, label %dr_ste_v0_build_icmp_tag.exit.cond.true_crit_edge

dr_ste_v0_build_icmp_tag.exit.cond.true_crit_edge: ; preds = %dr_ste_v0_build_icmp_tag.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

lor.lhs.false:                                    ; preds = %dr_ste_v0_build_icmp_tag.exit
  %icmpv4_code = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %icmpv4_code to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %icmpv4_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not = icmp eq i8 %29, 0
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false.cond.true_crit_edge

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

lor.rhs:                                          ; preds = %lor.lhs.false
  %icmpv4_header_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %icmpv4_header_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %icmpv4_header_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not = icmp eq i32 %31, 0
  br i1 %tobool5.not, label %cond.false, label %lor.rhs.cond.true_crit_edge

lor.rhs.cond.true_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

cond.true:                                        ; preds = %lor.rhs.cond.true_crit_edge, %lor.lhs.false.cond.true_crit_edge, %dr_ste_v0_build_icmp_tag.exit.cond.true_crit_edge
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caps, align 4
  %flex_parser_id_icmp_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %33, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %caps9 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %34 = ptrtoint ptr %caps9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps9, align 4
  %flex_parser_id_icmpv6_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %35, i32 0, i32 11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi ptr [ %flex_parser_id_icmp_dw0, %cond.true ], [ %flex_parser_id_icmpv6_dw0, %cond.false ]
  %36 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %36)
  %cond.in29 = load i8, ptr %cond.in.in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cond.in29)
  %cmp = icmp ugt i8 %cond.in29, 3
  %conv15 = select i1 %cmp, i16 35, i16 34
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %37 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv15, ptr %lu_type, align 4
  %call18 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %38 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %call18, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %39 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @dr_ste_v0_build_icmp_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_general_purpose_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_a.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_a.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.dr_ste_v0_build_general_purpose_tag.exit_crit_edge, label %do.body1.i

entry.dr_ste_v0_build_general_purpose_tag.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_general_purpose_tag.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_a.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_a.i, align 4
  br label %dr_ste_v0_build_general_purpose_tag.exit

dr_ste_v0_build_general_purpose_tag.exit:         ; preds = %do.body1.i, %entry.dr_ste_v0_build_general_purpose_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %4 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 24, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %5 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %6 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dr_ste_v0_build_general_purpose_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_eth_l4_misc_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc31.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %do.body35.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %misc31.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %misc31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body14.i_crit_edge, label %do.body4.i

do.body.i.do.body14.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr.i, align 4
  %4 = ptrtoint ptr %misc31.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %misc31.i, align 4
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body4.i, %do.body.i.do.body14.i_crit_edge
  %inner_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %inner_tcp_ack_num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inner_tcp_ack_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not.i = icmp eq i32 %6, 0
  br i1 %tobool15.not.i, label %do.body14.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge, label %do.body14.i.if.end77.sink.split.i_crit_edge

do.body14.i.if.end77.sink.split.i_crit_edge:      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.sink.split.i

do.body14.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l4_misc_tag.exit

do.body35.i:                                      ; preds = %entry
  %outer_tcp_seq_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %outer_tcp_seq_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outer_tcp_seq_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool36.not.i = icmp eq i32 %8, 0
  br i1 %tobool36.not.i, label %do.body35.i.do.body56.i_crit_edge, label %do.body38.i

do.body35.i.do.body56.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56.i

do.body38.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr44.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr44.i, align 4
  %10 = ptrtoint ptr %outer_tcp_seq_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outer_tcp_seq_num.i, align 4
  br label %do.body56.i

do.body56.i:                                      ; preds = %do.body38.i, %do.body35.i.do.body56.i_crit_edge
  %outer_tcp_ack_num.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %outer_tcp_ack_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outer_tcp_ack_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool57.not.i = icmp eq i32 %12, 0
  br i1 %tobool57.not.i, label %do.body56.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge, label %do.body56.i.if.end77.sink.split.i_crit_edge

do.body56.i.if.end77.sink.split.i_crit_edge:      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.sink.split.i

do.body56.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge: ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_eth_l4_misc_tag.exit

if.end77.sink.split.i:                            ; preds = %do.body56.i.if.end77.sink.split.i_crit_edge, %do.body14.i.if.end77.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %6, %do.body14.i.if.end77.sink.split.i_crit_edge ], [ %12, %do.body56.i.if.end77.sink.split.i_crit_edge ]
  %outer_tcp_ack_num.sink.i = phi ptr [ %inner_tcp_ack_num.i, %do.body14.i.if.end77.sink.split.i_crit_edge ], [ %outer_tcp_ack_num.i, %do.body56.i.if.end77.sink.split.i_crit_edge ]
  %add.ptr65.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %add.ptr65.i, align 4
  %14 = ptrtoint ptr %outer_tcp_ack_num.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outer_tcp_ack_num.sink.i, align 4
  br label %dr_ste_v0_build_eth_l4_misc_tag.exit

dr_ste_v0_build_eth_l4_misc_tag.exit:             ; preds = %if.end77.sink.split.i, %do.body56.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge, %do.body14.i.dr_ste_v0_build_eth_l4_misc_tag.exit_crit_edge
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %15 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %16 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  %phi.cast = select i1 %tobool4.not, i16 44, i16 46
  %cond5 = select i1 %tobool.not, i16 %phi.cast, i16 45
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %17 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %cond5, ptr %lu_type, align 4
  %call9 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %18 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call9, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %19 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dr_ste_v0_build_eth_l4_misc_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %outer_vxlan_gpe_flags.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %1 = trunc i64 %bf.load.i to i32
  %2 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.body18.i_crit_edge, label %do.body2.i

entry.do.body18.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %4, 16777215
  %5 = shl i32 %1, 8
  %shl.i = and i32 %5, -16777216
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %bit_mask, align 4
  %6 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load14.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear15.i = and i64 %bf.load14.i, -16711681
  store i64 %bf.clear15.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %do.body18.i

do.body18.i:                                      ; preds = %do.body2.i, %entry.do.body18.i_crit_edge
  %7 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load19.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %8 = trunc i64 %bf.load19.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool23.not.i = icmp ult i32 %8, 16777216
  br i1 %tobool23.not.i, label %do.body18.i.do.body50.i_crit_edge, label %do.body25.i

do.body18.i.do.body50.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50.i

do.body25.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = lshr i32 %8, 24
  %10 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit_mask, align 4
  %and36.i = and i32 %11, -256
  %or39.i = or i32 %and36.i, %9
  store i32 %or39.i, ptr %bit_mask, align 4
  %12 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load44.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear45.i = and i64 %bf.load44.i, -4278190081
  store i64 %bf.clear45.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %do.body50.i

do.body50.i:                                      ; preds = %do.body25.i, %do.body18.i.do.body50.i_crit_edge
  %13 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load51.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.lshr52.i = lshr i64 %bf.load51.i, 32
  %14 = trunc i64 %bf.lshr52.i to i32
  %bf.cast54.i = and i32 %14, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast54.i)
  %tobool55.not.i = icmp eq i32 %bf.cast54.i, 0
  br i1 %tobool55.not.i, label %do.body50.i.dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge, label %do.body57.i

do.body50.i.dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge: ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit

do.body57.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr67.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr67.i, align 4
  %and68.i = and i32 %16, 255
  %shl70.i = shl i32 %14, 8
  %or71.i = or i32 %and68.i, %shl70.i
  store i32 %or71.i, ptr %add.ptr67.i, align 4
  %17 = ptrtoint ptr %outer_vxlan_gpe_flags.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load76.i = load i64, ptr %outer_vxlan_gpe_flags.i, align 4
  %bf.clear77.i = and i64 %bf.load76.i, -72057589742960641
  store i64 %bf.clear77.i, ptr %outer_vxlan_gpe_flags.i, align 4
  br label %dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit

dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit: ; preds = %do.body57.i, %do.body50.i.dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 25, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %19 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %20 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_tnl_geneve_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load.i = load i352, ptr %misc1.i, align 4
  %bf.lshr.i = lshr i352 %bf.load.i, 32
  %1 = trunc i352 %bf.lshr.i to i32
  %bf.cast.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast.i)
  %tobool.not.i = icmp eq i32 %bf.cast.i, 0
  br i1 %tobool.not.i, label %entry.do.body16.i_crit_edge, label %do.body2.i

entry.do.body16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %3, -65536
  %or.i = or i32 %and.i, %bf.cast.i
  store i32 %or.i, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12.i = load i352, ptr %misc1.i, align 4
  %bf.clear13.i = and i352 %bf.load12.i, -281470681743361
  store i352 %bf.clear13.i, ptr %misc1.i, align 4
  br label %do.body16.i

do.body16.i:                                      ; preds = %do.body2.i, %entry.do.body16.i_crit_edge
  %5 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17.i = load i352, ptr %misc1.i, align 4
  %6 = and i352 %bf.load17.i, 340282366920938463463374607431768211456
  %tobool21.not.i = icmp eq i352 %6, 0
  br i1 %tobool21.not.i, label %do.body16.i.do.body46.i_crit_edge, label %do.body23.i

do.body16.i.do.body46.i_crit_edge:                ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46.i

do.body23.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_mask, align 4
  %or36.i = or i32 %8, 8388608
  store i32 %or36.i, ptr %bit_mask, align 4
  %9 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40.i = load i352, ptr %misc1.i, align 4
  %bf.clear41.i = and i352 %bf.load40.i, -340282366920938463463374607431768211457
  store i352 %bf.clear41.i, ptr %misc1.i, align 4
  br label %do.body46.i

do.body46.i:                                      ; preds = %do.body23.i, %do.body16.i.do.body46.i_crit_edge
  %10 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47.i = load i352, ptr %misc1.i, align 4
  %bf.lshr48.i = lshr i352 %bf.load47.i, 48
  %11 = trunc i352 %bf.lshr48.i to i32
  %bf.cast50.i = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50.i)
  %tobool51.not.i = icmp eq i32 %bf.cast50.i, 0
  br i1 %tobool51.not.i, label %do.body46.i.do.body76.i_crit_edge, label %do.body53.i

do.body46.i.do.body76.i_crit_edge:                ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76.i

do.body53.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit_mask, align 4
  %and63.i = and i32 %13, -1056964609
  %shl65.i = shl nuw nsw i32 %bf.cast50.i, 24
  %or66.i = or i32 %and63.i, %shl65.i
  store i32 %or66.i, ptr %bit_mask, align 4
  %14 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70.i = load i352, ptr %misc1.i, align 4
  %bf.clear71.i = and i352 %bf.load70.i, -17732923532771329
  store i352 %bf.clear71.i, ptr %misc1.i, align 4
  br label %do.body76.i

do.body76.i:                                      ; preds = %do.body53.i, %do.body46.i.do.body76.i_crit_edge
  %15 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77.i = load i352, ptr %misc1.i, align 4
  %bf.lshr78.i = lshr i352 %bf.load77.i, 136
  %16 = trunc i352 %bf.lshr78.i to i32
  %bf.cast80.i = and i32 %16, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80.i)
  %tobool81.not.i = icmp eq i32 %bf.cast80.i, 0
  br i1 %tobool81.not.i, label %do.body76.i.dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit_crit_edge, label %do.body83.i

do.body76.i.dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit_crit_edge: ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit

do.body83.i:                                      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr92.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %add.ptr92.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92.i, align 4
  %and93.i = and i32 %18, 255
  %shl95.i = shl i32 %16, 8
  %or96.i = or i32 %and93.i, %shl95.i
  store i32 %or96.i, ptr %add.ptr92.i, align 4
  %19 = ptrtoint ptr %misc1.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100.i = load i352, ptr %misc1.i, align 4
  %bf.clear101.i = and i352 %bf.load100.i, -1461501550218616986443438186092383517123270410241
  store i352 %bf.clear101.i, ptr %misc1.i, align 4
  br label %dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit

dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit:  ; preds = %do.body83.i, %do.body76.i.dr_ste_v0_build_flex_parser_tnl_geneve_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %20 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 25, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %21 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %22 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dr_ste_v0_build_flex_parser_tnl_geneve_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_tnl_geneve_tlv_opt_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_geneve_tlv_option_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_geneve_tlv_option_0.i, align 8
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %geneve_tlv_option_0_data.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %geneve_tlv_option_0_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %geneve_tlv_option_0_data.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %geneve_tlv_option_0_data.i, align 4
  %10 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp ugt i8 %12, 3
  %conv2 = select i1 %cmp, i16 35, i16 34
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %13 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv2, ptr %lu_type, align 4
  %call5 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %14 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call5, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %15 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dr_ste_v0_build_flex_parser_tnl_geneve_tlv_opt_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_register_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_c_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_c_0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_0.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %metadata_reg_c_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not.i = icmp eq i32 %5, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21.i, align 4
  %7 = ptrtoint ptr %metadata_reg_c_1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_1.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %metadata_reg_c_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not.i = icmp eq i32 %9, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42.i, align 4
  %11 = ptrtoint ptr %metadata_reg_c_2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_2.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %metadata_reg_c_3.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not.i = icmp eq i32 %13, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v0_build_register_0_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v0_build_register_0_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_register_0_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63.i, align 4
  %15 = ptrtoint ptr %metadata_reg_c_3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_3.i, align 4
  br label %dr_ste_v0_build_register_0_tag.exit

dr_ste_v0_build_register_0_tag.exit:              ; preds = %do.body57.i, %do.body54.i.dr_ste_v0_build_register_0_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 47, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %17 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %18 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dr_ste_v0_build_register_0_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_register_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %metadata_reg_c_4.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bit_mask, align 4
  %3 = ptrtoint ptr %metadata_reg_c_4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_4.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %metadata_reg_c_5.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not.i = icmp eq i32 %5, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body33.i_crit_edge, label %do.body15.i

do.body12.i.do.body33.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21.i, align 4
  %7 = ptrtoint ptr %metadata_reg_c_5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_5.i, align 4
  br label %do.body33.i

do.body33.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body33.i_crit_edge
  %metadata_reg_c_6.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not.i = icmp eq i32 %9, 0
  br i1 %tobool34.not.i, label %do.body33.i.do.body54.i_crit_edge, label %do.body36.i

do.body33.i.do.body54.i_crit_edge:                ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i

do.body36.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42.i, align 4
  %11 = ptrtoint ptr %metadata_reg_c_6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_6.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.body36.i, %do.body33.i.do.body54.i_crit_edge
  %metadata_reg_c_7.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not.i = icmp eq i32 %13, 0
  br i1 %tobool55.not.i, label %do.body54.i.dr_ste_v0_build_register_1_tag.exit_crit_edge, label %do.body57.i

do.body54.i.dr_ste_v0_build_register_1_tag.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_register_1_tag.exit

do.body57.i:                                      ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63.i, align 4
  %15 = ptrtoint ptr %metadata_reg_c_7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_7.i, align 4
  br label %dr_ste_v0_build_register_1_tag.exit

dr_ste_v0_build_register_1_tag.exit:              ; preds = %do.body57.i, %do.body54.i.dr_ste_v0_build_register_1_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %16 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 48, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %17 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %18 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dr_ste_v0_build_register_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_src_gvmi_qpn_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %misc.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 1
  %0 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load.i = load i352, ptr %misc.i, align 4
  %1 = and i352 %bf.load.i, 32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824960
  %tobool.not.i = icmp eq i352 %1, 0
  br i1 %tobool.not.i, label %entry.do.body11.i_crit_edge, label %do.body1.i

entry.do.body11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body11.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %or.i = or i32 %3, 65535
  store i32 %or.i, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load7.i = load i352, ptr %misc.i, align 4
  %bf.clear8.i = and i352 %bf.load7.i, -32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824961
  store i352 %bf.clear8.i, ptr %misc.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body1.i, %entry.do.body11.i_crit_edge
  %5 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load12.i = load i352, ptr %misc.i, align 4
  %6 = and i352 %bf.load12.i, 35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915840
  %tobool16.not.i = icmp eq i352 %6, 0
  br i1 %tobool16.not.i, label %do.body11.i.dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit_crit_edge, label %do.body18.i

do.body11.i.dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit

do.body18.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr23.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr23.i, align 4
  %or27.i = or i32 %8, 16777215
  store i32 %or27.i, ptr %add.ptr23.i, align 4
  %9 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load31.i = load i352, ptr %misc.i, align 4
  %bf.clear32.i = and i352 %bf.load31.i, -35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915841
  store i352 %bf.clear32.i, ptr %misc.i, align 4
  br label %dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit

dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit:       ; preds = %do.body18.i, %do.body11.i.dr_ste_v0_build_src_gvmi_qpn_bit_mask.exit_crit_edge
  %10 = ptrtoint ptr %misc.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load37.i = load i352, ptr %misc.i, align 4
  %bf.clear38.i = and i352 %bf.load37.i, -2135954443345288730617641411038537564552127698862354114967031429575030055679844336635663152578561
  store i352 %bf.clear38.i, ptr %misc.i, align 4
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %11 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %lu_type, align 4
  %call = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %12 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %13 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dr_ste_v0_build_src_gvmi_qpn_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 34, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_flex_parser_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v0_build_flex_parser_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 35, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %call = tail call i32 @dr_ste_v0_build_flex_parser_tag(ptr noundef %mask, ptr noundef %sb, ptr noundef %bit_mask)
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %1 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dr_ste_v0_build_flex_parser_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_flex_parser_tnl_gtpu_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %gtpu_msg_flags.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 14
  %0 = ptrtoint ptr %gtpu_msg_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gtpu_msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_mask, align 4
  %and.i = and i32 %3, -117440513
  %4 = and i8 %1, 7
  %and5.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %and5.i, 24
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %bit_mask, align 4
  %5 = ptrtoint ptr %gtpu_msg_flags.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gtpu_msg_flags.i, align 1
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %gtpu_msg_type.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %gtpu_msg_type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtpu_msg_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not.i = icmp eq i8 %7, 0
  br i1 %tobool13.not.i, label %do.body12.i.do.body34.i_crit_edge, label %do.body15.i

do.body12.i.do.body34.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34.i

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv18.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %bit_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_mask, align 4
  %and23.i = and i32 %9, -16711681
  %shl25.i = shl nuw nsw i32 %conv18.i, 16
  %or26.i = or i32 %and23.i, %shl25.i
  store i32 %or26.i, ptr %bit_mask, align 4
  %10 = ptrtoint ptr %gtpu_msg_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %gtpu_msg_type.i, align 4
  br label %do.body34.i

do.body34.i:                                      ; preds = %do.body15.i, %do.body12.i.do.body34.i_crit_edge
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %11 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not.i = icmp eq i32 %12, 0
  br i1 %tobool35.not.i, label %do.body34.i.dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit_crit_edge, label %do.body37.i

do.body34.i.dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit_crit_edge: ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit

do.body37.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr43.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr43.i, align 4
  %14 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit

dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit:    ; preds = %do.body37.i, %do.body34.i.dr_ste_v0_build_flex_parser_tnl_gtpu_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %15 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 25, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %16 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %17 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dr_ste_v0_build_flex_parser_tnl_gtpu_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_header_0_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 52, ptr %lu_type, align 4
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %tunnel_header_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tunnel_header_0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.body12.i_crit_edge, label %do.body2.i

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %bit_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %bit_mask, align 4
  %4 = ptrtoint ptr %tunnel_header_0.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tunnel_header_0.i, align 4
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body2.i, %entry.do.body12.i_crit_edge
  %tunnel_header_1.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tunnel_header_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not.i = icmp eq i32 %6, 0
  br i1 %tobool13.not.i, label %do.body12.i.dr_ste_v0_build_tnl_header_0_1_tag.exit_crit_edge, label %do.body15.i

do.body12.i.dr_ste_v0_build_tnl_header_0_1_tag.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_tnl_header_0_1_tag.exit

do.body15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i = getelementptr %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21.i, align 4
  %8 = ptrtoint ptr %tunnel_header_1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tunnel_header_1.i, align 4
  br label %dr_ste_v0_build_tnl_header_0_1_tag.exit

dr_ste_v0_build_tnl_header_0_1_tag.exit:          ; preds = %do.body15.i, %do.body12.i.dr_ste_v0_build_tnl_header_0_1_tag.exit_crit_edge
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %9 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %10 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dr_ste_v0_build_tnl_header_0_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_gtpu_flex_parser_0_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.i.i = icmp ult i8 %3, 4
  br i1 %cmp.i.i, label %do.body.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl nuw nsw i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %gtpu_dw_0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i65.i = icmp ult i8 %13, 4
  br i1 %cmp.i65.i, label %do.body9.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = shl nuw nsw i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66.i = zext i8 %16 to i32
  %add.ptr.i67.i = getelementptr i8, ptr %bit_mask, i32 %mul.i66.i
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid.i, align 4
  %19 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67.i, align 4
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body9.i, %if.end.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i68.i = icmp ult i8 %23, 4
  br i1 %cmp.i68.i, label %do.body23.i, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

do.body23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = shl nuw nsw i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69.i = zext i8 %26 to i32
  %add.ptr.i70.i = getelementptr i8, ptr %bit_mask, i32 %mul.i69.i
  %gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2.i, align 4
  %29 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70.i, align 4
  store i32 0, ptr %gtpu_dw_2.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body23.i, %if.end19.i.if.end33.i_crit_edge
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i71.i = icmp ult i8 %33, 4
  br i1 %cmp.i71.i, label %do.body37.i, label %if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge

if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit

do.body37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = shl nuw nsw i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72.i = zext i8 %36 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %bit_mask, i32 %mul.i72.i
  %gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0.i, align 4
  %39 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73.i, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0.i, align 4
  br label %dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit

dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit:  ; preds = %do.body37.i, %if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %40 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 34, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %41 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %42 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_build_tnl_gtpu_flex_parser_1_init(ptr noundef %sb, ptr nocapture noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %caps.i = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i.i = icmp ugt i8 %3, 3
  br i1 %cmp.i.i, label %do.body.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %bit_mask, i32 %mul.i.i
  %gtpu_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i.i, align 4
  store i32 0, ptr %gtpu_dw_0.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i65.i = icmp ugt i8 %13, 3
  br i1 %cmp.i65.i, label %do.body9.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66.i = zext i8 %16 to i32
  %add.ptr.i67.i = getelementptr i8, ptr %bit_mask, i32 %mul.i66.i
  %gtpu_teid.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid.i, align 4
  %19 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67.i, align 4
  store i32 0, ptr %gtpu_teid.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body9.i, %if.end.i.if.end19.i_crit_edge
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i68.i = icmp ugt i8 %23, 3
  br i1 %cmp.i68.i, label %do.body23.i, label %if.end19.i.if.end33.i_crit_edge

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

do.body23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = shl i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69.i = zext i8 %26 to i32
  %add.ptr.i70.i = getelementptr i8, ptr %bit_mask, i32 %mul.i69.i
  %gtpu_dw_2.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2.i, align 4
  %29 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70.i, align 4
  store i32 0, ptr %gtpu_dw_2.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body23.i, %if.end19.i.if.end33.i_crit_edge
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps.i, align 4
  %flex_parser_id_gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i71.i = icmp ugt i8 %33, 3
  br i1 %cmp.i71.i, label %do.body37.i, label %if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge

if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit

do.body37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72.i = zext i8 %36 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %bit_mask, i32 %mul.i72.i
  %gtpu_first_ext_dw_0.i = getelementptr inbounds %struct.mlx5dr_match_param, ptr %mask, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0.i, align 4
  %39 = ptrtoint ptr %add.ptr.i73.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73.i, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0.i, align 4
  br label %dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit

dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit:  ; preds = %do.body37.i, %if.end33.i.dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag.exit_crit_edge
  %lu_type = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 3
  %40 = ptrtoint ptr %lu_type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 35, ptr %lu_type, align 4
  %call3 = tail call zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef %bit_mask) #12
  %byte_mask = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 4
  %41 = ptrtoint ptr %byte_mask to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %call3, ptr %byte_mask, align 2
  %ste_build_tag_func = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 6
  %42 = ptrtoint ptr %ste_build_tag_func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag, ptr %ste_build_tag_func, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_init(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %lu_type, i1 noundef zeroext %is_rx, i16 noundef zeroext %gvmi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %is_rx, i32 536870912, i32 268435456
  %0 = ptrtoint ptr %hw_ste_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ste_p, align 4
  %and.i.i = and i32 %1, 251723775
  %or.i.i = or i32 %cond, %and.i.i
  %2 = and i16 %lu_type, 255
  %and2.i46.i = zext i16 %2 to i32
  %shl.i47.i = shl nuw nsw i32 %and2.i46.i, 16
  %or.i48.i = or i32 %or.i.i, %shl.i47.i
  store i32 %or.i48.i, ptr %hw_ste_p, align 4
  %add.ptr.i.i = getelementptr i32, ptr %hw_ste_p, i32 1
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %conv1.i = zext i16 %gvmi to i32
  %add.ptr.i = getelementptr i32, ptr %hw_ste_p, i32 3
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %6, -65536
  %or.i = or i32 %and.i, %conv1.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %or.i50.i = and i32 %4, 255
  %shl16.i = shl nuw i32 %conv1.i, 16
  %and14.i = or i32 %shl16.i, %or.i50.i
  %or17.i = or i32 %and14.i, 3840
  store i32 %or17.i, ptr %add.ptr.i.i, align 4
  %add.ptr27.i = getelementptr i32, ptr %hw_ste_p, i32 6
  %7 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr27.i, align 4
  %and28.i = and i32 %8, 65535
  %or31.i = or i32 %and28.i, %shl16.i
  store i32 %or31.i, ptr %add.ptr27.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_next_lu_type(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %lu_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -65281
  %2 = shl i16 %lu_type, 8
  %shl = zext i16 %2 to i32
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dr_ste_v0_get_next_lu_type(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = trunc i32 %1 to i16
  %3 = lshr i16 %2, 8
  ret i16 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_miss_addr(ptr nocapture noundef %hw_ste_p, i64 noundef %miss_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr1 = lshr i64 %miss_addr, 32
  %conv = trunc i64 %shr1 to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -256
  %and3 = and i32 %conv, 255
  %or = or i32 %and, %and3
  store i32 %or, ptr %add.ptr, align 4
  %2 = trunc i64 %miss_addr to i32
  %3 = and i32 %2, -64
  %add.ptr13 = getelementptr i32, ptr %hw_ste_p, i32 7
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr13, align 4
  %and14 = and i32 %5, 63
  %or17 = or i32 %and14, %3
  store i32 %or17, ptr %add.ptr13, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @dr_ste_v0_get_miss_addr(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = and i32 %1, -64
  %add.ptr1 = getelementptr i32, ptr %hw_ste_p, i32 6
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %and3 = and i32 %3, 255
  %conv4 = zext i32 %and3 to i64
  %4 = shl nuw nsw i64 %conv4, 32
  %5 = zext i32 %shr to i64
  %shl5 = or i64 %4, %5
  ret i64 %shl5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_hit_addr(ptr nocapture noundef %hw_ste_p, i64 noundef %icm_addr, i32 noundef %ht_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %icm_addr, 5
  %conv = zext i32 %ht_size to i64
  %or = or i64 %shr, %conv
  %shr1 = lshr i64 %or, 27
  %conv2 = trunc i64 %shr1 to i32
  %add.ptr = getelementptr i32, ptr %hw_ste_p, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %and = and i32 %1, -256
  %and4 = and i32 %conv2, 255
  %or5 = or i32 %and, %and4
  store i32 %or5, ptr %add.ptr, align 4
  %conv11 = trunc i64 %or to i32
  %add.ptr15 = getelementptr i32, ptr %hw_ste_p, i32 2
  %2 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr15, align 4
  %and16 = and i32 %3, 31
  %shl18 = shl i32 %conv11, 5
  %or19 = or i32 %and16, %shl18
  store i32 %or19, ptr %add.ptr15, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_byte_mask(ptr nocapture noundef %hw_ste_p, i16 noundef zeroext %byte_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %byte_mask to i32
  %0 = ptrtoint ptr %hw_ste_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ste_p, align 4
  %and = and i32 %1, -65536
  %or = or i32 %and, %conv
  store i32 %or, ptr %hw_ste_p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dr_ste_v0_get_byte_mask(ptr nocapture noundef readonly %hw_ste_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ste_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ste_p, align 4
  %conv = trunc i32 %1 to i16
  ret i16 %conv
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_set_actions_rx(ptr nocapture noundef readnone %dmn, ptr nocapture noundef readonly %action_type_set, ptr noundef %last_ste, ptr nocapture noundef readonly %attr, ptr nocapture noundef %added_stes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %action_type_set, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ctr_id = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 7
  %2 = ptrtoint ptr %ctr_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctr_id, align 4
  %add.ptr.i = getelementptr i32, ptr %last_ste, i32 5
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, -65536
  %and2.i = and i32 %3, 65535
  %or.i = or i32 %and.i, %and2.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %last_ste, i32 6
  %6 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr11.i, align 4
  %and12.i = and i32 %7, -65281
  %8 = lshr i32 %3, 8
  %shl14.i = and i32 %8, 65280
  %or15.i = or i32 %and12.i, %shl14.i
  store i32 %or15.i, ptr %add.ptr11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx1 = getelementptr i8, ptr %action_type_set, i32 2
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %last_ste to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_ste, align 4
  %and.i67 = and i32 %12, 268435455
  %or.i68 = or i32 %and.i67, 1610612736
  store i32 %or.i68, ptr %last_ste, align 4
  %decap_with_vlan = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 4
  %13 = ptrtoint ptr %decap_with_vlan to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %decap_with_vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4 = icmp slt i8 %bf.load, 0
  %add.ptr.i69 = getelementptr i32, ptr %last_ste, i32 5
  %14 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i69, align 4
  %and.i70 = and i32 %15, -2130706433
  %or.i71 = select i1 %tobool4, i32 822083584, i32 805306368
  %or15.i72 = or i32 %or.i71, %and.i70
  store i32 %or15.i72, ptr %add.ptr.i69, align 4
  %add.ptr24.i = getelementptr i32, ptr %last_ste, i32 7
  %16 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr24.i, align 4
  %or28.i = or i32 %17, 16
  store i32 %or28.i, ptr %add.ptr24.i, align 4
  %decap_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 3
  %18 = ptrtoint ptr %decap_actions to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %decap_actions, align 4
  %decap_index = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 2
  %20 = ptrtoint ptr %decap_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %decap_index, align 8
  %conv.i = zext i16 %19 to i32
  %add.ptr.i73 = getelementptr i32, ptr %last_ste, i32 3
  %22 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i73, align 4
  %and.i74 = and i32 %23, 65535
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i75 = or i32 %and.i74, %shl.i
  store i32 %or.i75, ptr %add.ptr.i73, align 4
  %add.ptr11.i76 = getelementptr i32, ptr %last_ste, i32 4
  %24 = ptrtoint ptr %add.ptr11.i76 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %add.ptr11.i76, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %25 = ptrtoint ptr %action_type_set to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %action_type_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i77 = getelementptr i32, ptr %last_ste, i32 5
  %27 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i77, align 4
  %and.i78 = and i32 %28, -1879048193
  %or.i79 = or i32 %and.i78, 536870912
  store i32 %or.i79, ptr %add.ptr.i77, align 4
  %add.ptr11.i80 = getelementptr i32, ptr %last_ste, i32 7
  %29 = ptrtoint ptr %add.ptr11.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr11.i80, align 4
  %or15.i81 = or i32 %30, 16
  store i32 %or15.i81, ptr %add.ptr11.i80, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %arrayidx10 = getelementptr i8, ptr %action_type_set, i32 11
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not = icmp eq i8 %32, 0
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %for.cond.preheader

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end9
  %vlans = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %33 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vlans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp156 = icmp sgt i32 %34, 0
  br i1 %cmp156, label %lor.lhs.false.peel, label %for.cond.preheader.if.end22_crit_edge

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

lor.lhs.false.peel:                               ; preds = %for.cond.preheader
  %gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %35 = ptrtoint ptr %action_type_set to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %action_type_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool15.not.peel = icmp eq i8 %36, 0
  br i1 %tobool15.not.peel, label %lor.lhs.false16.peel, label %lor.lhs.false.peel.if.then20.peel_crit_edge

lor.lhs.false.peel.if.then20.peel_crit_edge:      ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.peel

lor.lhs.false16.peel:                             ; preds = %lor.lhs.false.peel
  %37 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool19.not.peel = icmp eq i8 %38, 0
  br i1 %tobool19.not.peel, label %lor.lhs.false16.peel.if.end21.peel_crit_edge, label %lor.lhs.false16.peel.if.then20.peel_crit_edge

lor.lhs.false16.peel.if.then20.peel_crit_edge:    ; preds = %lor.lhs.false16.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.peel

lor.lhs.false16.peel.if.end21.peel_crit_edge:     ; preds = %lor.lhs.false16.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.peel

if.then20.peel:                                   ; preds = %lor.lhs.false16.peel.if.then20.peel_crit_edge, %lor.lhs.false.peel.if.then20.peel_crit_edge
  %39 = ptrtoint ptr %gvmi to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gvmi, align 8
  %41 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %added_stes, align 4
  %inc.i.peel = add i32 %42, 1
  store i32 %inc.i.peel, ptr %added_stes, align 4
  %add.ptr.i82.peel = getelementptr i8, ptr %last_ste, i32 64
  %43 = ptrtoint ptr %add.ptr.i82.peel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i82.peel, align 4
  %and.i.i.i.peel = and i32 %44, 251723775
  %or.i48.i.i.peel = or i32 %and.i.i.i.peel, 537853952
  store i32 %or.i48.i.i.peel, ptr %add.ptr.i82.peel, align 4
  %add.ptr.i.i.i.peel = getelementptr i8, ptr %last_ste, i32 68
  %45 = ptrtoint ptr %add.ptr.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i.i.peel, align 4
  %conv1.i.i.peel = zext i16 %40 to i32
  %add.ptr.i.i.peel = getelementptr i8, ptr %last_ste, i32 76
  %47 = ptrtoint ptr %add.ptr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i.peel, align 4
  %and.i.i.peel = and i32 %48, -65536
  %or.i.i.peel = or i32 %and.i.i.peel, %conv1.i.i.peel
  store i32 %or.i.i.peel, ptr %add.ptr.i.i.peel, align 4
  %or.i50.i.i.peel = and i32 %46, 255
  %shl16.i.i.peel = shl nuw i32 %conv1.i.i.peel, 16
  %and14.i.i.peel = or i32 %shl16.i.i.peel, %or.i50.i.i.peel
  %or17.i.i.peel = or i32 %and14.i.i.peel, 3840
  store i32 %or17.i.i.peel, ptr %add.ptr.i.i.i.peel, align 4
  %add.ptr27.i.i.peel = getelementptr i8, ptr %last_ste, i32 88
  %49 = ptrtoint ptr %add.ptr27.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr27.i.i.peel, align 4
  %and28.i.i.peel = and i32 %50, 65535
  %or31.i.i.peel = or i32 %and28.i.i.peel, %shl16.i.i.peel
  store i32 %or31.i.i.peel, ptr %add.ptr27.i.i.peel, align 4
  br label %if.end21.peel

if.end21.peel:                                    ; preds = %if.then20.peel, %lor.lhs.false16.peel.if.end21.peel_crit_edge
  %last_ste.addr.1.peel = phi ptr [ %last_ste, %lor.lhs.false16.peel.if.end21.peel_crit_edge ], [ %add.ptr.i82.peel, %if.then20.peel ]
  %add.ptr.i83.peel = getelementptr i32, ptr %last_ste.addr.1.peel, i32 5
  %51 = ptrtoint ptr %add.ptr.i83.peel to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i83.peel, align 4
  %and.i84.peel = and i32 %52, -1879048193
  %or.i85.peel = or i32 %and.i84.peel, 1073741824
  store i32 %or.i85.peel, ptr %add.ptr.i83.peel, align 4
  %53 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vlans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.peel = icmp sgt i32 %54, 1
  br i1 %cmp.peel, label %if.end21.peel.if.end21_crit_edge, label %if.end21.peel.if.end22_crit_edge

if.end21.peel.if.end22_crit_edge:                 ; preds = %if.end21.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end21.peel.if.end21_crit_edge:                 ; preds = %if.end21.peel
  br label %if.end21

if.end21:                                         ; preds = %if.end21.if.end21_crit_edge, %if.end21.peel.if.end21_crit_edge
  %i.0158 = phi i32 [ %inc, %if.end21.if.end21_crit_edge ], [ 1, %if.end21.peel.if.end21_crit_edge ]
  %last_ste.addr.0157 = phi ptr [ %add.ptr.i82, %if.end21.if.end21_crit_edge ], [ %last_ste.addr.1.peel, %if.end21.peel.if.end21_crit_edge ]
  %55 = ptrtoint ptr %gvmi to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %gvmi, align 8
  %57 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %added_stes, align 4
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %added_stes, align 4
  %add.ptr.i82 = getelementptr i8, ptr %last_ste.addr.0157, i32 64
  %59 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i82, align 4
  %and.i.i.i = and i32 %60, 251723775
  %or.i48.i.i = or i32 %and.i.i.i, 537853952
  store i32 %or.i48.i.i, ptr %add.ptr.i82, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %last_ste.addr.0157, i32 68
  %61 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i, align 4
  %conv1.i.i = zext i16 %56 to i32
  %add.ptr.i.i = getelementptr i8, ptr %last_ste.addr.0157, i32 76
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %64, -65536
  %or.i.i = or i32 %and.i.i, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %or.i50.i.i = and i32 %62, 255
  %shl16.i.i = shl nuw i32 %conv1.i.i, 16
  %and14.i.i = or i32 %shl16.i.i, %or.i50.i.i
  %or17.i.i = or i32 %and14.i.i, 3840
  store i32 %or17.i.i, ptr %add.ptr.i.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %last_ste.addr.0157, i32 88
  %65 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr27.i.i, align 4
  %and28.i.i = and i32 %66, 65535
  %or31.i.i = or i32 %and28.i.i, %shl16.i.i
  store i32 %or31.i.i, ptr %add.ptr27.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %last_ste.addr.0157, i32 84
  %67 = ptrtoint ptr %add.ptr.i83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i83, align 4
  %and.i84 = and i32 %68, -1879048193
  %or.i85 = or i32 %and.i84, 1073741824
  store i32 %or.i85, ptr %add.ptr.i83, align 4
  %inc = add nuw nsw i32 %i.0158, 1
  %69 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vlans, align 8
  %cmp = icmp slt i32 %inc, %70
  br i1 %cmp, label %if.end21.if.end21_crit_edge, label %if.end21.if.end22_crit_edge, !llvm.loop !22

if.end21.if.end22_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end21.if.end21_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end22:                                         ; preds = %if.end21.if.end22_crit_edge, %if.end21.peel.if.end22_crit_edge, %for.cond.preheader.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %last_ste.addr.2 = phi ptr [ %last_ste, %if.end9.if.end22_crit_edge ], [ %last_ste, %for.cond.preheader.if.end22_crit_edge ], [ %last_ste.addr.1.peel, %if.end21.peel.if.end22_crit_edge ], [ %add.ptr.i82, %if.end21.if.end22_crit_edge ]
  %arrayidx23 = getelementptr i8, ptr %action_type_set, i32 9
  %71 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool24.not = icmp eq i8 %72, 0
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %if.then25

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then25:                                        ; preds = %if.end22
  %73 = ptrtoint ptr %last_ste.addr.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_ste.addr.2, align 4
  %shr.i.mask = and i32 %74, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.i.mask)
  %cmp27 = icmp eq i32 %shr.i.mask, 1610612736
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %gvmi30 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %75 = ptrtoint ptr %gvmi30 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %gvmi30, align 8
  %77 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %added_stes, align 4
  %inc.i87 = add i32 %78, 1
  store i32 %inc.i87, ptr %added_stes, align 4
  %add.ptr.i88 = getelementptr i8, ptr %last_ste.addr.2, i32 64
  %79 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i88, align 4
  %and.i.i.i89 = and i32 %80, 251723775
  %or.i48.i.i91 = or i32 %and.i.i.i89, 1611595776
  store i32 %or.i48.i.i91, ptr %add.ptr.i88, align 4
  %add.ptr.i.i.i92 = getelementptr i8, ptr %last_ste.addr.2, i32 68
  %81 = ptrtoint ptr %add.ptr.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i.i92, align 4
  %conv1.i.i93 = zext i16 %76 to i32
  %add.ptr.i.i94 = getelementptr i8, ptr %last_ste.addr.2, i32 76
  %83 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i94, align 4
  %and.i.i95 = and i32 %84, -65536
  %or.i.i96 = or i32 %and.i.i95, %conv1.i.i93
  store i32 %or.i.i96, ptr %add.ptr.i.i94, align 4
  %or.i50.i.i97 = and i32 %82, 255
  %shl16.i.i98 = shl nuw i32 %conv1.i.i93, 16
  %and14.i.i99 = or i32 %shl16.i.i98, %or.i50.i.i97
  %or17.i.i100 = or i32 %and14.i.i99, 3840
  store i32 %or17.i.i100, ptr %add.ptr.i.i.i92, align 4
  %add.ptr27.i.i101 = getelementptr i8, ptr %last_ste.addr.2, i32 88
  %85 = ptrtoint ptr %add.ptr27.i.i101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr27.i.i101, align 4
  %and28.i.i102 = and i32 %86, 65535
  %or31.i.i103 = or i32 %and28.i.i102, %shl16.i.i98
  store i32 %or31.i.i103, ptr %add.ptr27.i.i101, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %and.i104 = and i32 %74, 268435455
  %or.i105 = or i32 %and.i104, 1610612736
  %87 = ptrtoint ptr %last_ste.addr.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i105, ptr %last_ste.addr.2, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  %last_ste.addr.3 = phi ptr [ %add.ptr.i88, %if.then29 ], [ %last_ste.addr.2, %if.else ]
  %modify_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 1
  %88 = ptrtoint ptr %modify_actions to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %modify_actions, align 4
  %90 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %attr, align 8
  %conv.i106 = zext i16 %89 to i32
  %add.ptr.i107 = getelementptr i32, ptr %last_ste.addr.3, i32 3
  %92 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i107, align 4
  %and.i108 = and i32 %93, 65535
  %shl.i109 = shl nuw i32 %conv.i106, 16
  %or.i110 = or i32 %and.i108, %shl.i109
  store i32 %or.i110, ptr %add.ptr.i107, align 4
  %add.ptr11.i111 = getelementptr i32, ptr %last_ste.addr.3, i32 4
  %94 = ptrtoint ptr %add.ptr11.i111 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %add.ptr11.i111, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end22.if.end32_crit_edge
  %last_ste.addr.4 = phi ptr [ %last_ste.addr.2, %if.end22.if.end32_crit_edge ], [ %last_ste.addr.3, %if.end31 ]
  %arrayidx33 = getelementptr i8, ptr %action_type_set, i32 8
  %95 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool34.not = icmp eq i8 %96, 0
  br i1 %tobool34.not, label %if.end32.if.end43_crit_edge, label %if.then35

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then35:                                        ; preds = %if.end32
  %97 = ptrtoint ptr %last_ste.addr.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %last_ste.addr.4, align 4
  %shr.i112.mask = and i32 %98, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %shr.i112.mask)
  %cmp38 = icmp eq i32 %shr.i112.mask, 1610612736
  br i1 %cmp38, label %if.then40, label %if.then35.if.end42_crit_edge

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %gvmi41 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %99 = ptrtoint ptr %gvmi41 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %gvmi41, align 8
  %101 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %added_stes, align 4
  %inc.i114 = add i32 %102, 1
  store i32 %inc.i114, ptr %added_stes, align 4
  %add.ptr.i115 = getelementptr i8, ptr %last_ste.addr.4, i32 64
  %103 = ptrtoint ptr %add.ptr.i115 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i115, align 4
  %and.i.i.i116 = and i32 %104, 251723775
  %or.i48.i.i118 = or i32 %and.i.i.i116, 537853952
  store i32 %or.i48.i.i118, ptr %add.ptr.i115, align 4
  %add.ptr.i.i.i119 = getelementptr i8, ptr %last_ste.addr.4, i32 68
  %105 = ptrtoint ptr %add.ptr.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i.i119, align 4
  %conv1.i.i120 = zext i16 %100 to i32
  %add.ptr.i.i121 = getelementptr i8, ptr %last_ste.addr.4, i32 76
  %107 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr.i.i121, align 4
  %and.i.i122 = and i32 %108, -65536
  %or.i.i123 = or i32 %and.i.i122, %conv1.i.i120
  store i32 %or.i.i123, ptr %add.ptr.i.i121, align 4
  %or.i50.i.i124 = and i32 %106, 255
  %shl16.i.i125 = shl nuw i32 %conv1.i.i120, 16
  %and14.i.i126 = or i32 %shl16.i.i125, %or.i50.i.i124
  %or17.i.i127 = or i32 %and14.i.i126, 3840
  store i32 %or17.i.i127, ptr %add.ptr.i.i.i119, align 4
  %add.ptr27.i.i128 = getelementptr i8, ptr %last_ste.addr.4, i32 88
  %109 = ptrtoint ptr %add.ptr27.i.i128 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr27.i.i128, align 4
  %and28.i.i129 = and i32 %110, 65535
  %or31.i.i130 = or i32 %and28.i.i129, %shl16.i.i125
  store i32 %or31.i.i130, ptr %add.ptr27.i.i128, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then35.if.end42_crit_edge
  %last_ste.addr.5 = phi ptr [ %add.ptr.i115, %if.then40 ], [ %last_ste.addr.4, %if.then35.if.end42_crit_edge ]
  %flow_tag = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 6
  %111 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flow_tag, align 8
  %or.i131 = or i32 %112, -2147483648
  %add.ptr.i132 = getelementptr i32, ptr %last_ste.addr.5, i32 4
  %113 = ptrtoint ptr %add.ptr.i132 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i131, ptr %add.ptr.i132, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end32.if.end43_crit_edge
  %last_ste.addr.6 = phi ptr [ %last_ste.addr.4, %if.end32.if.end43_crit_edge ], [ %last_ste.addr.5, %if.end42 ]
  %hit_gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 9
  %114 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hit_gvmi, align 2
  %conv.i133 = zext i16 %115 to i32
  %add.ptr.i134 = getelementptr i32, ptr %last_ste.addr.6, i32 1
  %116 = ptrtoint ptr %add.ptr.i134 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i134, align 4
  %and.i135 = and i32 %117, 65535
  %shl.i136 = shl nuw i32 %conv.i133, 16
  %or.i137 = or i32 %and.i135, %shl.i136
  store i32 %or.i137, ptr %add.ptr.i134, align 4
  %final_icm_addr = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 5
  %118 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %final_icm_addr, align 8
  %shr1.i = lshr i64 %119, 32
  %conv2.i = trunc i64 %shr1.i to i32
  %and.i141 = and i32 %or.i137, -256
  %and4.i = and i32 %conv2.i, 255
  %or5.i = or i32 %and4.i, %and.i141
  store i32 %or5.i, ptr %add.ptr.i134, align 4
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, -64
  %add.ptr15.i = getelementptr i32, ptr %last_ste.addr.6, i32 2
  %122 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %123, 31
  %conv11.i = or i32 %121, %and16.i
  %or19.i = or i32 %conv11.i, 32
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dr_ste_v0_set_actions_tx(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %action_type_set, ptr noundef %last_ste, ptr nocapture noundef readonly %attr, ptr nocapture noundef %added_stes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %action_type_set, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx1 = getelementptr i8, ptr %action_type_set, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3 = icmp ne i8 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool3, %lor.rhs ]
  %arrayidx4 = getelementptr i8, ptr %action_type_set, i32 9
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %lor.end.if.end_crit_edge, label %if.then

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %last_ste to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_ste, align 4
  %and.i = and i32 %8, 268435455
  %or.i = or i32 %and.i, 1610612736
  store i32 %or.i, ptr %last_ste, align 4
  %modify_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %modify_actions to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %modify_actions, align 4
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i = getelementptr i32, ptr %last_ste, i32 3
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and.i67 = and i32 %14, 65535
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i68 = or i32 %and.i67, %shl.i
  store i32 %or.i68, ptr %add.ptr.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %last_ste, i32 4
  %15 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %add.ptr11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end.if.end_crit_edge
  %arrayidx6 = getelementptr i8, ptr %action_type_set, i32 12
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %if.end.if.end19_crit_edge, label %for.cond.preheader

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.cond.preheader:                               ; preds = %if.end
  %vlans = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %18 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vlans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp121 = icmp sgt i32 %19, 0
  br i1 %cmp121, label %lor.lhs.false.peel, label %for.cond.preheader.if.end19_crit_edge

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

lor.lhs.false.peel:                               ; preds = %for.cond.preheader
  %gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not.peel = icmp eq i8 %21, 0
  br i1 %tobool13.not.peel, label %lor.lhs.false.peel.if.end15.peel_crit_edge, label %if.then14.peel

lor.lhs.false.peel.if.end15.peel_crit_edge:       ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.peel

if.then14.peel:                                   ; preds = %lor.lhs.false.peel
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %gvmi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %gvmi, align 8
  %24 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %added_stes, align 4
  %inc.i.peel = add i32 %25, 1
  store i32 %inc.i.peel, ptr %added_stes, align 4
  %add.ptr.i69.peel = getelementptr i8, ptr %last_ste, i32 64
  %26 = ptrtoint ptr %add.ptr.i69.peel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i69.peel, align 4
  %and.i.i.i.peel = and i32 %27, 251723775
  %or.i48.i.i.peel = or i32 %and.i.i.i.peel, 269418496
  store i32 %or.i48.i.i.peel, ptr %add.ptr.i69.peel, align 4
  %add.ptr.i.i.i.peel = getelementptr i8, ptr %last_ste, i32 68
  %28 = ptrtoint ptr %add.ptr.i.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i.peel, align 4
  %conv1.i.i.peel = zext i16 %23 to i32
  %add.ptr.i.i.peel = getelementptr i8, ptr %last_ste, i32 76
  %30 = ptrtoint ptr %add.ptr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i.peel, align 4
  %and.i.i.peel = and i32 %31, -65536
  %or.i.i.peel = or i32 %and.i.i.peel, %conv1.i.i.peel
  store i32 %or.i.i.peel, ptr %add.ptr.i.i.peel, align 4
  %or.i50.i.i.peel = and i32 %29, 255
  %shl16.i.i.peel = shl nuw i32 %conv1.i.i.peel, 16
  %and14.i.i.peel = or i32 %shl16.i.i.peel, %or.i50.i.i.peel
  %or17.i.i.peel = or i32 %and14.i.i.peel, 3840
  store i32 %or17.i.i.peel, ptr %add.ptr.i.i.i.peel, align 4
  %add.ptr27.i.i.peel = getelementptr i8, ptr %last_ste, i32 88
  %32 = ptrtoint ptr %add.ptr27.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr27.i.i.peel, align 4
  %and28.i.i.peel = and i32 %33, 65535
  %or31.i.i.peel = or i32 %and28.i.i.peel, %shl16.i.i.peel
  store i32 %or31.i.i.peel, ptr %add.ptr27.i.i.peel, align 4
  br label %if.end15.peel

if.end15.peel:                                    ; preds = %if.then14.peel, %lor.lhs.false.peel.if.end15.peel_crit_edge
  %last_ste.addr.1.peel = phi ptr [ %last_ste, %lor.lhs.false.peel.if.end15.peel_crit_edge ], [ %add.ptr.i69.peel, %if.then14.peel ]
  %arrayidx17.peel = getelementptr %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11, i32 1, i32 0
  %34 = ptrtoint ptr %arrayidx17.peel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17.peel, align 4
  %add.ptr.i70.peel = getelementptr i32, ptr %last_ste.addr.1.peel, i32 3
  %36 = ptrtoint ptr %add.ptr.i70.peel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i70.peel, align 4
  %and.i71.peel = and i32 %37, -58720257
  %or.i72.peel = or i32 %and.i71.peel, 8388608
  store i32 %or.i72.peel, ptr %add.ptr.i70.peel, align 4
  %add.ptr11.i73.peel = getelementptr i32, ptr %last_ste.addr.1.peel, i32 4
  %38 = ptrtoint ptr %add.ptr11.i73.peel to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %add.ptr11.i73.peel, align 4
  br i1 %4, label %if.then.i.peel, label %if.end15.peel.dr_ste_v0_set_tx_push_vlan.exit.peel_crit_edge

if.end15.peel.dr_ste_v0_set_tx_push_vlan.exit.peel_crit_edge: ; preds = %if.end15.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_tx_push_vlan.exit.peel

if.then.i.peel:                                   ; preds = %if.end15.peel
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i74.peel = getelementptr i32, ptr %last_ste.addr.1.peel, i32 7
  %39 = ptrtoint ptr %add.ptr.i.i74.peel to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i74.peel, align 4
  %or.i.i75.peel = or i32 %40, 16
  store i32 %or.i.i75.peel, ptr %add.ptr.i.i74.peel, align 4
  br label %dr_ste_v0_set_tx_push_vlan.exit.peel

dr_ste_v0_set_tx_push_vlan.exit.peel:             ; preds = %if.then.i.peel, %if.end15.peel.dr_ste_v0_set_tx_push_vlan.exit.peel_crit_edge
  %41 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vlans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.peel = icmp sgt i32 %42, 1
  br i1 %cmp.peel, label %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end15_crit_edge, label %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end19_crit_edge

dr_ste_v0_set_tx_push_vlan.exit.peel.if.end19_crit_edge: ; preds = %dr_ste_v0_set_tx_push_vlan.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

dr_ste_v0_set_tx_push_vlan.exit.peel.if.end15_crit_edge: ; preds = %dr_ste_v0_set_tx_push_vlan.exit.peel
  br label %if.end15

if.end15:                                         ; preds = %dr_ste_v0_set_tx_push_vlan.exit.if.end15_crit_edge, %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end15_crit_edge
  %i.0123 = phi i32 [ %inc, %dr_ste_v0_set_tx_push_vlan.exit.if.end15_crit_edge ], [ 1, %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end15_crit_edge ]
  %last_ste.addr.0122 = phi ptr [ %add.ptr.i69, %dr_ste_v0_set_tx_push_vlan.exit.if.end15_crit_edge ], [ %last_ste.addr.1.peel, %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end15_crit_edge ]
  %43 = ptrtoint ptr %gvmi to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %gvmi, align 8
  %45 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %added_stes, align 4
  %inc.i = add i32 %46, 1
  store i32 %inc.i, ptr %added_stes, align 4
  %add.ptr.i69 = getelementptr i8, ptr %last_ste.addr.0122, i32 64
  %47 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i69, align 4
  %and.i.i.i = and i32 %48, 251723775
  %or.i48.i.i = or i32 %and.i.i.i, 269418496
  store i32 %or.i48.i.i, ptr %add.ptr.i69, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %last_ste.addr.0122, i32 68
  %49 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i.i, align 4
  %conv1.i.i = zext i16 %44 to i32
  %add.ptr.i.i = getelementptr i8, ptr %last_ste.addr.0122, i32 76
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %52, -65536
  %or.i.i = or i32 %and.i.i, %conv1.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %or.i50.i.i = and i32 %50, 255
  %shl16.i.i = shl nuw i32 %conv1.i.i, 16
  %and14.i.i = or i32 %shl16.i.i, %or.i50.i.i
  %or17.i.i = or i32 %and14.i.i, 3840
  store i32 %or17.i.i, ptr %add.ptr.i.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %last_ste.addr.0122, i32 88
  %53 = ptrtoint ptr %add.ptr27.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr27.i.i, align 4
  %and28.i.i = and i32 %54, 65535
  %or31.i.i = or i32 %and28.i.i, %shl16.i.i
  store i32 %or31.i.i, ptr %add.ptr27.i.i, align 4
  %arrayidx17 = getelementptr %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11, i32 1, i32 %i.0123
  %55 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx17, align 4
  %add.ptr.i70 = getelementptr i8, ptr %last_ste.addr.0122, i32 76
  %57 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i70, align 4
  %and.i71 = and i32 %58, -58720257
  %or.i72 = or i32 %and.i71, 8388608
  store i32 %or.i72, ptr %add.ptr.i70, align 4
  %add.ptr11.i73 = getelementptr i8, ptr %last_ste.addr.0122, i32 80
  %59 = ptrtoint ptr %add.ptr11.i73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %add.ptr11.i73, align 4
  br i1 %4, label %if.then.i, label %if.end15.dr_ste_v0_set_tx_push_vlan.exit_crit_edge

if.end15.dr_ste_v0_set_tx_push_vlan.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_tx_push_vlan.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i74 = getelementptr i8, ptr %last_ste.addr.0122, i32 92
  %60 = ptrtoint ptr %add.ptr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i74, align 4
  %or.i.i75 = or i32 %61, 16
  store i32 %or.i.i75, ptr %add.ptr.i.i74, align 4
  br label %dr_ste_v0_set_tx_push_vlan.exit

dr_ste_v0_set_tx_push_vlan.exit:                  ; preds = %if.then.i, %if.end15.dr_ste_v0_set_tx_push_vlan.exit_crit_edge
  %inc = add nuw nsw i32 %i.0123, 1
  %62 = ptrtoint ptr %vlans to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vlans, align 8
  %cmp = icmp slt i32 %inc, %63
  br i1 %cmp, label %dr_ste_v0_set_tx_push_vlan.exit.if.end15_crit_edge, label %dr_ste_v0_set_tx_push_vlan.exit.if.end19_crit_edge, !llvm.loop !24

dr_ste_v0_set_tx_push_vlan.exit.if.end19_crit_edge: ; preds = %dr_ste_v0_set_tx_push_vlan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

dr_ste_v0_set_tx_push_vlan.exit.if.end15_crit_edge: ; preds = %dr_ste_v0_set_tx_push_vlan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end19:                                         ; preds = %dr_ste_v0_set_tx_push_vlan.exit.if.end19_crit_edge, %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %last_ste.addr.2 = phi ptr [ %last_ste, %if.end.if.end19_crit_edge ], [ %last_ste, %for.cond.preheader.if.end19_crit_edge ], [ %last_ste.addr.1.peel, %dr_ste_v0_set_tx_push_vlan.exit.peel.if.end19_crit_edge ], [ %add.ptr.i69, %dr_ste_v0_set_tx_push_vlan.exit.if.end19_crit_edge ]
  br i1 %4, label %if.then21, label %if.end19.if.end39_crit_edge

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then21:                                        ; preds = %if.end19
  %64 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool24.not = icmp eq i8 %65, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.then21.if.then29_crit_edge

if.then21.if.then29_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false25:                                  ; preds = %if.then21
  %66 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool28.not = icmp eq i8 %67, 0
  br i1 %tobool28.not, label %lor.lhs.false25.if.end31_crit_edge, label %lor.lhs.false25.if.then29_crit_edge

lor.lhs.false25.if.then29_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false25.if.end31_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %lor.lhs.false25.if.then29_crit_edge, %if.then21.if.then29_crit_edge
  %gvmi30 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %68 = ptrtoint ptr %gvmi30 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %gvmi30, align 8
  %70 = ptrtoint ptr %added_stes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %added_stes, align 4
  %inc.i76 = add i32 %71, 1
  store i32 %inc.i76, ptr %added_stes, align 4
  %add.ptr.i77 = getelementptr i8, ptr %last_ste.addr.2, i32 64
  %72 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i77, align 4
  %and.i.i.i78 = and i32 %73, 251723775
  %or.i48.i.i80 = or i32 %and.i.i.i78, 269418496
  store i32 %or.i48.i.i80, ptr %add.ptr.i77, align 4
  %add.ptr.i.i.i81 = getelementptr i8, ptr %last_ste.addr.2, i32 68
  %74 = ptrtoint ptr %add.ptr.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i.i81, align 4
  %conv1.i.i82 = zext i16 %69 to i32
  %add.ptr.i.i83 = getelementptr i8, ptr %last_ste.addr.2, i32 76
  %76 = ptrtoint ptr %add.ptr.i.i83 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i83, align 4
  %and.i.i84 = and i32 %77, -65536
  %or.i.i85 = or i32 %and.i.i84, %conv1.i.i82
  store i32 %or.i.i85, ptr %add.ptr.i.i83, align 4
  %or.i50.i.i86 = and i32 %75, 255
  %shl16.i.i87 = shl nuw i32 %conv1.i.i82, 16
  %and14.i.i88 = or i32 %shl16.i.i87, %or.i50.i.i86
  %or17.i.i89 = or i32 %and14.i.i88, 3840
  store i32 %or17.i.i89, ptr %add.ptr.i.i.i81, align 4
  %add.ptr27.i.i90 = getelementptr i8, ptr %last_ste.addr.2, i32 88
  %78 = ptrtoint ptr %add.ptr27.i.i90 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr27.i.i90, align 4
  %and28.i.i91 = and i32 %79, 65535
  %or31.i.i92 = or i32 %and28.i.i91, %shl16.i.i87
  store i32 %or31.i.i92, ptr %add.ptr27.i.i90, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %lor.lhs.false25.if.end31_crit_edge
  %last_ste.addr.3 = phi ptr [ %last_ste.addr.2, %lor.lhs.false25.if.end31_crit_edge ], [ %add.ptr.i77, %if.then29 ]
  %reformat = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %80 = ptrtoint ptr %reformat to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reformat, align 4
  %size = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size, align 4
  %arrayidx33 = getelementptr i8, ptr %action_type_set, i32 3
  %84 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool34.not = icmp eq i8 %85, 0
  %cond.i = select i1 %tobool34.not, i32 33554432, i32 25165824
  %add.ptr.i93 = getelementptr i32, ptr %last_ste.addr.3, i32 3
  %86 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr.i93, align 4
  %and.i94 = and i32 %87, -62849025
  %div.i = sdiv i32 %83, 2
  %and13.i = shl i32 %div.i, 16
  %shl14.i = and i32 %and13.i, 4128768
  %or.i95 = or i32 %shl14.i, %cond.i
  %or15.i = or i32 %or.i95, %and.i94
  store i32 %or15.i, ptr %add.ptr.i93, align 4
  %add.ptr24.i = getelementptr i32, ptr %last_ste.addr.3, i32 4
  %88 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %81, ptr %add.ptr24.i, align 4
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %89 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mdev, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %90, i32 0, i32 8
  %91 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %92, i32 4
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr, align 4
  %95 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool36.not = icmp eq i32 %95, 0
  br i1 %tobool36.not, label %if.end31.if.end39_crit_edge, label %if.then37

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i96 = getelementptr i32, ptr %last_ste.addr.3, i32 7
  %96 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i96, align 4
  %or.i97 = or i32 %97, 16
  store i32 %or.i97, ptr %add.ptr.i96, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end31.if.end39_crit_edge, %if.end19.if.end39_crit_edge
  %last_ste.addr.4 = phi ptr [ %last_ste.addr.3, %if.end31.if.end39_crit_edge ], [ %last_ste.addr.3, %if.then37 ], [ %last_ste.addr.2, %if.end19.if.end39_crit_edge ]
  %arrayidx40 = getelementptr i8, ptr %action_type_set, i32 7
  %98 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool41.not = icmp eq i8 %99, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %ctr_id = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 7
  %100 = ptrtoint ptr %ctr_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ctr_id, align 4
  %add.ptr.i98 = getelementptr i32, ptr %last_ste.addr.4, i32 5
  %102 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i98, align 4
  %and.i99 = and i32 %103, -65536
  %and2.i = and i32 %101, 65535
  %or.i100 = or i32 %and.i99, %and2.i
  store i32 %or.i100, ptr %add.ptr.i98, align 4
  %add.ptr11.i101 = getelementptr i32, ptr %last_ste.addr.4, i32 6
  %104 = ptrtoint ptr %add.ptr11.i101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr11.i101, align 4
  %and12.i = and i32 %105, -65281
  %106 = lshr i32 %101, 8
  %shl14.i102 = and i32 %106, 65280
  %or15.i103 = or i32 %and12.i, %shl14.i102
  store i32 %or15.i103, ptr %add.ptr11.i101, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %hit_gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 9
  %107 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hit_gvmi, align 2
  %conv.i104 = zext i16 %108 to i32
  %add.ptr.i105 = getelementptr i32, ptr %last_ste.addr.4, i32 1
  %109 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr.i105, align 4
  %and.i106 = and i32 %110, 65535
  %shl.i107 = shl nuw i32 %conv.i104, 16
  %or.i108 = or i32 %and.i106, %shl.i107
  store i32 %or.i108, ptr %add.ptr.i105, align 4
  %final_icm_addr = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 5
  %111 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %final_icm_addr, align 8
  %shr1.i = lshr i64 %112, 32
  %conv2.i = trunc i64 %shr1.i to i32
  %and.i111 = and i32 %or.i108, -256
  %and4.i = and i32 %conv2.i, 255
  %or5.i = or i32 %and4.i, %and.i111
  store i32 %or5.i, ptr %add.ptr.i105, align 4
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, -64
  %add.ptr15.i = getelementptr i32, ptr %last_ste.addr.4, i32 2
  %115 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %116, 31
  %conv11.i = or i32 %114, %and16.i
  %or19.i = or i32 %conv11.i, 32
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_action_set(ptr nocapture noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %length, 31
  %cond = zext i8 %0 to i32
  %1 = ptrtoint ptr %hw_action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_action, align 4
  %and = and i32 %2, 49376
  %conv11 = zext i8 %hw_field to i32
  %shl18 = shl nuw nsw i32 %conv11, 16
  %or = or i32 %and, %shl18
  %3 = and i8 %shifter, 63
  %and31 = zext i8 %3 to i32
  %shl32 = shl nuw nsw i32 %and31, 8
  %or19 = or i32 %or, %shl32
  %or33 = or i32 %or19, %cond
  %or47 = or i32 %or33, 33554432
  store i32 %or47, ptr %hw_action, align 4
  %add.ptr56 = getelementptr i32, ptr %hw_action, i32 1
  %4 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %add.ptr56, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_action_add(ptr nocapture noundef %hw_action, i8 noundef zeroext %hw_field, i8 noundef zeroext %shifter, i8 noundef zeroext %length, i32 noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %length, 31
  %cond = zext i8 %0 to i32
  %1 = ptrtoint ptr %hw_action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_action, align 4
  %and = and i32 %2, 49376
  %conv11 = zext i8 %hw_field to i32
  %shl18 = shl nuw nsw i32 %conv11, 16
  %or = or i32 %and, %shl18
  %3 = and i8 %shifter, 63
  %and31 = zext i8 %3 to i32
  %shl32 = shl nuw nsw i32 %and31, 8
  %or19 = or i32 %or, %shl32
  %or33 = or i32 %or19, %cond
  %or47 = or i32 %or33, 50331648
  store i32 %or47, ptr %hw_action, align 4
  %add.ptr56 = getelementptr i32, ptr %hw_action, i32 1
  %4 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data, ptr %add.ptr56, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dr_ste_v0_set_action_copy(ptr nocapture noundef %hw_action, i8 noundef zeroext %dst_hw_field, i8 noundef zeroext %dst_shifter, i8 noundef zeroext %dst_len, i8 noundef zeroext %src_hw_field, i8 noundef zeroext %src_shifter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_action, align 4
  %and = and i32 %1, 49344
  %conv = zext i8 %dst_hw_field to i32
  %shl14 = shl nuw nsw i32 %conv, 16
  %or = or i32 %and, %shl14
  %2 = and i8 %dst_shifter, 63
  %and27 = zext i8 %2 to i32
  %shl28 = shl nuw nsw i32 %and27, 8
  %or15 = or i32 %or, %shl28
  %3 = and i8 %dst_len, 63
  %and41 = zext i8 %3 to i32
  %or29 = or i32 %or15, %and41
  %or43 = or i32 %or29, 16777216
  store i32 %or43, ptr %hw_action, align 4
  %conv49 = zext i8 %src_hw_field to i32
  %add.ptr53 = getelementptr i32, ptr %hw_action, i32 1
  %4 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr53, align 4
  %and54 = and i32 %5, -16727809
  %shl56 = shl nuw nsw i32 %conv49, 16
  %or57 = or i32 %and54, %shl56
  %6 = and i8 %src_shifter, 63
  %and69 = zext i8 %6 to i32
  %shl70 = shl nuw nsw i32 %and69, 8
  %or71 = or i32 %or57, %shl70
  store i32 %or71, ptr %add.ptr53, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_set_action_decap_l3_list(ptr nocapture noundef readonly %data, i32 noundef %data_sz, ptr nocapture noundef %hw_action, i32 noundef %hw_action_sz, ptr nocapture noundef writeonly %used_hw_action_num) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %data_sz)
  %cmp.not = icmp eq i32 %data_sz, 14
  %div561 = lshr i32 %hw_action_sz, 3
  %add = select i1 %cmp.not, i32 5, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div561, i32 %add)
  %cmp2 = icmp ult i32 %div561, %add
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %hw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_action, align 4
  %and = and i32 %1, 49376
  %or43 = or i32 %and, 33558528
  store i32 %or43, ptr %hw_action, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %add.ptr54 = getelementptr i32, ptr %hw_action, i32 1
  %4 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %add.ptr54, align 4
  %add.ptr62 = getelementptr i8, ptr %hw_action, i32 8
  %5 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr62, align 4
  %and69 = and i32 %6, 49376
  %or111 = or i32 %and69, 33624064
  store i32 %or111, ptr %add.ptr62, align 4
  %add.ptr115 = getelementptr i32, ptr %data, i32 2
  %7 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr115, align 4
  %add.ptr119 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr119, align 4
  %or123 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %8, i32 16)
  %add.ptr129 = getelementptr i8, ptr %hw_action, i32 12
  %11 = ptrtoint ptr %add.ptr129 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or123, ptr %add.ptr129, align 4
  %add.ptr137 = getelementptr i8, ptr %hw_action, i32 16
  %12 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr137, align 4
  %and144 = and i32 %13, 49376
  %or160 = or i32 %and144, 33554448
  store i32 %or160, ptr %add.ptr137, align 4
  %14 = ptrtoint ptr %add.ptr119 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr119, align 4
  %shr191 = lshr i32 %15, 16
  %add.ptr199 = getelementptr i8, ptr %hw_action, i32 20
  %16 = ptrtoint ptr %add.ptr199 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr191, ptr %add.ptr199, align 4
  %add.ptr207 = getelementptr i8, ptr %hw_action, i32 24
  %17 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr207, align 4
  %and214 = and i32 %18, 49407
  %or243 = or i32 %and214, 33693696
  store i32 %or243, ptr %add.ptr207, align 4
  %add.ptr249 = getelementptr i32, ptr %data, i32 3
  %19 = ptrtoint ptr %add.ptr249 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr249, align 4
  br i1 %cmp.not, label %if.then248, label %if.else

if.then248:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %shr250 = lshr i32 %20, 16
  %add.ptr259 = getelementptr i8, ptr %hw_action, i32 28
  %21 = ptrtoint ptr %add.ptr259 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr250, ptr %add.ptr259, align 4
  %and273 = and i32 %or243, 33743072
  %or276 = or i32 %and273, 16
  %22 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or276, ptr %add.ptr207, align 4
  %add.ptr323.c562 = getelementptr i8, ptr %hw_action, i32 32
  %23 = ptrtoint ptr %add.ptr323.c562 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr323.c562, align 4
  %and330.c563 = and i32 %24, 49376
  %or359.c564 = or i32 %and330.c563, 33619984
  store i32 %or359.c564, ptr %add.ptr323.c562, align 4
  %25 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr115, align 4
  %conv382.c565 = and i32 %26, 65535
  %add.ptr386.c566 = getelementptr i8, ptr %hw_action, i32 36
  %27 = ptrtoint ptr %add.ptr386.c566 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv382.c565, ptr %add.ptr386.c566, align 4
  br label %if.end467

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %shr281.mask = and i32 %20, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2002255872, i32 %shr281.mask)
  %cmp285 = icmp eq i32 %shr281.mask, -2002255872
  %add.ptr288 = getelementptr i32, ptr %data, i32 4
  %28 = ptrtoint ptr %add.ptr288 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr288, align 4
  %shr289 = lshr i32 %29, 16
  %conv292 = select i1 %cmp285, i32 65536, i32 131072
  %or295 = or i32 %conv292, %shr289
  %add.ptr301 = getelementptr i8, ptr %hw_action, i32 28
  %30 = ptrtoint ptr %add.ptr301 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or295, ptr %add.ptr301, align 4
  %and315 = and i32 %or243, 33743072
  %or318 = or i32 %and315, 18
  %31 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or318, ptr %add.ptr207, align 4
  %add.ptr323.c = getelementptr i8, ptr %hw_action, i32 32
  %32 = ptrtoint ptr %add.ptr323.c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr323.c, align 4
  %and330.c = and i32 %33, 49376
  %or359.c = or i32 %and330.c, 33619984
  store i32 %or359.c, ptr %add.ptr323.c, align 4
  %34 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr115, align 4
  %conv382.c = and i32 %35, 65535
  %add.ptr386.c = getelementptr i8, ptr %hw_action, i32 36
  %36 = ptrtoint ptr %add.ptr386.c to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv382.c, ptr %add.ptr386.c, align 4
  %add.ptr394 = getelementptr i8, ptr %hw_action, i32 40
  %37 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr394, align 4
  %and403 = and i32 %38, 16777215
  %or406 = or i32 %and403, 33554432
  store i32 %or406, ptr %add.ptr394, align 4
  %39 = ptrtoint ptr %add.ptr249 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr249, align 4
  %conv416 = and i32 %40, 65535
  %add.ptr420 = getelementptr i8, ptr %hw_action, i32 44
  %41 = ptrtoint ptr %add.ptr420 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv416, ptr %add.ptr420, align 4
  %and434 = and i32 %or406, 33603808
  %or450 = or i32 %and434, 131088
  store i32 %or450, ptr %add.ptr394, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.else, %if.then248
  %conv468 = trunc i32 %add to i16
  %42 = ptrtoint ptr %used_hw_action_num to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv468, ptr %used_hw_action_num, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end467, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end467 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx5dr_ste_conv_bit_to_byte_mask(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l2_src_dst_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not342 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not342, ptr %inner, ptr %value
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load13 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr14 = lshr i160 %bf.load13, 144
  %bf.cast = trunc i160 %bf.lshr14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool15.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool15.not, label %do.body12.do.end38_crit_edge, label %do.body17

do.body12.do.end38_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr26 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %7, 65535
  %shl29 = shl nuw i32 %bf.cast, 16
  %or30 = or i32 %and27, %shl29
  store i32 %or30, ptr %add.ptr26, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load35, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.end38

do.end38:                                         ; preds = %do.body17, %do.body12.do.end38_crit_edge
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool39.not = icmp eq i32 %10, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %do.end38.do.body44_crit_edge

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false:                                    ; preds = %do.end38
  %smac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %11 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load40 = load i32, ptr %smac_15_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load40)
  %tobool42.not = icmp ult i32 %bf.load40, 65536
  br i1 %tobool42.not, label %lor.lhs.false.if.end82_crit_edge, label %lor.lhs.false.do.body44_crit_edge

lor.lhs.false.do.body44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

lor.lhs.false.if.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

do.body44:                                        ; preds = %lor.lhs.false.do.body44_crit_edge, %do.end38.do.body44_crit_edge
  %shr = lshr i32 %10, 16
  %add.ptr50 = getelementptr i32, ptr %tag, i32 1
  %12 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr50, align 4
  %and51 = and i32 %13, -65536
  %or54 = or i32 %and51, %shr
  store i32 %or54, ptr %add.ptr50, align 4
  %14 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cond, align 4
  %smac_15_062 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %16 = ptrtoint ptr %smac_15_062 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load63 = load i32, ptr %smac_15_062, align 4
  %or65 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %bf.load63, i32 16)
  %add.ptr69 = getelementptr i32, ptr %tag, i32 2
  %17 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or65, ptr %add.ptr69, align 4
  %18 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cond, align 4
  %19 = ptrtoint ptr %smac_15_062 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load79 = load i32, ptr %smac_15_062, align 4
  %bf.clear80 = and i32 %bf.load79, 65535
  store i32 %bf.clear80, ptr %smac_15_062, align 4
  br label %if.end82

if.end82:                                         ; preds = %do.body44, %lor.lhs.false.if.end82_crit_edge
  %20 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 20)
  %bf.load83 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr84 = lshr i160 %bf.load83, 105
  %21 = trunc i160 %bf.lshr84 to i32
  %bf.cast86 = and i32 %21, 15
  %22 = zext i32 %bf.cast86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.cast86, label %if.end82.cleanup_crit_edge [
    i32 0, label %if.end82.do.body142_crit_edge
    i32 4, label %if.end82.do.body142.sink.split_crit_edge
    i32 6, label %do.body121
  ]

if.end82.do.body142.sink.split_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body142.sink.split

if.end82.do.body142_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body142

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body121:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body142.sink.split

do.body142.sink.split:                            ; preds = %do.body121, %if.end82.do.body142.sink.split_crit_edge
  %.sink = phi i32 [ 134217728, %do.body121 ], [ 67108864, %if.end82.do.body142.sink.split_crit_edge ]
  %add.ptr101 = getelementptr i32, ptr %tag, i32 3
  %23 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr101, align 4
  %and127 = and i32 %24, -201326593
  %or130 = or i32 %and127, %.sink
  store i32 %or130, ptr %add.ptr101, align 4
  %25 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 20)
  %bf.load135 = load i160, ptr %dmac_15_0, align 4
  %bf.clear136 = and i160 %bf.load135, -608472288109550112718417538580481
  store i160 %bf.clear136, ptr %dmac_15_0, align 4
  br label %do.body142

do.body142:                                       ; preds = %do.body142.sink.split, %if.end82.do.body142_crit_edge
  %26 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 20)
  %bf.load143 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr144 = lshr i160 %bf.load143, 128
  %27 = trunc i160 %bf.lshr144 to i32
  %bf.cast146 = and i32 %27, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast146)
  %tobool147.not = icmp eq i32 %bf.cast146, 0
  br i1 %tobool147.not, label %do.body142.do.body174_crit_edge, label %do.body149

do.body142.do.body174_crit_edge:                  ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body174

do.body149:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr159 = getelementptr i32, ptr %tag, i32 3
  %28 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr159, align 4
  %and160 = and i32 %29, -4096
  %or163 = or i32 %and160, %bf.cast146
  store i32 %or163, ptr %add.ptr159, align 4
  %30 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load168 = load i160, ptr %dmac_15_0, align 4
  %bf.clear169 = and i160 %bf.load168, -1393456292541243007882519017433090825912321
  store i160 %bf.clear169, ptr %dmac_15_0, align 4
  br label %do.body174

do.body174:                                       ; preds = %do.body149, %do.body142.do.body174_crit_edge
  %31 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 20)
  %bf.load175 = load i160, ptr %dmac_15_0, align 4
  %32 = and i160 %bf.load175, 1393796574908163946345982392040522594123776
  %tobool179.not = icmp eq i160 %32, 0
  br i1 %tobool179.not, label %do.body174.do.body206_crit_edge, label %do.body181

do.body174.do.body206_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

do.body181:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr191 = getelementptr i32, ptr %tag, i32 3
  %33 = ptrtoint ptr %add.ptr191 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr191, align 4
  %or195 = or i32 %34, 65536
  store i32 %or195, ptr %add.ptr191, align 4
  %35 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load200 = load i160, ptr %dmac_15_0, align 4
  %bf.clear201 = and i160 %bf.load200, -1393796574908163946345982392040522594123777
  store i160 %bf.clear201, ptr %dmac_15_0, align 4
  br label %do.body206

do.body206:                                       ; preds = %do.body181, %do.body174.do.body206_crit_edge
  %36 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 20)
  %bf.load207 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr208 = lshr i160 %bf.load207, 141
  %37 = trunc i160 %bf.lshr208 to i32
  %bf.cast210 = and i32 %37, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast210)
  %tobool211.not = icmp eq i32 %bf.cast210, 0
  br i1 %tobool211.not, label %do.body206.do.end237_crit_edge, label %do.body213

do.body206.do.end237_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end237

do.body213:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr223 = getelementptr i32, ptr %tag, i32 3
  %38 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr223, align 4
  %and224 = and i32 %39, -917505
  %shl226 = shl nuw nsw i32 %bf.cast210, 17
  %or227 = or i32 %and224, %shl226
  store i32 %or227, ptr %add.ptr223, align 4
  %40 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 20)
  %bf.load232 = load i160, ptr %dmac_15_0, align 4
  %bf.clear233 = and i160 %bf.load232, -19513152048714295248843753488567316317732865
  store i160 %bf.clear233, ptr %dmac_15_0, align 4
  br label %do.end237

do.end237:                                        ; preds = %do.body213, %do.body206.do.end237_crit_edge
  %41 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 20)
  %bf.load238 = load i160, ptr %dmac_15_0, align 4
  %42 = and i160 %bf.load238, 2596148429267413814265248164610048
  %tobool242.not = icmp eq i160 %42, 0
  br i1 %tobool242.not, label %if.else261, label %do.end237.cleanup.sink.split_crit_edge

do.end237.cleanup.sink.split_crit_edge:           ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else261:                                       ; preds = %do.end237
  %43 = and i160 %bf.load238, 1298074214633706907132624082305024
  %tobool266.not = icmp eq i160 %43, 0
  br i1 %tobool266.not, label %if.else261.cleanup_crit_edge, label %if.else261.cleanup.sink.split_crit_edge

if.else261.cleanup.sink.split_crit_edge:          ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else261.cleanup_crit_edge:                     ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else261.cleanup.sink.split_crit_edge, %do.end237.cleanup.sink.split_crit_edge
  %.sink346 = phi i32 [ 32768, %do.end237.cleanup.sink.split_crit_edge ], [ 16384, %if.else261.cleanup.sink.split_crit_edge ]
  %.sink345 = phi i160 [ -2596148429267413814265248164610049, %do.end237.cleanup.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else261.cleanup.sink.split_crit_edge ]
  %add.ptr273 = getelementptr i32, ptr %tag, i32 3
  %44 = ptrtoint ptr %add.ptr273 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr273, align 4
  %and250 = and i32 %45, -49153
  %or253 = or i32 %and250, %.sink346
  store i32 %or253, ptr %add.ptr273, align 4
  %46 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 20)
  %bf.load258 = load i160, ptr %dmac_15_0, align 4
  %bf.clear259 = and i160 %bf.load258, %.sink345
  store i160 %bf.clear259, ptr %dmac_15_0, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else261.cleanup_crit_edge, %if.end82.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end82.cleanup_crit_edge ], [ 0, %if.else261.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l3_ipv6_src_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not97 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not97, ptr %inner, ptr %value
  %src_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 4
  %1 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %src_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %src_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src_ip_127_96, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %src_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 5
  %5 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21, align 4
  %8 = ptrtoint ptr %src_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_95_64, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %src_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 6
  %9 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42, align 4
  %12 = ptrtoint ptr %src_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_ip_63_32, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 7
  %13 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %15 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63, align 4
  %16 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_ip_31_0, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l3_ipv6_dst_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not97 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not97, ptr %inner, ptr %value
  %dst_ip_127_96 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 8
  %1 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_127_96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dst_ip_127_96 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_127_96, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dst_ip_95_64 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 9
  %5 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_ip_95_64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21, align 4
  %8 = ptrtoint ptr %dst_ip_95_64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dst_ip_95_64, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %dst_ip_63_32 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 10
  %9 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_ip_63_32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr42, align 4
  %12 = ptrtoint ptr %dst_ip_63_32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dst_ip_63_32, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 11
  %13 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %15 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr63, align 4
  %16 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_ip_31_0, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l3_ipv4_5_tuple_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not613 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not613, ptr %inner, ptr %value
  %dst_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 11
  %1 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dst_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst_ip_31_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %src_ip_31_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 7
  %5 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src_ip_31_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr21, align 4
  %8 = ptrtoint ptr %src_ip_31_0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src_ip_31_0, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %tcp_dport = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %9 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load34 = load i160, ptr %tcp_dport, align 4
  %bf.lshr35 = lshr i160 %bf.load34, 64
  %10 = trunc i160 %bf.lshr35 to i32
  %bf.cast = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool36.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool36.not, label %do.body33.do.body62_crit_edge, label %do.body38

do.body33.do.body62_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

do.body38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr48 = getelementptr i32, ptr %tag, i32 2
  %11 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr48, align 4
  %and49 = and i32 %12, -65536
  %or52 = or i32 %and49, %bf.cast
  store i32 %or52, ptr %add.ptr48, align 4
  %13 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load57 = load i160, ptr %tcp_dport, align 4
  %bf.clear58 = and i160 %bf.load57, -1208907372870555465154561
  store i160 %bf.clear58, ptr %tcp_dport, align 4
  br label %do.body62

do.body62:                                        ; preds = %do.body38, %do.body33.do.body62_crit_edge
  %14 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load63 = load i160, ptr %tcp_dport, align 4
  %15 = trunc i160 %bf.load63 to i32
  %bf.cast65 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast65)
  %tobool66.not = icmp eq i32 %bf.cast65, 0
  br i1 %tobool66.not, label %do.body62.do.body92_crit_edge, label %do.body68

do.body62.do.body92_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body92

do.body68:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr77 = getelementptr i32, ptr %tag, i32 2
  %16 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr77, align 4
  %and78 = and i32 %17, -65536
  %or81 = or i32 %and78, %bf.cast65
  store i32 %or81, ptr %add.ptr77, align 4
  %18 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load86 = load i160, ptr %tcp_dport, align 4
  %bf.clear87 = and i160 %bf.load86, -65536
  store i160 %bf.clear87, ptr %tcp_dport, align 4
  br label %do.body92

do.body92:                                        ; preds = %do.body68, %do.body62.do.body92_crit_edge
  %19 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load93 = load i160, ptr %tcp_dport, align 4
  %bf.lshr94 = lshr i160 %bf.load93, 80
  %20 = trunc i160 %bf.lshr94 to i32
  %bf.cast96 = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast96)
  %tobool97.not = icmp eq i32 %bf.cast96, 0
  br i1 %tobool97.not, label %do.body92.do.body124_crit_edge, label %do.body99

do.body92.do.body124_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

do.body99:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr109 = getelementptr i32, ptr %tag, i32 2
  %21 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr109, align 4
  %and110 = and i32 %22, 65535
  %shl112 = shl i32 %20, 16
  %or113 = or i32 %and110, %shl112
  store i32 %or113, ptr %add.ptr109, align 4
  %23 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load118 = load i160, ptr %tcp_dport, align 4
  %bf.clear119 = and i160 %bf.load118, -79226953588444722964369244161
  store i160 %bf.clear119, ptr %tcp_dport, align 4
  br label %do.body124

do.body124:                                       ; preds = %do.body99, %do.body92.do.body124_crit_edge
  %24 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load125 = load i160, ptr %tcp_dport, align 4
  %25 = trunc i160 %bf.load125 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %tobool129.not = icmp ult i32 %25, 65536
  br i1 %tobool129.not, label %do.body124.do.body156_crit_edge, label %do.body131

do.body124.do.body156_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body156

do.body131:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #14
  %26 = and i32 %25, -65536
  %add.ptr141 = getelementptr i32, ptr %tag, i32 2
  %27 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr141, align 4
  %and142 = and i32 %28, 65535
  %or145 = or i32 %and142, %26
  store i32 %or145, ptr %add.ptr141, align 4
  %29 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load150 = load i160, ptr %tcp_dport, align 4
  %bf.clear151 = and i160 %bf.load150, -4294901761
  store i160 %bf.clear151, ptr %tcp_dport, align 4
  br label %do.body156

do.body156:                                       ; preds = %do.body131, %do.body124.do.body156_crit_edge
  %30 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load157 = load i160, ptr %tcp_dport, align 4
  %bf.lshr158 = lshr i160 %bf.load157, 120
  %31 = trunc i160 %bf.lshr158 to i32
  %bf.cast160 = and i32 %31, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast160)
  %tobool161.not = icmp eq i32 %bf.cast160, 0
  br i1 %tobool161.not, label %do.body156.do.body188_crit_edge, label %do.body163

do.body156.do.body188_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188

do.body163:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr173 = getelementptr i32, ptr %tag, i32 3
  %32 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr173, align 4
  %and174 = and i32 %33, -256
  %or177 = or i32 %and174, %bf.cast160
  store i32 %or177, ptr %add.ptr173, align 4
  %34 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %34, i32 20)
  %bf.load182 = load i160, ptr %tcp_dport, align 4
  %bf.clear183 = and i160 %bf.load182, -338953138925153547590470800371487866881
  store i160 %bf.clear183, ptr %tcp_dport, align 4
  br label %do.body188

do.body188:                                       ; preds = %do.body163, %do.body156.do.body188_crit_edge
  %35 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load189 = load i160, ptr %tcp_dport, align 4
  %36 = and i160 %bf.load189, 649037107316853453566312041152512
  %tobool193.not = icmp eq i160 %36, 0
  br i1 %tobool193.not, label %do.body188.do.body220_crit_edge, label %do.body195

do.body188.do.body220_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body220

do.body195:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr205 = getelementptr i32, ptr %tag, i32 3
  %37 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr205, align 4
  %or209 = or i32 %38, -2147483648
  store i32 %or209, ptr %add.ptr205, align 4
  %39 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %39, i32 20)
  %bf.load214 = load i160, ptr %tcp_dport, align 4
  %bf.clear215 = and i160 %bf.load214, -649037107316853453566312041152513
  store i160 %bf.clear215, ptr %tcp_dport, align 4
  br label %do.body220

do.body220:                                       ; preds = %do.body195, %do.body188.do.body220_crit_edge
  %40 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %40, i32 20)
  %bf.load221 = load i160, ptr %tcp_dport, align 4
  %bf.lshr222 = lshr i160 %bf.load221, 114
  %41 = trunc i160 %bf.lshr222 to i32
  %bf.cast224 = and i32 %41, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast224)
  %tobool225.not = icmp eq i32 %bf.cast224, 0
  br i1 %tobool225.not, label %do.body220.do.body252_crit_edge, label %do.body227

do.body220.do.body252_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body252

do.body227:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr237 = getelementptr i32, ptr %tag, i32 3
  %42 = ptrtoint ptr %add.ptr237 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr237, align 4
  %and238 = and i32 %43, -64513
  %shl240 = shl nuw nsw i32 %bf.cast224, 10
  %or241 = or i32 %and238, %shl240
  store i32 %or241, ptr %add.ptr237, align 4
  %44 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %44, i32 20)
  %bf.load246 = load i160, ptr %tcp_dport, align 4
  %bf.clear247 = and i160 %bf.load246, -1308458808350776562389685074963464193
  store i160 %bf.clear247, ptr %tcp_dport, align 4
  br label %do.body252

do.body252:                                       ; preds = %do.body227, %do.body220.do.body252_crit_edge
  %45 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %45, i32 20)
  %bf.load253 = load i160, ptr %tcp_dport, align 4
  %bf.lshr254 = lshr i160 %bf.load253, 112
  %46 = trunc i160 %bf.lshr254 to i32
  %bf.cast256 = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast256)
  %tobool257.not = icmp eq i32 %bf.cast256, 0
  br i1 %tobool257.not, label %do.body252.do.end283_crit_edge, label %do.body259

do.body252.do.end283_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end283

do.body259:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr269 = getelementptr i32, ptr %tag, i32 3
  %47 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr269, align 4
  %and270 = and i32 %48, -100663297
  %shl272 = shl nuw nsw i32 %bf.cast256, 25
  %or273 = or i32 %and270, %shl272
  store i32 %or273, ptr %add.ptr269, align 4
  %49 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %49, i32 20)
  %bf.load278 = load i160, ptr %tcp_dport, align 4
  %bf.clear279 = and i160 %bf.load278, -15576890575604482885591488987660289
  store i160 %bf.clear279, ptr %tcp_dport, align 4
  br label %do.end283

do.end283:                                        ; preds = %do.body259, %do.body252.do.end283_crit_edge
  %50 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %50, i32 20)
  %bf.load284 = load i160, ptr %tcp_dport, align 4
  %bf.lshr285 = lshr i160 %bf.load284, 96
  %51 = trunc i160 %bf.lshr285 to i32
  %bf.cast287 = and i32 %51, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast287)
  %tobool288.not = icmp eq i32 %bf.cast287, 0
  br i1 %tobool288.not, label %do.end283.if.end510_crit_edge, label %do.body291

do.end283.if.end510_crit_edge:                    ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end510

do.body291:                                       ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr304 = getelementptr i32, ptr %tag, i32 3
  %52 = ptrtoint ptr %add.ptr304 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr304, align 4
  %and305 = and i32 %53, -16777217
  %54 = shl i32 %51, 16
  %shl307 = and i32 %54, 16777216
  %or308 = or i32 %and305, %shl307
  store i32 %or308, ptr %add.ptr304, align 4
  %55 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %55, i32 20)
  %bf.load315 = load i160, ptr %tcp_dport, align 4
  %and329 = and i32 %or308, -8388609
  %sh.diff = lshr i160 %bf.load315, 80
  %tr.sh.diff = trunc i160 %sh.diff to i32
  %shl331 = and i32 %tr.sh.diff, 8388608
  %or332 = or i32 %shl331, %and329
  store i32 %or332, ptr %add.ptr304, align 4
  %bf.load339 = load i160, ptr %tcp_dport, align 4
  %and353 = and i32 %or332, -4194305
  %sh.diff593 = lshr i160 %bf.load339, 80
  %tr.sh.diff594 = trunc i160 %sh.diff593 to i32
  %shl355 = and i32 %tr.sh.diff594, 4194304
  %or356 = or i32 %and353, %shl355
  store i32 %or356, ptr %add.ptr304, align 4
  %bf.load363 = load i160, ptr %tcp_dport, align 4
  %and377 = and i32 %or356, -2097153
  %sh.diff596 = lshr i160 %bf.load363, 80
  %tr.sh.diff597 = trunc i160 %sh.diff596 to i32
  %shl379 = and i32 %tr.sh.diff597, 2097152
  %or380 = or i32 %and377, %shl379
  store i32 %or380, ptr %add.ptr304, align 4
  %bf.load387 = load i160, ptr %tcp_dport, align 4
  %and401 = and i32 %or380, -1048577
  %sh.diff599 = lshr i160 %bf.load387, 80
  %tr.sh.diff600 = trunc i160 %sh.diff599 to i32
  %shl403 = and i32 %tr.sh.diff600, 1048576
  %or404 = or i32 %and401, %shl403
  store i32 %or404, ptr %add.ptr304, align 4
  %bf.load411 = load i160, ptr %tcp_dport, align 4
  %and425 = and i32 %or404, -524289
  %sh.diff602 = lshr i160 %bf.load411, 80
  %tr.sh.diff603 = trunc i160 %sh.diff602 to i32
  %shl427 = and i32 %tr.sh.diff603, 524288
  %or428 = or i32 %and425, %shl427
  store i32 %or428, ptr %add.ptr304, align 4
  %bf.load435 = load i160, ptr %tcp_dport, align 4
  %and449 = and i32 %or428, -262145
  %sh.diff605 = lshr i160 %bf.load435, 80
  %tr.sh.diff606 = trunc i160 %sh.diff605 to i32
  %shl451 = and i32 %tr.sh.diff606, 262144
  %or452 = or i32 %and449, %shl451
  store i32 %or452, ptr %add.ptr304, align 4
  %bf.load459 = load i160, ptr %tcp_dport, align 4
  %and473 = and i32 %or452, -131073
  %sh.diff608 = lshr i160 %bf.load459, 80
  %tr.sh.diff609 = trunc i160 %sh.diff608 to i32
  %shl475 = and i32 %tr.sh.diff609, 131072
  %or476 = or i32 %and473, %shl475
  store i32 %or476, ptr %add.ptr304, align 4
  %bf.load483 = load i160, ptr %tcp_dport, align 4
  %and497 = and i32 %or476, -65537
  %sh.diff611 = lshr i160 %bf.load483, 80
  %tr.sh.diff612 = trunc i160 %sh.diff611 to i32
  %shl499 = and i32 %tr.sh.diff612, 65536
  %or500 = or i32 %and497, %shl499
  store i32 %or500, ptr %add.ptr304, align 4
  %bf.load507 = load i160, ptr %tcp_dport, align 4
  %bf.clear508 = and i160 %bf.load507, -40485591044789076510300958621697
  store i160 %bf.clear508, ptr %tcp_dport, align 4
  br label %if.end510

if.end510:                                        ; preds = %do.body291, %do.end283.if.end510_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l2_src_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not53 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not53, ptr %inner, ptr %value
  %1 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cond, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %smac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %5 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %smac_15_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bf.load13)
  %tobool15.not = icmp ult i32 %bf.load13, 65536
  br i1 %tobool15.not, label %do.body12.do.end37_crit_edge, label %do.body17

do.body12.do.end37_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr14 = and i32 %bf.load13, -65536
  %add.ptr25 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %7, 65535
  %or29 = or i32 %and26, %bf.lshr14
  store i32 %or29, ptr %add.ptr25, align 4
  %8 = ptrtoint ptr %smac_15_0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load34 = load i32, ptr %smac_15_0, align 4
  %bf.clear = and i32 %bf.load34, 65535
  store i32 %bf.clear, ptr %smac_15_0, align 4
  br label %do.end37

do.end37:                                         ; preds = %do.body17, %do.body12.do.end37_crit_edge
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load38 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load38)
  %tobool40 = icmp slt i8 %bf.load38, 0
  %call = tail call fastcc i32 @dr_ste_v0_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %tobool40, ptr noundef %tag)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @dr_ste_v0_build_eth_l2_src_or_dst_bit_mask(ptr noundef %value, i1 noundef zeroext %inner, ptr nocapture noundef %bit_mask) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inner1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  %cond = select i1 %inner, ptr %inner1, ptr %value
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %first_vid = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %0 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 20)
  %bf.load = load i160, ptr %first_vid, align 4
  %bf.lshr = lshr i160 %bf.load, 128
  %1 = trunc i160 %bf.lshr to i32
  %bf.cast = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool2.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool2.not, label %entry.do.body19_crit_edge, label %do.body3

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i32, ptr %bit_mask, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -4096
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 20)
  %bf.load15 = load i160, ptr %first_vid, align 4
  %bf.clear16 = and i160 %bf.load15, -1393456292541243007882519017433090825912321
  store i160 %bf.clear16, ptr %first_vid, align 4
  br label %do.body19

do.body19:                                        ; preds = %do.body3, %entry.do.body19_crit_edge
  %5 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load20 = load i160, ptr %first_vid, align 4
  %6 = and i160 %bf.load20, 1393796574908163946345982392040522594123776
  %tobool24.not = icmp eq i160 %6, 0
  br i1 %tobool24.not, label %do.body19.do.body51_crit_edge, label %do.body26

do.body19.do.body51_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

do.body26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36 = getelementptr i32, ptr %bit_mask, i32 2
  %7 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr36, align 4
  %or40 = or i32 %8, 65536
  store i32 %or40, ptr %add.ptr36, align 4
  %9 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load45 = load i160, ptr %first_vid, align 4
  %bf.clear46 = and i160 %bf.load45, -1393796574908163946345982392040522594123777
  store i160 %bf.clear46, ptr %first_vid, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body26, %do.body19.do.body51_crit_edge
  %10 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load52 = load i160, ptr %first_vid, align 4
  %bf.lshr53 = lshr i160 %bf.load52, 141
  %11 = trunc i160 %bf.lshr53 to i32
  %bf.cast55 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body83_crit_edge, label %do.body58

do.body51.do.body83_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr68 = getelementptr i32, ptr %bit_mask, i32 2
  %12 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr68, align 4
  %and69 = and i32 %13, -917505
  %shl71 = shl nuw nsw i32 %bf.cast55, 17
  %or72 = or i32 %and69, %shl71
  store i32 %or72, ptr %add.ptr68, align 4
  %14 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load77 = load i160, ptr %first_vid, align 4
  %bf.clear78 = and i160 %bf.load77, -19513152048714295248843753488567316317732865
  store i160 %bf.clear78, ptr %first_vid, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body58, %do.body51.do.body83_crit_edge
  %15 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load84 = load i160, ptr %first_vid, align 4
  %16 = and i160 %bf.load84, 649037107316853453566312041152512
  %tobool88.not = icmp eq i160 %16, 0
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr100 = getelementptr i32, ptr %bit_mask, i32 3
  %17 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr100, align 4
  %or104 = or i32 %18, -2147483648
  store i32 %or104, ptr %add.ptr100, align 4
  %19 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load109 = load i160, ptr %first_vid, align 4
  %bf.clear110 = and i160 %bf.load109, -649037107316853453566312041152513
  store i160 %bf.clear110, ptr %first_vid, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load116 = load i32, ptr %ethertype, align 4
  %bf.clear117 = and i32 %bf.load116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear117)
  %tobool118.not = icmp eq i32 %bf.clear117, 0
  br i1 %tobool118.not, label %do.body115.do.body143_crit_edge, label %do.body120

do.body115.do.body143_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body143

do.body120:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr128 = getelementptr i32, ptr %bit_mask, i32 1
  %21 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr128, align 4
  %and129 = and i32 %22, -65536
  %or132 = or i32 %and129, %bf.clear117
  store i32 %or132, ptr %add.ptr128, align 4
  %23 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load137 = load i32, ptr %ethertype, align 4
  %bf.clear138 = and i32 %bf.load137, -65536
  store i32 %bf.clear138, ptr %ethertype, align 4
  br label %do.body143

do.body143:                                       ; preds = %do.body120, %do.body115.do.body143_crit_edge
  %24 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load144 = load i160, ptr %first_vid, align 4
  %25 = and i160 %bf.load144, 608472288109550112718417538580480
  %tobool148.not = icmp eq i160 %25, 0
  br i1 %tobool148.not, label %do.body143.do.end169_crit_edge, label %do.body150

do.body143.do.end169_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end169

do.body150:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr155 = getelementptr i32, ptr %bit_mask, i32 3
  %26 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr155, align 4
  %or159 = or i32 %27, 201326592
  store i32 %or159, ptr %add.ptr155, align 4
  %28 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load164 = load i160, ptr %first_vid, align 4
  %bf.clear165 = and i160 %bf.load164, -608472288109550112718417538580481
  store i160 %bf.clear165, ptr %first_vid, align 4
  br label %do.end169

do.end169:                                        ; preds = %do.body150, %do.body143.do.end169_crit_edge
  %29 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load170 = load i160, ptr %first_vid, align 4
  %30 = and i160 %bf.load170, 3894222643901120721397872246915072
  %31 = icmp eq i160 %30, 0
  br i1 %31, label %do.end169.if.end202_crit_edge, label %do.body181

do.end169.if.end202_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

do.body181:                                       ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr186 = getelementptr i32, ptr %bit_mask, i32 2
  %32 = ptrtoint ptr %add.ptr186 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr186, align 4
  %or190 = or i32 %33, 49152
  store i32 %or190, ptr %add.ptr186, align 4
  %34 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %34, i32 20)
  %bf.load195 = load i160, ptr %first_vid, align 4
  %bf.clear200 = and i160 %bf.load195, -3894222643901120721397872246915073
  store i160 %bf.clear200, ptr %first_vid, align 4
  br label %if.end202

if.end202:                                        ; preds = %do.body181, %do.end169.if.end202_crit_edge
  %35 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %35, i32 44)
  %bf.load205 = load i352, ptr %misc, align 4
  br i1 %inner, label %if.then204, label %if.else

if.then204:                                       ; preds = %if.end202
  %36 = and i352 %bf.load205, 36185027886661311069865932815214971204146870208012676262330495002472853012480
  %37 = icmp eq i352 %36, 0
  br i1 %37, label %if.then204.do.body237_crit_edge, label %do.body217

if.then204.do.body237_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body237

do.body217:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr222 = getelementptr i32, ptr %bit_mask, i32 3
  %38 = ptrtoint ptr %add.ptr222 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr222, align 4
  %or226 = or i32 %39, 49152
  store i32 %or226, ptr %add.ptr222, align 4
  %40 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %40, i32 44)
  %bf.load230 = load i352, ptr %misc, align 4
  %bf.clear234 = and i352 %bf.load230, -36185027886661311069865932815214971204146870208012676262330495002472853012481
  store i352 %bf.clear234, ptr %misc, align 4
  br label %do.body237

do.body237:                                       ; preds = %do.body217, %if.then204.do.body237_crit_edge
  %41 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load238 = load i352, ptr %misc, align 4
  %bf.lshr239 = lshr i352 %bf.load238, 256
  %42 = trunc i352 %bf.lshr239 to i32
  %bf.cast241 = and i32 %42, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast241)
  %tobool242.not = icmp eq i32 %bf.cast241, 0
  br i1 %tobool242.not, label %do.body237.do.body267_crit_edge, label %do.body244

do.body237.do.body267_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body267

do.body244:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr253 = getelementptr i32, ptr %bit_mask, i32 3
  %43 = ptrtoint ptr %add.ptr253 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr253, align 4
  %and254 = and i32 %44, -4096
  %or257 = or i32 %and254, %bf.cast241
  store i32 %or257, ptr %add.ptr253, align 4
  %45 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %45, i32 44)
  %bf.load261 = load i352, ptr %misc, align 4
  %bf.clear262 = and i352 %bf.load261, -474168605426809820259523183610576982659140587205798109741578806512404265875537921
  store i352 %bf.clear262, ptr %misc, align 4
  br label %do.body267

do.body267:                                       ; preds = %do.body244, %do.body237.do.body267_crit_edge
  %46 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %46, i32 44)
  %bf.load268 = load i352, ptr %misc, align 4
  %47 = and i352 %bf.load268, 474284397516047136454946754595585670566993857190463750305618264096412179005177856
  %tobool272.not = icmp eq i352 %47, 0
  br i1 %tobool272.not, label %do.body267.do.body297_crit_edge, label %do.body274

do.body267.do.body297_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body297

do.body274:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr283 = getelementptr i32, ptr %bit_mask, i32 3
  %48 = ptrtoint ptr %add.ptr283 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr283, align 4
  %or287 = or i32 %49, 65536
  store i32 %or287, ptr %add.ptr283, align 4
  %50 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %50, i32 44)
  %bf.load291 = load i352, ptr %misc, align 4
  %bf.clear292 = and i352 %bf.load291, -474284397516047136454946754595585670566993857190463750305618264096412179005177857
  store i352 %bf.clear292, ptr %misc, align 4
  br label %do.body297

do.body297:                                       ; preds = %do.body274, %do.body267.do.body297_crit_edge
  %51 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %51, i32 44)
  %bf.load298 = load i352, ptr %misc, align 4
  %bf.lshr299 = lshr i352 %bf.load298, 269
  %52 = trunc i352 %bf.lshr299 to i32
  %bf.cast301 = and i32 %52, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast301)
  %tobool302.not = icmp eq i32 %bf.cast301, 0
  br i1 %tobool302.not, label %do.body297.if.end449_crit_edge, label %do.body297.if.end449.sink.split_crit_edge

do.body297.if.end449.sink.split_crit_edge:        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end449.sink.split

do.body297.if.end449_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end449

if.else:                                          ; preds = %if.end202
  %53 = and i352 %bf.load205, 72370055773322622139731865630429942408293740416025352524660990004945706024960
  %54 = icmp eq i352 %53, 0
  br i1 %54, label %if.else.do.body359_crit_edge, label %do.body339

if.else.do.body359_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body359

do.body339:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr344 = getelementptr i32, ptr %bit_mask, i32 3
  %55 = ptrtoint ptr %add.ptr344 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr344, align 4
  %or348 = or i32 %56, 49152
  store i32 %or348, ptr %add.ptr344, align 4
  %57 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %57, i32 44)
  %bf.load352 = load i352, ptr %misc, align 4
  %bf.clear356 = and i352 %bf.load352, -72370055773322622139731865630429942408293740416025352524660990004945706024961
  store i352 %bf.clear356, ptr %misc, align 4
  br label %do.body359

do.body359:                                       ; preds = %do.body339, %if.else.do.body359_crit_edge
  %58 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %58, i32 44)
  %bf.load360 = load i352, ptr %misc, align 4
  %bf.lshr361 = lshr i352 %bf.load360, 272
  %59 = trunc i352 %bf.lshr361 to i32
  %bf.cast363 = and i32 %59, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast363)
  %tobool364.not = icmp eq i32 %bf.cast363, 0
  br i1 %tobool364.not, label %do.body359.do.body389_crit_edge, label %do.body366

do.body359.do.body389_crit_edge:                  ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body389

do.body366:                                       ; preds = %do.body359
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr375 = getelementptr i32, ptr %bit_mask, i32 3
  %60 = ptrtoint ptr %add.ptr375 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr375, align 4
  %and376 = and i32 %61, -4096
  %or379 = or i32 %and376, %bf.cast363
  store i32 %or379, ptr %add.ptr375, align 4
  %62 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %62, i32 44)
  %bf.load383 = load i352, ptr %misc, align 4
  %bf.clear384 = and i352 %bf.load383, -31075113725251408380528111361102773135549437523119184920024108663596925968419253125121
  store i352 %bf.clear384, ptr %misc, align 4
  br label %do.body389

do.body389:                                       ; preds = %do.body366, %do.body359.do.body389_crit_edge
  %63 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %63, i32 44)
  %bf.load390 = load i352, ptr %misc, align 4
  %64 = and i352 %bf.load390, 31082702275611665134711390509176302506278509424834232340028998555822468563283335970816
  %tobool394.not = icmp eq i352 %64, 0
  br i1 %tobool394.not, label %do.body389.do.body419_crit_edge, label %do.body396

do.body389.do.body419_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body419

do.body396:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr405 = getelementptr i32, ptr %bit_mask, i32 3
  %65 = ptrtoint ptr %add.ptr405 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr405, align 4
  %or409 = or i32 %66, 65536
  store i32 %or409, ptr %add.ptr405, align 4
  %67 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %67, i32 44)
  %bf.load413 = load i352, ptr %misc, align 4
  %bf.clear414 = and i352 %bf.load413, -31082702275611665134711390509176302506278509424834232340028998555822468563283335970817
  store i352 %bf.clear414, ptr %misc, align 4
  br label %do.body419

do.body419:                                       ; preds = %do.body396, %do.body389.do.body419_crit_edge
  %68 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %68, i32 44)
  %bf.load420 = load i352, ptr %misc, align 4
  %bf.lshr421 = lshr i352 %bf.load420, 285
  %69 = trunc i352 %bf.lshr421 to i32
  %bf.cast423 = and i32 %69, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast423)
  %tobool424.not = icmp eq i32 %bf.cast423, 0
  br i1 %tobool424.not, label %do.body419.if.end449_crit_edge, label %do.body419.if.end449.sink.split_crit_edge

do.body419.if.end449.sink.split_crit_edge:        ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end449.sink.split

do.body419.if.end449_crit_edge:                   ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end449

if.end449.sink.split:                             ; preds = %do.body419.if.end449.sink.split_crit_edge, %do.body297.if.end449.sink.split_crit_edge
  %bf.cast423.sink = phi i32 [ %bf.cast301, %do.body297.if.end449.sink.split_crit_edge ], [ %bf.cast423, %do.body419.if.end449.sink.split_crit_edge ]
  %.sink = phi i352 [ -6639981565224659910369254564338199387937914000666492504278655697349770506072489985, %do.body297.if.end449.sink.split_crit_edge ], [ -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425, %do.body419.if.end449.sink.split_crit_edge ]
  %add.ptr313 = getelementptr i32, ptr %bit_mask, i32 3
  %70 = ptrtoint ptr %add.ptr313 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr313, align 4
  %and436 = and i32 %71, -917505
  %shl438 = shl nuw nsw i32 %bf.cast423.sink, 17
  %or439 = or i32 %and436, %shl438
  store i32 %or439, ptr %add.ptr313, align 4
  %72 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %72, i32 44)
  %bf.load443 = load i352, ptr %misc, align 4
  %bf.clear444 = and i352 %bf.load443, %.sink
  store i352 %bf.clear444, ptr %misc, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.end449.sink.split, %do.body419.if.end449_crit_edge, %do.body297.if.end449_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @dr_ste_v0_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %inner, ptr nocapture noundef %tag) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inner1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  %cond = select i1 %inner, ptr %inner1, ptr %value
  %misc = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %first_vid = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %0 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %0, i32 20)
  %bf.load = load i160, ptr %first_vid, align 4
  %bf.lshr = lshr i160 %bf.load, 128
  %1 = trunc i160 %bf.lshr to i32
  %bf.cast = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool2.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool2.not, label %entry.do.body19_crit_edge, label %do.body3

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i32, ptr %tag, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, -4096
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 20)
  %bf.load15 = load i160, ptr %first_vid, align 4
  %bf.clear16 = and i160 %bf.load15, -1393456292541243007882519017433090825912321
  store i160 %bf.clear16, ptr %first_vid, align 4
  br label %do.body19

do.body19:                                        ; preds = %do.body3, %entry.do.body19_crit_edge
  %5 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load20 = load i160, ptr %first_vid, align 4
  %6 = and i160 %bf.load20, 1393796574908163946345982392040522594123776
  %tobool24.not = icmp eq i160 %6, 0
  br i1 %tobool24.not, label %do.body19.do.body51_crit_edge, label %do.body26

do.body19.do.body51_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

do.body26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36 = getelementptr i32, ptr %tag, i32 2
  %7 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr36, align 4
  %or40 = or i32 %8, 65536
  store i32 %or40, ptr %add.ptr36, align 4
  %9 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load45 = load i160, ptr %first_vid, align 4
  %bf.clear46 = and i160 %bf.load45, -1393796574908163946345982392040522594123777
  store i160 %bf.clear46, ptr %first_vid, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body26, %do.body19.do.body51_crit_edge
  %10 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load52 = load i160, ptr %first_vid, align 4
  %bf.lshr53 = lshr i160 %bf.load52, 141
  %11 = trunc i160 %bf.lshr53 to i32
  %bf.cast55 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body83_crit_edge, label %do.body58

do.body51.do.body83_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr68 = getelementptr i32, ptr %tag, i32 2
  %12 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr68, align 4
  %and69 = and i32 %13, -917505
  %shl71 = shl nuw nsw i32 %bf.cast55, 17
  %or72 = or i32 %and69, %shl71
  store i32 %or72, ptr %add.ptr68, align 4
  %14 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load77 = load i160, ptr %first_vid, align 4
  %bf.clear78 = and i160 %bf.load77, -19513152048714295248843753488567316317732865
  store i160 %bf.clear78, ptr %first_vid, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body58, %do.body51.do.body83_crit_edge
  %15 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load84 = load i160, ptr %first_vid, align 4
  %16 = and i160 %bf.load84, 649037107316853453566312041152512
  %tobool88.not = icmp eq i160 %16, 0
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr100 = getelementptr i32, ptr %tag, i32 3
  %17 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr100, align 4
  %or104 = or i32 %18, -2147483648
  store i32 %or104, ptr %add.ptr100, align 4
  %19 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load109 = load i160, ptr %first_vid, align 4
  %bf.clear110 = and i160 %bf.load109, -649037107316853453566312041152513
  store i160 %bf.clear110, ptr %first_vid, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %20 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load116 = load i32, ptr %ethertype, align 4
  %bf.clear117 = and i32 %bf.load116, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear117)
  %tobool118.not = icmp eq i32 %bf.clear117, 0
  br i1 %tobool118.not, label %do.body115.do.end142_crit_edge, label %do.body120

do.body115.do.end142_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

do.body120:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr128 = getelementptr i32, ptr %tag, i32 1
  %21 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr128, align 4
  %and129 = and i32 %22, -65536
  %or132 = or i32 %and129, %bf.clear117
  store i32 %or132, ptr %add.ptr128, align 4
  %23 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load137 = load i32, ptr %ethertype, align 4
  %bf.clear138 = and i32 %bf.load137, -65536
  store i32 %bf.clear138, ptr %ethertype, align 4
  br label %do.end142

do.end142:                                        ; preds = %do.body120, %do.body115.do.end142_crit_edge
  %24 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load143 = load i160, ptr %first_vid, align 4
  %bf.lshr144 = lshr i160 %bf.load143, 105
  %25 = trunc i160 %bf.lshr144 to i32
  %bf.cast146 = and i32 %25, 15
  %26 = zext i32 %bf.cast146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %bf.cast146, label %do.end142.cleanup_crit_edge [
    i32 0, label %do.end142.if.end199_crit_edge
    i32 4, label %do.end142.if.end199.sink.split_crit_edge
    i32 6, label %do.body179
  ]

do.end142.if.end199.sink.split_crit_edge:         ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199.sink.split

do.end142.if.end199_crit_edge:                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

do.end142.cleanup_crit_edge:                      ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body179:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199.sink.split

if.end199.sink.split:                             ; preds = %do.body179, %do.end142.if.end199.sink.split_crit_edge
  %.sink = phi i32 [ 134217728, %do.body179 ], [ 67108864, %do.end142.if.end199.sink.split_crit_edge ]
  %add.ptr184 = getelementptr i32, ptr %tag, i32 3
  %27 = ptrtoint ptr %add.ptr184 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr184, align 4
  %and161 = and i32 %28, -201326593
  %or164 = or i32 %and161, %.sink
  store i32 %or164, ptr %add.ptr184, align 4
  %29 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %29, i32 20)
  %bf.load169 = load i160, ptr %first_vid, align 4
  %bf.clear170 = and i160 %bf.load169, -608472288109550112718417538580481
  store i160 %bf.clear170, ptr %first_vid, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.end199.sink.split, %do.end142.if.end199_crit_edge
  %30 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %30, i32 20)
  %bf.load200 = load i160, ptr %first_vid, align 4
  %31 = and i160 %bf.load200, 2596148429267413814265248164610048
  %tobool204.not = icmp eq i160 %31, 0
  br i1 %tobool204.not, label %if.else223, label %if.end199.if.end248.sink.split_crit_edge

if.end199.if.end248.sink.split_crit_edge:         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248.sink.split

if.else223:                                       ; preds = %if.end199
  %32 = and i160 %bf.load200, 1298074214633706907132624082305024
  %tobool228.not = icmp eq i160 %32, 0
  br i1 %tobool228.not, label %if.else223.if.end248_crit_edge, label %if.else223.if.end248.sink.split_crit_edge

if.else223.if.end248.sink.split_crit_edge:        ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248.sink.split

if.else223.if.end248_crit_edge:                   ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

if.end248.sink.split:                             ; preds = %if.else223.if.end248.sink.split_crit_edge, %if.end199.if.end248.sink.split_crit_edge
  %.sink629 = phi i32 [ 32768, %if.end199.if.end248.sink.split_crit_edge ], [ 16384, %if.else223.if.end248.sink.split_crit_edge ]
  %.sink628 = phi i160 [ -2596148429267413814265248164610049, %if.end199.if.end248.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else223.if.end248.sink.split_crit_edge ]
  %add.ptr211 = getelementptr i32, ptr %tag, i32 2
  %33 = ptrtoint ptr %add.ptr211 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr211, align 4
  %and236 = and i32 %34, -49153
  %or239 = or i32 %and236, %.sink629
  store i32 %or239, ptr %add.ptr211, align 4
  %35 = ptrtoint ptr %first_vid to i32
  call void @__asan_loadN_noabort(i32 %35, i32 20)
  %bf.load244 = load i160, ptr %first_vid, align 4
  %bf.clear245 = and i160 %bf.load244, %.sink628
  store i160 %bf.clear245, ptr %first_vid, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.end248.sink.split, %if.else223.if.end248_crit_edge
  %36 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %36, i32 44)
  %bf.load251 = load i352, ptr %misc, align 4
  br i1 %inner, label %if.then250, label %if.else388

if.then250:                                       ; preds = %if.end248
  %37 = and i352 %bf.load251, 28948022309329048855892746252171976963317496166410141009864396001978282409984
  %tobool255.not = icmp eq i352 %37, 0
  br i1 %tobool255.not, label %if.else273, label %if.then250.do.body298.sink.split_crit_edge

if.then250.do.body298.sink.split_crit_edge:       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body298.sink.split

if.else273:                                       ; preds = %if.then250
  %38 = and i352 %bf.load251, 7237005577332262213973186563042994240829374041602535252466099000494570602496
  %tobool278.not = icmp eq i352 %38, 0
  br i1 %tobool278.not, label %if.else273.do.body298_crit_edge, label %if.else273.do.body298.sink.split_crit_edge

if.else273.do.body298.sink.split_crit_edge:       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body298.sink.split

if.else273.do.body298_crit_edge:                  ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body298

do.body298.sink.split:                            ; preds = %if.else273.do.body298.sink.split_crit_edge, %if.then250.do.body298.sink.split_crit_edge
  %.sink633 = phi i32 [ 32768, %if.then250.do.body298.sink.split_crit_edge ], [ 16384, %if.else273.do.body298.sink.split_crit_edge ]
  %.sink632 = phi i352 [ -28948022309329048855892746252171976963317496166410141009864396001978282409985, %if.then250.do.body298.sink.split_crit_edge ], [ -7237005577332262213973186563042994240829374041602535252466099000494570602497, %if.else273.do.body298.sink.split_crit_edge ]
  %add.ptr285 = getelementptr i32, ptr %tag, i32 3
  %39 = ptrtoint ptr %add.ptr285 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr285, align 4
  %and263 = and i32 %40, -49153
  %or266 = or i32 %and263, %.sink633
  store i32 %or266, ptr %add.ptr285, align 4
  %41 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %41, i32 44)
  %bf.load270 = load i352, ptr %misc, align 4
  %bf.clear271 = and i352 %bf.load270, %.sink632
  store i352 %bf.clear271, ptr %misc, align 4
  br label %do.body298

do.body298:                                       ; preds = %do.body298.sink.split, %if.else273.do.body298_crit_edge
  %42 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %42, i32 44)
  %bf.load299 = load i352, ptr %misc, align 4
  %bf.lshr300 = lshr i352 %bf.load299, 256
  %43 = trunc i352 %bf.lshr300 to i32
  %bf.cast302 = and i32 %43, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast302)
  %tobool303.not = icmp eq i32 %bf.cast302, 0
  br i1 %tobool303.not, label %do.body298.do.body328_crit_edge, label %do.body305

do.body298.do.body328_crit_edge:                  ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body328

do.body305:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr314 = getelementptr i32, ptr %tag, i32 3
  %44 = ptrtoint ptr %add.ptr314 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr314, align 4
  %and315 = and i32 %45, -4096
  %or318 = or i32 %and315, %bf.cast302
  store i32 %or318, ptr %add.ptr314, align 4
  %46 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %46, i32 44)
  %bf.load322 = load i352, ptr %misc, align 4
  %bf.clear323 = and i352 %bf.load322, -474168605426809820259523183610576982659140587205798109741578806512404265875537921
  store i352 %bf.clear323, ptr %misc, align 4
  br label %do.body328

do.body328:                                       ; preds = %do.body305, %do.body298.do.body328_crit_edge
  %47 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %47, i32 44)
  %bf.load329 = load i352, ptr %misc, align 4
  %48 = and i352 %bf.load329, 474284397516047136454946754595585670566993857190463750305618264096412179005177856
  %tobool333.not = icmp eq i352 %48, 0
  br i1 %tobool333.not, label %do.body328.do.body358_crit_edge, label %do.body335

do.body328.do.body358_crit_edge:                  ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body358

do.body335:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr344 = getelementptr i32, ptr %tag, i32 3
  %49 = ptrtoint ptr %add.ptr344 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr344, align 4
  %or348 = or i32 %50, 65536
  store i32 %or348, ptr %add.ptr344, align 4
  %51 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %51, i32 44)
  %bf.load352 = load i352, ptr %misc, align 4
  %bf.clear353 = and i352 %bf.load352, -474284397516047136454946754595585670566993857190463750305618264096412179005177857
  store i352 %bf.clear353, ptr %misc, align 4
  br label %do.body358

do.body358:                                       ; preds = %do.body335, %do.body328.do.body358_crit_edge
  %52 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %52, i32 44)
  %bf.load359 = load i352, ptr %misc, align 4
  %bf.lshr360 = lshr i352 %bf.load359, 269
  %53 = trunc i352 %bf.lshr360 to i32
  %bf.cast362 = and i32 %53, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast362)
  %tobool363.not = icmp eq i32 %bf.cast362, 0
  br i1 %tobool363.not, label %do.body358.cleanup_crit_edge, label %do.body358.cleanup.sink.split_crit_edge

do.body358.cleanup.sink.split_crit_edge:          ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body358.cleanup_crit_edge:                     ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else388:                                       ; preds = %if.end248
  %54 = and i352 %bf.load251, 57896044618658097711785492504343953926634992332820282019728792003956564819968
  %tobool393.not = icmp eq i352 %54, 0
  br i1 %tobool393.not, label %if.else411, label %if.else388.do.body436.sink.split_crit_edge

if.else388.do.body436.sink.split_crit_edge:       ; preds = %if.else388
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body436.sink.split

if.else411:                                       ; preds = %if.else388
  %55 = and i352 %bf.load251, 14474011154664524427946373126085988481658748083205070504932198000989141204992
  %tobool416.not = icmp eq i352 %55, 0
  br i1 %tobool416.not, label %if.else411.do.body436_crit_edge, label %if.else411.do.body436.sink.split_crit_edge

if.else411.do.body436.sink.split_crit_edge:       ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body436.sink.split

if.else411.do.body436_crit_edge:                  ; preds = %if.else411
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body436

do.body436.sink.split:                            ; preds = %if.else411.do.body436.sink.split_crit_edge, %if.else388.do.body436.sink.split_crit_edge
  %.sink637 = phi i32 [ 32768, %if.else388.do.body436.sink.split_crit_edge ], [ 16384, %if.else411.do.body436.sink.split_crit_edge ]
  %.sink636 = phi i352 [ -57896044618658097711785492504343953926634992332820282019728792003956564819969, %if.else388.do.body436.sink.split_crit_edge ], [ -14474011154664524427946373126085988481658748083205070504932198000989141204993, %if.else411.do.body436.sink.split_crit_edge ]
  %add.ptr423 = getelementptr i32, ptr %tag, i32 3
  %56 = ptrtoint ptr %add.ptr423 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr423, align 4
  %and401 = and i32 %57, -49153
  %or404 = or i32 %and401, %.sink637
  store i32 %or404, ptr %add.ptr423, align 4
  %58 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %58, i32 44)
  %bf.load408 = load i352, ptr %misc, align 4
  %bf.clear409 = and i352 %bf.load408, %.sink636
  store i352 %bf.clear409, ptr %misc, align 4
  br label %do.body436

do.body436:                                       ; preds = %do.body436.sink.split, %if.else411.do.body436_crit_edge
  %59 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %59, i32 44)
  %bf.load437 = load i352, ptr %misc, align 4
  %bf.lshr438 = lshr i352 %bf.load437, 272
  %60 = trunc i352 %bf.lshr438 to i32
  %bf.cast440 = and i32 %60, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast440)
  %tobool441.not = icmp eq i32 %bf.cast440, 0
  br i1 %tobool441.not, label %do.body436.do.body466_crit_edge, label %do.body443

do.body436.do.body466_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body466

do.body443:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr452 = getelementptr i32, ptr %tag, i32 3
  %61 = ptrtoint ptr %add.ptr452 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr452, align 4
  %and453 = and i32 %62, -4096
  %or456 = or i32 %and453, %bf.cast440
  store i32 %or456, ptr %add.ptr452, align 4
  %63 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %63, i32 44)
  %bf.load460 = load i352, ptr %misc, align 4
  %bf.clear461 = and i352 %bf.load460, -31075113725251408380528111361102773135549437523119184920024108663596925968419253125121
  store i352 %bf.clear461, ptr %misc, align 4
  br label %do.body466

do.body466:                                       ; preds = %do.body443, %do.body436.do.body466_crit_edge
  %64 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %64, i32 44)
  %bf.load467 = load i352, ptr %misc, align 4
  %65 = and i352 %bf.load467, 31082702275611665134711390509176302506278509424834232340028998555822468563283335970816
  %tobool471.not = icmp eq i352 %65, 0
  br i1 %tobool471.not, label %do.body466.do.body496_crit_edge, label %do.body473

do.body466.do.body496_crit_edge:                  ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

do.body473:                                       ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr482 = getelementptr i32, ptr %tag, i32 3
  %66 = ptrtoint ptr %add.ptr482 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr482, align 4
  %or486 = or i32 %67, 65536
  store i32 %or486, ptr %add.ptr482, align 4
  %68 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %68, i32 44)
  %bf.load490 = load i352, ptr %misc, align 4
  %bf.clear491 = and i352 %bf.load490, -31082702275611665134711390509176302506278509424834232340028998555822468563283335970817
  store i352 %bf.clear491, ptr %misc, align 4
  br label %do.body496

do.body496:                                       ; preds = %do.body473, %do.body466.do.body496_crit_edge
  %69 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %69, i32 44)
  %bf.load497 = load i352, ptr %misc, align 4
  %bf.lshr498 = lshr i352 %bf.load497, 285
  %70 = trunc i352 %bf.lshr498 to i32
  %bf.cast500 = and i32 %70, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast500)
  %tobool501.not = icmp eq i32 %bf.cast500, 0
  br i1 %tobool501.not, label %do.body496.cleanup_crit_edge, label %do.body496.cleanup.sink.split_crit_edge

do.body496.cleanup.sink.split_crit_edge:          ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

do.body496.cleanup_crit_edge:                     ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body496.cleanup.sink.split_crit_edge, %do.body358.cleanup.sink.split_crit_edge
  %bf.cast362.sink = phi i32 [ %bf.cast362, %do.body358.cleanup.sink.split_crit_edge ], [ %bf.cast500, %do.body496.cleanup.sink.split_crit_edge ]
  %.sink640 = phi i352 [ -6639981565224659910369254564338199387937914000666492504278655697349770506072489985, %do.body358.cleanup.sink.split_crit_edge ], [ -435157831858563311885959467128468235087899131947679252760405979781514559885966703591425, %do.body496.cleanup.sink.split_crit_edge ]
  %add.ptr512 = getelementptr i32, ptr %tag, i32 3
  %71 = ptrtoint ptr %add.ptr512 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr512, align 4
  %and375 = and i32 %72, -917505
  %shl377 = shl nuw nsw i32 %bf.cast362.sink, 17
  %or378 = or i32 %and375, %shl377
  store i32 %or378, ptr %add.ptr512, align 4
  %73 = ptrtoint ptr %misc to i32
  call void @__asan_loadN_noabort(i32 %73, i32 44)
  %bf.load382 = load i352, ptr %misc, align 4
  %bf.clear383 = and i352 %bf.load382, %.sink640
  store i352 %bf.clear383, ptr %misc, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body496.cleanup_crit_edge, %do.body358.cleanup_crit_edge, %do.end142.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end142.cleanup_crit_edge ], [ 0, %do.body496.cleanup_crit_edge ], [ 0, %do.body358.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l2_dst_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not54 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not54, ptr %inner, ptr %value
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load13 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr14 = lshr i160 %bf.load13, 144
  %bf.cast = trunc i160 %bf.lshr14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool15.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool15.not, label %do.body12.do.end38_crit_edge, label %do.body17

do.body12.do.end38_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.body17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr26 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %7, 65535
  %shl29 = shl nuw i32 %bf.cast, 16
  %or30 = or i32 %and27, %shl29
  store i32 %or30, ptr %add.ptr26, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load35 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load35, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.end38

do.end38:                                         ; preds = %do.body17, %do.body12.do.end38_crit_edge
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load39 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load39)
  %tobool41 = icmp slt i8 %bf.load39, 0
  %call = tail call fastcc i32 @dr_ste_v0_build_eth_l2_src_or_dst_tag(ptr noundef %value, i1 noundef zeroext %tobool41, ptr noundef %tag)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l2_tnl_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not393 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not393, ptr %inner, ptr %value
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %dmac_47_16 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 2
  %1 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dmac_47_16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %entry.do.body13_crit_edge, label %do.body3

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tag, align 4
  %4 = ptrtoint ptr %dmac_47_16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmac_47_16, align 4
  br label %do.body13

do.body13:                                        ; preds = %do.body3, %entry.do.body13_crit_edge
  %dmac_15_0 = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %5 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load14 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr15 = lshr i160 %bf.load14, 144
  %bf.cast = trunc i160 %bf.lshr15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool16.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool16.not, label %do.body13.do.body40_crit_edge, label %do.body18

do.body13.do.body40_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

do.body18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr27 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr27, align 4
  %and28 = and i32 %7, 65535
  %shl30 = shl nuw i32 %bf.cast, 16
  %or31 = or i32 %and28, %shl30
  store i32 %or31, ptr %add.ptr27, align 4
  %8 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 20)
  %bf.load36 = load i160, ptr %dmac_15_0, align 4
  %bf.clear = and i160 %bf.load36, 22300745198530623141535718272648361505980415
  store i160 %bf.clear, ptr %dmac_15_0, align 4
  br label %do.body40

do.body40:                                        ; preds = %do.body18, %do.body13.do.body40_crit_edge
  %9 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 20)
  %bf.load41 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr42 = lshr i160 %bf.load41, 128
  %10 = trunc i160 %bf.lshr42 to i32
  %bf.cast44 = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast44)
  %tobool45.not = icmp eq i32 %bf.cast44, 0
  br i1 %tobool45.not, label %do.body40.do.body72_crit_edge, label %do.body47

do.body40.do.body72_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body72

do.body47:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr57 = getelementptr i32, ptr %tag, i32 3
  %11 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr57, align 4
  %and58 = and i32 %12, -4096
  %or61 = or i32 %and58, %bf.cast44
  store i32 %or61, ptr %add.ptr57, align 4
  %13 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 20)
  %bf.load66 = load i160, ptr %dmac_15_0, align 4
  %bf.clear67 = and i160 %bf.load66, -1393456292541243007882519017433090825912321
  store i160 %bf.clear67, ptr %dmac_15_0, align 4
  br label %do.body72

do.body72:                                        ; preds = %do.body47, %do.body40.do.body72_crit_edge
  %14 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 20)
  %bf.load73 = load i160, ptr %dmac_15_0, align 4
  %15 = and i160 %bf.load73, 1393796574908163946345982392040522594123776
  %tobool77.not = icmp eq i160 %15, 0
  br i1 %tobool77.not, label %do.body72.do.body104_crit_edge, label %do.body79

do.body72.do.body104_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body104

do.body79:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr89 = getelementptr i32, ptr %tag, i32 3
  %16 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr89, align 4
  %or93 = or i32 %17, 1048576
  store i32 %or93, ptr %add.ptr89, align 4
  %18 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 20)
  %bf.load98 = load i160, ptr %dmac_15_0, align 4
  %bf.clear99 = and i160 %bf.load98, -1393796574908163946345982392040522594123777
  store i160 %bf.clear99, ptr %dmac_15_0, align 4
  br label %do.body104

do.body104:                                       ; preds = %do.body79, %do.body72.do.body104_crit_edge
  %19 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 20)
  %bf.load105 = load i160, ptr %dmac_15_0, align 4
  %20 = and i160 %bf.load105, 649037107316853453566312041152512
  %tobool109.not = icmp eq i160 %20, 0
  br i1 %tobool109.not, label %do.body104.do.body136_crit_edge, label %do.body111

do.body104.do.body136_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

do.body111:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr121 = getelementptr i32, ptr %tag, i32 3
  %21 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr121, align 4
  %or125 = or i32 %22, -2147483648
  store i32 %or125, ptr %add.ptr121, align 4
  %23 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 20)
  %bf.load130 = load i160, ptr %dmac_15_0, align 4
  %bf.clear131 = and i160 %bf.load130, -649037107316853453566312041152513
  store i160 %bf.clear131, ptr %dmac_15_0, align 4
  br label %do.body136

do.body136:                                       ; preds = %do.body111, %do.body104.do.body136_crit_edge
  %24 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 20)
  %bf.load137 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr138 = lshr i160 %bf.load137, 141
  %25 = trunc i160 %bf.lshr138 to i32
  %bf.cast140 = and i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast140)
  %tobool141.not = icmp eq i32 %bf.cast140, 0
  br i1 %tobool141.not, label %do.body136.do.body168_crit_edge, label %do.body143

do.body136.do.body168_crit_edge:                  ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body168

do.body143:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr153 = getelementptr i32, ptr %tag, i32 3
  %26 = ptrtoint ptr %add.ptr153 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr153, align 4
  %and154 = and i32 %27, -14680065
  %shl156 = shl nuw nsw i32 %bf.cast140, 21
  %or157 = or i32 %and154, %shl156
  store i32 %or157, ptr %add.ptr153, align 4
  %28 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 20)
  %bf.load162 = load i160, ptr %dmac_15_0, align 4
  %bf.clear163 = and i160 %bf.load162, -19513152048714295248843753488567316317732865
  store i160 %bf.clear163, ptr %dmac_15_0, align 4
  br label %do.body168

do.body168:                                       ; preds = %do.body143, %do.body136.do.body168_crit_edge
  %ethertype = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 1
  %29 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load169 = load i32, ptr %ethertype, align 4
  %bf.clear170 = and i32 %bf.load169, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear170)
  %tobool171.not = icmp eq i32 %bf.clear170, 0
  br i1 %tobool171.not, label %do.body168.do.end195_crit_edge, label %do.body173

do.body168.do.end195_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195

do.body173:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr181 = getelementptr i32, ptr %tag, i32 1
  %30 = ptrtoint ptr %add.ptr181 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr181, align 4
  %and182 = and i32 %31, -65536
  %or185 = or i32 %and182, %bf.clear170
  store i32 %or185, ptr %add.ptr181, align 4
  %32 = ptrtoint ptr %ethertype to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load190 = load i32, ptr %ethertype, align 4
  %bf.clear191 = and i32 %bf.load190, -65536
  store i32 %bf.clear191, ptr %ethertype, align 4
  br label %do.end195

do.end195:                                        ; preds = %do.body173, %do.body168.do.end195_crit_edge
  %33 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 44)
  %bf.load196 = load i352, ptr %misc1, align 4
  %bf.lshr197 = lshr i352 %bf.load196, 168
  %34 = trunc i352 %bf.lshr197 to i32
  %bf.cast199 = and i32 %34, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast199)
  %tobool200.not = icmp eq i32 %bf.cast199, 0
  br i1 %tobool200.not, label %do.end195.if.end223_crit_edge, label %do.body202

do.end195.if.end223_crit_edge:                    ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end223

do.body202:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #14
  %shl208 = shl i32 %34, 8
  %add.ptr212 = getelementptr i32, ptr %tag, i32 2
  %35 = ptrtoint ptr %add.ptr212 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl208, ptr %add.ptr212, align 4
  %36 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 44)
  %bf.load220 = load i352, ptr %misc1, align 4
  %bf.clear221 = and i352 %bf.load220, -6277101361242261607124642363064349240733902412545303511041
  store i352 %bf.clear221, ptr %misc1, align 4
  br label %if.end223

if.end223:                                        ; preds = %do.body202, %do.end195.if.end223_crit_edge
  %37 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load224 = load i160, ptr %dmac_15_0, align 4
  %38 = and i160 %bf.load224, 2596148429267413814265248164610048
  %tobool228.not = icmp eq i160 %38, 0
  br i1 %tobool228.not, label %if.else, label %if.end223.if.end271.sink.split_crit_edge

if.end223.if.end271.sink.split_crit_edge:         ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271.sink.split

if.else:                                          ; preds = %if.end223
  %39 = and i160 %bf.load224, 1298074214633706907132624082305024
  %tobool251.not = icmp eq i160 %39, 0
  br i1 %tobool251.not, label %if.else.if.end271_crit_edge, label %if.else.if.end271.sink.split_crit_edge

if.else.if.end271.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271.sink.split

if.else.if.end271_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.end271.sink.split:                             ; preds = %if.else.if.end271.sink.split_crit_edge, %if.end223.if.end271.sink.split_crit_edge
  %.sink394 = phi i32 [ 32768, %if.end223.if.end271.sink.split_crit_edge ], [ 16384, %if.else.if.end271.sink.split_crit_edge ]
  %.sink = phi i160 [ -2596148429267413814265248164610049, %if.end223.if.end271.sink.split_crit_edge ], [ -1298074214633706907132624082305025, %if.else.if.end271.sink.split_crit_edge ]
  %add.ptr235 = getelementptr i32, ptr %tag, i32 3
  %40 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr235, align 4
  %and259 = and i32 %41, -49153
  %or262 = or i32 %and259, %.sink394
  store i32 %or262, ptr %add.ptr235, align 4
  %42 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load267 = load i160, ptr %dmac_15_0, align 4
  %bf.clear268 = and i160 %bf.load267, %.sink
  store i160 %bf.clear268, ptr %dmac_15_0, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.end271.sink.split, %if.else.if.end271_crit_edge
  %43 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 20)
  %bf.load272 = load i160, ptr %dmac_15_0, align 4
  %bf.lshr273 = lshr i160 %bf.load272, 105
  %44 = trunc i160 %bf.lshr273 to i32
  %bf.cast275 = and i32 %44, 15
  %45 = zext i32 %bf.cast275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %bf.cast275, label %if.end271.cleanup_crit_edge [
    i32 0, label %if.end271.if.end331_crit_edge
    i32 4, label %if.end271.if.end331.sink.split_crit_edge
    i32 6, label %do.body311
  ]

if.end271.if.end331.sink.split_crit_edge:         ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end331.sink.split

if.end271.if.end331_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end331

if.end271.cleanup_crit_edge:                      ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body311:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end331.sink.split

if.end331.sink.split:                             ; preds = %do.body311, %if.end271.if.end331.sink.split_crit_edge
  %.sink397 = phi i32 [ 134217728, %do.body311 ], [ 67108864, %if.end271.if.end331.sink.split_crit_edge ]
  %add.ptr316 = getelementptr i32, ptr %tag, i32 3
  %46 = ptrtoint ptr %add.ptr316 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr316, align 4
  %and291 = and i32 %47, -201326593
  %or294 = or i32 %and291, %.sink397
  store i32 %or294, ptr %add.ptr316, align 4
  %48 = ptrtoint ptr %dmac_15_0 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 20)
  %bf.load299 = load i160, ptr %dmac_15_0, align 4
  %bf.clear300 = and i160 %bf.load299, -608472288109550112718417538580481
  store i160 %bf.clear300, ptr %dmac_15_0, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.end331.sink.split, %if.end271.if.end331_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end331, %if.end271.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end331 ], [ -22, %if.end271.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l3_ipv4_misc_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not24 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not24, ptr %inner, ptr %value
  %ttl_hoplimit = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %1 = ptrtoint ptr %ttl_hoplimit to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load1 = load i160, ptr %ttl_hoplimit, align 4
  %bf.lshr2 = lshr i160 %bf.load1, 32
  %2 = trunc i160 %bf.lshr2 to i32
  %bf.cast = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool3.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool3.not, label %entry.do.end19_crit_edge, label %do.body4

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i32, ptr %tag, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %and = and i32 %4, 16777215
  %shl = shl i32 %2, 24
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %ttl_hoplimit to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load16 = load i160, ptr %ttl_hoplimit, align 4
  %bf.clear17 = and i160 %bf.load16, -1095216660481
  store i160 %bf.clear17, ptr %ttl_hoplimit, align 4
  br label %do.end19

do.end19:                                         ; preds = %do.body4, %entry.do.end19_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_ipv6_l3_l4_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  %inner = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not674 = icmp slt i8 %bf.load, 0
  %cond = select i1 %tobool.not674, ptr %inner, ptr %value
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %tcp_dport = getelementptr inbounds %struct.mlx5dr_match_spec, ptr %cond, i32 0, i32 3
  %1 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %1, i32 20)
  %bf.load2 = load i160, ptr %tcp_dport, align 4
  %bf.lshr3 = lshr i160 %bf.load2, 64
  %2 = trunc i160 %bf.lshr3 to i32
  %bf.cast = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool4.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool4.not, label %entry.do.body21_crit_edge, label %do.body5

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag, align 4
  %and = and i32 %4, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %5 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %5, i32 20)
  %bf.load17 = load i160, ptr %tcp_dport, align 4
  %bf.clear18 = and i160 %bf.load17, -1208907372870555465154561
  store i160 %bf.clear18, ptr %tcp_dport, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.body5, %entry.do.body21_crit_edge
  %6 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %6, i32 20)
  %bf.load22 = load i160, ptr %tcp_dport, align 4
  %bf.lshr23 = lshr i160 %bf.load22, 80
  %7 = trunc i160 %bf.lshr23 to i32
  %bf.cast25 = and i32 %7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast25)
  %tobool26.not = icmp eq i32 %bf.cast25, 0
  br i1 %tobool26.not, label %do.body21.do.body53_crit_edge, label %do.body28

do.body21.do.body53_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

do.body28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr38 = getelementptr i32, ptr %tag, i32 1
  %8 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr38, align 4
  %and39 = and i32 %9, -65536
  %or42 = or i32 %and39, %bf.cast25
  store i32 %or42, ptr %add.ptr38, align 4
  %10 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %10, i32 20)
  %bf.load47 = load i160, ptr %tcp_dport, align 4
  %bf.clear48 = and i160 %bf.load47, -79226953588444722964369244161
  store i160 %bf.clear48, ptr %tcp_dport, align 4
  br label %do.body53

do.body53:                                        ; preds = %do.body28, %do.body21.do.body53_crit_edge
  %11 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %11, i32 20)
  %bf.load54 = load i160, ptr %tcp_dport, align 4
  %12 = trunc i160 %bf.load54 to i32
  %bf.cast56 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast56)
  %tobool57.not = icmp eq i32 %bf.cast56, 0
  br i1 %tobool57.not, label %do.body53.do.body83_crit_edge, label %do.body59

do.body53.do.body83_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body83

do.body59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tag, align 4
  %and69 = and i32 %14, -65536
  %or72 = or i32 %and69, %bf.cast56
  store i32 %or72, ptr %tag, align 4
  %15 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %15, i32 20)
  %bf.load77 = load i160, ptr %tcp_dport, align 4
  %bf.clear78 = and i160 %bf.load77, -65536
  store i160 %bf.clear78, ptr %tcp_dport, align 4
  br label %do.body83

do.body83:                                        ; preds = %do.body59, %do.body53.do.body83_crit_edge
  %16 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %16, i32 20)
  %bf.load84 = load i160, ptr %tcp_dport, align 4
  %17 = trunc i160 %bf.load84 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %tobool88.not = icmp ult i32 %17, 65536
  br i1 %tobool88.not, label %do.body83.do.body115_crit_edge, label %do.body90

do.body83.do.body115_crit_edge:                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

do.body90:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %18 = lshr i32 %17, 16
  %add.ptr100 = getelementptr i32, ptr %tag, i32 1
  %19 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr100, align 4
  %and101 = and i32 %20, -65536
  %or104 = or i32 %and101, %18
  store i32 %or104, ptr %add.ptr100, align 4
  %21 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %21, i32 20)
  %bf.load109 = load i160, ptr %tcp_dport, align 4
  %bf.clear110 = and i160 %bf.load109, -4294901761
  store i160 %bf.clear110, ptr %tcp_dport, align 4
  br label %do.body115

do.body115:                                       ; preds = %do.body90, %do.body83.do.body115_crit_edge
  %22 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %22, i32 20)
  %bf.load116 = load i160, ptr %tcp_dport, align 4
  %bf.lshr117 = lshr i160 %bf.load116, 120
  %23 = trunc i160 %bf.lshr117 to i32
  %bf.cast119 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast119)
  %tobool120.not = icmp eq i32 %bf.cast119, 0
  br i1 %tobool120.not, label %do.body115.do.body147_crit_edge, label %do.body122

do.body115.do.body147_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body147

do.body122:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tag, align 4
  %and133 = and i32 %25, -16711681
  %shl135 = shl nuw nsw i32 %bf.cast119, 16
  %or136 = or i32 %and133, %shl135
  store i32 %or136, ptr %tag, align 4
  %26 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %26, i32 20)
  %bf.load141 = load i160, ptr %tcp_dport, align 4
  %bf.clear142 = and i160 %bf.load141, -338953138925153547590470800371487866881
  store i160 %bf.clear142, ptr %tcp_dport, align 4
  br label %do.body147

do.body147:                                       ; preds = %do.body122, %do.body115.do.body147_crit_edge
  %27 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %27, i32 20)
  %bf.load148 = load i160, ptr %tcp_dport, align 4
  %28 = and i160 %bf.load148, 649037107316853453566312041152512
  %tobool152.not = icmp eq i160 %28, 0
  br i1 %tobool152.not, label %do.body147.do.body179_crit_edge, label %do.body154

do.body147.do.body179_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body179

do.body154:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tag, align 4
  %or168 = or i32 %30, -2147483648
  store i32 %or168, ptr %tag, align 4
  %31 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %31, i32 20)
  %bf.load173 = load i160, ptr %tcp_dport, align 4
  %bf.clear174 = and i160 %bf.load173, -649037107316853453566312041152513
  store i160 %bf.clear174, ptr %tcp_dport, align 4
  br label %do.body179

do.body179:                                       ; preds = %do.body154, %do.body147.do.body179_crit_edge
  %32 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %32, i32 20)
  %bf.load180 = load i160, ptr %tcp_dport, align 4
  %bf.lshr181 = lshr i160 %bf.load180, 114
  %33 = trunc i160 %bf.lshr181 to i32
  %bf.cast183 = and i32 %33, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast183)
  %tobool184.not = icmp eq i32 %bf.cast183, 0
  br i1 %tobool184.not, label %do.body179.do.body211_crit_edge, label %do.body186

do.body179.do.body211_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body211

do.body186:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr196 = getelementptr i32, ptr %tag, i32 2
  %34 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr196, align 4
  %and197 = and i32 %35, -253
  %shl199 = shl nuw nsw i32 %bf.cast183, 2
  %or200 = or i32 %and197, %shl199
  store i32 %or200, ptr %add.ptr196, align 4
  %36 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %36, i32 20)
  %bf.load205 = load i160, ptr %tcp_dport, align 4
  %bf.clear206 = and i160 %bf.load205, -1308458808350776562389685074963464193
  store i160 %bf.clear206, ptr %tcp_dport, align 4
  br label %do.body211

do.body211:                                       ; preds = %do.body186, %do.body179.do.body211_crit_edge
  %37 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %37, i32 20)
  %bf.load212 = load i160, ptr %tcp_dport, align 4
  %bf.lshr213 = lshr i160 %bf.load212, 112
  %38 = trunc i160 %bf.lshr213 to i32
  %bf.cast215 = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast215)
  %tobool216.not = icmp eq i32 %bf.cast215, 0
  br i1 %tobool216.not, label %do.body211.do.body243_crit_edge, label %do.body218

do.body211.do.body243_crit_edge:                  ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body243

do.body218:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr228 = getelementptr i32, ptr %tag, i32 1
  %39 = ptrtoint ptr %add.ptr228 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr228, align 4
  %and229 = and i32 %40, -100663297
  %shl231 = shl nuw nsw i32 %bf.cast215, 25
  %or232 = or i32 %and229, %shl231
  store i32 %or232, ptr %add.ptr228, align 4
  %41 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %41, i32 20)
  %bf.load237 = load i160, ptr %tcp_dport, align 4
  %bf.clear238 = and i160 %bf.load237, -15576890575604482885591488987660289
  store i160 %bf.clear238, ptr %tcp_dport, align 4
  br label %do.body243

do.body243:                                       ; preds = %do.body218, %do.body211.do.body243_crit_edge
  %42 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %42, i32 20)
  %bf.load244 = load i160, ptr %tcp_dport, align 4
  %bf.lshr245 = lshr i160 %bf.load244, 32
  %43 = trunc i160 %bf.lshr245 to i32
  %bf.cast247 = and i32 %43, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast247)
  %tobool248.not = icmp eq i32 %bf.cast247, 0
  br i1 %tobool248.not, label %do.body243.do.end274_crit_edge, label %do.body250

do.body243.do.end274_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end274

do.body250:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr260 = getelementptr i32, ptr %tag, i32 2
  %44 = ptrtoint ptr %add.ptr260 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr260, align 4
  %and261 = and i32 %45, -65281
  %shl263 = shl nuw nsw i32 %bf.cast247, 8
  %or264 = or i32 %and261, %shl263
  store i32 %or264, ptr %add.ptr260, align 4
  %46 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %46, i32 20)
  %bf.load269 = load i160, ptr %tcp_dport, align 4
  %bf.clear270 = and i160 %bf.load269, -1095216660481
  store i160 %bf.clear270, ptr %tcp_dport, align 4
  br label %do.end274

do.end274:                                        ; preds = %do.body250, %do.body243.do.end274_crit_edge
  %47 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load275 = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load275)
  %tobool277.not = icmp sgt i8 %bf.load275, -1
  %48 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 44)
  %bf.load310 = load i352, ptr %misc1, align 4
  br i1 %tobool277.not, label %do.body309, label %do.body279

do.body279:                                       ; preds = %do.end274
  %bf.lshr281 = lshr i352 %bf.load310, 64
  %49 = trunc i352 %bf.lshr281 to i32
  %bf.cast283 = and i32 %49, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast283)
  %tobool284.not = icmp eq i32 %bf.cast283, 0
  br i1 %tobool284.not, label %do.body279.if.end339_crit_edge, label %do.body279.if.end339.sink.split_crit_edge

do.body279.if.end339.sink.split_crit_edge:        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end339.sink.split

do.body279.if.end339_crit_edge:                   ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end339

do.body309:                                       ; preds = %do.end274
  %bf.lshr311 = lshr i352 %bf.load310, 96
  %50 = trunc i352 %bf.lshr311 to i32
  %bf.cast313 = and i32 %50, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast313)
  %tobool314.not = icmp eq i32 %bf.cast313, 0
  br i1 %tobool314.not, label %do.body309.if.end339_crit_edge, label %do.body309.if.end339.sink.split_crit_edge

do.body309.if.end339.sink.split_crit_edge:        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end339.sink.split

do.body309.if.end339_crit_edge:                   ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end339

if.end339.sink.split:                             ; preds = %do.body309.if.end339.sink.split_crit_edge, %do.body279.if.end339.sink.split_crit_edge
  %bf.cast313.sink = phi i32 [ %bf.cast283, %do.body279.if.end339.sink.split_crit_edge ], [ %bf.cast313, %do.body309.if.end339.sink.split_crit_edge ]
  %.sink = phi i352 [ -19342794667089993085747201, %do.body279.if.end339.sink.split_crit_edge ], [ -83076670508394727792150347723571201, %do.body309.if.end339.sink.split_crit_edge ]
  %add.ptr295 = getelementptr i32, ptr %tag, i32 3
  %51 = ptrtoint ptr %add.ptr295 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr295, align 4
  %and326 = and i32 %52, -1048576
  %or329 = or i32 %and326, %bf.cast313.sink
  store i32 %or329, ptr %add.ptr295, align 4
  %53 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 44)
  %bf.load333 = load i352, ptr %misc1, align 4
  %bf.clear334 = and i352 %bf.load333, %.sink
  store i352 %bf.clear334, ptr %misc1, align 4
  br label %if.end339

if.end339:                                        ; preds = %if.end339.sink.split, %do.body309.if.end339_crit_edge, %do.body279.if.end339_crit_edge
  %54 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %54, i32 20)
  %bf.load340 = load i160, ptr %tcp_dport, align 4
  %bf.lshr341 = lshr i160 %bf.load340, 96
  %55 = trunc i160 %bf.lshr341 to i32
  %bf.cast343 = and i32 %55, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast343)
  %tobool344.not = icmp eq i32 %bf.cast343, 0
  br i1 %tobool344.not, label %if.end339.if.end566_crit_edge, label %do.body347

if.end339.if.end566_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end566

do.body347:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr360 = getelementptr i32, ptr %tag, i32 1
  %56 = ptrtoint ptr %add.ptr360 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr360, align 4
  %and361 = and i32 %57, -16777217
  %58 = shl i32 %55, 16
  %shl363 = and i32 %58, 16777216
  %or364 = or i32 %and361, %shl363
  store i32 %or364, ptr %add.ptr360, align 4
  %59 = ptrtoint ptr %tcp_dport to i32
  call void @__asan_loadN_noabort(i32 %59, i32 20)
  %bf.load371 = load i160, ptr %tcp_dport, align 4
  %and385 = and i32 %or364, -8388609
  %sh.diff = lshr i160 %bf.load371, 80
  %tr.sh.diff = trunc i160 %sh.diff to i32
  %shl387 = and i32 %tr.sh.diff, 8388608
  %or388 = or i32 %shl387, %and385
  store i32 %or388, ptr %add.ptr360, align 4
  %bf.load395 = load i160, ptr %tcp_dport, align 4
  %and409 = and i32 %or388, -4194305
  %sh.diff654 = lshr i160 %bf.load395, 80
  %tr.sh.diff655 = trunc i160 %sh.diff654 to i32
  %shl411 = and i32 %tr.sh.diff655, 4194304
  %or412 = or i32 %and409, %shl411
  store i32 %or412, ptr %add.ptr360, align 4
  %bf.load419 = load i160, ptr %tcp_dport, align 4
  %and433 = and i32 %or412, -2097153
  %sh.diff657 = lshr i160 %bf.load419, 80
  %tr.sh.diff658 = trunc i160 %sh.diff657 to i32
  %shl435 = and i32 %tr.sh.diff658, 2097152
  %or436 = or i32 %and433, %shl435
  store i32 %or436, ptr %add.ptr360, align 4
  %bf.load443 = load i160, ptr %tcp_dport, align 4
  %and457 = and i32 %or436, -1048577
  %sh.diff660 = lshr i160 %bf.load443, 80
  %tr.sh.diff661 = trunc i160 %sh.diff660 to i32
  %shl459 = and i32 %tr.sh.diff661, 1048576
  %or460 = or i32 %and457, %shl459
  store i32 %or460, ptr %add.ptr360, align 4
  %bf.load467 = load i160, ptr %tcp_dport, align 4
  %and481 = and i32 %or460, -524289
  %sh.diff663 = lshr i160 %bf.load467, 80
  %tr.sh.diff664 = trunc i160 %sh.diff663 to i32
  %shl483 = and i32 %tr.sh.diff664, 524288
  %or484 = or i32 %and481, %shl483
  store i32 %or484, ptr %add.ptr360, align 4
  %bf.load491 = load i160, ptr %tcp_dport, align 4
  %and505 = and i32 %or484, -262145
  %sh.diff666 = lshr i160 %bf.load491, 80
  %tr.sh.diff667 = trunc i160 %sh.diff666 to i32
  %shl507 = and i32 %tr.sh.diff667, 262144
  %or508 = or i32 %and505, %shl507
  store i32 %or508, ptr %add.ptr360, align 4
  %bf.load515 = load i160, ptr %tcp_dport, align 4
  %and529 = and i32 %or508, -131073
  %sh.diff669 = lshr i160 %bf.load515, 80
  %tr.sh.diff670 = trunc i160 %sh.diff669 to i32
  %shl531 = and i32 %tr.sh.diff670, 131072
  %or532 = or i32 %and529, %shl531
  store i32 %or532, ptr %add.ptr360, align 4
  %bf.load539 = load i160, ptr %tcp_dport, align 4
  %and553 = and i32 %or532, -65537
  %sh.diff672 = lshr i160 %bf.load539, 80
  %tr.sh.diff673 = trunc i160 %sh.diff672 to i32
  %shl555 = and i32 %tr.sh.diff673, 65536
  %or556 = or i32 %and553, %shl555
  store i32 %or556, ptr %add.ptr360, align 4
  %bf.load563 = load i160, ptr %tcp_dport, align 4
  %bf.clear564 = and i160 %bf.load563, -40485591044789076510300958621697
  store i160 %bf.clear564, ptr %tcp_dport, align 4
  br label %if.end566

if.end566:                                        ; preds = %do.body347, %if.end339.if.end566_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_mpls_tag(ptr noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %1 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 16)
  %bf.load117 = load i128, ptr %misc21, align 4
  br i1 %tobool.not, label %do.body113, label %do.body

do.body:                                          ; preds = %entry
  %bf.lshr4 = lshr i128 %bf.load117, 76
  %2 = trunc i128 %bf.lshr4 to i32
  %bf.cast = and i32 %2, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool5.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool5.not, label %do.body.do.body21_crit_edge, label %do.body7

do.body.do.body21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag, align 4
  %and = and i32 %4, 4095
  %shl = shl i32 %2, 12
  %or = or i32 %and, %shl
  store i32 %or, ptr %tag, align 4
  %5 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 16)
  %bf.load17 = load i128, ptr %misc21, align 4
  %bf.clear18 = and i128 %bf.load17, -79228086956400611679220531201
  store i128 %bf.clear18, ptr %misc21, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.body7, %do.body.do.body21_crit_edge
  %6 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load22 = load i128, ptr %misc21, align 4
  %7 = and i128 %bf.load22, 4722366482869645213696
  %tobool26.not = icmp eq i128 %7, 0
  br i1 %tobool26.not, label %do.body21.do.body51_crit_edge, label %do.body28

do.body21.do.body51_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

do.body28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  %or41 = or i32 %9, 256
  store i32 %or41, ptr %tag, align 4
  %10 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %bf.load45 = load i128, ptr %misc21, align 4
  %bf.clear46 = and i128 %bf.load45, -4722366482869645213697
  store i128 %bf.clear46, ptr %misc21, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.body28, %do.body21.do.body51_crit_edge
  %11 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 16)
  %bf.load52 = load i128, ptr %misc21, align 4
  %bf.lshr53 = lshr i128 %bf.load52, 73
  %12 = trunc i128 %bf.lshr53 to i32
  %bf.cast55 = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast55)
  %tobool56.not = icmp eq i32 %bf.cast55, 0
  br i1 %tobool56.not, label %do.body51.do.body81_crit_edge, label %do.body58

do.body51.do.body81_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tag, align 4
  %and68 = and i32 %14, -3585
  %shl70 = shl nuw nsw i32 %bf.cast55, 9
  %or71 = or i32 %and68, %shl70
  store i32 %or71, ptr %tag, align 4
  %15 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 16)
  %bf.load75 = load i128, ptr %misc21, align 4
  %bf.clear76 = and i128 %bf.load75, -66113130760175032991745
  store i128 %bf.clear76, ptr %misc21, align 4
  br label %do.body81

do.body81:                                        ; preds = %do.body58, %do.body51.do.body81_crit_edge
  %16 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 16)
  %bf.load82 = load i128, ptr %misc21, align 4
  %bf.lshr83 = lshr i128 %bf.load82, 64
  %17 = trunc i128 %bf.lshr83 to i32
  %bf.cast85 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast85)
  %tobool86.not = icmp eq i32 %bf.cast85, 0
  br i1 %tobool86.not, label %do.body81.if.end236_crit_edge, label %do.body81.if.end236.sink.split_crit_edge

do.body81.if.end236.sink.split_crit_edge:         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236.sink.split

do.body81.if.end236_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

do.body113:                                       ; preds = %entry
  %bf.lshr118 = lshr i128 %bf.load117, 108
  %bf.cast119 = trunc i128 %bf.lshr118 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast119)
  %tobool120.not = icmp eq i32 %bf.cast119, 0
  br i1 %tobool120.not, label %do.body113.do.body144_crit_edge, label %do.body122

do.body113.do.body144_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body144

do.body122:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag, align 4
  %and131 = and i32 %19, 4095
  %shl133 = shl nuw i32 %bf.cast119, 12
  %or134 = or i32 %and131, %shl133
  store i32 %or134, ptr %tag, align 4
  %20 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 16)
  %bf.load138 = load i128, ptr %misc21, align 4
  %bf.clear139 = and i128 %bf.load138, 324518553658426726783156020576255
  store i128 %bf.clear139, ptr %misc21, align 4
  br label %do.body144

do.body144:                                       ; preds = %do.body122, %do.body113.do.body144_crit_edge
  %21 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 16)
  %bf.load145 = load i128, ptr %misc21, align 4
  %22 = and i128 %bf.load145, 20282409603651670423947251286016
  %tobool149.not = icmp eq i128 %22, 0
  br i1 %tobool149.not, label %do.body144.do.body174_crit_edge, label %do.body151

do.body144.do.body174_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body174

do.body151:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tag, align 4
  %or164 = or i32 %24, 256
  store i32 %or164, ptr %tag, align 4
  %25 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 16)
  %bf.load168 = load i128, ptr %misc21, align 4
  %bf.clear169 = and i128 %bf.load168, -20282409603651670423947251286017
  store i128 %bf.clear169, ptr %misc21, align 4
  br label %do.body174

do.body174:                                       ; preds = %do.body151, %do.body144.do.body174_crit_edge
  %26 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 16)
  %bf.load175 = load i128, ptr %misc21, align 4
  %bf.lshr176 = lshr i128 %bf.load175, 105
  %27 = trunc i128 %bf.lshr176 to i32
  %bf.cast178 = and i32 %27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast178)
  %tobool179.not = icmp eq i32 %bf.cast178, 0
  br i1 %tobool179.not, label %do.body174.do.body204_crit_edge, label %do.body181

do.body174.do.body204_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body204

do.body181:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tag, align 4
  %and191 = and i32 %29, -3585
  %shl193 = shl nuw nsw i32 %bf.cast178, 9
  %or194 = or i32 %and191, %shl193
  store i32 %or194, ptr %tag, align 4
  %30 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 16)
  %bf.load198 = load i128, ptr %misc21, align 4
  %bf.clear199 = and i128 %bf.load198, -283953734451123385935261518004225
  store i128 %bf.clear199, ptr %misc21, align 4
  br label %do.body204

do.body204:                                       ; preds = %do.body181, %do.body174.do.body204_crit_edge
  %31 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 16)
  %bf.load205 = load i128, ptr %misc21, align 4
  %bf.lshr206 = lshr i128 %bf.load205, 96
  %32 = trunc i128 %bf.lshr206 to i32
  %bf.cast208 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast208)
  %tobool209.not = icmp eq i32 %bf.cast208, 0
  br i1 %tobool209.not, label %do.body204.if.end236_crit_edge, label %do.body204.if.end236.sink.split_crit_edge

do.body204.if.end236.sink.split_crit_edge:        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236.sink.split

do.body204.if.end236_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.end236.sink.split:                             ; preds = %do.body204.if.end236.sink.split_crit_edge, %do.body81.if.end236.sink.split_crit_edge
  %bf.cast208.sink = phi i32 [ %bf.cast85, %do.body81.if.end236.sink.split_crit_edge ], [ %bf.cast208, %do.body204.if.end236.sink.split_crit_edge ]
  %.sink = phi i128 [ -4703919738795935662081, %do.body81.if.end236.sink.split_crit_edge ], [ -20203181441137406086353707335681, %do.body204.if.end236.sink.split_crit_edge ]
  %33 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tag, align 4
  %and221 = and i32 %34, -256
  %or224 = or i32 %and221, %bf.cast208.sink
  store i32 %or224, ptr %tag, align 4
  %35 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 16)
  %bf.load228 = load i128, ptr %misc21, align 4
  %bf.clear229 = and i128 %bf.load228, %.sink
  store i128 %bf.clear229, ptr %misc21, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.end236.sink.split, %do.body204.if.end236_crit_edge, %do.body81.if.end236_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_gre_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %0 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 224
  %1 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %do.body2

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %4 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12 = load i352, ptr %misc1, align 4
  %bf.clear13 = and i352 %bf.load12, -1766820104831717178943502833727831496196810259731196417549125097682370561
  store i352 %bf.clear13, ptr %misc1, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.body2, %entry.do.body16_crit_edge
  %5 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17 = load i352, ptr %misc1, align 4
  %6 = and i352 %bf.load17, 1146749307995035755805410447651043470398282494584140561868794419693461438044242404035009276555062843277312
  %tobool21.not = icmp eq i352 %6, 0
  br i1 %tobool21.not, label %do.body16.do.body46_crit_edge, label %do.body23

do.body16.do.body46_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

do.body23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %or36 = or i32 %8, 536870912
  store i32 %or36, ptr %tag, align 4
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40 = load i352, ptr %misc1, align 4
  %bf.clear41 = and i352 %bf.load40, -1146749307995035755805410447651043470398282494584140561868794419693461438044242404035009276555062843277313
  store i352 %bf.clear41, ptr %misc1, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.body23, %do.body16.do.body46_crit_edge
  %10 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47 = load i352, ptr %misc1, align 4
  %bf.lshr48 = lshr i352 %bf.load47, 200
  %11 = trunc i352 %bf.lshr48 to i32
  %bf.cast50 = and i32 %11, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50)
  %tobool51.not = icmp eq i32 %bf.cast50, 0
  br i1 %tobool51.not, label %do.body46.do.body76_crit_edge, label %do.body53

do.body46.do.body76_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76

do.body53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr62 = getelementptr i32, ptr %tag, i32 2
  %12 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr62, align 4
  %and63 = and i32 %13, 255
  %shl65 = shl i32 %11, 8
  %or66 = or i32 %and63, %shl65
  store i32 %or66, ptr %add.ptr62, align 4
  %14 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70 = load i352, ptr %misc1, align 4
  %bf.clear71 = and i352 %bf.load70, -26959945060212595535676739545057538332474541900337578698310774947841
  store i352 %bf.clear71, ptr %misc1, align 4
  br label %do.body76

do.body76:                                        ; preds = %do.body53, %do.body46.do.body76_crit_edge
  %15 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77 = load i352, ptr %misc1, align 4
  %bf.lshr78 = lshr i352 %bf.load77, 192
  %16 = trunc i352 %bf.lshr78 to i32
  %bf.cast80 = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80)
  %tobool81.not = icmp eq i32 %bf.cast80, 0
  br i1 %tobool81.not, label %do.body76.do.body106_crit_edge, label %do.body83

do.body76.do.body106_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body106

do.body83:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr92 = getelementptr i32, ptr %tag, i32 2
  %17 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92, align 4
  %and93 = and i32 %18, -256
  %or96 = or i32 %and93, %bf.cast80
  store i32 %or96, ptr %add.ptr92, align 4
  %19 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100 = load i352, ptr %misc1, align 4
  %bf.clear101 = and i352 %bf.load100, -1600660942523603594778126302917954936106100638338328800788481
  store i352 %bf.clear101, ptr %misc1, align 4
  br label %do.body106

do.body106:                                       ; preds = %do.body83, %do.body76.do.body106_crit_edge
  %bf.load107 = phi i352 [ %bf.load77, %do.body76.do.body106_crit_edge ], [ %bf.clear101, %do.body83 ]
  %tobool110.not = icmp sgt i352 %bf.load107, -1
  br i1 %tobool110.not, label %do.body106.do.body134_crit_edge, label %do.body112

do.body106.do.body134_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body134

do.body112:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tag, align 4
  %or124 = or i32 %21, -2147483648
  store i32 %or124, ptr %tag, align 4
  %22 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 44)
  %bf.load128 = load i352, ptr %misc1, align 4
  %bf.clear129 = and i352 %bf.load128, 4586997231980143023221641790604173881593129978336562247475177678773845752176969616140037106220251373109247
  store i352 %bf.clear129, ptr %misc1, align 4
  br label %do.body134

do.body134:                                       ; preds = %do.body112, %do.body106.do.body134_crit_edge
  %23 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 44)
  %bf.load135 = load i352, ptr %misc1, align 4
  %24 = and i352 %bf.load135, 573374653997517877902705223825521735199141247292070280934397209846730719022121202017504638277531421638656
  %tobool139.not = icmp eq i352 %24, 0
  br i1 %tobool139.not, label %do.body134.do.end163_crit_edge, label %do.body141

do.body134.do.end163_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end163

do.body141:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tag, align 4
  %or154 = or i32 %26, 268435456
  store i32 %or154, ptr %tag, align 4
  %27 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 44)
  %bf.load158 = load i352, ptr %misc1, align 4
  %bf.clear159 = and i352 %bf.load158, -573374653997517877902705223825521735199141247292070280934397209846730719022121202017504638277531421638657
  store i352 %bf.clear159, ptr %misc1, align 4
  br label %do.end163

do.end163:                                        ; preds = %do.body141, %do.body134.do.end163_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_mpls_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc2, align 4
  %1 = and i128 %bf.load, 18446744069414584320
  %2 = icmp eq i128 %1, 0
  %sh.diff = lshr i128 %bf.load, 32
  %sh.diff.sink = select i1 %2, i128 %bf.load, i128 %sh.diff
  %.sink = select i1 %2, i128 -4294967296, i128 -18446744069414584321
  %tr.sh.diff = trunc i128 %sh.diff.sink to i32
  %bf.clear48 = and i128 %bf.load, %.sink
  store i128 %bf.clear48, ptr %misc2, align 4
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tr.sh.diff, ptr %tag, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_mpls_over_gre_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc21, align 4
  %sh.diff = lshr i128 %bf.load, 32
  %tr.sh.diff = trunc i128 %sh.diff to i32
  %bf.clear28 = and i128 %bf.load, -18446744069414584321
  store i128 %bf.clear28, ptr %misc21, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 4
  %flex_parser_id_mpls_over_gre = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flex_parser_id_mpls_over_gre to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flex_parser_id_mpls_over_gre, align 1
  %5 = shl i8 %4, 2
  %6 = and i8 %5, 12
  %7 = xor i8 %6, 12
  %mul.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tr.sh.diff, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_mpls_over_udp_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc21 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3
  %0 = ptrtoint ptr %misc21 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %misc21, align 4
  %1 = trunc i128 %bf.load to i32
  %bf.clear27 = and i128 %bf.load, -4294967296
  store i128 %bf.clear27, ptr %misc21, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %flex_parser_id_mpls_over_udp = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flex_parser_id_mpls_over_udp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flex_parser_id_mpls_over_udp, align 2
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 12
  %8 = xor i8 %7, 12
  %mul.i = zext i8 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %add.ptr.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_icmp_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpv4_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %icmpv4_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %icmpv4_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %icmpv4_code = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %icmpv4_code to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %icmpv4_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.rhs, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs:                                          ; preds = %lor.lhs.false
  %icmpv4_header_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %icmpv4_header_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %icmpv4_header_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else, label %lor.rhs.if.then_crit_edge

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %icmpv4_header_data5 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 5
  %icmpv4_code7 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 8
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps, align 4
  %flex_parser_id_icmp_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %7, i32 0, i32 9
  %flex_parser_id_icmp_dw1 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %7, i32 0, i32 10
  br label %if.end

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %icmpv6_header_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 6
  %icmpv6_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 9
  %icmpv6_code = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 10
  %caps11 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %caps11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps11, align 4
  %flex_parser_id_icmpv6_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %9, i32 0, i32 11
  %flex_parser_id_icmpv6_dw1 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %9, i32 0, i32 12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %icmp_header_data.0 = phi ptr [ %icmpv4_header_data5, %if.then ], [ %icmpv6_header_data, %if.else ]
  %dw0_location.0.in.in = phi ptr [ %flex_parser_id_icmp_dw0, %if.then ], [ %flex_parser_id_icmpv6_dw0, %if.else ]
  %dw1_location.0.in.in = phi ptr [ %flex_parser_id_icmp_dw1, %if.then ], [ %flex_parser_id_icmpv6_dw1, %if.else ]
  %icmp_type.0 = phi ptr [ %icmpv4_type, %if.then ], [ %icmpv6_type, %if.else ]
  %icmp_code.0 = phi ptr [ %icmpv4_code7, %if.then ], [ %icmpv6_code, %if.else ]
  %10 = ptrtoint ptr %dw1_location.0.in.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %dw1_location.0.in38 = load i8, ptr %dw1_location.0.in.in, align 1
  %11 = ptrtoint ptr %dw0_location.0.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %dw0_location.0.in37 = load i8, ptr %dw0_location.0.in.in, align 2
  %12 = shl i8 %dw0_location.0.in37, 2
  %13 = and i8 %12, 12
  %14 = xor i8 %13, 12
  %mul.i = zext i8 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %15 = ptrtoint ptr %icmp_type.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %icmp_type.0, align 1
  %conv16 = zext i8 %16 to i32
  %shl = shl nuw i32 %conv16, 24
  %17 = ptrtoint ptr %icmp_code.0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %icmp_code.0, align 1
  %conv17 = zext i8 %18 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %or = or i32 %shl18, %shl
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %add.ptr.i, align 4
  store i8 0, ptr %icmp_code.0, align 1
  store i8 0, ptr %icmp_type.0, align 1
  %20 = shl i8 %dw1_location.0.in38, 2
  %21 = and i8 %20, 12
  %22 = xor i8 %21, 12
  %mul.i40 = zext i8 %22 to i32
  %add.ptr.i41 = getelementptr i8, ptr %tag, i32 %mul.i40
  %23 = ptrtoint ptr %icmp_header_data.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %icmp_header_data.0, align 4
  %25 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr.i41, align 4
  store i32 0, ptr %icmp_header_data.0, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_general_purpose_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_a = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %metadata_reg_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_a to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_a, align 4
  br label %do.end10

do.end10:                                         ; preds = %do.body1, %entry.do.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_eth_l4_misc_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc31 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body35, label %do.body

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %misc31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %misc31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body.do.body14_crit_edge, label %do.body4

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %misc31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %misc31, align 4
  br label %do.body14

do.body14:                                        ; preds = %do.body4, %do.body.do.body14_crit_edge
  %inner_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %inner_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inner_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %do.body14.if.end77_crit_edge, label %do.body14.if.end77.sink.split_crit_edge

do.body14.if.end77.sink.split_crit_edge:          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.sink.split

do.body14.if.end77_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.body35:                                        ; preds = %entry
  %outer_tcp_seq_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %outer_tcp_seq_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %outer_tcp_seq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %do.body35.do.body56_crit_edge, label %do.body38

do.body35.do.body56_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

do.body38:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr44 = getelementptr i32, ptr %tag, i32 1
  %9 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr44, align 4
  %10 = ptrtoint ptr %outer_tcp_seq_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outer_tcp_seq_num, align 4
  br label %do.body56

do.body56:                                        ; preds = %do.body38, %do.body35.do.body56_crit_edge
  %outer_tcp_ack_num = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %outer_tcp_ack_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outer_tcp_ack_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool57.not = icmp eq i32 %12, 0
  br i1 %tobool57.not, label %do.body56.if.end77_crit_edge, label %do.body56.if.end77.sink.split_crit_edge

do.body56.if.end77.sink.split_crit_edge:          ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.sink.split

do.body56.if.end77_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.end77.sink.split:                              ; preds = %do.body56.if.end77.sink.split_crit_edge, %do.body14.if.end77.sink.split_crit_edge
  %.sink = phi i32 [ %6, %do.body14.if.end77.sink.split_crit_edge ], [ %12, %do.body56.if.end77.sink.split_crit_edge ]
  %outer_tcp_ack_num.sink = phi ptr [ %inner_tcp_ack_num, %do.body14.if.end77.sink.split_crit_edge ], [ %outer_tcp_ack_num, %do.body56.if.end77.sink.split_crit_edge ]
  %add.ptr65 = getelementptr i32, ptr %tag, i32 2
  %13 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %add.ptr65, align 4
  %14 = ptrtoint ptr %outer_tcp_ack_num.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outer_tcp_ack_num.sink, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %do.body56.if.end77_crit_edge, %do.body14.if.end77_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_flex_parser_tnl_vxlan_gpe_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %outer_vxlan_gpe_flags = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %1 = trunc i64 %bf.load to i32
  %2 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body18_crit_edge, label %do.body2

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tag, align 4
  %and = and i32 %4, 16777215
  %5 = shl i32 %1, 8
  %shl = and i32 %5, -16777216
  %or = or i32 %and, %shl
  store i32 %or, ptr %tag, align 4
  %6 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load14 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear15 = and i64 %bf.load14, -16711681
  store i64 %bf.clear15, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.body18

do.body18:                                        ; preds = %do.body2, %entry.do.body18_crit_edge
  %7 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load19 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %8 = trunc i64 %bf.load19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %tobool23.not = icmp ult i32 %8, 16777216
  br i1 %tobool23.not, label %do.body18.do.body50_crit_edge, label %do.body25

do.body18.do.body50_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

do.body25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %9 = lshr i32 %8, 24
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %and36 = and i32 %11, -256
  %or39 = or i32 %and36, %9
  store i32 %or39, ptr %tag, align 4
  %12 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load44 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear45 = and i64 %bf.load44, -4278190081
  store i64 %bf.clear45, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.body50

do.body50:                                        ; preds = %do.body25, %do.body18.do.body50_crit_edge
  %13 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load51 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.lshr52 = lshr i64 %bf.load51, 32
  %14 = trunc i64 %bf.lshr52 to i32
  %bf.cast54 = and i32 %14, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast54)
  %tobool55.not = icmp eq i32 %bf.cast54, 0
  br i1 %tobool55.not, label %do.body50.do.end81_crit_edge, label %do.body57

do.body50.do.end81_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

do.body57:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr67 = getelementptr i32, ptr %tag, i32 1
  %15 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr67, align 4
  %and68 = and i32 %16, 255
  %shl70 = shl i32 %14, 8
  %or71 = or i32 %and68, %shl70
  store i32 %or71, ptr %add.ptr67, align 4
  %17 = ptrtoint ptr %outer_vxlan_gpe_flags to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load76 = load i64, ptr %outer_vxlan_gpe_flags, align 4
  %bf.clear77 = and i64 %bf.load76, -72057589742960641
  store i64 %bf.clear77, ptr %outer_vxlan_gpe_flags, align 4
  br label %do.end81

do.end81:                                         ; preds = %do.body57, %do.body50.do.end81_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_flex_parser_tnl_geneve_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %0 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 32
  %1 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.body16_crit_edge, label %do.body2

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -65536
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %tag, align 4
  %4 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 44)
  %bf.load12 = load i352, ptr %misc1, align 4
  %bf.clear13 = and i352 %bf.load12, -281470681743361
  store i352 %bf.clear13, ptr %misc1, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.body2, %entry.do.body16_crit_edge
  %5 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 44)
  %bf.load17 = load i352, ptr %misc1, align 4
  %6 = and i352 %bf.load17, 340282366920938463463374607431768211456
  %tobool21.not = icmp eq i352 %6, 0
  br i1 %tobool21.not, label %do.body16.do.body46_crit_edge, label %do.body23

do.body16.do.body46_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

do.body23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %or36 = or i32 %8, 8388608
  store i32 %or36, ptr %tag, align 4
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load40 = load i352, ptr %misc1, align 4
  %bf.clear41 = and i352 %bf.load40, -340282366920938463463374607431768211457
  store i352 %bf.clear41, ptr %misc1, align 4
  br label %do.body46

do.body46:                                        ; preds = %do.body23, %do.body16.do.body46_crit_edge
  %10 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 44)
  %bf.load47 = load i352, ptr %misc1, align 4
  %bf.lshr48 = lshr i352 %bf.load47, 48
  %11 = trunc i352 %bf.lshr48 to i32
  %bf.cast50 = and i32 %11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast50)
  %tobool51.not = icmp eq i32 %bf.cast50, 0
  br i1 %tobool51.not, label %do.body46.do.body76_crit_edge, label %do.body53

do.body46.do.body76_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body76

do.body53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  %and63 = and i32 %13, -1056964609
  %shl65 = shl nuw nsw i32 %bf.cast50, 24
  %or66 = or i32 %and63, %shl65
  store i32 %or66, ptr %tag, align 4
  %14 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 44)
  %bf.load70 = load i352, ptr %misc1, align 4
  %bf.clear71 = and i352 %bf.load70, -17732923532771329
  store i352 %bf.clear71, ptr %misc1, align 4
  br label %do.body76

do.body76:                                        ; preds = %do.body53, %do.body46.do.body76_crit_edge
  %15 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 44)
  %bf.load77 = load i352, ptr %misc1, align 4
  %bf.lshr78 = lshr i352 %bf.load77, 136
  %16 = trunc i352 %bf.lshr78 to i32
  %bf.cast80 = and i32 %16, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast80)
  %tobool81.not = icmp eq i32 %bf.cast80, 0
  br i1 %tobool81.not, label %do.body76.do.end105_crit_edge, label %do.body83

do.body76.do.end105_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end105

do.body83:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr92 = getelementptr i32, ptr %tag, i32 1
  %17 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr92, align 4
  %and93 = and i32 %18, 255
  %shl95 = shl i32 %16, 8
  %or96 = or i32 %and93, %shl95
  store i32 %or96, ptr %add.ptr92, align 4
  %19 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 44)
  %bf.load100 = load i352, ptr %misc1, align 4
  %bf.clear101 = and i352 %bf.load100, -1461501550218616986443438186092383517123270410241
  store i352 %bf.clear101, ptr %misc1, align 4
  br label %do.end105

do.end105:                                        ; preds = %do.body83, %do.body76.do.end105_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_flex_parser_tnl_geneve_tlv_opt_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %geneve_tlv_option_0_data = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %geneve_tlv_option_0_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %geneve_tlv_option_0_data, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %geneve_tlv_option_0_data, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_register_0_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_c_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %metadata_reg_c_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %metadata_reg_c_1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %metadata_reg_c_1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_1, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %metadata_reg_c_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %metadata_reg_c_2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %10 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42, align 4
  %11 = ptrtoint ptr %metadata_reg_c_2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_2, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %metadata_reg_c_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %metadata_reg_c_3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not = icmp eq i32 %13, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %14 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63, align 4
  %15 = ptrtoint ptr %metadata_reg_c_3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_3, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_register_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %metadata_reg_c_4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %metadata_reg_c_4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %metadata_reg_c_4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %metadata_reg_c_4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %metadata_reg_c_4, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %metadata_reg_c_5 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %metadata_reg_c_5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_reg_c_5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.body33_crit_edge, label %do.body15

do.body12.do.body33_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %metadata_reg_c_5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %metadata_reg_c_5, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.body15, %do.body12.do.body33_crit_edge
  %metadata_reg_c_6 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %metadata_reg_c_6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %metadata_reg_c_6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %do.body33.do.body54_crit_edge, label %do.body36

do.body33.do.body54_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.body36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr42 = getelementptr i32, ptr %tag, i32 2
  %10 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr42, align 4
  %11 = ptrtoint ptr %metadata_reg_c_6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %metadata_reg_c_6, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body36, %do.body33.do.body54_crit_edge
  %metadata_reg_c_7 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %metadata_reg_c_7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_reg_c_7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool55.not = icmp eq i32 %13, 0
  br i1 %tobool55.not, label %do.body54.do.end74_crit_edge, label %do.body57

do.body54.do.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.body57:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr63 = getelementptr i32, ptr %tag, i32 3
  %14 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr63, align 4
  %15 = ptrtoint ptr %metadata_reg_c_7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %metadata_reg_c_7, align 4
  br label %do.end74

do.end74:                                         ; preds = %do.body57, %do.body54.do.end74_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dr_ste_v0_build_src_gvmi_qpn_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 1
  %dmn2 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 1
  %0 = ptrtoint ptr %dmn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmn2, align 4
  %bit_mask3 = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 5
  %2 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 44)
  %bf.load = load i352, ptr %misc1, align 4
  %bf.lshr = lshr i352 %bf.load, 320
  %3 = trunc i352 %bf.lshr to i32
  %bf.cast = and i32 %3, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool.not = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not, label %entry.do.end17_crit_edge, label %do.body4

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i32, ptr %tag, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, -16777216
  %or = or i32 %and, %bf.cast
  store i32 %or, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 44)
  %bf.load14 = load i352, ptr %misc1, align 4
  %bf.clear15 = and i352 %bf.load14, -35835913738857831448008994094073402280394213353049870201747055668379062116662849345453489869383626915841
  store i352 %bf.clear15, ptr %misc1, align 4
  br label %do.end17

do.end17:                                         ; preds = %do.body4, %entry.do.end17_crit_edge
  %7 = ptrtoint ptr %sb to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load18 = load i8, ptr %sb, align 4
  %8 = and i8 %bf.load18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %do.end17.if.end50_crit_edge, label %if.then22

do.end17.if.end50_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then22:                                        ; preds = %do.end17
  %9 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 44)
  %bf.load23 = load i352, ptr %misc1, align 4
  %bf.lshr24 = lshr i352 %bf.load23, 304
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 7
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %caps, align 8
  %12 = trunc i352 %bf.lshr24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp = icmp eq i16 %11, %12
  br i1 %cmp, label %if.then22.if.end45_crit_edge, label %if.else

if.then22.if.end45_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else:                                          ; preds = %if.then22
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %caps36 = getelementptr inbounds %struct.mlx5dr_domain, ptr %14, i32 0, i32 9, i32 7
  %15 = ptrtoint ptr %caps36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %caps36, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %12)
  %cmp39 = icmp eq i16 %16, %12
  br i1 %cmp39, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.then22.if.end45_crit_edge
  %vport_dmn.0 = phi ptr [ %1, %if.then22.if.end45_crit_edge ], [ %14, %land.lhs.true.if.end45_crit_edge ]
  %bf.clear47 = and i352 %bf.load23, -2135954443345288730617641411038537564552127698862354114967031429575030055679844336635663152578561
  %17 = ptrtoint ptr %misc1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 44)
  store i352 %bf.clear47, ptr %misc1, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %do.end17.if.end50_crit_edge
  %vport_dmn.1 = phi ptr [ %vport_dmn.0, %if.end45 ], [ %1, %do.end17.if.end50_crit_edge ]
  %18 = ptrtoint ptr %bit_mask3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bit_mask3, align 4
  %and52 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.then55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  %20 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 44)
  %bf.load56 = load i352, ptr %misc1, align 4
  %bf.lshr57 = lshr i352 %bf.load56, 288
  %21 = trunc i352 %bf.lshr57 to i16
  %call = tail call ptr @mlx5dr_domain_get_vport_cap(ptr noundef %vport_dmn.1, i16 noundef zeroext %21) #12
  %tobool61.not = icmp eq ptr %call, null
  br i1 %tobool61.not, label %do.end65, label %if.end71

do.end65:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !12) #12
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  %32 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 44)
  %bf.load67 = load i352, ptr %misc1, align 4
  %bf.lshr68 = lshr i352 %bf.load67, 288
  %33 = trunc i352 %bf.lshr68 to i32
  %bf.cast70 = and i32 %33, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1676, i32 noundef %31, i32 noundef %bf.cast70) #15
  br label %cleanup

if.end71:                                         ; preds = %if.then55
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool72.not = icmp eq i16 %35, 0
  br i1 %tobool72.not, label %if.end71.if.end89_crit_edge, label %do.body74

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

do.body74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %conv77 = zext i16 %35 to i32
  %36 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tag, align 4
  %and82 = and i32 %37, -65536
  %or85 = or i32 %and82, %conv77
  store i32 %or85, ptr %tag, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.body74, %if.end71.if.end89_crit_edge
  %38 = ptrtoint ptr %misc1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 44)
  %bf.load90 = load i352, ptr %misc1, align 4
  %bf.clear91 = and i352 %bf.load90, -32592078298115367593652975632301903755983393842504182662460806725693207636716374765558824961
  store i352 %bf.clear91, ptr %misc1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %do.end65, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end65 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end89 ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_domain_get_vport_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_flex_parser_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #4 align 64 {
entry:
  %parser_is_used = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %misc4 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parser_is_used) #12
  %0 = ptrtoint ptr %parser_is_used to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %parser_is_used, align 8
  %prog_sample_field_id_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prog_sample_field_id_0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prog_sample_field_id_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp.i = icmp ugt i32 %2, 7
  br i1 %cmp.i, label %entry.dr_ste_v0_set_flex_parser.exit_crit_edge, label %lor.lhs.false.i

entry.dr_ste_v0_set_flex_parser.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %parser_is_used, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.dr_ste_v0_set_flex_parser.exit_crit_edge

lor.lhs.false.i.dr_ste_v0_set_flex_parser.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.i, align 1
  %6 = shl nuw nsw i32 %2, 2
  %7 = and i32 %6, 12
  %8 = xor i32 %7, 12
  %add.ptr.i.i = getelementptr i8, ptr %tag, i32 %8
  %9 = ptrtoint ptr %misc4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %misc4, align 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add.ptr.i.i, align 4
  %12 = ptrtoint ptr %prog_sample_field_id_0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %prog_sample_field_id_0, align 4
  store i32 0, ptr %misc4, align 4
  br label %dr_ste_v0_set_flex_parser.exit

dr_ste_v0_set_flex_parser.exit:                   ; preds = %if.end.i, %lor.lhs.false.i.dr_ste_v0_set_flex_parser.exit_crit_edge, %entry.dr_ste_v0_set_flex_parser.exit_crit_edge
  %prog_sample_field_id_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 3
  %prog_sample_field_value_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %prog_sample_field_id_1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prog_sample_field_id_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp.i14 = icmp ugt i32 %14, 7
  br i1 %cmp.i14, label %dr_ste_v0_set_flex_parser.exit.dr_ste_v0_set_flex_parser.exit20_crit_edge, label %lor.lhs.false.i17

dr_ste_v0_set_flex_parser.exit.dr_ste_v0_set_flex_parser.exit20_crit_edge: ; preds = %dr_ste_v0_set_flex_parser.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit20

lor.lhs.false.i17:                                ; preds = %dr_ste_v0_set_flex_parser.exit
  %arrayidx.i15 = getelementptr i8, ptr %parser_is_used, i32 %14
  %15 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i15, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i16 = icmp eq i8 %16, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %lor.lhs.false.i17.dr_ste_v0_set_flex_parser.exit20_crit_edge

lor.lhs.false.i17.dr_ste_v0_set_flex_parser.exit20_crit_edge: ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit20

if.end.i19:                                       ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx.i15, align 1
  %18 = shl nuw nsw i32 %14, 2
  %19 = and i32 %18, 12
  %20 = xor i32 %19, 12
  %add.ptr.i.i18 = getelementptr i8, ptr %tag, i32 %20
  %21 = ptrtoint ptr %prog_sample_field_value_1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prog_sample_field_value_1, align 4
  %23 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr.i.i18, align 4
  %24 = ptrtoint ptr %prog_sample_field_id_1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %prog_sample_field_id_1, align 4
  store i32 0, ptr %prog_sample_field_value_1, align 4
  br label %dr_ste_v0_set_flex_parser.exit20

dr_ste_v0_set_flex_parser.exit20:                 ; preds = %if.end.i19, %lor.lhs.false.i17.dr_ste_v0_set_flex_parser.exit20_crit_edge, %dr_ste_v0_set_flex_parser.exit.dr_ste_v0_set_flex_parser.exit20_crit_edge
  %prog_sample_field_id_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 5
  %prog_sample_field_value_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %prog_sample_field_id_2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prog_sample_field_id_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp.i21 = icmp ugt i32 %26, 7
  br i1 %cmp.i21, label %dr_ste_v0_set_flex_parser.exit20.dr_ste_v0_set_flex_parser.exit27_crit_edge, label %lor.lhs.false.i24

dr_ste_v0_set_flex_parser.exit20.dr_ste_v0_set_flex_parser.exit27_crit_edge: ; preds = %dr_ste_v0_set_flex_parser.exit20
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit27

lor.lhs.false.i24:                                ; preds = %dr_ste_v0_set_flex_parser.exit20
  %arrayidx.i22 = getelementptr i8, ptr %parser_is_used, i32 %26
  %27 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i22, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i23 = icmp eq i8 %28, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %lor.lhs.false.i24.dr_ste_v0_set_flex_parser.exit27_crit_edge

lor.lhs.false.i24.dr_ste_v0_set_flex_parser.exit27_crit_edge: ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit27

if.end.i26:                                       ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx.i22, align 1
  %30 = shl nuw nsw i32 %26, 2
  %31 = and i32 %30, 12
  %32 = xor i32 %31, 12
  %add.ptr.i.i25 = getelementptr i8, ptr %tag, i32 %32
  %33 = ptrtoint ptr %prog_sample_field_value_2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog_sample_field_value_2, align 4
  %35 = ptrtoint ptr %add.ptr.i.i25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr.i.i25, align 4
  %36 = ptrtoint ptr %prog_sample_field_id_2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %prog_sample_field_id_2, align 4
  store i32 0, ptr %prog_sample_field_value_2, align 4
  br label %dr_ste_v0_set_flex_parser.exit27

dr_ste_v0_set_flex_parser.exit27:                 ; preds = %if.end.i26, %lor.lhs.false.i24.dr_ste_v0_set_flex_parser.exit27_crit_edge, %dr_ste_v0_set_flex_parser.exit20.dr_ste_v0_set_flex_parser.exit27_crit_edge
  %prog_sample_field_id_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 7
  %prog_sample_field_value_3 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 5, i32 6
  %37 = ptrtoint ptr %prog_sample_field_id_3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prog_sample_field_id_3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %38)
  %cmp.i28 = icmp ugt i32 %38, 7
  br i1 %cmp.i28, label %dr_ste_v0_set_flex_parser.exit27.dr_ste_v0_set_flex_parser.exit34_crit_edge, label %lor.lhs.false.i31

dr_ste_v0_set_flex_parser.exit27.dr_ste_v0_set_flex_parser.exit34_crit_edge: ; preds = %dr_ste_v0_set_flex_parser.exit27
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit34

lor.lhs.false.i31:                                ; preds = %dr_ste_v0_set_flex_parser.exit27
  %arrayidx.i29 = getelementptr i8, ptr %parser_is_used, i32 %38
  %39 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i29, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i30 = icmp eq i8 %40, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %lor.lhs.false.i31.dr_ste_v0_set_flex_parser.exit34_crit_edge

lor.lhs.false.i31.dr_ste_v0_set_flex_parser.exit34_crit_edge: ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %dr_ste_v0_set_flex_parser.exit34

if.end.i33:                                       ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx.i29, align 1
  %42 = shl nuw nsw i32 %38, 2
  %43 = and i32 %42, 12
  %44 = xor i32 %43, 12
  %add.ptr.i.i32 = getelementptr i8, ptr %tag, i32 %44
  %45 = ptrtoint ptr %prog_sample_field_value_3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %prog_sample_field_value_3, align 4
  %47 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %add.ptr.i.i32, align 4
  %48 = ptrtoint ptr %prog_sample_field_id_3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %prog_sample_field_id_3, align 4
  store i32 0, ptr %prog_sample_field_value_3, align 4
  br label %dr_ste_v0_set_flex_parser.exit34

dr_ste_v0_set_flex_parser.exit34:                 ; preds = %if.end.i33, %lor.lhs.false.i31.dr_ste_v0_set_flex_parser.exit34_crit_edge, %dr_ste_v0_set_flex_parser.exit27.dr_ste_v0_set_flex_parser.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parser_is_used) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_flex_parser_tnl_gtpu_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gtpu_msg_flags = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 14
  %0 = ptrtoint ptr %gtpu_msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gtpu_msg_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %and = and i32 %3, -117440513
  %4 = and i8 %1, 7
  %and5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %and5, 24
  %or = or i32 %and, %shl
  store i32 %or, ptr %tag, align 4
  %5 = ptrtoint ptr %gtpu_msg_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %gtpu_msg_flags, align 1
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %gtpu_msg_type = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 13
  %6 = ptrtoint ptr %gtpu_msg_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gtpu_msg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %do.body12.do.body34_crit_edge, label %do.body15

do.body12.do.body34_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %conv18 = zext i8 %7 to i32
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  %and23 = and i32 %9, -16711681
  %shl25 = shl nuw nsw i32 %conv18, 16
  %or26 = or i32 %and23, %shl25
  store i32 %or26, ptr %tag, align 4
  %10 = ptrtoint ptr %gtpu_msg_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %gtpu_msg_type, align 4
  br label %do.body34

do.body34:                                        ; preds = %do.body15, %do.body12.do.body34_crit_edge
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %11 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  br i1 %tobool35.not, label %do.body34.do.end54_crit_edge, label %do.body37

do.body34.do.end54_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54

do.body37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr43 = getelementptr i32, ptr %tag, i32 1
  %13 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr43, align 4
  %14 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %gtpu_teid, align 4
  br label %do.end54

do.end54:                                         ; preds = %do.body37, %do.body34.do.end54_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_header_0_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readnone %sb, ptr nocapture noundef writeonly %tag) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_header_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %tunnel_header_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tunnel_header_0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tag, align 4
  %3 = ptrtoint ptr %tunnel_header_0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tunnel_header_0, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.body2, %entry.do.body12_crit_edge
  %tunnel_header_1 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %tunnel_header_1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tunnel_header_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.body12.do.end32_crit_edge, label %do.body15

do.body12.do.end32_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

do.body15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21 = getelementptr i32, ptr %tag, i32 1
  %6 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr21, align 4
  %7 = ptrtoint ptr %tunnel_header_1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tunnel_header_1, align 4
  br label %do.end32

do.end32:                                         ; preds = %do.body15, %do.body12.do.end32_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_gtpu_flex_parser_0_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp.i = icmp ult i8 %3, 4
  br i1 %cmp.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl nuw nsw i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %gtpu_dw_0, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_teid = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i65 = icmp ult i8 %13, 4
  br i1 %cmp.i65, label %do.body9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = shl nuw nsw i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66 = zext i8 %16 to i32
  %add.ptr.i67 = getelementptr i8, ptr %tag, i32 %mul.i66
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid, align 4
  %19 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67, align 4
  store i32 0, ptr %gtpu_teid, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %if.end.if.end19_crit_edge
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i68 = icmp ult i8 %23, 4
  br i1 %cmp.i68, label %do.body23, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %24 = shl nuw nsw i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69 = zext i8 %26 to i32
  %add.ptr.i70 = getelementptr i8, ptr %tag, i32 %mul.i69
  %gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2, align 4
  %29 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70, align 4
  store i32 0, ptr %gtpu_dw_2, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body23, %if.end19.if.end33_crit_edge
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp.i71 = icmp ult i8 %33, 4
  br i1 %cmp.i71, label %do.body37, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %34 = shl nuw nsw i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72 = zext i8 %36 to i32
  %add.ptr.i73 = getelementptr i8, ptr %tag, i32 %mul.i72
  %gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0, align 4
  %39 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body37, %if.end33.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dr_ste_v0_build_tnl_gtpu_flex_parser_1_tag(ptr nocapture noundef %value, ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %tag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5dr_ste_build, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %flex_parser_id_gtpu_dw_0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flex_parser_id_gtpu_dw_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp ugt i8 %3, 3
  br i1 %cmp.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl i8 %3, 2
  %5 = and i8 %4, 12
  %6 = xor i8 %5, 12
  %mul.i = zext i8 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %tag, i32 %mul.i
  %gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 18
  %7 = ptrtoint ptr %gtpu_dw_0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gtpu_dw_0, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  store i32 0, ptr %gtpu_dw_0, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_teid = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %flex_parser_id_gtpu_teid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flex_parser_id_gtpu_teid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i65 = icmp ugt i8 %13, 3
  br i1 %cmp.i65, label %do.body9, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 12
  %16 = xor i8 %15, 12
  %mul.i66 = zext i8 %16 to i32
  %add.ptr.i67 = getelementptr i8, ptr %tag, i32 %mul.i66
  %gtpu_teid = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 12
  %17 = ptrtoint ptr %gtpu_teid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gtpu_teid, align 4
  %19 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr.i67, align 4
  store i32 0, ptr %gtpu_teid, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %if.end.if.end19_crit_edge
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %flex_parser_id_gtpu_dw_2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flex_parser_id_gtpu_dw_2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.i68 = icmp ugt i8 %23, 3
  br i1 %cmp.i68, label %do.body23, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %24 = shl i8 %23, 2
  %25 = and i8 %24, 12
  %26 = xor i8 %25, 12
  %mul.i69 = zext i8 %26 to i32
  %add.ptr.i70 = getelementptr i8, ptr %tag, i32 %mul.i69
  %gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 16
  %27 = ptrtoint ptr %gtpu_dw_2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gtpu_dw_2, align 4
  %29 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i70, align 4
  store i32 0, ptr %gtpu_dw_2, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body23, %if.end19.if.end33_crit_edge
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %flex_parser_id_gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flex_parser_id_gtpu_first_ext_dw_0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i71 = icmp ugt i8 %33, 3
  br i1 %cmp.i71, label %do.body37, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 12
  %36 = xor i8 %35, 12
  %mul.i72 = zext i8 %36 to i32
  %add.ptr.i73 = getelementptr i8, ptr %tag, i32 %mul.i72
  %gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_match_param, ptr %value, i32 0, i32 4, i32 17
  %37 = ptrtoint ptr %gtpu_first_ext_dw_0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gtpu_first_ext_dw_0, align 4
  %39 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr.i73, align 4
  store i32 0, ptr %gtpu_first_ext_dw_0, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.body37, %if.end33.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @ste_ctx_v0, !1, !"ste_ctx_v0", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c", i32 1900, i32 23}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c", i32 1675, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dr_ste_v0_build_src_gvmi_qpn_tag._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @dr_ste_v0_action_modify_field_arr, !11, !"dr_ste_v0_action_modify_field_arr", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_ste_v0.c", i32 114, i32 52}
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
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = distinct !{!24, !23}
!25 = !{i8 0, i8 2}
