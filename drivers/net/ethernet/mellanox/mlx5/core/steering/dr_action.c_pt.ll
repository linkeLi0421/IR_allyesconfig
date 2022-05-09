; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_ste_actions_attr = type { i32, i16, i32, i16, i8, i64, i32, i32, i16, i16, %struct.anon.172, %struct.anon.173 }
%struct.anon.172 = type { i32, i32, i8, i8 }
%struct.anon.173 = type { i32, [2 x i32] }
%struct.mlx5dr_cmd_query_flow_table_details = type { i8, i8, i64, i64 }
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5dr_action = type { i32, %struct.refcount_struct, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.mlx5dr_action_dest_tbl = type { i8, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { ptr, i32, i32, i32, i64, i64, ptr, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5dr_table = type { ptr, %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx, i32, i32, i32, i32, %struct.list_head, ptr, %struct.refcount_struct, %struct.list_head }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
%struct.mlx5dr_action_ctr = type { i32, i32 }
%struct.mlx5dr_action_rewrite = type { ptr, ptr, ptr, i16, i32, i8 }
%struct.mlx5dr_ste_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5dr_action_reformat = type { ptr, i32, i32, i8, i8 }
%struct.mlx5dr_action_sampler = type { ptr, i64, i64, i32 }
%struct.mlx5dr_action_vport = type { ptr, ptr }
%struct.mlx5dr_action_dest = type { ptr, ptr }
%struct.mlx5dr_cmd_flow_destination_hw_info = type { i32, %union.anon.179 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { i16, i16, i32, i8 }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.132, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.132 = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5dr_ste_action_modify_field = type { i16, i8, i8, i8, i8 }

@mlx5dr_actions_build_ste_arr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 590, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Destination table belongs to a different domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5dr_actions_build_ste_arr\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr = internal global ptr @mlx5dr_actions_build_ste_arr._entry, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): Connecting table to a lower/same level destination table\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s:%d:(pid %d): Connecting table at level %d to a destination table at level %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 622, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed mlx5_cmd_query_flow_table ret: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.10 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.8, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 632, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Domain doesn't support QP\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.14 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.11, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 659, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device doesn't support Encap on RX\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.17 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.15, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Device doesn't support Loopback on WIRE vport\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): Device doesn't support POP VLAN action on TX\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Device doesn't support PUSH VLAN action on RX\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Max VLAN push/pop count exceeded\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Unsupported action type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.24 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.22, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Action type %d supports only max %d time(s)\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.27 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.25, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 731, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): Invalid action (gvmi: %d, is_rx: %d) sequence provided:\00", [56 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.30 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.28, section ".printk_index", align 4
@mlx5dr_actions_build_ste_arr._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 750, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed to handle checksum recalculation err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5dr_actions_build_ste_arr._entry_ptr.33 = internal global ptr @mlx5dr_actions_build_ste_arr._entry.31, section ".printk_index", align 4
@mlx5dr_action_create_mult_dest_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): Multiple destination support is for FDB only\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5dr_action_create_mult_dest_tbl\00", [61 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_mult_dest_tbl._entry_ptr = internal global ptr @mlx5dr_action_create_mult_dest_tbl._entry, section ".printk_index", align 4
@mlx5dr_action_create_mult_dest_tbl.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Invalid multiple destinations action\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_push_vlan.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5dr_action_create_push_vlan\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): Invalid vlan ethertype\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlx5dr_action_create_packet_reformat\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Invalid reformat_type provided\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Failed creating reformat action %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug579 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5dr_action_create_modify_header\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Invalid modify actions size provided\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 1, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): Failed creating modify header action %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug581 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5dr_action_create_dest_vport\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): No peer vport domain for given vhca_id\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug582 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Domain doesn't support vport actions\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_dest_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 1794, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Failed to get vport 0x%x caps - vport is disabled or invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5dr_action_create_dest_vport._entry_ptr = internal global ptr @mlx5dr_action_create_dest_vport._entry, section ".printk_index", align 4
@mlx5dr_action_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@next_action_state = internal constant { [4 x <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }>], [576 x i8] } { [4 x <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }>] [<{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }> <{ [16 x i32] zeroinitializer, [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 8, i32 8, i32 8, i32 7, i32 7, i32 4, i32 0, i32 5, i32 6, i32 2, i32 3, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 8, i32 8, i32 3, i32 3, i32 4, i32 0, i32 5, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 8, i32 8, i32 4, i32 4, i32 0, i32 0, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 8, i32 8, i32 5, i32 5, i32 4, i32 0, i32 5, i32 0, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 0, i32 8, i32 8, i32 6, i32 6, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 8], [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 8, i32 8, i32 8, i32 7, i32 7, i32 4, i32 0, i32 5, i32 6, i32 2, i32 3, i32 8], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [8 x i32] zeroinitializer }> }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }> <{ [16 x i32] zeroinitializer, [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 0, i32 5, i32 6, i32 2, i32 3, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 4, i32 0, i32 0, i32 0, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 8, i32 5, i32 0, i32 4, i32 0, i32 5, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 6, i32 0, i32 0, i32 0, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 0, i32 5, i32 6, i32 2, i32 3, i32 8], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [8 x i32] zeroinitializer }> }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }> <{ [16 x i32] zeroinitializer, [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 3, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 2, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 3, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 4, i32 0, i32 0, i32 8, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 5, i32 0, i32 4, i32 8, i32 5, i32 0, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 6, i32 0, i32 4, i32 8, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 3, i32 8], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [8 x i32] zeroinitializer }> }>, <{ [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], <{ [8 x i32], [8 x i32] }> }> <{ [16 x i32] zeroinitializer, [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 3, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 2, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 3, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 4, i32 0, i32 0, i32 8, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 8, i32 5, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 6, i32 0, i32 0, i32 8, i32 0, i32 6, i32 2, i32 0, i32 8], [16 x i32] [i32 0, i32 2, i32 0, i32 2, i32 8, i32 0, i32 8, i32 7, i32 0, i32 4, i32 8, i32 5, i32 6, i32 2, i32 3, i32 8], <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], [8 x i32] zeroinitializer }> }>], [576 x i8] zeroinitializer }, align 32
@dr_action_print_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d:(pid %d): < %s (%d) > \00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dr_action_print_sequence\00", [39 x i8] zeroinitializer }, align 32
@dr_action_print_sequence._entry_ptr = internal global ptr @dr_action_print_sequence._entry, section ".printk_index", align 4
@action_type_to_str = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DR_ACTION_TYP_TNL_L2_TO_L2\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DR_ACTION_TYP_L2_TO_TNL_L2\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DR_ACTION_TYP_TNL_L3_TO_L2\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DR_ACTION_TYP_L2_TO_TNL_L3\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DR_ACTION_TYP_DROP\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DR_ACTION_TYP_QP\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DR_ACTION_TYP_FT\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DR_ACTION_TYP_CTR\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DR_ACTION_TYP_TAG\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DR_ACTION_TYP_MODIFY_HDR\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DR_ACTION_TYP_VPORT\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DR_ACTION_TYP_POP_VLAN\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DR_ACTION_TYP_PUSH_VLAN\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DR_ACTION_TYP_INSERT_HDR\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DR_ACTION_TYP_REMOVE_HDR\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DR_ACTION_TYP_SAMPLER\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DR_ACTION_UNKNOWN\00", [46 x i8] zeroinitializer }, align 32
@dr_action_handle_cs_recalc.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dr_action_handle_cs_recalc\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Destination FT should be terminating when modify TTL is used\0A\00", [50 x i8] zeroinitializer }, align 32
@dr_action_handle_cs_recalc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed to get FW cs recalc flow table\0A\00", [41 x i8] zeroinitializer }, align 32
@dr_action_handle_cs_recalc._entry_ptr = internal global ptr @dr_action_handle_cs_recalc._entry, section ".printk_index", align 4
@action_size = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 16, i32 16, i32 24, i32 16, i32 0, i32 0, i32 48, i32 8, i32 4, i32 24, i32 8, i32 0, i32 4, i32 16, i32 16, i32 32], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_action_verify_reformat_params.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_action_verify_reformat_params\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Invalid reformat parameters for INSERT_HDR\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_action_verify_reformat_params.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Invalid reformat parameters for REMOVE_HDR\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_action_verify_reformat_params.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.72, ptr @.str.2, ptr @.str.75, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Invalid reformat parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@dr_action_verify_reformat_params.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.72, ptr @.str.2, ptr @.str.76, i8 1, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Action reformat type not support on RX domain\0A\00", [33 x i8] zeroinitializer }, align 32
@dr_action_verify_reformat_params.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.72, ptr @.str.2, ptr @.str.77, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Action reformat type not support on TX domain\0A\00", [33 x i8] zeroinitializer }, align 32
@dr_action_create_reformat_action.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_action_create_reformat_action\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Failed creating decap l3 action list\0A\00", [42 x i8] zeroinitializer }, align 32
@dr_action_create_reformat_action.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str.2, ptr @.str.80, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed allocating modify header chunk\0A\00", [41 x i8] zeroinitializer }, align 32
@dr_action_create_reformat_action.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str.2, ptr @.str.81, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Writing decap l3 actions to ICM failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dr_action_create_reformat_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str.2, i32 1166, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reformat type is not supported %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dr_action_create_reformat_action._entry_ptr = internal global ptr @dr_action_create_reformat_action._entry, section ".printk_index", align 4
@dr_action_create_modify_action.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dr_action_create_modify_action\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Max number of actions %d exceeds limit %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dr_actions_convert_modify_header.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_actions_convert_modify_header\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Action list can't support two different L3 types\0A\00", [62 x i8] zeroinitializer }, align 32
@dr_actions_convert_modify_header.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 1, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Action list can't support two different L4 types\0A\00", [62 x i8] zeroinitializer }, align 32
@dr_actions_convert_modify_header.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str.2, ptr @.str.88, i8 1, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): Modify header action number exceeds HW limit\0A\00", [34 x i8] zeroinitializer }, align 32
@dr_action_modify_check_field_limitation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 1548, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported action %d modify action\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dr_action_modify_check_field_limitation\00", [56 x i8] zeroinitializer }, align 32
@dr_action_modify_check_field_limitation._entry_ptr = internal global ptr @dr_action_modify_check_field_limitation._entry, section ".printk_index", align 4
@dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug568 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dr_action_modify_check_set_field_limitation\00", [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Unsupported field %d for RX/FDB set action\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 1, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Unsupported field %d for TX/FDB set action\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug570 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.91, ptr @.str.2, ptr @.str.94, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Modify SET actions not supported on both RX and TX\0A\00", [60 x i8] zeroinitializer }, align 32
@dr_action_modify_check_add_field_limitation.__UNIQUE_ID_ddebug571 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dr_action_modify_check_add_field_limitation\00", [52 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Unsupported field %d for add action\0A\00", [43 x i8] zeroinitializer }, align 32
@dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug572 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.2, ptr @.str.92, i8 1, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"dr_action_modify_check_copy_field_limitation\00", [51 x i8] zeroinitializer }, align 32
@dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug573 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.2, ptr @.str.93, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug574 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 1, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Modify copy actions not supported on both RX and TX\0A\00", [59 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1426, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unsupported action_type for modify action\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dr_action_modify_sw_to_hw\00", [38 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw._entry_ptr = internal global ptr @dr_action_modify_sw_to_hw._entry, section ".printk_index", align 4
@dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dr_action_modify_sw_to_hw_set\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Modify set action invalid field given\0A\00", [41 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.101, ptr @.str.2, ptr @.str.103, i8 1, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Modify action length + offset exceeds limit\0A\00", [35 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw_add.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dr_action_modify_sw_to_hw_add\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Modify add action invalid field given\0A\00", [41 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug566 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dr_action_modify_sw_to_hw_copy\00", [33 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Modify copy action invalid field given\0A\00", [40 x i8] zeroinitializer }, align 32
@dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug567 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.106, ptr @.str.2, ptr @.str.103, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.mlx5dr_action_create_packet_reformat = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 13, i32 14], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 14]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 13, i64 14]
@__sancov_gen_cov_switch_values.117 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 9, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 71, i64 89, i64 91]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 73, i64 80]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 12, i64 73, i64 80]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 12, i64 73, i64 80]
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 589, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 594, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 596, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 620, i32 7 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 632, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 659, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 674, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 685, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 695, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 701, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 715, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 721, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 730, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 748, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 862, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 907, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1187, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1216, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1239, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1740, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1755, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1781, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1786, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1792, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"next_action_state\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 56, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 540, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [19 x i8] c"action_type_to_str\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 28, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 29, i32 33 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 30, i32 33 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 31, i32 33 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 32, i32 33 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 33, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 34, i32 23 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 35, i32 23 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 36, i32 24 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 37, i32 24 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 38, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 39, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 40, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 41, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 43, i32 31 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 44, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 42, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 45, i32 24 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 507, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 521, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [12 x i8] c"action_size\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 765, i32 21 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1034, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1041, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1046, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1056, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1062, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1120, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1127, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1138, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1166, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1682, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1620, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1629, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1646, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1547, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1443, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1450, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1457, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1475, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1498, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1513, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1426, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1308, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1318, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1270, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1357, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [50 x i8] c"switch.table.mlx5dr_action_create_packet_reformat\00", align 1
@llvm.compiler.used = appending global [127 x ptr] [ptr @dr_action_create_reformat_action._entry, ptr @dr_action_create_reformat_action._entry_ptr, ptr @dr_action_handle_cs_recalc._entry, ptr @dr_action_handle_cs_recalc._entry_ptr, ptr @dr_action_modify_check_field_limitation._entry, ptr @dr_action_modify_check_field_limitation._entry_ptr, ptr @dr_action_modify_sw_to_hw._entry, ptr @dr_action_modify_sw_to_hw._entry_ptr, ptr @dr_action_print_sequence._entry, ptr @dr_action_print_sequence._entry_ptr, ptr @mlx5dr_action_create_dest_vport._entry, ptr @mlx5dr_action_create_dest_vport._entry_ptr, ptr @mlx5dr_action_create_mult_dest_tbl._entry, ptr @mlx5dr_action_create_mult_dest_tbl._entry_ptr, ptr @mlx5dr_actions_build_ste_arr._entry, ptr @mlx5dr_actions_build_ste_arr._entry.11, ptr @mlx5dr_actions_build_ste_arr._entry.15, ptr @mlx5dr_actions_build_ste_arr._entry.22, ptr @mlx5dr_actions_build_ste_arr._entry.25, ptr @mlx5dr_actions_build_ste_arr._entry.28, ptr @mlx5dr_actions_build_ste_arr._entry.31, ptr @mlx5dr_actions_build_ste_arr._entry.8, ptr @mlx5dr_actions_build_ste_arr._entry_ptr, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.10, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.14, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.17, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.24, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.27, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.30, ptr @mlx5dr_actions_build_ste_arr._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @next_action_state, ptr @.str.50, ptr @.str.51, ptr @action_type_to_str, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @action_size, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @switch.table.mlx5dr_action_create_packet_reformat], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_actions_build_ste_arr._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_action_create_mult_dest_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_action_create_dest_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_action_state to i32), i32 2304, i32 2880, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_action_print_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_type_to_str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_action_handle_cs_recalc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_size to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_action_create_reformat_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_action_modify_check_field_limitation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_action_modify_sw_to_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5dr_action_create_packet_reformat to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_actions_build_ste_arr(ptr nocapture noundef readonly %matcher, ptr nocapture noundef readonly %nic_matcher, ptr nocapture noundef readonly %actions, i32 noundef %num_actions, ptr noundef %ste_arr, ptr nocapture noundef %new_hw_ste_arr_sz) local_unnamed_addr #0 align 64 {
entry:
  %added_stes.i = alloca i32, align 4
  %action_type_set = alloca [16 x i8], align 1
  %attr = alloca %struct.mlx5dr_ste_actions_attr, align 8
  %output = alloca %struct.mlx5dr_cmd_query_flow_table_details, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_tbl = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 7
  %0 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_tbl, align 8
  %nic_dmn1 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nic_dmn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_dmn1, align 4
  %type = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %matcher, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action_type_set) #10
  %10 = call ptr @memset(ptr %action_type_set, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %attr) #10
  %11 = call ptr @memset(ptr %attr, i32 0, i32 64)
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 9, i32 7
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %caps, align 8
  %gvmi3 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 8
  %14 = ptrtoint ptr %gvmi3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %gvmi3, align 8
  %hit_gvmi = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 9
  %15 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %hit_gvmi, align 2
  %default_icm_addr = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %default_icm_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %default_icm_addr, align 8
  %final_icm_addr = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 5
  %18 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %final_icm_addr, align 8
  %type7 = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type7, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end.i [
    i32 0, label %entry.dr_action_get_action_domain.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

entry.dr_action_get_action_domain.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_action_get_action_domain.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_action_get_action_domain.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %..i = select i1 %cmp.i, i32 2, i32 3
  br label %dr_action_get_action_domain.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 471, i32 noundef 9, ptr noundef null) #10
  br label %dr_action_get_action_domain.exit

dr_action_get_action_domain.exit:                 ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %entry.dr_action_get_action_domain.exit_crit_edge
  %retval.0.i529 = phi i32 [ 4, %do.end.i ], [ 1, %sw.bb1.i ], [ %20, %entry.dr_action_get_action_domain.exit_crit_edge ], [ %..i, %sw.bb2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actions)
  %cmp9612.not = icmp eq i32 %num_actions, 0
  br i1 %cmp9612.not, label %dr_action_get_action_domain.exit.for.end_crit_edge, label %for.body.lr.ph

dr_action_get_action_domain.exit.for.end_crit_edge: ; preds = %dr_action_get_action_domain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %dr_action_get_action_domain.exit
  %reformat290 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10
  %size291 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 1
  %param_0296 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 2
  %param_1298 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 10, i32 3
  %ste_ctx229 = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 11
  %vlans256 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11
  %modify_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 1
  %decap_index = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 2
  %decap_actions = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 3
  %decap_with_vlan = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 4
  %flow_tag111 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 6
  %ctr_id109 = getelementptr inbounds %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 7
  %mdev75 = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 1
  %sw_owner_icm_root_1 = getelementptr inbounds %struct.mlx5dr_cmd_query_flow_table_details, ptr %output, i32 0, i32 2
  %sw_owner_icm_root_0 = getelementptr inbounds %struct.mlx5dr_cmd_query_flow_table_details, ptr %output, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dest_action.0616 = phi ptr [ null, %for.body.lr.ph ], [ %dest_action.1, %for.inc.for.body_crit_edge ]
  %recalc_cs_required.0.off0615 = phi i1 [ false, %for.body.lr.ph ], [ %recalc_cs_required.1.off0, %for.inc.for.body_crit_edge ]
  %i.0614 = phi i32 [ 0, %for.body.lr.ph ], [ %inc344, %for.inc.for.body_crit_edge ]
  %state.0613 = phi i32 [ 1, %for.body.lr.ph ], [ %302, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %actions, i32 %i.0614
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %27, label %do.end301 [
    i32 4, label %sw.bb
    i32 6, label %sw.bb12
    i32 5, label %do.end105
    i32 7, label %sw.bb108
    i32 8, label %sw.bb110
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 2, label %sw.bb112
    i32 9, label %sw.bb118
    i32 1, label %for.body.sw.bb132_crit_edge
    i32 3, label %for.body.sw.bb132_crit_edge758
    i32 15, label %sw.bb147
    i32 10, label %sw.bb157
    i32 11, label %sw.bb195
    i32 12, label %sw.bb225
    i32 13, label %for.body.sw.bb288_crit_edge
    i32 14, label %for.body.sw.bb288_crit_edge759
  ]

for.body.sw.bb288_crit_edge759:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

for.body.sw.bb288_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb288

for.body.sw.bb132_crit_edge758:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb132

for.body.sw.bb132_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb132

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %3, align 8
  %31 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %final_icm_addr, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  %32 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb12
  %36 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %cmp14.not = icmp eq ptr %40, %9
  br i1 %cmp14.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev75, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 590, i32 noundef %50) #13
  br label %cleanup375

if.end:                                           ; preds = %if.then
  %level = getelementptr inbounds %struct.mlx5dr_table, ptr %38, i32 0, i32 3
  %51 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level, align 8
  %53 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %matcher, align 8
  %level18 = getelementptr inbounds %struct.mlx5dr_table, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %level18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %level18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %56)
  %cmp19.not = icmp ugt i32 %52, %56
  br i1 %cmp19.not, label %if.end.if.end66_crit_edge, label %do.body21

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.body21:                                        ; preds = %if.end
  %.b512 = load i1, ptr @mlx5dr_actions_build_ste_arr.__print_once, align 1
  br i1 %.b512, label %do.body21.do.body42_crit_edge, label %if.then23

do.body21.do.body42_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.then23:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5dr_actions_build_ste_arr.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then30)) #10
          to label %do.body42 [label %if.then30], !srcloc !252

if.then30:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev75, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i530 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i530 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid35, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug545, ptr noundef %60, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 595, i32 noundef %66) #10
  br label %do.body42

do.body42:                                        ; preds = %if.then30, %if.then23, %do.body21.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then54)) #10
          to label %if.end66 [label %if.then54], !srcloc !252

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdev75, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i531 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i531 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task58, align 8
  %pid59 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 68
  %75 = ptrtoint ptr %pid59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pid59, align 8
  %77 = ptrtoint ptr %matcher to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %matcher, align 8
  %level61 = getelementptr inbounds %struct.mlx5dr_table, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %level61 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %level61, align 8
  %81 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %36, align 8
  %level62 = getelementptr inbounds %struct.mlx5dr_table, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %level62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %level62, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug546, ptr noundef %70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 599, i32 noundef %76, i32 noundef %80, i32 noundef %84) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %do.body42, %if.end.if.end66_crit_edge
  %85 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %36, align 8
  %rx = getelementptr inbounds %struct.mlx5dr_table, ptr %86, i32 0, i32 1
  %tx = getelementptr inbounds %struct.mlx5dr_table, ptr %86, i32 0, i32 2
  %.pn511.in = select i1 %cmp, ptr %rx, ptr %tx
  %87 = ptrtoint ptr %.pn511.in to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn511 = load ptr, ptr %.pn511.in, align 8
  %.pn.in = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %.pn511, i32 0, i32 3
  %88 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cond.in = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %.pn, i32 0, i32 5
  %89 = ptrtoint ptr %cond.in to i32
  call void @__asan_load8_noabort(i32 %89)
  %cond = load i64, ptr %cond.in, align 8
  %90 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %cond, ptr %final_icm_addr, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %output) #10
  %91 = call ptr @memset(ptr %output, i32 255, i32 24)
  %92 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %32, align 4
  %rx_icm_addr = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %93, i32 0, i32 1, i32 0, i32 4
  %94 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_icm_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool73.not = icmp eq i64 %95, 0
  br i1 %tobool73.not, label %if.then74, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then74:                                        ; preds = %if.else
  %96 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdev75, align 4
  %type76 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 3
  %98 = ptrtoint ptr %type76 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type76, align 4
  %id = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id, align 4
  %call77 = call i32 @mlx5dr_cmd_query_flow_table(ptr noundef %97, i32 noundef %99, i32 noundef %101, ptr noundef nonnull %output) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %cleanup

if.then79:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %sw_owner_icm_root_1 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %sw_owner_icm_root_1, align 8
  %tx_icm_addr = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 5
  %104 = ptrtoint ptr %tx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %tx_icm_addr, align 8
  %105 = ptrtoint ptr %sw_owner_icm_root_0 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sw_owner_icm_root_0, align 8
  %rx_icm_addr80 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 4
  %107 = ptrtoint ptr %rx_icm_addr80 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %rx_icm_addr80, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then79, %if.else.cleanup.thread_crit_edge
  %rx_icm_addr94 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 4
  %tx_icm_addr96 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %34, i32 0, i32 1, i32 0, i32 5
  %cond98.in = select i1 %cmp, ptr %rx_icm_addr94, ptr %tx_icm_addr96
  %108 = ptrtoint ptr %cond98.in to i32
  call void @__asan_load8_noabort(i32 %108)
  %cond98 = load i64, ptr %cond98.in, align 8
  %109 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %cond98, ptr %final_icm_addr, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %output) #10
  br label %sw.epilog

cleanup:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mdev75, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %114 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i532 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i532 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task88, align 8
  %pid89 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 68
  %118 = ptrtoint ptr %pid89 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pid89, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 622, i32 noundef %119, i32 noundef %call77) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %output) #10
  br label %cleanup375

do.end105:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdev75, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.12) #13
  br label %cleanup375

sw.bb108:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %124 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %offset = getelementptr inbounds %struct.mlx5dr_action_ctr, ptr %126, i32 0, i32 1
  %129 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %offset, align 4
  %add = add i32 %130, %128
  %131 = ptrtoint ptr %ctr_id109 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add, ptr %ctr_id109, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %132 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %137 = ptrtoint ptr %flow_tag111 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %flow_tag111, align 8
  br label %sw.epilog

sw.bb112:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %138 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %index = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %index, align 4
  %143 = ptrtoint ptr %decap_index to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %decap_index, align 8
  %144 = load ptr, ptr %138, align 4
  %num_of_actions = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %num_of_actions to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %num_of_actions, align 4
  %147 = ptrtoint ptr %decap_actions to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %decap_actions, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %146)
  %cmp114 = icmp eq i16 %146, 6
  %148 = ptrtoint ptr %decap_with_vlan to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load117 = load i8, ptr %decap_with_vlan, align 2
  %bf.shl = select i1 %cmp114, i8 -128, i8 0
  %bf.clear = and i8 %bf.load117, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %decap_with_vlan, align 2
  br label %sw.epilog

sw.bb118:                                         ; preds = %for.body
  %149 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %index119 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %index119 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %index119, align 4
  %154 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %attr, align 8
  %num_of_actions120 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %151, i32 0, i32 3
  %155 = ptrtoint ptr %num_of_actions120 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %num_of_actions120, align 4
  %157 = ptrtoint ptr %modify_actions to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %modify_actions, align 4
  %modify_ttl = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %151, i32 0, i32 5
  %158 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load121 = load i8, ptr %modify_ttl, align 4
  %159 = and i8 %bf.load121, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool125.not = icmp eq i8 %159, 0
  br i1 %tobool125.not, label %sw.bb118.sw.epilog_crit_edge, label %land.rhs

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.rhs:                                         ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #12
  %call128 = call zeroext i1 @mlx5dr_ste_supp_ttl_cs_recalc(ptr noundef %caps) #10
  %lnot129 = xor i1 %call128, true
  br label %sw.epilog

sw.bb132:                                         ; preds = %for.body.sw.bb132_crit_edge, %for.body.sw.bb132_crit_edge758
  br i1 %cmp, label %land.lhs.true, label %sw.bb132.if.end142_crit_edge

sw.bb132.if.end142_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

land.lhs.true:                                    ; preds = %sw.bb132
  %160 = ptrtoint ptr %ste_ctx229 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ste_ctx229, align 4
  %actions_caps = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %161, i32 0, i32 38
  %162 = ptrtoint ptr %actions_caps to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %actions_caps, align 4
  %and = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool135.not = icmp eq i32 %and, 0
  br i1 %tobool135.not, label %do.end139, label %land.lhs.true.if.end142_crit_edge

land.lhs.true.if.end142_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

do.end139:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %164 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mdev75, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.16) #13
  br label %cleanup375

if.end142:                                        ; preds = %land.lhs.true.if.end142_crit_edge, %sw.bb132.if.end142_crit_edge
  %168 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %size = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %size, align 4
  %173 = ptrtoint ptr %size291 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %size291, align 8
  %174 = load ptr, ptr %168, align 4
  %id144 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %id144 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %id144, align 4
  %177 = ptrtoint ptr %reformat290 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %reformat290, align 4
  br label %sw.epilog

sw.bb147:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %178 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %rx_icm_addr151 = getelementptr inbounds %struct.mlx5dr_action_sampler, ptr %180, i32 0, i32 1
  %tx_icm_addr153 = getelementptr inbounds %struct.mlx5dr_action_sampler, ptr %180, i32 0, i32 2
  %cond155.in = select i1 %cmp, ptr %rx_icm_addr151, ptr %tx_icm_addr153
  %181 = ptrtoint ptr %cond155.in to i32
  call void @__asan_load8_noabort(i32 %181)
  %cond155 = load i64, ptr %cond155.in, align 8
  %182 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %cond155, ptr %final_icm_addr, align 8
  br label %sw.epilog

sw.bb157:                                         ; preds = %for.body
  %183 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %caps158 = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %caps158 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %caps158, align 4
  %vhca_gvmi = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %vhca_gvmi to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vhca_gvmi, align 2
  %190 = ptrtoint ptr %hit_gvmi to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %hit_gvmi, align 2
  %191 = load ptr, ptr %183, align 4
  %caps162 = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %caps162 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %caps162, align 4
  br i1 %cmp, label %if.then161, label %if.else191

if.then161:                                       ; preds = %sw.bb157
  %num = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %195)
  %cmp164 = icmp eq i16 %195, -1
  br i1 %cmp164, label %do.body167, label %if.end188

do.body167:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then179)) #10
          to label %cleanup375 [label %if.then179], !srcloc !252

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mdev75, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 8
  %200 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i533 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i533 to ptr
  %task183 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %task183 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task183, align 8
  %pid184 = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 68
  %204 = ptrtoint ptr %pid184 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pid184, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug547, ptr noundef %199, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 674, i32 noundef %205) #10
  br label %cleanup375

if.end188:                                        ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  %icm_address_rx = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %193, i32 0, i32 3
  %206 = ptrtoint ptr %icm_address_rx to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %icm_address_rx, align 8
  %208 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %207, ptr %final_icm_addr, align 8
  br label %sw.epilog

if.else191:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #12
  %icm_address_tx = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %193, i32 0, i32 4
  %209 = ptrtoint ptr %icm_address_tx to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %icm_address_tx, align 8
  %211 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %final_icm_addr, align 8
  br label %sw.epilog

sw.bb195:                                         ; preds = %for.body
  br i1 %cmp, label %sw.bb195.if.end224_crit_edge, label %land.lhs.true197

sw.bb195.if.end224_crit_edge:                     ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

land.lhs.true197:                                 ; preds = %sw.bb195
  %212 = ptrtoint ptr %ste_ctx229 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ste_ctx229, align 4
  %actions_caps199 = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %213, i32 0, i32 38
  %214 = ptrtoint ptr %actions_caps199 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %actions_caps199, align 4
  %and200 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body203, label %land.lhs.true197.if.end224_crit_edge

land.lhs.true197.if.end224_crit_edge:             ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

do.body203:                                       ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then215)) #10
          to label %cleanup375 [label %if.then215], !srcloc !252

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mdev75, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 8
  %220 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i534 = and i32 %220, -16384
  %221 = inttoptr i32 %and.i534 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %task219, align 8
  %pid220 = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 68
  %224 = ptrtoint ptr %pid220 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pid220, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug548, ptr noundef %219, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 685, i32 noundef %225) #10
  br label %cleanup375

if.end224:                                        ; preds = %land.lhs.true197.if.end224_crit_edge, %sw.bb195.if.end224_crit_edge
  %226 = ptrtoint ptr %vlans256 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %vlans256, align 8
  %inc = add i32 %227, 1
  store i32 %inc, ptr %vlans256, align 8
  br label %sw.epilog

sw.bb225:                                         ; preds = %for.body
  br i1 %cmp, label %land.lhs.true228, label %sw.bb225.if.end255_crit_edge

sw.bb225.if.end255_crit_edge:                     ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

land.lhs.true228:                                 ; preds = %sw.bb225
  %228 = ptrtoint ptr %ste_ctx229 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ste_ctx229, align 4
  %actions_caps230 = getelementptr inbounds %struct.mlx5dr_ste_ctx, ptr %229, i32 0, i32 38
  %230 = ptrtoint ptr %actions_caps230 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %actions_caps230, align 4
  %and231 = and i32 %231, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %do.body234, label %land.lhs.true228.if.end255_crit_edge

land.lhs.true228.if.end255_crit_edge:             ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

do.body234:                                       ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then246)) #10
          to label %cleanup375 [label %if.then246], !srcloc !252

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mdev75, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 8
  %236 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i535 = and i32 %236, -16384
  %237 = inttoptr i32 %and.i535 to ptr
  %task250 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %task250 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %task250, align 8
  %pid251 = getelementptr inbounds %struct.task_struct, ptr %239, i32 0, i32 68
  %240 = ptrtoint ptr %pid251 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pid251, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug549, ptr noundef %235, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 695, i32 noundef %241) #10
  br label %cleanup375

if.end255:                                        ; preds = %land.lhs.true228.if.end255_crit_edge, %sw.bb225.if.end255_crit_edge
  %242 = ptrtoint ptr %vlans256 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %vlans256, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %243)
  %cmp258 = icmp eq i32 %243, 2
  br i1 %cmp258, label %do.body261, label %if.end282

do.body261:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_actions_build_ste_arr, %if.then273)) #10
          to label %cleanup375 [label %if.then273], !srcloc !252

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mdev75, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 8
  %248 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i536 = and i32 %248, -16384
  %249 = inttoptr i32 %and.i536 to ptr
  %task277 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %task277 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %task277, align 8
  %pid278 = getelementptr inbounds %struct.task_struct, ptr %251, i32 0, i32 68
  %252 = ptrtoint ptr %pid278 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pid278, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug550, ptr noundef %247, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 701, i32 noundef %253) #10
  br label %cleanup375

if.end282:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #12
  %254 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 4
  %inc286 = add i32 %243, 1
  %259 = ptrtoint ptr %vlans256 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %inc286, ptr %vlans256, align 8
  %arrayidx287 = getelementptr %struct.mlx5dr_ste_actions_attr, ptr %attr, i32 0, i32 11, i32 1, i32 %243
  %260 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %258, ptr %arrayidx287, align 4
  br label %sw.epilog

sw.bb288:                                         ; preds = %for.body.sw.bb288_crit_edge, %for.body.sw.bb288_crit_edge759
  %261 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 2
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %size289 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %size289 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %size289, align 4
  %266 = ptrtoint ptr %size291 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %size291, align 8
  %267 = load ptr, ptr %261, align 4
  %id292 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %id292 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %id292, align 4
  %270 = ptrtoint ptr %reformat290 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %reformat290, align 4
  %271 = load ptr, ptr %261, align 4
  %param_0 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %271, i32 0, i32 3
  %272 = ptrtoint ptr %param_0 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %param_0, align 4
  %274 = ptrtoint ptr %param_0296 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %273, ptr %param_0296, align 4
  %275 = load ptr, ptr %261, align 4
  %param_1 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %275, i32 0, i32 4
  %276 = ptrtoint ptr %param_1 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %param_1, align 1
  %278 = ptrtoint ptr %param_1298 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %param_1298, align 1
  br label %sw.epilog

do.end301:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %279 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mdev75, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 8
  %283 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i537 = and i32 %283, -16384
  %284 = inttoptr i32 %and.i537 to ptr
  %task305 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 2
  %285 = ptrtoint ptr %task305 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %task305, align 8
  %pid306 = getelementptr inbounds %struct.task_struct, ptr %286, i32 0, i32 68
  %287 = ptrtoint ptr %pid306 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %pid306, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 715, i32 noundef %288, i32 noundef %27) #13
  br label %cleanup375

sw.epilog:                                        ; preds = %sw.bb288, %if.end282, %if.end224, %if.else191, %if.end188, %sw.bb147, %if.end142, %land.rhs, %sw.bb118.sw.epilog_crit_edge, %sw.bb112, %sw.bb110, %sw.bb108, %cleanup.thread, %if.end66, %sw.bb, %for.body.sw.epilog_crit_edge
  %max_actions_type.0 = phi i32 [ 1, %sw.bb288 ], [ 2, %if.end282 ], [ 2, %if.end224 ], [ 1, %if.end188 ], [ 1, %if.else191 ], [ 1, %sw.bb147 ], [ 1, %if.end142 ], [ 1, %sw.bb112 ], [ 1, %for.body.sw.epilog_crit_edge ], [ 1, %sw.bb110 ], [ 1, %sw.bb108 ], [ 1, %if.end66 ], [ 1, %sw.bb ], [ 1, %land.rhs ], [ 1, %sw.bb118.sw.epilog_crit_edge ], [ 1, %cleanup.thread ]
  %recalc_cs_required.1.off0 = phi i1 [ %recalc_cs_required.0.off0615, %sw.bb288 ], [ %recalc_cs_required.0.off0615, %if.end282 ], [ %recalc_cs_required.0.off0615, %if.end224 ], [ %recalc_cs_required.0.off0615, %if.end188 ], [ %recalc_cs_required.0.off0615, %if.else191 ], [ %recalc_cs_required.0.off0615, %sw.bb147 ], [ %recalc_cs_required.0.off0615, %if.end142 ], [ %recalc_cs_required.0.off0615, %sw.bb112 ], [ %recalc_cs_required.0.off0615, %for.body.sw.epilog_crit_edge ], [ %recalc_cs_required.0.off0615, %sw.bb110 ], [ %recalc_cs_required.0.off0615, %sw.bb108 ], [ %recalc_cs_required.0.off0615, %if.end66 ], [ %recalc_cs_required.0.off0615, %sw.bb ], [ %lnot129, %land.rhs ], [ false, %sw.bb118.sw.epilog_crit_edge ], [ %recalc_cs_required.0.off0615, %cleanup.thread ]
  %dest_action.1 = phi ptr [ %dest_action.0616, %sw.bb288 ], [ %dest_action.0616, %if.end282 ], [ %dest_action.0616, %if.end224 ], [ %25, %if.end188 ], [ %25, %if.else191 ], [ %dest_action.0616, %sw.bb147 ], [ %dest_action.0616, %if.end142 ], [ %dest_action.0616, %sw.bb112 ], [ %dest_action.0616, %for.body.sw.epilog_crit_edge ], [ %dest_action.0616, %sw.bb110 ], [ %dest_action.0616, %sw.bb108 ], [ %25, %if.end66 ], [ %dest_action.0616, %sw.bb ], [ %dest_action.0616, %land.rhs ], [ %dest_action.0616, %sw.bb118.sw.epilog_crit_edge ], [ %25, %cleanup.thread ]
  %arrayidx307 = getelementptr [16 x i8], ptr %action_type_set, i32 0, i32 %27
  %289 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx307, align 1
  %inc308 = add i8 %290, 1
  store i8 %inc308, ptr %arrayidx307, align 1
  %conv309 = zext i8 %inc308 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_actions_type.0, i32 %conv309)
  %cmp310 = icmp ult i32 %max_actions_type.0, %conv309
  br i1 %cmp310, label %do.end315, label %if.end321

do.end315:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %291 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mdev75, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 8
  %295 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i538 = and i32 %295, -16384
  %296 = inttoptr i32 %and.i538 to ptr
  %task319 = getelementptr inbounds %struct.thread_info, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %task319 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %task319, align 8
  %pid320 = getelementptr inbounds %struct.task_struct, ptr %298, i32 0, i32 68
  %299 = ptrtoint ptr %pid320 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %pid320, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 722, i32 noundef %300, i32 noundef %27, i32 noundef %max_actions_type.0) #13
  br label %cleanup375

if.end321:                                        ; preds = %sw.epilog
  %arrayidx2.i = getelementptr [4 x [9 x [16 x i32]]], ptr @next_action_state, i32 0, i32 %retval.0.i529, i32 %state.0613, i32 %27
  %301 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp.i539.not = icmp eq i32 %302, 0
  br i1 %cmp.i539.not, label %do.end327, label %for.inc

do.end327:                                        ; preds = %if.end321
  %303 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mdev75, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 8
  %307 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i541 = and i32 %307, -16384
  %308 = inttoptr i32 %and.i541 to ptr
  %task331 = getelementptr inbounds %struct.thread_info, ptr %308, i32 0, i32 2
  %309 = ptrtoint ptr %task331 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %task331, align 8
  %pid332 = getelementptr inbounds %struct.task_struct, ptr %310, i32 0, i32 68
  %311 = ptrtoint ptr %pid332 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %pid332, align 8
  %313 = ptrtoint ptr %gvmi3 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %gvmi3, align 8
  %conv334 = zext i16 %314 to i32
  %conv336 = zext i1 %cmp to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 731, i32 noundef %312, i32 noundef %conv334, i32 noundef %conv336) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0614)
  %cmp.not8.i = icmp slt i32 %i.0614, 0
  br i1 %cmp.not8.i, label %do.end327.cleanup375_crit_edge, label %do.end327.do.end.i542_crit_edge

do.end327.do.end.i542_crit_edge:                  ; preds = %do.end327
  br label %do.end.i542

do.end327.cleanup375_crit_edge:                   ; preds = %do.end327
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup375

do.end.i542:                                      ; preds = %do.end.i542.do.end.i542_crit_edge, %do.end327.do.end.i542_crit_edge
  %i.09.i = phi i32 [ %inc.i, %do.end.i542.do.end.i542_crit_edge ], [ 0, %do.end327.do.end.i542_crit_edge ]
  %315 = ptrtoint ptr %mdev75 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %mdev75, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 8
  %319 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i = and i32 %319, -16384
  %320 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %320, i32 0, i32 2
  %321 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %322, i32 0, i32 68
  %323 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %pid.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %actions, i32 %i.09.i
  %325 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %arrayidx.i, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %326, align 4
  %329 = call i32 @llvm.umin.i32(i32 %328, i32 16) #10
  %arrayidx.i.i = getelementptr [17 x ptr], ptr @action_type_to_str, i32 0, i32 %329
  %330 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 542, i32 noundef %324, ptr noundef %331, i32 noundef %328) #13
  %inc.i = add i32 %i.09.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %i.0614
  br i1 %cmp.not.i, label %do.end.i542.cleanup375_crit_edge, label %do.end.i542.do.end.i542_crit_edge

do.end.i542.do.end.i542_crit_edge:                ; preds = %do.end.i542
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i542

do.end.i542.cleanup375_crit_edge:                 ; preds = %do.end.i542
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup375

for.inc:                                          ; preds = %if.end321
  %inc344 = add nuw i32 %i.0614, 1
  %exitcond.not = icmp eq i32 %inc344, %num_actions
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dr_action_get_action_domain.exit.for.end_crit_edge
  %recalc_cs_required.0.off0.lcssa = phi i1 [ false, %dr_action_get_action_domain.exit.for.end_crit_edge ], [ %recalc_cs_required.1.off0, %for.inc.for.end_crit_edge ]
  %dest_action.0.lcssa = phi ptr [ null, %dr_action_get_action_domain.exit.for.end_crit_edge ], [ %dest_action.1, %for.inc.for.end_crit_edge ]
  %num_of_builders = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %nic_matcher, i32 0, i32 4
  %332 = ptrtoint ptr %num_of_builders to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %num_of_builders, align 4
  %conv345 = zext i8 %333 to i32
  %334 = ptrtoint ptr %new_hw_ste_arr_sz to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %conv345, ptr %new_hw_ste_arr_sz, align 4
  %335 = load i8, ptr %num_of_builders, align 4
  %conv347 = zext i8 %335 to i32
  %sub = shl nuw nsw i32 %conv347, 6
  %mul = add nsw i32 %sub, -64
  %add.ptr = getelementptr i8, ptr %ste_arr, i32 %mul
  %336 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %type7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %337)
  %cmp349 = icmp ne i32 %337, 2
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp349, i1 true, i1 %cmp.not
  %recalc_cs_required.0.off0.not = xor i1 %recalc_cs_required.0.off0.lcssa, true
  %brmerge513 = select i1 %brmerge, i1 true, i1 %recalc_cs_required.0.off0.not
  %tobool358.not = icmp eq ptr %dest_action.0.lcssa, null
  %or.cond = select i1 %brmerge513, i1 true, i1 %tobool358.not
  br i1 %or.cond, label %for.end.if.end373_crit_edge, label %if.then359

for.end.if.end373_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

if.then359:                                       ; preds = %for.end
  %call361 = call fastcc i32 @dr_action_handle_cs_recalc(ptr noundef %9, ptr noundef nonnull %dest_action.0.lcssa, ptr noundef %final_icm_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.then359.if.end373_crit_edge, label %do.end366

if.then359.if.end373_crit_edge:                   ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end373

do.end366:                                        ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #12
  %mdev367 = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 1
  %338 = ptrtoint ptr %mdev367 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %mdev367, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 8
  %342 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i543 = and i32 %342, -16384
  %343 = inttoptr i32 %and.i543 to ptr
  %task370 = getelementptr inbounds %struct.thread_info, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %task370 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %task370, align 8
  %pid371 = getelementptr inbounds %struct.task_struct, ptr %345, i32 0, i32 68
  %346 = ptrtoint ptr %pid371 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pid371, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %341, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 750, i32 noundef %347, i32 noundef %call361) #13
  br label %cleanup375

if.end373:                                        ; preds = %if.then359.if.end373_crit_edge, %for.end.if.end373_crit_edge
  %348 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %type, align 8
  %ste_ctx1.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %9, i32 0, i32 11
  %350 = ptrtoint ptr %ste_ctx1.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ste_ctx1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %added_stes.i) #10
  %352 = ptrtoint ptr %added_stes.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %added_stes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp.i544 = icmp eq i32 %349, 0
  br i1 %cmp.i544, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5dr_ste_set_actions_rx(ptr noundef %351, ptr noundef %9, ptr noundef nonnull %action_type_set, ptr noundef %add.ptr, ptr noundef nonnull %attr, ptr noundef nonnull %added_stes.i) #10
  br label %dr_actions_apply.exit

if.else.i:                                        ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #12
  call void @mlx5dr_ste_set_actions_tx(ptr noundef %351, ptr noundef %9, ptr noundef nonnull %action_type_set, ptr noundef %add.ptr, ptr noundef nonnull %attr, ptr noundef nonnull %added_stes.i) #10
  br label %dr_actions_apply.exit

dr_actions_apply.exit:                            ; preds = %if.else.i, %if.then.i
  %353 = ptrtoint ptr %added_stes.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %added_stes.i, align 4
  %355 = ptrtoint ptr %new_hw_ste_arr_sz to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %new_hw_ste_arr_sz, align 4
  %add.i = add i32 %356, %354
  store i32 %add.i, ptr %new_hw_ste_arr_sz, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %added_stes.i) #10
  br label %cleanup375

cleanup375:                                       ; preds = %dr_actions_apply.exit, %do.end366, %do.end.i542.cleanup375_crit_edge, %do.end327.cleanup375_crit_edge, %do.end315, %do.end301, %if.then273, %do.body261, %if.then246, %do.body234, %if.then215, %do.body203, %if.then179, %do.body167, %do.end139, %do.end105, %cleanup, %do.end
  %retval.4 = phi i32 [ %call361, %do.end366 ], [ 0, %dr_actions_apply.exit ], [ -95, %do.body167 ], [ -95, %do.body203 ], [ -95, %do.body234 ], [ -22, %do.body261 ], [ -95, %do.end327.cleanup375_crit_edge ], [ -22, %if.then273 ], [ -95, %if.then246 ], [ -95, %if.then215 ], [ -95, %if.then179 ], [ -22, %do.end ], [ -95, %do.end105 ], [ -95, %do.end139 ], [ -22, %do.end301 ], [ -22, %do.end315 ], [ %call77, %cleanup ], [ -95, %do.end.i542.cleanup375_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %attr) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action_type_set) #10
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_flow_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5dr_ste_supp_ttl_cs_recalc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_handle_cs_recalc(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %dest_action, ptr noundef %final_icm_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dest_action, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 10, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %dest_action, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %rx_icm_addr = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %5, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_icm_addr, align 8
  %9 = ptrtoint ptr %final_icm_addr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %final_icm_addr, align 8
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_handle_cs_recalc.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_handle_cs_recalc, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !252

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_handle_cs_recalc.__UNIQUE_ID_ddebug544, ptr noundef %13, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 508, i32 noundef %19) #10
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %20 = getelementptr inbounds %struct.mlx5dr_action, ptr %dest_action, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %caps, align 4
  %num = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %num, align 4
  %call9 = tail call i32 @mlx5dr_domain_get_recalc_cs_ft_addr(ptr noundef %24, i16 noundef zeroext %28, ptr noundef %final_icm_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb7.cleanup_crit_edge, label %do.end14

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %mdev15 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %29 = ptrtoint ptr %mdev15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev15, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i28 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i28 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef 521, i32 noundef %38) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.bb7.cleanup_crit_edge, %if.then4, %do.body, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -22, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb7.cleanup_crit_edge ], [ 0, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_drop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.dr_action_create_generic.exit_crit_edge, label %if.end2.i

entry.dr_action_create_generic.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_action_create_generic.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  br label %dr_action_create_generic.exit

dr_action_create_generic.exit:                    ; preds = %if.end2.i, %entry.dr_action_create_generic.exit_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_dest_table_num(ptr noundef %dmn, i32 noundef %table_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %add.ptr.i, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %add.ptr.i, align 8
  %6 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dmn, ptr %6, align 8
  %id = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %table_num, ptr %id, align 8
  %type = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 2, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %type, align 8
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_dest_table(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %dec_ref, label %if.end

if.end:                                           ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %5 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %5, align 8
  %7 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tbl, ptr %7, align 8
  br label %cleanup

dec_ref:                                          ; preds = %refcount_inc.exit
  %call.i.i.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !257
  %asmresult.i.i.i.i.i7 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i7)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i7, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dec_ref.cleanup_crit_edge, !prof !254

dec_ref.cleanup_crit_edge:                        ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i.i:                                     ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %dec_ref.cleanup_crit_edge, %if.end
  ret ptr %call7.i.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_dec(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #10, !srcloc !257
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i, 2
  br i1 %cmp.i, label %if.then3.i, label %entry.__refcount_dec.exit_crit_edge, !prof !254

entry.__refcount_dec.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__refcount_dec.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 4) #10
  br label %__refcount_dec.exit

__refcount_dec.exit:                              ; preds = %if.then3.i, %entry.__refcount_dec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_mult_dest_tbl(ptr noundef %dmn, ptr nocapture noundef readonly %dests, i32 noundef %num_of_dests, i1 noundef zeroext %ignore_flow_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 862, i32 noundef %11) #13
  br label %cleanup94

if.end:                                           ; preds = %entry
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_of_dests, i32 16) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup94_crit_edge, label %if.end7.i.i, !prof !254

if.end.cleanup94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end7.i.i:                                      ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup94_crit_edge, label %if.end7.i.i199

if.end7.i.i.cleanup94_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.end7.i.i199:                                   ; preds = %if.end7.i.i
  %15 = shl nuw nsw i32 %num_of_dests, 3
  %call8.i.i198 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #15
  %tobool15.not = icmp eq ptr %call8.i.i198, null
  br i1 %tobool15.not, label %if.end7.i.i199.free_hw_dests_crit_edge, label %for.cond.preheader

if.end7.i.i199.free_hw_dests_crit_edge:           ; preds = %if.end7.i.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_hw_dests

for.cond.preheader:                               ; preds = %if.end7.i.i199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_of_dests)
  %cmp18241.not = icmp eq i32 %num_of_dests, 0
  br i1 %cmp18241.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0244 = phi i32 [ %inc69, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %num_of_ref.0243 = phi i32 [ %num_of_ref.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %reformat_req.0.off0242 = phi i1 [ %reformat_req.2.off0.ph, %for.inc.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5dr_action_dest, ptr %dests, i32 %i.0244
  %reformat = getelementptr %struct.mlx5dr_action_dest, ptr %dests, i32 %i.0244, i32 1
  %16 = ptrtoint ptr %reformat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reformat, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %inc = add i32 %num_of_ref.0243, 1
  %arrayidx21 = getelementptr ptr, ptr %call8.i.i198, i32 %num_of_ref.0243
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx21, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %22, label %do.body48 [
    i32 10, label %sw.bb
    i32 6, label %sw.bb39
  ]

sw.bb:                                            ; preds = %for.body
  %arrayidx22 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %call8.i.i, i32 %i.0244
  %24 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %call8.i.i, i32 %i.0244, i32 1
  %flags = getelementptr inbounds %struct.anon.180, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %flags, align 4
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx22, align 16
  %27 = getelementptr inbounds %struct.mlx5dr_action, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %caps = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 4
  %num = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num, align 4
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %24, align 4
  %35 = load ptr, ptr %27, align 4
  %caps27 = getelementptr inbounds %struct.mlx5dr_action_vport, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %caps27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %caps27, align 4
  %vhca_gvmi = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %vhca_gvmi to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vhca_gvmi, align 2
  %vhca_id = getelementptr inbounds %struct.anon.180, ptr %24, i32 0, i32 1
  %40 = ptrtoint ptr %vhca_id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %vhca_id, align 2
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %sw.bb.for.inc_crit_edge, label %if.then30

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %41 = getelementptr inbounds %struct.mlx5dr_action, ptr %17, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %id = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id, align 4
  %reformat_id = getelementptr inbounds %struct.anon.180, ptr %24, i32 0, i32 2
  %46 = ptrtoint ptr %reformat_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %reformat_id, align 8
  %inc32 = add i32 %num_of_ref.0243, 2
  %arrayidx33 = getelementptr ptr, ptr %call8.i.i198, i32 %inc
  %47 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %17, ptr %arrayidx33, align 4
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 4
  %50 = or i8 %49, 2
  store i8 %50, ptr %flags, align 4
  br label %for.inc

sw.bb39:                                          ; preds = %for.body
  %arrayidx40 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %call8.i.i, i32 %i.0244
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %arrayidx40, align 16
  %52 = getelementptr inbounds %struct.mlx5dr_action, ptr %19, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %54, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool42.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %id44 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %54, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %id44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id44, align 4
  %58 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %call8.i.i, i32 %i.0244, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %58, align 4
  br label %for.inc

if.else:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %60 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %table_id = getelementptr inbounds %struct.mlx5dr_table, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %table_id, align 8
  %65 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %call8.i.i, i32 %i.0244, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %65, align 4
  br label %for.inc

do.body48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_mult_dest_tbl.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_mult_dest_tbl, %if.then59)) #10
          to label %free_ref_actions [label %if.then59], !srcloc !252

if.then59:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %mdev60 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %67 = ptrtoint ptr %mdev60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdev60, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i202 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i202 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task63, align 8
  %pid64 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 68
  %75 = ptrtoint ptr %pid64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pid64, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_mult_dest_tbl.__UNIQUE_ID_ddebug551, ptr noundef %70, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef 907, i32 noundef %76) #10
  br label %free_ref_actions

for.inc:                                          ; preds = %if.else, %if.then43, %if.then30, %sw.bb.for.inc_crit_edge
  %reformat_req.2.off0.ph = phi i1 [ %reformat_req.0.off0242, %sw.bb.for.inc_crit_edge ], [ true, %if.then30 ], [ %reformat_req.0.off0242, %if.else ], [ %reformat_req.0.off0242, %if.then43 ]
  %num_of_ref.2.ph = phi i32 [ %inc, %sw.bb.for.inc_crit_edge ], [ %inc32, %if.then30 ], [ %inc, %if.else ], [ %inc, %if.then43 ]
  %inc69 = add nuw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc69, %num_of_dests
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %reformat_req.0.off0.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %reformat_req.2.off0.ph, %for.inc.for.end_crit_edge ]
  %num_of_ref.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %num_of_ref.2.ph, %for.inc.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i208 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i208, null
  br i1 %tobool.not.i, label %for.end.free_ref_actions_crit_edge, label %if.end73

for.end.free_ref_actions_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ref_actions

if.end73:                                         ; preds = %for.end
  %78 = ptrtoint ptr %call7.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 6, ptr %call7.i.i.i208, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i208, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %79 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i208, i32 1
  %80 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i208, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i, ptr %80, align 8
  %id75 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i208, i32 2
  %group_id = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i208, i32 2, i32 1
  %call77 = tail call i32 @mlx5dr_fw_create_md_tbl(ptr noundef %dmn, ptr noundef nonnull %call8.i.i, i32 noundef %num_of_dests, i1 noundef zeroext %reformat_req.0.off0.lcssa, ptr noundef %id75, ptr noundef %group_id, i1 noundef zeroext %ignore_flow_level) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %free_action

if.end80:                                         ; preds = %if.end73
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end80.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

if.end80.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end80
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %83 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %.not.i.i.i = icmp sgt i32 %83, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end80.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end80.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_of_ref.0.lcssa)
  %cmp82247.not = icmp eq i32 %num_of_ref.0.lcssa, 0
  br i1 %cmp82247.not, label %refcount_inc.exit.for.end89_crit_edge, label %refcount_inc.exit.for.body84_crit_edge

refcount_inc.exit.for.body84_crit_edge:           ; preds = %refcount_inc.exit
  br label %for.body84

refcount_inc.exit.for.end89_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.body84:                                       ; preds = %refcount_inc.exit219.for.body84_crit_edge, %refcount_inc.exit.for.body84_crit_edge
  %i.1248 = phi i32 [ %inc88, %refcount_inc.exit219.for.body84_crit_edge ], [ 0, %refcount_inc.exit.for.body84_crit_edge ]
  %arrayidx85 = getelementptr ptr, ptr %call8.i.i198, i32 %i.1248
  %84 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx85, align 4
  %refcount86 = getelementptr inbounds %struct.mlx5dr_action, ptr %85, i32 0, i32 1
  %call.i.i.i.i.i211 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount86, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount86, i32 1, i32 3, i32 1) #10
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount86, ptr %refcount86, i32 1, ptr elementtype(i32) %refcount86) #10, !srcloc !253
  %asmresult.i.i.i.i.i212 = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i212)
  %tobool1.not.i.i.i213 = icmp eq i32 %asmresult.i.i.i.i.i212, 0
  br i1 %tobool1.not.i.i.i213, label %for.body84.if.end15.sink.split.i.i.i218_crit_edge, label %if.else.i.i.i216, !prof !254

for.body84.if.end15.sink.split.i.i.i218_crit_edge: ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i218

if.else.i.i.i216:                                 ; preds = %for.body84
  %add.i.i.i214 = add i32 %asmresult.i.i.i.i.i212, 1
  %87 = or i32 %add.i.i.i214, %asmresult.i.i.i.i.i212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %.not.i.i.i215 = icmp sgt i32 %87, -1
  br i1 %.not.i.i.i215, label %if.else.i.i.i216.refcount_inc.exit219_crit_edge, label %if.else.i.i.i216.if.end15.sink.split.i.i.i218_crit_edge, !prof !255

if.else.i.i.i216.if.end15.sink.split.i.i.i218_crit_edge: ; preds = %if.else.i.i.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i218

if.else.i.i.i216.refcount_inc.exit219_crit_edge:  ; preds = %if.else.i.i.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit219

if.end15.sink.split.i.i.i218:                     ; preds = %if.else.i.i.i216.if.end15.sink.split.i.i.i218_crit_edge, %for.body84.if.end15.sink.split.i.i.i218_crit_edge
  %.sink.i.i.i217 = phi i32 [ 2, %for.body84.if.end15.sink.split.i.i.i218_crit_edge ], [ 1, %if.else.i.i.i216.if.end15.sink.split.i.i.i218_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount86, i32 noundef %.sink.i.i.i217) #10
  br label %refcount_inc.exit219

refcount_inc.exit219:                             ; preds = %if.end15.sink.split.i.i.i218, %if.else.i.i.i216.refcount_inc.exit219_crit_edge
  %inc88 = add nuw i32 %i.1248, 1
  %exitcond249.not = icmp eq i32 %inc88, %num_of_ref.0.lcssa
  br i1 %exitcond249.not, label %refcount_inc.exit219.for.end89_crit_edge, label %refcount_inc.exit219.for.body84_crit_edge

refcount_inc.exit219.for.body84_crit_edge:        ; preds = %refcount_inc.exit219
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

refcount_inc.exit219.for.end89_crit_edge:         ; preds = %refcount_inc.exit219
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end89

for.end89:                                        ; preds = %refcount_inc.exit219.for.end89_crit_edge, %refcount_inc.exit.for.end89_crit_edge
  %88 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %80, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load90 = load i8, ptr %89, align 8
  %bf.set = or i8 %bf.load90, -128
  store i8 %bf.set, ptr %89, align 8
  %91 = load ptr, ptr %80, align 8
  %92 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %dmn, ptr %92, align 8
  %94 = load ptr, ptr %80, align 8
  %type92 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %94, i32 0, i32 1, i32 0, i32 3
  %95 = ptrtoint ptr %type92 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %type92, align 4
  %96 = load ptr, ptr %80, align 8
  %ref_actions93 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %96, i32 0, i32 1, i32 0, i32 6
  %97 = ptrtoint ptr %ref_actions93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call8.i.i198, ptr %ref_actions93, align 8
  %98 = load ptr, ptr %80, align 8
  %num_of_ref_actions = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %98, i32 0, i32 1, i32 0, i32 7
  %99 = ptrtoint ptr %num_of_ref_actions to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %num_of_ref.0.lcssa, ptr %num_of_ref_actions, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup94

free_action:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i208) #10
  br label %free_ref_actions

free_ref_actions:                                 ; preds = %free_action, %for.end.free_ref_actions_crit_edge, %if.then59, %do.body48
  tail call void @kfree(ptr noundef nonnull %call8.i.i198) #10
  br label %free_hw_dests

free_hw_dests:                                    ; preds = %free_ref_actions, %if.end7.i.i199.free_hw_dests_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup94

cleanup94:                                        ; preds = %free_hw_dests, %for.end89, %if.end7.i.i.cleanup94_crit_edge, %if.end.cleanup94_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %free_hw_dests ], [ %call7.i.i.i208, %for.end89 ], [ null, %if.end7.i.i.cleanup94_crit_edge ], [ null, %if.end.cleanup94_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_fw_create_md_tbl(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_dest_flow_fw_table(ptr noundef %dmn, ptr nocapture noundef readonly %ft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %add.ptr.i, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %add.ptr.i, align 8
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %type1 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 2, i32 2
  %8 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %type1, align 8
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %id2 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 2
  %11 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id2, align 8
  %12 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dmn, ptr %12, align 8
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_flow_counter(i32 noundef %counter_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %counter_id, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_tag(i32 noundef %tag_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  %and = and i32 %tag_value, 16777215
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_flow_sampler(ptr noundef %dmn, i32 noundef %sampler_id) local_unnamed_addr #0 align 64 {
entry:
  %icm_rx = alloca i64, align 8
  %icm_tx = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icm_rx) #10
  %0 = ptrtoint ptr %icm_rx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %icm_rx, align 8, !annotation !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icm_tx) #10
  %1 = ptrtoint ptr %icm_tx to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %icm_tx, align 8, !annotation !258
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %call = call i32 @mlx5dr_cmd_query_flow_sampler(ptr noundef %3, i32 noundef %sampler_id, ptr noundef nonnull %icm_rx, ptr noundef nonnull %icm_tx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %7 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %7, align 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dmn, ptr %add.ptr.i, align 8
  %sampler_id6 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 3
  %10 = ptrtoint ptr %sampler_id6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sampler_id, ptr %sampler_id6, align 8
  %11 = ptrtoint ptr %icm_rx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %icm_rx, align 8
  %rx_icm_addr = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_icm_addr, align 8
  %14 = ptrtoint ptr %icm_tx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %icm_tx, align 8
  %tx_icm_addr = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 2, i32 1
  %16 = ptrtoint ptr %tx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_icm_addr, align 8
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end4.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

if.end4.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end4
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i.i, %if.else.i.i.i.cleanup_crit_edge ], [ %call7.i.i.i, %if.end15.sink.split.i.i.i ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icm_tx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icm_rx) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_flow_sampler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_pop_vlan() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.dr_action_create_generic.exit_crit_edge, label %if.end2.i

entry.dr_action_create_generic.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dr_action_create_generic.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %3, align 8
  br label %dr_action_create_generic.exit

dr_action_create_generic.exit:                    ; preds = %if.end2.i, %entry.dr_action_create_generic.exit_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_push_vlan(ptr nocapture noundef readonly %dmn, i32 noundef %vlan_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %vlan_hdr, 16
  %trunc = trunc i32 %shr to i16
  %0 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %trunc, label %do.body [
    i16 -30552, label %entry.if.end10_crit_edge
    i16 -32512, label %entry.if.end10_crit_edge26
  ]

entry.if.end10_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_push_vlan.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_push_vlan, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !252

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_push_vlan.__UNIQUE_ID_ddebug560, ptr noundef %4, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 1187, i32 noundef %10) #10
  br label %cleanup

if.end10:                                         ; preds = %entry.if.end10_crit_edge, %entry.if.end10_crit_edge26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %14 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %14, align 8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %vlan_hdr, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi ptr [ %call7.i.i.i, %if.end14 ], [ null, %if.then8 ], [ null, %do.body ], [ null, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_packet_reformat(ptr noundef %dmn, i32 noundef %reformat_type, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reformat_type)
  %2 = icmp ult i32 %reformat_type, 6
  br i1 %2, label %switch.lookup, label %do.body

do.body:                                          ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_packet_reformat, %if.then5)) #10
          to label %dec_ref [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug561, ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 1216, i32 noundef %12) #10
  br label %dec_ref

switch.lookup:                                    ; preds = %refcount_inc.exit
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mlx5dr_action_create_packet_reformat, i32 0, i32 %reformat_type
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call8 = tail call fastcc i32 @dr_action_verify_reformat_params(i32 noundef %switch.load, ptr noundef %dmn, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end8.i.i.i, label %switch.lookup.dec_ref_crit_edge

switch.lookup.dec_ref_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %dec_ref

if.end8.i.i.i:                                    ; preds = %switch.lookup
  %arrayidx.i = getelementptr [16 x i32], ptr @action_size, i32 0, i32 %switch.load
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, 12
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.dec_ref_crit_edge, label %if.end15

if.end8.i.i.i.dec_ref_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dec_ref

if.end15:                                         ; preds = %if.end8.i.i.i
  %16 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load, ptr %call9.i.i.i, align 128
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call9.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %17 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call9.i.i.i, i32 1
  %18 = getelementptr inbounds %struct.mlx5dr_action, ptr %call9.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %18, align 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dmn, ptr %add.ptr.i, align 4
  %call17 = tail call fastcc i32 @dr_action_create_reformat_action(ptr noundef %dmn, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef %data, ptr noundef nonnull %call9.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %do.body20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body20:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_packet_reformat, %if.then32)) #10
          to label %free_action [label %if.then32], !srcloc !252

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %mdev33 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %21 = ptrtoint ptr %mdev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev33, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i67 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i67 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid37, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug562, ptr noundef %24, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 1239, i32 noundef %30, i32 noundef %call17) #10
  br label %free_action

free_action:                                      ; preds = %if.then32, %do.body20
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %dec_ref

dec_ref:                                          ; preds = %free_action, %if.end8.i.i.i.dec_ref_crit_edge, %switch.lookup.dec_ref_crit_edge, %if.then5, %do.body
  %call.i.i.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !257
  %asmresult.i.i.i.i.i69 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i69)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i69, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dec_ref.cleanup_crit_edge, !prof !254

dec_ref.cleanup_crit_edge:                        ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i.i:                                     ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %dec_ref.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i.i, %if.end15.cleanup_crit_edge ], [ null, %dec_ref.cleanup_crit_edge ], [ null, %if.then3.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_verify_reformat_params(i32 noundef %reformat_type, ptr nocapture noundef readonly %dmn, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef readnone %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reformat_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %reformat_type, label %if.else78 [
    i32 13, label %if.then
    i32 14, label %if.then29
  ]

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_sz)
  %tobool1.not = icmp eq i32 %data_sz, 0
  %or.cond229 = xor i1 %tobool1.not, %tobool.not
  br i1 %or.cond229, label %if.then.do.body_crit_edge, label %lor.lhs.false5

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false5:                                   ; preds = %if.then
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 32
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 5
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %6, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %data_sz)
  %cmp6 = icmp ult i32 %shr, %data_sz
  br i1 %cmp6, label %lor.lhs.false5.do.body_crit_edge, label %lor.lhs.false7

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %shr15 = lshr i32 %6, 16
  %and16 = and i32 %shr15, 255
  %conv = zext i8 %reformat_param_1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %conv)
  %cmp17 = icmp ult i32 %and16, %conv
  br i1 %cmp17, label %lor.lhs.false7.do.body_crit_edge, label %lor.lhs.false7.if.end110_crit_edge

lor.lhs.false7.if.end110_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false5.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_verify_reformat_params, %if.then23)) #10
          to label %return [label %if.then23], !srcloc !252

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev24 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %7 = ptrtoint ptr %mdev24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev24, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug552, ptr noundef %10, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef 1034, i32 noundef %16) #10
  br label %return

if.then29:                                        ; preds = %entry
  %tobool30.not = icmp eq ptr %data, null
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then29.do.body57_crit_edge

if.then29.do.body57_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

lor.lhs.false31:                                  ; preds = %if.then29
  %mdev32 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %17 = ptrtoint ptr %mdev32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev32, align 4
  %arrayidx35 = getelementptr %struct.mlx5_core_dev, ptr %18, i32 0, i32 8, i32 0, i32 32
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx35, align 8
  %add.ptr38 = getelementptr i32, ptr %20, i32 5
  %21 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr38, align 4
  %shr39 = lshr i32 %22, 8
  %and40 = and i32 %shr39, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and40, i32 %data_sz)
  %cmp41 = icmp ult i32 %and40, %data_sz
  br i1 %cmp41, label %lor.lhs.false31.do.body57_crit_edge, label %lor.lhs.false43

lor.lhs.false31.do.body57_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

lor.lhs.false43:                                  ; preds = %lor.lhs.false31
  %and52 = and i32 %22, 255
  %conv53 = zext i8 %reformat_param_1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and52, i32 %conv53)
  %cmp54 = icmp ult i32 %and52, %conv53
  br i1 %cmp54, label %lor.lhs.false43.do.body57_crit_edge, label %lor.lhs.false43.if.end110_crit_edge

lor.lhs.false43.if.end110_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

lor.lhs.false43.do.body57_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body57

do.body57:                                        ; preds = %lor.lhs.false43.do.body57_crit_edge, %lor.lhs.false31.do.body57_crit_edge, %if.then29.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_verify_reformat_params, %if.then69)) #10
          to label %return [label %if.then69], !srcloc !252

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %mdev70 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %23 = ptrtoint ptr %mdev70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdev70, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i220 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i220 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task73, align 8
  %pid74 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid74, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug553, ptr noundef %26, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 1041, i32 noundef %32) #10
  br label %return

if.else78:                                        ; preds = %entry
  %33 = or i8 %reformat_param_1, %reformat_param_0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %reformat_type)
  %cmp85 = icmp ugt i32 %reformat_type, 14
  %or.cond207 = or i1 %cmp85, %34
  br i1 %or.cond207, label %do.body88, label %if.else78.if.end110_crit_edge

if.else78.if.end110_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.body88:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_verify_reformat_params, %if.then100)) #10
          to label %return [label %if.then100], !srcloc !252

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %mdev101 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %35 = ptrtoint ptr %mdev101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev101, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i221 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i221 to ptr
  %task104 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task104, align 8
  %pid105 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid105, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug554, ptr noundef %38, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.72, i32 noundef 1046, i32 noundef %44) #10
  br label %return

if.end110:                                        ; preds = %if.else78.if.end110_crit_edge, %lor.lhs.false43.if.end110_crit_edge, %lor.lhs.false7.if.end110_crit_edge
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 4
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %46, label %if.end110.return_crit_edge [
    i32 1, label %if.then150
    i32 0, label %if.then118
  ]

if.end110.return_crit_edge:                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then118:                                       ; preds = %if.end110
  %48 = zext i32 %reformat_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %reformat_type, label %do.body125 [
    i32 0, label %if.then118.return_crit_edge
    i32 2, label %if.then118.return_crit_edge230
  ]

if.then118.return_crit_edge230:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then118.return_crit_edge:                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body125:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_verify_reformat_params, %if.then137)) #10
          to label %return [label %if.then137], !srcloc !252

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #12
  %mdev138 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %49 = ptrtoint ptr %mdev138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdev138, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i222 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i222 to ptr
  %task141 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task141 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task141, align 8
  %pid142 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid142, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug555, ptr noundef %52, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.72, i32 noundef 1056, i32 noundef %58) #10
  br label %return

if.then150:                                       ; preds = %if.end110
  %59 = zext i32 %reformat_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %reformat_type, label %do.body157 [
    i32 1, label %if.then150.return_crit_edge
    i32 3, label %if.then150.return_crit_edge231
  ]

if.then150.return_crit_edge231:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then150.return_crit_edge:                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body157:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_verify_reformat_params, %if.then169)) #10
          to label %return [label %if.then169], !srcloc !252

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #12
  %mdev170 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %60 = ptrtoint ptr %mdev170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mdev170, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %64 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i223 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i223 to ptr
  %task173 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task173 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task173, align 8
  %pid174 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid174 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid174, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug556, ptr noundef %63, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef 1062, i32 noundef %69) #10
  br label %return

return:                                           ; preds = %if.then169, %do.body157, %if.then150.return_crit_edge, %if.then150.return_crit_edge231, %if.then137, %do.body125, %if.then118.return_crit_edge, %if.then118.return_crit_edge230, %if.end110.return_crit_edge, %if.then100, %do.body88, %if.then69, %do.body57, %if.then23, %do.body
  %retval.0 = phi i32 [ 0, %if.then150.return_crit_edge ], [ 0, %if.then150.return_crit_edge231 ], [ 0, %if.end110.return_crit_edge ], [ 0, %if.then118.return_crit_edge ], [ 0, %if.then118.return_crit_edge230 ], [ -22, %if.then169 ], [ -22, %if.then137 ], [ -22, %if.then100 ], [ -22, %if.then69 ], [ -22, %if.then23 ], [ -22, %do.body ], [ -22, %do.body57 ], [ -22, %do.body88 ], [ -22, %do.body125 ], [ -22, %do.body157 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_create_reformat_action(ptr noundef %dmn, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef %data, ptr noundef %action) unnamed_addr #0 align 64 {
entry:
  %reformat_id = alloca i32, align 4
  %hw_actions = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reformat_id) #10
  %0 = ptrtoint ptr %reformat_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reformat_id, align 4, !annotation !258
  %1 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %action, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %2, label %do.end91 [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge155
    i32 0, label %entry.cleanup95_crit_edge
    i32 2, label %sw.bb5
    i32 13, label %sw.bb76
    i32 14, label %sw.bb84
  ]

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

entry.sw.bb_crit_edge155:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge155
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %. = select i1 %cmp, i32 2, i32 4
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %call = call i32 @mlx5dr_cmd_create_reformat_ctx(ptr noundef %5, i32 noundef %., i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %data_sz, ptr noundef %data, ptr noundef nonnull %reformat_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup95_crit_edge

sw.bb.cleanup95_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %reformat_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reformat_id, align 4
  %8 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %id = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %id, align 4
  %12 = load ptr, ptr %8, align 4
  %size = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %data_sz, ptr %size, align 4
  br label %cleanup95

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hw_actions) #10
  %14 = call ptr @memset(ptr %hw_actions, i32 0, i32 64)
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %15 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ste_ctx, align 4
  %17 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %num_of_actions = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %19, i32 0, i32 3
  %call7 = call i32 @mlx5dr_ste_set_action_decap_l3_list(ptr noundef %16, ptr noundef %data, i32 noundef %data_sz, ptr noundef nonnull %hw_actions, i32 noundef 64, ptr noundef %num_of_actions) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end18, label %do.body

do.body:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_create_reformat_action, %if.then14)) #10
          to label %cleanup74 [label %if.then14], !srcloc !252

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev15 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %20 = ptrtoint ptr %mdev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev15, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_create_reformat_action.__UNIQUE_ID_ddebug557, ptr noundef %23, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef 1120, i32 noundef %29) #10
  br label %cleanup74

if.end18:                                         ; preds = %sw.bb5
  %action_icm_pool = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 7
  %30 = ptrtoint ptr %action_icm_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %action_icm_pool, align 4
  %call19 = call ptr @mlx5dr_icm_alloc_chunk(ptr noundef %31, i32 noundef 3) #10
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %17, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %chunk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call19, ptr %chunk, align 4
  %35 = load ptr, ptr %17, align 4
  %chunk20 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %chunk20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chunk20, align 4
  %tobool21.not = icmp eq ptr %37, null
  br i1 %tobool21.not, label %do.body23, label %if.end44

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_create_reformat_action, %if.then35)) #10
          to label %cleanup74 [label %if.then35], !srcloc !252

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %mdev36 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %38 = ptrtoint ptr %mdev36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdev36, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i150 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i150 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid40, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_create_reformat_action.__UNIQUE_ID_ddebug558, ptr noundef %41, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef 1127, i32 noundef %47) #10
  br label %cleanup74

if.end44:                                         ; preds = %if.end18
  %data46 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %35, i32 0, i32 2
  %48 = ptrtoint ptr %data46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %hw_actions, ptr %data46, align 4
  %49 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %17, align 4
  %chunk47 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %chunk47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chunk47, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %icm_addr, align 8
  %hdr_modify_icm_addr = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 7
  %55 = ptrtoint ptr %hdr_modify_icm_addr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %hdr_modify_icm_addr, align 8
  %sub = sub i64 %54, %56
  %div143 = lshr i64 %sub, 6
  %conv = trunc i64 %div143 to i32
  %index = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %50, i32 0, i32 4
  %57 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv, ptr %index, align 4
  %call48 = call i32 @mlx5dr_send_postsend_action(ptr noundef %dmn, ptr noundef %action) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end44.cleanup74_crit_edge, label %do.body51

if.end44.cleanup74_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup74

do.body51:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_create_reformat_action, %if.then63)) #10
          to label %do.end71 [label %if.then63], !srcloc !252

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %mdev64 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %58 = ptrtoint ptr %mdev64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdev64, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %62 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i151 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i151 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid68, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_create_reformat_action.__UNIQUE_ID_ddebug559, ptr noundef %61, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78, i32 noundef 1138, i32 noundef %67) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then63, %do.body51
  %68 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %17, align 4
  %chunk72 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %chunk72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chunk72, align 4
  call void @mlx5dr_icm_free_chunk(ptr noundef %71) #10
  br label %cleanup74

cleanup74:                                        ; preds = %do.end71, %if.end44.cleanup74_crit_edge, %if.then35, %do.body23, %if.then14, %do.body
  %retval.1 = phi i32 [ %call48, %do.end71 ], [ %call7, %if.then14 ], [ -12, %if.then35 ], [ 0, %if.end44.cleanup74_crit_edge ], [ %call7, %do.body ], [ -12, %do.body23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hw_actions) #10
  br label %cleanup95

sw.bb76:                                          ; preds = %entry
  %mdev77 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %72 = ptrtoint ptr %mdev77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mdev77, align 4
  %call78 = call i32 @mlx5dr_cmd_create_reformat_ctx(ptr noundef %73, i32 noundef 15, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %data_sz, ptr noundef %data, ptr noundef nonnull %reformat_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %sw.bb76.cleanup95_crit_edge

sw.bb76.cleanup95_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup95

if.end81:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %reformat_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reformat_id, align 4
  %76 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %id82 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %id82 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %75, ptr %id82, align 4
  %80 = load ptr, ptr %76, align 4
  %size83 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %size83 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %data_sz, ptr %size83, align 4
  %82 = load ptr, ptr %76, align 4
  %param_0 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %param_0 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %reformat_param_0, ptr %param_0, align 4
  %84 = load ptr, ptr %76, align 4
  %param_1 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %param_1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %reformat_param_1, ptr %param_1, align 1
  br label %cleanup95

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %86 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %id85 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %id85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %id85, align 4
  %90 = load ptr, ptr %86, align 4
  %size86 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %size86 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %data_sz, ptr %size86, align 4
  %92 = load ptr, ptr %86, align 4
  %param_087 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %param_087 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %reformat_param_0, ptr %param_087, align 4
  %94 = load ptr, ptr %86, align 4
  %param_188 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %param_188 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %reformat_param_1, ptr %param_188, align 1
  br label %cleanup95

do.end91:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mdev92 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %96 = ptrtoint ptr %mdev92 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mdev92, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.82, i32 noundef %2) #13
  br label %cleanup95

cleanup95:                                        ; preds = %do.end91, %sw.bb84, %if.end81, %sw.bb76.cleanup95_crit_edge, %cleanup74, %if.end3, %sw.bb.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.2 = phi i32 [ -22, %do.end91 ], [ 0, %sw.bb84 ], [ 0, %if.end81 ], [ %retval.1, %cleanup74 ], [ 0, %if.end3 ], [ %call, %sw.bb.cleanup95_crit_edge ], [ %2, %entry.cleanup95_crit_edge ], [ %call78, %sw.bb76.cleanup95_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reformat_id) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_modify_header(ptr noundef %dmn, i32 noundef %flags, i32 noundef %actions_sz, ptr nocapture noundef readonly %actions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !253
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !255

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %rem = and i32 %actions_sz, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug579, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_modify_header, %if.then4)) #10
          to label %dec_ref [label %if.then4], !srcloc !252

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug579, ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 1740, i32 noundef %11) #10
  br label %dec_ref

if.end6:                                          ; preds = %refcount_inc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 36) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end6.dec_ref_crit_edge, label %if.end10

if.end6.dec_ref_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %dec_ref

if.end10:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %15 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %15, align 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dmn, ptr %add.ptr.i, align 4
  %call12 = tail call fastcc i32 @dr_action_create_modify_action(ptr noundef %dmn, i32 noundef %actions_sz, ptr noundef %actions, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %do.body15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_modify_header, %if.then27)) #10
          to label %free_action [label %if.then27], !srcloc !252

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %mdev28 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %18 = ptrtoint ptr %mdev28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev28, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i54 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i54 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task31, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid32, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug580, ptr noundef %21, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 1755, i32 noundef %27, i32 noundef %call12) #10
  br label %free_action

free_action:                                      ; preds = %if.then27, %do.body15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %dec_ref

dec_ref:                                          ; preds = %free_action, %if.end6.dec_ref_crit_edge, %if.then4, %do.body
  %call.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !257
  %asmresult.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i56)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i56, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dec_ref.cleanup_crit_edge, !prof !254

dec_ref.cleanup_crit_edge:                        ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i.i:                                     ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %dec_ref.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %if.end10.cleanup_crit_edge ], [ null, %dec_ref.cleanup_crit_edge ], [ null, %if.then3.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_create_modify_action(ptr noundef %dmn, i32 noundef %actions_sz, ptr nocapture noundef readonly %actions, ptr noundef %action) unnamed_addr #0 align 64 {
entry:
  %num_hw_actions = alloca i32, align 4
  %modify_ttl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_hw_actions) #10
  %0 = ptrtoint ptr %num_hw_actions to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_hw_actions, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %modify_ttl) #10
  %1 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %modify_ttl, align 1, !annotation !258
  %div57 = lshr i32 %actions_sz, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %actions_sz)
  %cmp = icmp ugt i32 %actions_sz, 135
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_create_modify_action.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_create_modify_action, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !252

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_create_modify_action.__UNIQUE_ID_ddebug578, ptr noundef %5, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 1683, i32 noundef %11, i32 noundef %div57, i32 noundef 16) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %action_icm_pool = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 7
  %12 = ptrtoint ptr %action_icm_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %action_icm_pool, align 4
  %call7 = tail call ptr @mlx5dr_icm_alloc_chunk(ptr noundef %13, i32 noundef 4) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #14
  %tobool12.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not, label %if.end10.free_chunk_crit_edge, label %if.end14

if.end10.free_chunk_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_chunk

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @dr_actions_convert_modify_header(ptr noundef %action, i32 noundef 16, i32 noundef %div57, ptr noundef %actions, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %num_hw_actions, ptr noundef nonnull %modify_ttl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.free_hw_actions_crit_edge

if.end14.free_hw_actions_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_hw_actions

if.end18:                                         ; preds = %if.end14
  %15 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %chunk19 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %chunk19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %chunk19, align 4
  %19 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %modify_ttl, align 1, !range !259
  %21 = load ptr, ptr %15, align 4
  %modify_ttl21 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %modify_ttl21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %modify_ttl21, align 4
  %bf.shl = shl nuw nsw i8 %20, 5
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %modify_ttl21, align 4
  %23 = load ptr, ptr %15, align 4
  %data = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %data, align 4
  %25 = ptrtoint ptr %num_hw_actions to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_hw_actions, align 4
  %conv22 = trunc i32 %26 to i16
  %27 = load ptr, ptr %15, align 4
  %num_of_actions = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %num_of_actions to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv22, ptr %num_of_actions, align 4
  %icm_addr = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call7, i32 0, i32 5
  %29 = ptrtoint ptr %icm_addr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %icm_addr, align 8
  %hdr_modify_icm_addr = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 7
  %31 = ptrtoint ptr %hdr_modify_icm_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hdr_modify_icm_addr, align 8
  %sub = sub i64 %30, %32
  %div2358 = lshr i64 %sub, 6
  %conv24 = trunc i64 %div2358 to i32
  %33 = load ptr, ptr %15, align 4
  %index = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv24, ptr %index, align 4
  %call25 = tail call i32 @mlx5dr_send_postsend_action(ptr noundef %dmn, ptr noundef %action) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end18.cleanup_crit_edge, label %if.end18.free_hw_actions_crit_edge

if.end18.free_hw_actions_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_hw_actions

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_hw_actions:                                  ; preds = %if.end18.free_hw_actions_crit_edge, %if.end14.free_hw_actions_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.free_hw_actions_crit_edge ], [ %call25, %if.end18.free_hw_actions_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %free_chunk

free_chunk:                                       ; preds = %free_hw_actions, %if.end10.free_chunk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_hw_actions ], [ -12, %if.end10.free_chunk_crit_edge ]
  tail call void @mlx5dr_icm_free_chunk(ptr noundef nonnull %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %free_chunk, %if.end18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ %ret.1, %free_chunk ], [ -22, %if.then4 ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %modify_ttl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_hw_actions) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_action_create_dest_vport(ptr noundef %dmn, i16 noundef zeroext %vport, i8 noundef zeroext %vhca_id_valid, i16 noundef zeroext %vhca_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vhca_id_valid)
  %tobool.not = icmp eq i8 %vhca_id_valid, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.rhs

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

land.rhs:                                         ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %caps, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vhca_id)
  %cmp = icmp eq i16 %1, %vhca_id
  br i1 %cmp, label %land.rhs.cond.end_crit_edge, label %cond.true

land.rhs.cond.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dmn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmn, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ %dmn, %entry.cond.end_crit_edge ], [ %dmn, %land.rhs.cond.end_crit_edge ]
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %do.body, label %if.end13

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug581, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_dest_vport, %if.then11)) #10
          to label %cleanup [label %if.then11], !srcloc !252

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug581, ptr noundef %7, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef 1781, i32 noundef %13) #10
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %cond, i32 0, i32 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp14.not = icmp eq i32 %15, 2
  br i1 %cmp14.not, label %if.end38, label %do.body17

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug582, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5dr_action_create_dest_vport, %if.then29)) #10
          to label %cleanup [label %if.then29], !srcloc !252

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %mdev30 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %16 = ptrtoint ptr %mdev30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev30, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i77 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i77 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task33, align 8
  %pid34 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug582, ptr noundef %19, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 1786, i32 noundef %25) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end13
  %call39 = tail call ptr @mlx5dr_domain_get_vport_cap(ptr noundef nonnull %cond, i16 noundef zeroext %vport) #10
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end51

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %mdev45 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %26 = ptrtoint ptr %mdev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev45, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i78 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i78 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid49, align 8
  %conv50 = zext i16 %vport to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, i32 noundef 1794, i32 noundef %35, i32 noundef %conv50) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 20) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 1, ptr %refcount.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1
  %39 = getelementptr inbounds %struct.mlx5dr_action, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %39, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cond, ptr %add.ptr.i, align 4
  %caps57 = getelementptr %struct.mlx5dr_action, ptr %call7.i.i.i, i32 1, i32 1
  %42 = ptrtoint ptr %caps57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call39, ptr %caps57, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %do.end44, %if.then29, %do.body17, %if.then11, %do.body
  %retval.0 = phi ptr [ %call7.i.i.i, %if.end55 ], [ null, %do.end44 ], [ null, %if.then11 ], [ null, %if.then29 ], [ null, %do.body ], [ null, %do.body17 ], [ null, %if.end51.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_domain_get_vport_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_action_destroy(ptr noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b100 = load i1, ptr @mlx5dr_action_destroy.__already_done, align 1
  br i1 %.b100, label %land.rhs.return_crit_edge, label %if.then, !prof !255

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5dr_action_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1810, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end37:                                         ; preds = %entry
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %3, label %if.end37.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 0, label %if.end37.sw.bb55_crit_edge
    i32 14, label %if.end37.sw.bb55_crit_edge135
    i32 2, label %sw.bb58
    i32 1, label %if.end37.sw.bb61_crit_edge
    i32 3, label %if.end37.sw.bb61_crit_edge136
    i32 13, label %if.end37.sw.bb61_crit_edge137
    i32 9, label %sw.bb66
    i32 15, label %sw.bb70
  ]

if.end37.sw.bb61_crit_edge137:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

if.end37.sw.bb61_crit_edge136:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

if.end37.sw.bb61_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

if.end37.sw.bb55_crit_edge135:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb55

if.end37.sw.bb55_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb55

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end37
  %5 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool38.not = icmp sgt i8 %bf.load, -1
  %9 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %refcount40 = getelementptr inbounds %struct.mlx5dr_domain, ptr %11, i32 0, i32 5
  tail call fastcc void @refcount_dec(ptr noundef %refcount40)
  br label %if.end42

if.else:                                          ; preds = %sw.bb
  %refcount41 = getelementptr inbounds %struct.mlx5dr_table, ptr %11, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount41, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount41, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount41, ptr %refcount41, i32 1, ptr elementtype(i32) %refcount41) #10, !srcloc !257
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.if.end42_crit_edge, !prof !254

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then3.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount41, i32 noundef 4) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then3.i.i, %if.else.if.end42_crit_edge, %if.then39
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load43 = load i8, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43)
  %tobool45.not = icmp sgt i8 %bf.load43, -1
  br i1 %tobool45.not, label %if.end42.sw.epilog_crit_edge, label %land.lhs.true

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end42
  %num_of_ref_actions = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %14, i32 0, i32 1, i32 0, i32 7
  %16 = ptrtoint ptr %num_of_ref_actions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_ref_actions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool46.not = icmp eq i32 %17, 0
  br i1 %tobool46.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then47

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then47:                                        ; preds = %land.lhs.true
  %ref_actions48 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %14, i32 0, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %ref_actions48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ref_actions48, align 8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %num_of_ref_actions49132 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %21, i32 0, i32 1, i32 0, i32 7
  %22 = ptrtoint ptr %num_of_ref_actions49132 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_of_ref_actions49132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp50133.not = icmp eq i32 %23, 0
  br i1 %cmp50133.not, label %if.then47.for.end_crit_edge, label %if.then47.for.body_crit_edge

if.then47.for.body_crit_edge:                     ; preds = %if.then47
  br label %for.body

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %refcount_dec.exit106.for.body_crit_edge, %if.then47.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %refcount_dec.exit106.for.body_crit_edge ], [ 0, %if.then47.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.0134
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %refcount52 = getelementptr inbounds %struct.mlx5dr_action, ptr %25, i32 0, i32 1
  %call.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount52, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount52, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount52, ptr %refcount52, i32 1, ptr elementtype(i32) %refcount52) #10, !srcloc !257
  %asmresult.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i103)
  %cmp.i.i104 = icmp slt i32 %asmresult.i.i.i.i.i103, 2
  br i1 %cmp.i.i104, label %if.then3.i.i105, label %for.body.refcount_dec.exit106_crit_edge, !prof !254

for.body.refcount_dec.exit106_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_dec.exit106

if.then3.i.i105:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount52, i32 noundef 4) #10
  br label %refcount_dec.exit106

refcount_dec.exit106:                             ; preds = %if.then3.i.i105, %for.body.refcount_dec.exit106_crit_edge
  %inc = add nuw i32 %i.0134, 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %num_of_ref_actions49 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %28, i32 0, i32 1, i32 0, i32 7
  %29 = ptrtoint ptr %num_of_ref_actions49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_of_ref_actions49, align 4
  %cmp50 = icmp ult i32 %inc, %30
  br i1 %cmp50, label %refcount_dec.exit106.for.body_crit_edge, label %refcount_dec.exit106.for.end_crit_edge

refcount_dec.exit106.for.end_crit_edge:           ; preds = %refcount_dec.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

refcount_dec.exit106.for.body_crit_edge:          ; preds = %refcount_dec.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %refcount_dec.exit106.for.end_crit_edge, %if.then47.for.end_crit_edge
  tail call void @kfree(ptr noundef %19) #10
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %id = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %32, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 4
  %group_id = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %32, i32 0, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %group_id, align 8
  tail call void @mlx5dr_fw_destroy_md_tbl(ptr noundef %35, i32 noundef %37, i32 noundef %39) #10
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end37.sw.bb55_crit_edge, %if.end37.sw.bb55_crit_edge135
  %40 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %refcount57 = getelementptr inbounds %struct.mlx5dr_domain, ptr %44, i32 0, i32 5
  %call.i.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount57, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount57, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount57, ptr %refcount57, i32 1, ptr elementtype(i32) %refcount57) #10, !srcloc !257
  %asmresult.i.i.i.i.i108 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i108)
  %cmp.i.i109 = icmp slt i32 %asmresult.i.i.i.i.i108, 2
  br i1 %cmp.i.i109, label %if.then3.i.i110, label %sw.bb55.sw.epilog_crit_edge, !prof !254

sw.bb55.sw.epilog_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i.i110:                                  ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount57, i32 noundef 4) #10
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end37
  %46 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %chunk = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chunk, align 4
  tail call void @mlx5dr_icm_free_chunk(ptr noundef %50) #10
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %refcount60 = getelementptr inbounds %struct.mlx5dr_domain, ptr %54, i32 0, i32 5
  %call.i.i.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount60, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount60, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount60, ptr %refcount60, i32 1, ptr elementtype(i32) %refcount60) #10, !srcloc !257
  %asmresult.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i113)
  %cmp.i.i114 = icmp slt i32 %asmresult.i.i.i.i.i113, 2
  br i1 %cmp.i.i114, label %if.then3.i.i115, label %sw.bb58.sw.epilog_crit_edge, !prof !254

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i.i115:                                  ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount60, i32 noundef 4) #10
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end37.sw.bb61_crit_edge, %if.end37.sw.bb61_crit_edge136, %if.end37.sw.bb61_crit_edge137
  %56 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev, align 4
  %id63 = getelementptr inbounds %struct.mlx5dr_action_reformat, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %id63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id63, align 4
  tail call void @mlx5dr_cmd_destroy_reformat_ctx(ptr noundef %62, i32 noundef %64) #10
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %56, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %refcount65 = getelementptr inbounds %struct.mlx5dr_domain, ptr %68, i32 0, i32 5
  %call.i.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount65, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount65, i32 1, i32 3, i32 1) #10
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount65, ptr %refcount65, i32 1, ptr elementtype(i32) %refcount65) #10, !srcloc !257
  %asmresult.i.i.i.i.i118 = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i118)
  %cmp.i.i119 = icmp slt i32 %asmresult.i.i.i.i.i118, 2
  br i1 %cmp.i.i119, label %if.then3.i.i120, label %sw.bb61.sw.epilog_crit_edge, !prof !254

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i.i120:                                  ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount65, i32 noundef 4) #10
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end37
  %70 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %chunk67 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %chunk67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chunk67, align 4
  tail call void @mlx5dr_icm_free_chunk(ptr noundef %74) #10
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %70, align 4
  %data = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %78) #10
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %70, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %refcount69 = getelementptr inbounds %struct.mlx5dr_domain, ptr %82, i32 0, i32 5
  %call.i.i.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount69, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount69, i32 1, i32 3, i32 1) #10
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount69, ptr %refcount69, i32 1, ptr elementtype(i32) %refcount69) #10, !srcloc !257
  %asmresult.i.i.i.i.i123 = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i123)
  %cmp.i.i124 = icmp slt i32 %asmresult.i.i.i.i.i123, 2
  br i1 %cmp.i.i124, label %if.then3.i.i125, label %sw.bb66.sw.epilog_crit_edge, !prof !254

sw.bb66.sw.epilog_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i.i125:                                  ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount69, i32 noundef 4) #10
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end37
  %84 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %refcount72 = getelementptr inbounds %struct.mlx5dr_domain, ptr %88, i32 0, i32 5
  %call.i.i.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount72, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %refcount72, i32 1, i32 3, i32 1) #10
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount72, ptr %refcount72, i32 1, ptr elementtype(i32) %refcount72) #10, !srcloc !257
  %asmresult.i.i.i.i.i128 = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i128)
  %cmp.i.i129 = icmp slt i32 %asmresult.i.i.i.i.i128, 2
  br i1 %cmp.i.i129, label %if.then3.i.i130, label %sw.bb70.sw.epilog_crit_edge, !prof !254

sw.bb70.sw.epilog_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i.i130:                                  ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount72, i32 noundef 4) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3.i.i130, %sw.bb70.sw.epilog_crit_edge, %if.then3.i.i125, %sw.bb66.sw.epilog_crit_edge, %if.then3.i.i120, %sw.bb61.sw.epilog_crit_edge, %if.then3.i.i115, %sw.bb58.sw.epilog_crit_edge, %if.then3.i.i110, %sw.bb55.sw.epilog_crit_edge, %for.end, %land.lhs.true.sw.epilog_crit_edge, %if.end42.sw.epilog_crit_edge, %if.end37.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %action) #10
  br label %return

return:                                           ; preds = %sw.epilog, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -16, %if.then ], [ -16, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_fw_destroy_md_tbl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_icm_free_chunk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_cmd_destroy_reformat_ctx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_domain_get_recalc_cs_ft_addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_actions_rx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_actions_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_create_reformat_ctx(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_set_action_decap_l3_list(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_icm_alloc_chunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_postsend_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_actions_convert_modify_header(ptr nocapture noundef readonly %action, i32 noundef %max_hw_actions, i32 noundef %num_sw_actions, ptr nocapture noundef readonly %sw_actions, ptr nocapture noundef writeonly %hw_actions, ptr nocapture noundef writeonly %num_hw_actions, ptr nocapture noundef %modify_ttl) unnamed_addr #0 align 64 {
entry:
  %hw_dst_action_info = alloca ptr, align 4
  %hw_src_action_info = alloca ptr, align 4
  %hw_action = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_dst_action_info) #10
  %0 = ptrtoint ptr %hw_dst_action_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_dst_action_info, align 4, !annotation !258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_src_action_info) #10
  %1 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_action) #10
  %6 = ptrtoint ptr %hw_action to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %hw_action, align 8, !annotation !258
  %7 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %modify_ttl, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %allow_rx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %allow_rx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %allow_rx, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %allow_rx, align 4
  %11 = load ptr, ptr %1, align 4
  %allow_tx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %allow_tx to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load2 = load i8, ptr %allow_tx, align 4
  %bf.set4 = or i8 %bf.load2, 64
  store i8 %bf.set4, ptr %allow_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_sw_actions)
  %cmp198.not = icmp eq i32 %num_sw_actions, 0
  br i1 %cmp198.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 9, i32 7
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %ste_ctx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %inc123, %for.inc.for.body_crit_edge ]
  %hw_idx.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %hw_idx.2, %for.inc.for.body_crit_edge ]
  %l4_type.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %l4_type.2, %for.inc.for.body_crit_edge ]
  %l3_type.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %l3_type.2, %for.inc.for.body_crit_edge ]
  %hw_field.0199 = phi i16 [ 0, %for.body.lr.ph ], [ %hw_field.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %sw_actions, i32 %i.0204
  %call = call fastcc i32 @dr_action_modify_check_field_limitation(ptr noundef %action, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %modify_ttl, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = and i32 %16, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %17)
  %cmp.i = icmp eq i32 %17, 655360
  br i1 %cmp.i, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %call.i = call zeroext i1 @mlx5dr_ste_supp_ttl_cs_recalc(ptr noundef %caps.i) #10
  br i1 %call.i, label %if.then7.if.end10_crit_edge, label %dr_action_modify_ttl_ignore.exit

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

dr_action_modify_ttl_ignore.exit:                 ; preds = %if.then7
  %18 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %19, i32 0, i32 8, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge, label %dr_action_modify_ttl_ignore.exit.if.end10_crit_edge

dr_action_modify_ttl_ignore.exit.if.end10_crit_edge: ; preds = %dr_action_modify_ttl_ignore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

dr_action_modify_ttl_ignore.exit.for.inc_crit_edge: ; preds = %dr_action_modify_ttl_ignore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end10:                                         ; preds = %dr_action_modify_ttl_ignore.exit.if.end10_crit_edge, %if.then7.if.end10_crit_edge
  %25 = ptrtoint ptr %modify_ttl to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %modify_ttl, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %26 = ptrtoint ptr %hw_action to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %hw_action, align 8
  %27 = ptrtoint ptr %hw_src_action_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %hw_src_action_info, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %29, 28
  %30 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %shr.i, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i175 = call fastcc i32 @dr_action_modify_sw_to_hw_set(ptr noundef %5, ptr noundef %arrayidx, ptr noundef nonnull %hw_action, ptr noundef nonnull %hw_dst_action_info) #10
  br label %dr_action_modify_sw_to_hw.exit

sw.bb2.i:                                         ; preds = %if.end11
  %shr.i179 = lshr i32 %29, 16
  %31 = trunc i32 %shr.i179 to i16
  %conv.i = and i16 %31, 4095
  %add.ptr1.i = getelementptr i32, ptr %arrayidx, i32 1
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr1.i, align 4
  %34 = ptrtoint ptr %ste_ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ste_ctx.i, align 4
  %call.i180 = call ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr noundef %35, i16 noundef zeroext %conv.i) #10
  %tobool.not.i181 = icmp eq ptr %call.i180, null
  br i1 %tobool.not.i181, label %do.body.i, label %dr_action_modify_sw_to_hw.exit.thread186

do.body.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_sw_to_hw_add.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_actions_convert_modify_header, %if.then8.i)) #10
          to label %dr_action_modify_sw_to_hw.exit [label %if.then8.i], !srcloc !252

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdev.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %40 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_sw_to_hw_add.__UNIQUE_ID_ddebug563, ptr noundef %39, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, i32 noundef 1270, i32 noundef %45) #10
  br label %cleanup

dr_action_modify_sw_to_hw.exit.thread186:         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call.i180, i32 0, i32 2
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %end.i, align 1
  %start.i = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call.i180, i32 0, i32 1
  %48 = ptrtoint ptr %start.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %start.i, align 2
  %sub.i = add i8 %47, 1
  %add.i = sub i8 %sub.i, %49
  %50 = ptrtoint ptr %ste_ctx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ste_ctx.i, align 4
  %52 = ptrtoint ptr %call.i180 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call.i180, align 2
  %conv15.i = trunc i16 %53 to i8
  call void @mlx5dr_ste_set_action_add(ptr noundef %51, ptr noundef nonnull %hw_action, i8 noundef zeroext %conv15.i, i8 noundef zeroext %49, i8 noundef zeroext %add.i, i32 noundef %33) #10
  %54 = ptrtoint ptr %hw_dst_action_info to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i180, ptr %hw_dst_action_info, align 4
  br label %if.end15

sw.bb4.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call fastcc i32 @dr_action_modify_sw_to_hw_copy(ptr noundef %5, ptr noundef %arrayidx, ptr noundef nonnull %hw_action, ptr noundef nonnull %hw_dst_action_info, ptr noundef nonnull %hw_src_action_info) #10
  br label %dr_action_modify_sw_to_hw.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.99) #13
  br label %cleanup

dr_action_modify_sw_to_hw.exit:                   ; preds = %sw.bb4.i, %do.body.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call5.i, %sw.bb4.i ], [ %call.i175, %sw.bb.i ], [ -22, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool13.not, label %dr_action_modify_sw_to_hw.exit.if.end15_crit_edge, label %dr_action_modify_sw_to_hw.exit.cleanup_crit_edge

dr_action_modify_sw_to_hw.exit.cleanup_crit_edge: ; preds = %dr_action_modify_sw_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dr_action_modify_sw_to_hw.exit.if.end15_crit_edge: ; preds = %dr_action_modify_sw_to_hw.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %dr_action_modify_sw_to_hw.exit.if.end15_crit_edge, %dr_action_modify_sw_to_hw.exit.thread186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l3_type.0200)
  %tobool16.not = icmp eq i32 %l3_type.0200, 0
  br i1 %tobool16.not, label %if.end15.if.end33_crit_edge, label %land.lhs.true17

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true17:                                  ; preds = %if.end15
  %59 = ptrtoint ptr %hw_dst_action_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_dst_action_info, align 4
  %l3_type18 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %l3_type18 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %l3_type18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool19.not = icmp eq i8 %62, 0
  %conv = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %l3_type.0200, i32 %conv)
  %cmp23.not = icmp eq i32 %l3_type.0200, %conv
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %land.lhs.true17.if.end33_crit_edge, label %do.body

land.lhs.true17.if.end33_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body:                                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_actions_convert_modify_header, %if.then30)) #10
          to label %cleanup [label %if.then30], !srcloc !252

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %67 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug575, ptr noundef %66, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef 1620, i32 noundef %72) #10
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true17.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  %73 = ptrtoint ptr %hw_dst_action_info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_dst_action_info, align 4
  %l3_type34 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %l3_type34 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %l3_type34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool35.not = icmp eq i8 %76, 0
  %conv38 = zext i8 %76 to i32
  %spec.select = select i1 %tobool35.not, i32 %l3_type.0200, i32 %conv38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l4_type.0201)
  %tobool40.not = icmp eq i32 %l4_type.0201, 0
  br i1 %tobool40.not, label %if.end33.if.end72_crit_edge, label %land.lhs.true41

if.end33.if.end72_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

land.lhs.true41:                                  ; preds = %if.end33
  %l4_type42 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %74, i32 0, i32 4
  %77 = ptrtoint ptr %l4_type42 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %l4_type42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool44.not = icmp eq i8 %78, 0
  %conv43 = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %l4_type.0201, i32 %conv43)
  %cmp48.not = icmp eq i32 %l4_type.0201, %conv43
  %or.cond166 = select i1 %tobool44.not, i1 true, i1 %cmp48.not
  br i1 %or.cond166, label %land.lhs.true41.if.end72_crit_edge, label %do.body51

land.lhs.true41.if.end72_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.body51:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_actions_convert_modify_header, %if.then63)) #10
          to label %cleanup [label %if.then63], !srcloc !252

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mdev.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %83 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i177 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i177 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task67, align 8
  %pid68 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 68
  %87 = ptrtoint ptr %pid68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pid68, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug576, ptr noundef %82, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef 1629, i32 noundef %88) #10
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true41.if.end72_crit_edge, %if.end33.if.end72_crit_edge
  %l4_type73 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %74, i32 0, i32 4
  %89 = ptrtoint ptr %l4_type73 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %l4_type73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool74.not = icmp eq i8 %90, 0
  %conv77 = zext i8 %90 to i32
  %spec.select167 = select i1 %tobool74.not, i32 %l4_type.0201, i32 %conv77
  %91 = and i32 %hw_idx.0202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool79.not = icmp eq i32 %91, 0
  br i1 %tobool79.not, label %if.end72.if.end119_crit_edge, label %land.lhs.true80

if.end72.if.end119_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true80:                                  ; preds = %if.end72
  %92 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %74, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %hw_field.0199, i16 %93)
  %cmp84 = icmp eq i16 %hw_field.0199, %93
  br i1 %cmp84, label %land.lhs.true80.if.then93_crit_edge, label %lor.lhs.false

land.lhs.true80.if.then93_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

lor.lhs.false:                                    ; preds = %land.lhs.true80
  %94 = ptrtoint ptr %hw_src_action_info to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_src_action_info, align 4
  %tobool86.not = icmp eq ptr %95, null
  br i1 %tobool86.not, label %lor.lhs.false.if.end119_crit_edge, label %land.lhs.true87

lor.lhs.false.if.end119_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true87:                                  ; preds = %lor.lhs.false
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %95, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %hw_field.0199, i16 %97)
  %cmp91 = icmp eq i16 %hw_field.0199, %97
  br i1 %cmp91, label %land.lhs.true87.if.then93_crit_edge, label %land.lhs.true87.if.end119_crit_edge

land.lhs.true87.if.end119_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

land.lhs.true87.if.then93_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

if.then93:                                        ; preds = %land.lhs.true87.if.then93_crit_edge, %land.lhs.true80.if.then93_crit_edge
  %inc = add i32 %hw_idx.0202, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_hw_actions)
  %cmp94.not = icmp ult i32 %inc, %max_hw_actions
  br i1 %cmp94.not, label %if.then93.if.end119_crit_edge, label %do.body97

if.then93.if.end119_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

do.body97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_actions_convert_modify_header, %if.then109)) #10
          to label %cleanup [label %if.then109], !srcloc !252

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mdev.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %102 = call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i178 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i178 to ptr
  %task113 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task113 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task113, align 8
  %pid114 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid114 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid114, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug577, ptr noundef %101, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.85, i32 noundef 1646, i32 noundef %107) #10
  br label %cleanup

if.end119:                                        ; preds = %if.then93.if.end119_crit_edge, %land.lhs.true87.if.end119_crit_edge, %lor.lhs.false.if.end119_crit_edge, %if.end72.if.end119_crit_edge
  %hw_idx.1 = phi i32 [ %inc, %if.then93.if.end119_crit_edge ], [ %hw_idx.0202, %land.lhs.true87.if.end119_crit_edge ], [ %hw_idx.0202, %lor.lhs.false.if.end119_crit_edge ], [ %hw_idx.0202, %if.end72.if.end119_crit_edge ]
  %108 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %74, align 2
  %110 = ptrtoint ptr %hw_action to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %hw_action, align 8
  %arrayidx121 = getelementptr i64, ptr %hw_actions, i32 %hw_idx.1
  %112 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx121, align 8
  %inc122 = add i32 %hw_idx.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end119, %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge
  %hw_field.1 = phi i16 [ %109, %if.end119 ], [ %hw_field.0199, %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge ]
  %l3_type.2 = phi i32 [ %spec.select, %if.end119 ], [ %l3_type.0200, %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge ]
  %l4_type.2 = phi i32 [ %spec.select167, %if.end119 ], [ %l4_type.0201, %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge ]
  %hw_idx.2 = phi i32 [ %inc122, %if.end119 ], [ %hw_idx.0202, %dr_action_modify_ttl_ignore.exit.for.inc_crit_edge ]
  %inc123 = add nuw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc123, %num_sw_actions
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hw_idx.2)
  %tobool124.not = icmp eq i32 %hw_idx.2, 0
  br i1 %tobool124.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %113

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %113

113:                                              ; preds = %for.end.thread, %for.end._crit_edge
  %114 = phi i32 [ 1, %for.end.thread ], [ %hw_idx.2, %for.end._crit_edge ]
  %115 = ptrtoint ptr %num_hw_actions to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %num_hw_actions, align 4
  br label %cleanup

cleanup:                                          ; preds = %113, %if.then109, %do.body97, %if.then63, %do.body51, %if.then30, %do.body, %dr_action_modify_sw_to_hw.exit.cleanup_crit_edge, %do.end.i, %if.then8.i, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %113 ], [ -22, %if.then30 ], [ -22, %if.then63 ], [ -22, %if.then109 ], [ -22, %do.body ], [ -22, %do.body51 ], [ -22, %do.body97 ], [ -22, %if.then8.i ], [ -95, %do.end.i ], [ %ret.0.i, %dr_action_modify_sw_to_hw.exit.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_action) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_src_action_info) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_dst_action_info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_modify_check_field_limitation(ptr nocapture noundef readonly %action, ptr nocapture noundef readonly %sw_action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_action, align 4
  %shr = lshr i32 %1, 28
  %2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %shr, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @dr_action_modify_check_set_field_limitation(ptr noundef %action, ptr noundef %sw_action)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %shr.i = lshr i32 %1, 16
  %conv.i = and i32 %shr.i, 4095
  %3 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %conv.i, label %do.body.i [
    i32 10, label %sw.bb3.sw.epilog_crit_edge
    i32 71, label %sw.bb3.sw.epilog_crit_edge15
    i32 89, label %sw.bb3.sw.epilog_crit_edge16
    i32 91, label %sw.bb3.sw.epilog_crit_edge17
  ]

sw.bb3.sw.epilog_crit_edge17:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge16:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge15:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_add_field_limitation.__UNIQUE_ID_ddebug571, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_field_limitation, %if.then17.i)) #10
          to label %sw.epilog [label %if.then17.i], !srcloc !252

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_add_field_limitation.__UNIQUE_ID_ddebug571, ptr noundef %12, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 1476, i32 noundef %18, i32 noundef %conv.i) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @dr_action_modify_check_copy_field_limitation(ptr noundef %action, ptr noundef %sw_action)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %19 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.89, i32 noundef %shr) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %if.then17.i, %do.body.i, %sw.bb3.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge15, %sw.bb3.sw.epilog_crit_edge16, %sw.bb3.sw.epilog_crit_edge17, %sw.bb
  %ret.0 = phi i32 [ -95, %do.end ], [ %call6, %sw.bb5 ], [ %call, %sw.bb ], [ -22, %if.then17.i ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge15 ], [ 0, %sw.bb3.sw.epilog_crit_edge16 ], [ 0, %sw.bb3.sw.epilog_crit_edge17 ], [ -22, %do.body.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_modify_check_set_field_limitation(ptr nocapture noundef readonly %action, ptr nocapture noundef readonly %sw_action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_action, align 4
  %shr = lshr i32 %1, 16
  %conv = and i32 %shr, 4095
  %2 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %conv, label %entry.if.end48_crit_edge [
    i32 73, label %if.then
    i32 80, label %if.then16
  ]

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then:                                          ; preds = %entry
  %allow_rx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %allow_rx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %allow_rx, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %allow_rx, align 4
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4.not = icmp eq i32 %10, 1
  br i1 %cmp4.not, label %if.then.if.end48_crit_edge, label %do.body

if.then.if.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug568, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_set_field_limitation, %if.then9)) #10
          to label %cleanup [label %if.then9], !srcloc !252

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug568, ptr noundef %14, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, i32 noundef 1444, i32 noundef %20, i32 noundef 73) #10
  br label %cleanup

if.then16:                                        ; preds = %entry
  %allow_tx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %4, i32 0, i32 5
  %21 = ptrtoint ptr %allow_tx to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load17 = load i8, ptr %allow_tx, align 4
  %bf.clear18 = and i8 %bf.load17, -65
  store i8 %bf.clear18, ptr %allow_tx, align 4
  %type20 = getelementptr inbounds %struct.mlx5dr_domain, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %type20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21.not = icmp eq i32 %23, 0
  br i1 %cmp21.not, label %if.then16.if.end48_crit_edge, label %do.body24

if.then16.if.end48_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_set_field_limitation, %if.then36)) #10
          to label %cleanup [label %if.then36], !srcloc !252

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %mdev37 = getelementptr inbounds %struct.mlx5dr_domain, ptr %6, i32 0, i32 1
  %24 = ptrtoint ptr %mdev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev37, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i98 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i98 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task40, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid41, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug569, ptr noundef %27, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, i32 noundef 1451, i32 noundef %33, i32 noundef 80) #10
  br label %cleanup

if.end48:                                         ; preds = %if.then16.if.end48_crit_edge, %if.then.if.end48_crit_edge, %entry.if.end48_crit_edge
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %allow_rx49 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %allow_rx49 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load50 = load i8, ptr %allow_rx49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load50)
  %37 = icmp ult i8 %bf.load50, 64
  br i1 %37, label %do.body58, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug570, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_set_field_limitation, %if.then70)) #10
          to label %cleanup [label %if.then70], !srcloc !252

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %mdev71 = getelementptr inbounds %struct.mlx5dr_domain, ptr %6, i32 0, i32 1
  %38 = ptrtoint ptr %mdev71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdev71, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i99 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i99 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task74, align 8
  %pid75 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug570, ptr noundef %41, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.91, i32 noundef 1457, i32 noundef %47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body58, %if.end48.cleanup_crit_edge, %if.then36, %do.body24, %if.then9, %do.body
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then36 ], [ -22, %if.then70 ], [ 0, %if.end48.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body24 ], [ -22, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_modify_check_copy_field_limitation(ptr nocapture noundef readonly %action, ptr nocapture noundef readonly %sw_action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %sw_action to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_action, align 4
  %shr = lshr i32 %6, 16
  %7 = trunc i32 %shr to i12
  %add.ptr2 = getelementptr i32, ptr %sw_action, i32 1
  %8 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr2, align 4
  %shr3 = lshr i32 %9, 16
  %10 = trunc i32 %shr3 to i12
  %type30 = getelementptr inbounds %struct.mlx5dr_domain, ptr %4, i32 0, i32 4
  %11 = zext i12 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.122)
  switch i12 %7, label %entry.for.inc_crit_edge [
    i12 73, label %if.then
    i12 80, label %if.then26
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %allow_rx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %allow_rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %allow_rx, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %allow_rx, align 4
  %15 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp12.not = icmp eq i32 %16, 1
  br i1 %cmp12.not, label %if.then.for.inc_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body:                                          ; preds = %if.then.1.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug572, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_copy_field_limitation, %if.then17)) #10
          to label %cleanup [label %if.then17], !srcloc !252

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug572, ptr noundef %20, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.97, i32 noundef 1499, i32 noundef %26, i32 noundef 73) #10
  br label %cleanup

if.then26:                                        ; preds = %entry
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %allow_tx = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %allow_tx to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load27 = load i8, ptr %allow_tx, align 4
  %bf.clear28 = and i8 %bf.load27, -65
  store i8 %bf.clear28, ptr %allow_tx, align 4
  %30 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31.not = icmp eq i32 %31, 0
  br i1 %cmp31.not, label %if.then26.for.inc_crit_edge, label %if.then26.do.body34_crit_edge

if.then26.do.body34_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body34:                                        ; preds = %if.then26.1.do.body34_crit_edge, %if.then26.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug573, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_copy_field_limitation, %if.then46)) #10
          to label %cleanup [label %if.then46], !srcloc !252

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %mdev47 = getelementptr inbounds %struct.mlx5dr_domain, ptr %4, i32 0, i32 1
  %32 = ptrtoint ptr %mdev47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev47, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i113 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i113 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task50, align 8
  %pid51 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid51, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug573, ptr noundef %35, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.97, i32 noundef 1506, i32 noundef %41, i32 noundef 80) #10
  br label %cleanup

for.inc:                                          ; preds = %if.then26.for.inc_crit_edge, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %42 = zext i12 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.123)
  switch i12 %10, label %for.inc.for.inc.1_crit_edge [
    i12 73, label %if.then.1
    i12 80, label %if.then26.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then26.1:                                      ; preds = %for.inc
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %allow_tx.1 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %allow_tx.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load27.1 = load i8, ptr %allow_tx.1, align 4
  %bf.clear28.1 = and i8 %bf.load27.1, -65
  store i8 %bf.clear28.1, ptr %allow_tx.1, align 4
  %46 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp31.not.1 = icmp eq i32 %47, 0
  br i1 %cmp31.not.1, label %if.then26.1.for.inc.1_crit_edge, label %if.then26.1.do.body34_crit_edge

if.then26.1.do.body34_crit_edge:                  ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.then26.1.for.inc.1_crit_edge:                  ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  %allow_rx.1 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %allow_rx.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.1 = load i8, ptr %allow_rx.1, align 4
  %bf.clear.1 = and i8 %bf.load.1, 127
  store i8 %bf.clear.1, ptr %allow_rx.1, align 4
  %51 = ptrtoint ptr %type30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp12.not.1 = icmp eq i32 %52, 1
  br i1 %cmp12.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.do.body_crit_edge

if.then.1.do.body_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %if.then26.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %allow_rx60 = getelementptr inbounds %struct.mlx5dr_action_rewrite, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %allow_rx60 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load61 = load i8, ptr %allow_rx60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load61)
  %56 = icmp ult i8 %bf.load61, 64
  br i1 %56, label %do.body69, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body69:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug574, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_check_copy_field_limitation, %if.then81)) #10
          to label %cleanup [label %if.then81], !srcloc !252

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %mdev82 = getelementptr inbounds %struct.mlx5dr_domain, ptr %4, i32 0, i32 1
  %57 = ptrtoint ptr %mdev82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev82, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i114 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i114 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task85, align 8
  %pid86 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid86, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug574, ptr noundef %60, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, i32 noundef 1513, i32 noundef %66) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %for.inc.1.cleanup_crit_edge, %if.then46, %do.body34, %if.then17, %do.body
  %retval.0 = phi i32 [ -22, %if.then17 ], [ -22, %if.then46 ], [ -22, %if.then81 ], [ 0, %for.inc.1.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body34 ], [ -22, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_modify_sw_to_hw_set(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %sw_action, ptr noundef %hw_action, ptr nocapture noundef writeonly %ret_hw_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_action, align 4
  %shr2 = lshr i32 %1, 8
  %conv4 = and i32 %shr2, 31
  %shr6 = lshr i32 %1, 16
  %2 = trunc i32 %shr6 to i16
  %conv8 = and i16 %2, 4095
  %add.ptr9 = getelementptr i32, ptr %sw_action, i32 1
  %3 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr9, align 4
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %5 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ste_ctx, align 4
  %call = tail call ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr noundef %6, i16 noundef zeroext %conv8) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end18

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_sw_to_hw_set, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !252

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug564, ptr noundef %10, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef 1308, i32 noundef %16) #10
  br label %cleanup

if.end18:                                         ; preds = %entry
  %conv = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool20.not = icmp eq i32 %conv, 0
  %phi.cast = trunc i32 %conv to i8
  %spec.select = select i1 %tobool20.not, i8 32, i8 %phi.cast
  %end = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %end, align 1
  %start = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %start, align 2
  %sub = add i8 %18, 1
  %add = sub i8 %sub, %20
  %conv26 = zext i8 %spec.select to i32
  %add28 = add nuw nsw i32 %conv4, %conv26
  %conv29 = zext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %conv29)
  %cmp = icmp ugt i32 %add28, %conv29
  br i1 %cmp, label %do.body32, label %if.end53

do.body32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_sw_to_hw_set, %if.then44)) #10
          to label %cleanup [label %if.then44], !srcloc !252

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %mdev45 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %21 = ptrtoint ptr %mdev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev45, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i84 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i84 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid49, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug565, ptr noundef %24, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef 1318, i32 noundef %30) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ste_ctx, align 4
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call, align 2
  %conv55 = trunc i16 %34 to i8
  %35 = trunc i32 %conv4 to i8
  %conv60 = add i8 %20, %35
  tail call void @mlx5dr_ste_set_action_set(ptr noundef %32, ptr noundef %hw_action, i8 noundef zeroext %conv55, i8 noundef zeroext %conv60, i8 noundef zeroext %spec.select, i32 noundef %4) #10
  %36 = ptrtoint ptr %ret_hw_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %ret_hw_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then44, %do.body32, %if.then16, %do.body
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -22, %if.then16 ], [ -22, %if.then44 ], [ -22, %do.body ], [ -22, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_action_modify_sw_to_hw_copy(ptr nocapture noundef readonly %dmn, ptr nocapture noundef readonly %sw_action, ptr noundef %hw_action, ptr nocapture noundef writeonly %ret_dst_hw_info, ptr nocapture noundef writeonly %ret_src_hw_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sw_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_action, align 4
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i16
  %conv = and i16 %2, 4095
  %add.ptr1 = getelementptr i32, ptr %sw_action, i32 1
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr1, align 4
  %shr2 = lshr i32 %4, 16
  %5 = trunc i32 %shr2 to i16
  %conv4 = and i16 %5, 4095
  %shr6 = lshr i32 %1, 8
  %conv8 = and i32 %shr6, 31
  %shr10 = lshr i32 %4, 8
  %conv12 = and i32 %shr10, 31
  %ste_ctx = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 11
  %6 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ste_ctx, align 4
  %call = tail call ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr noundef %7, i16 noundef zeroext %conv) #10
  %8 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ste_ctx, align 4
  %call18 = tail call ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr noundef %9, i16 noundef zeroext %conv4) #10
  %tobool.not = icmp eq ptr %call, null
  %tobool19.not = icmp eq ptr %call18, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %do.body, label %if.end26

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug566, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_sw_to_hw_copy, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !252

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !242) #10
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug566, ptr noundef %13, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.106, i32 noundef 1357, i32 noundef %19) #10
  br label %cleanup

if.end26:                                         ; preds = %entry
  %conv16 = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %tobool28.not = icmp eq i32 %conv16, 0
  %phi.cast = trunc i32 %conv16 to i8
  %spec.select = select i1 %tobool28.not, i8 32, i8 %phi.cast
  %end = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %end, align 1
  %start = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %start, align 2
  %sub = add i8 %21, 1
  %add = sub i8 %sub, %23
  %start36 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call18, i32 0, i32 1
  %24 = ptrtoint ptr %start36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %start36, align 2
  %conv41 = zext i8 %spec.select to i32
  %add43 = add nuw nsw i32 %conv8, %conv41
  %conv44 = zext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %conv44)
  %cmp = icmp ugt i32 %add43, %conv44
  br i1 %cmp, label %if.end26.do.body54_crit_edge, label %lor.lhs.false46

if.end26.do.body54_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

lor.lhs.false46:                                  ; preds = %if.end26
  %end34 = getelementptr inbounds %struct.mlx5dr_ste_action_modify_field, ptr %call18, i32 0, i32 2
  %26 = ptrtoint ptr %end34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %end34, align 1
  %sub38 = sub i8 1, %25
  %add39 = add i8 %sub38, %27
  %add49 = add nuw nsw i32 %conv12, %conv41
  %conv50 = zext i8 %add39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %conv50)
  %cmp51 = icmp ugt i32 %add49, %conv50
  br i1 %cmp51, label %lor.lhs.false46.do.body54_crit_edge, label %if.end75

lor.lhs.false46.do.body54_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

do.body54:                                        ; preds = %lor.lhs.false46.do.body54_crit_edge, %if.end26.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug567, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_action_modify_sw_to_hw_copy, %if.then66)) #10
          to label %cleanup [label %if.then66], !srcloc !252

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %mdev67 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %28 = ptrtoint ptr %mdev67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev67, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %32 = tail call i32 @llvm.read_register.i32(metadata !242) #10
  %and.i125 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i125 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task70, align 8
  %pid71 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug567, ptr noundef %31, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.106, i32 noundef 1371, i32 noundef %37) #10
  br label %cleanup

if.end75:                                         ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %ste_ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ste_ctx, align 4
  %40 = ptrtoint ptr %call18 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %call18, align 2
  %conv77 = trunc i16 %41 to i8
  %42 = trunc i32 %conv12 to i8
  %conv82 = add i8 %25, %42
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call, align 2
  %conv84 = trunc i16 %44 to i8
  %45 = trunc i32 %conv8 to i8
  %conv89 = add i8 %23, %45
  tail call void @mlx5dr_ste_set_action_copy(ptr noundef %39, ptr noundef %hw_action, i8 noundef zeroext %conv77, i8 noundef zeroext %conv82, i8 noundef zeroext %spec.select, i8 noundef zeroext %conv84, i8 noundef zeroext %conv89) #10
  %46 = ptrtoint ptr %ret_dst_hw_info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call18, ptr %ret_dst_hw_info, align 4
  %47 = ptrtoint ptr %ret_src_hw_info to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %ret_src_hw_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then66, %do.body54, %if.then24, %do.body
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -22, %if.then24 ], [ -22, %if.then66 ], [ -22, %do.body ], [ -22, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_conv_modify_hdr_sw_field(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_action_set(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_action_add(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_ste_set_action_copy(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !215, !217, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !236, !238, !239, !240}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 589, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5dr_actions_build_ste_arr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__print_once", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 594, i32 6}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug545, !9, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 596, i32 6}
!15 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug546, !14, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 620, i32 7}
!18 = !{ptr @mlx5dr_actions_build_ste_arr._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 632, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5dr_actions_build_ste_arr._entry.11, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 659, i32 5}
!27 = !{ptr @mlx5dr_actions_build_ste_arr._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 674, i32 6}
!31 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug547, !30, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 685, i32 5}
!34 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug548, !33, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 695, i32 5}
!37 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug549, !36, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 701, i32 5}
!40 = !{ptr @mlx5dr_actions_build_ste_arr.__UNIQUE_ID_ddebug550, !39, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 715, i32 4}
!43 = !{ptr @mlx5dr_actions_build_ste_arr._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 721, i32 4}
!47 = !{ptr @mlx5dr_actions_build_ste_arr._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 730, i32 4}
!51 = !{ptr @mlx5dr_actions_build_ste_arr._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 748, i32 4}
!55 = !{ptr @mlx5dr_actions_build_ste_arr._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mlx5dr_actions_build_ste_arr._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 862, i32 3}
!59 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mlx5dr_action_create_mult_dest_tbl._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mlx5dr_action_create_mult_dest_tbl._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 907, i32 4}
!64 = !{ptr @mlx5dr_action_create_mult_dest_tbl.__UNIQUE_ID_ddebug551, !63, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1187, i32 3}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mlx5dr_action_create_push_vlan.__UNIQUE_ID_ddebug560, !66, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1216, i32 3}
!71 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug561, !70, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1239, i32 3}
!75 = !{ptr @mlx5dr_action_create_packet_reformat.__UNIQUE_ID_ddebug562, !74, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1740, i32 3}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug579, !77, !"__UNIQUE_ID_ddebug579", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1755, i32 3}
!82 = !{ptr @mlx5dr_action_create_modify_header.__UNIQUE_ID_ddebug580, !81, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1781, i32 3}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug581, !84, !"__UNIQUE_ID_ddebug581", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1786, i32 3}
!89 = !{ptr @mlx5dr_action_create_dest_vport.__UNIQUE_ID_ddebug582, !88, !"__UNIQUE_ID_ddebug582", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1792, i32 3}
!92 = !{ptr @mlx5dr_action_create_dest_vport._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mlx5dr_action_create_dest_vport._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1810, i32 6}
!96 = !{ptr @next_action_state, !97, !"next_action_state", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 56, i32 1}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 540, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dr_action_print_sequence._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dr_action_print_sequence._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 29, i32 33}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 30, i32 33}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 31, i32 33}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 32, i32 33}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 33, i32 25}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 34, i32 23}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 35, i32 23}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 36, i32 24}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 37, i32 24}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 38, i32 31}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 39, i32 26}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 40, i32 29}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 41, i32 30}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 43, i32 31}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 44, i32 31}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 42, i32 28}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 45, i32 24}
!137 = !{ptr @action_type_to_str, !138, !"action_type_to_str", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 28, i32 27}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 507, i32 4}
!141 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @dr_action_handle_cs_recalc.__UNIQUE_ID_ddebug544, !140, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 521, i32 4}
!145 = !{ptr @dr_action_handle_cs_recalc._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @dr_action_handle_cs_recalc._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @action_size, !148, !"action_size", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 765, i32 21}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1034, i32 4}
!151 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug552, !150, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1041, i32 4}
!155 = !{ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug553, !154, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1046, i32 3}
!158 = !{ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug554, !157, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1056, i32 4}
!161 = !{ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug555, !160, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1062, i32 4}
!164 = !{ptr @dr_action_verify_reformat_params.__UNIQUE_ID_ddebug556, !163, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1120, i32 4}
!167 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug557, !166, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1127, i32 4}
!171 = !{ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug558, !170, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1138, i32 4}
!174 = !{ptr @dr_action_create_reformat_action.__UNIQUE_ID_ddebug559, !173, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1166, i32 3}
!177 = !{ptr @dr_action_create_reformat_action._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dr_action_create_reformat_action._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1682, i32 3}
!181 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @dr_action_create_modify_action.__UNIQUE_ID_ddebug578, !180, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1620, i32 4}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug575, !184, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1629, i32 4}
!189 = !{ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug576, !188, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1646, i32 5}
!192 = !{ptr @dr_actions_convert_modify_header.__UNIQUE_ID_ddebug577, !191, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1547, i32 3}
!195 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @dr_action_modify_check_field_limitation._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @dr_action_modify_check_field_limitation._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1443, i32 4}
!200 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug568, !199, !"__UNIQUE_ID_ddebug568", i1 false, i1 false}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1450, i32 4}
!204 = !{ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug569, !203, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1457, i32 3}
!207 = !{ptr @dr_action_modify_check_set_field_limitation.__UNIQUE_ID_ddebug570, !206, !"__UNIQUE_ID_ddebug570", i1 false, i1 false}
!208 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1475, i32 3}
!210 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @dr_action_modify_check_add_field_limitation.__UNIQUE_ID_ddebug571, !209, !"__UNIQUE_ID_ddebug571", i1 false, i1 false}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1498, i32 5}
!214 = !{ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug572, !213, !"__UNIQUE_ID_ddebug572", i1 false, i1 false}
!215 = !{ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug573, !216, !"__UNIQUE_ID_ddebug573", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1505, i32 5}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1513, i32 3}
!219 = !{ptr @dr_action_modify_check_copy_field_limitation.__UNIQUE_ID_ddebug574, !218, !"__UNIQUE_ID_ddebug574", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1426, i32 3}
!222 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @dr_action_modify_sw_to_hw._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @dr_action_modify_sw_to_hw._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1308, i32 3}
!227 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug564, !226, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!229 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1318, i32 3}
!231 = !{ptr @dr_action_modify_sw_to_hw_set.__UNIQUE_ID_ddebug565, !230, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!232 = !{ptr @.str.104, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1270, i32 3}
!234 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @dr_action_modify_sw_to_hw_add.__UNIQUE_ID_ddebug563, !233, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!236 = !{ptr @.str.106, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1357, i32 3}
!238 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug566, !237, !"__UNIQUE_ID_ddebug566", i1 false, i1 false}
!240 = !{ptr @dr_action_modify_sw_to_hw_copy.__UNIQUE_ID_ddebug567, !241, !"__UNIQUE_ID_ddebug567", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c", i32 1371, i32 3}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{i64 2148827737, i64 2148827742, i64 2148827755, i64 2148827799, i64 2148827833, i64 2148827854}
!253 = !{i64 2148347452, i64 2148347484, i64 2148347513, i64 2148347547, i64 2148347578, i64 2148347601}
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{i64 2148435453}
!257 = !{i64 2148349917, i64 2148349949, i64 2148349978, i64 2148350012, i64 2148350043, i64 2148350066}
!258 = !{!"auto-init"}
!259 = !{i8 0, i8 2}
