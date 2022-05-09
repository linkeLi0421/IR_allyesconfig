; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_flow_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.184, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.183] }
%struct.anon.183 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.155 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.155 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.184 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.129, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.129 = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_flow_namespace, i32, %struct.mlx5_fs_dr_domain, i32, ptr, ptr, %struct.mutex, %struct.list_head, ptr }
%struct.mlx5_flow_namespace = type { %struct.fs_node, i32 }
%struct.mlx5_fs_dr_domain = type { ptr }
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
%struct.mlx5dr_match_parameters = type { i32, ptr }
%struct.mlx5_flow_group = type { %struct.fs_node, %struct.mlx5_fs_dr_matcher, %struct.mlx5_flow_group_mask, i32, i32, %struct.ida, i32, %struct.rhashtable, %struct.rhlist_head }
%struct.mlx5_fs_dr_matcher = type { ptr }
%struct.mlx5_flow_group_mask = type { i8, [112 x i32] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.fs_fte = type { %struct.fs_node, %struct.mlx5_fs_dr_rule, [112 x i32], i32, i32, %struct.mlx5_flow_context, %struct.mlx5_flow_act, i32, ptr, %struct.rhash_head, i32 }
%struct.mlx5_fs_dr_rule = type { ptr, ptr, i32 }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.132, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.132 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_rule = type { %struct.fs_node, ptr, %struct.mlx5_flow_destination, %struct.list_head, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.181 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i16, i16, ptr, i8 }
%struct.mlx5_pkt_reformat = type { i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5_fs_dr_action = type { ptr }
%struct.mlx5_modify_hdr = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5dr_action_dest = type { ptr, ptr }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }

@mlx5_flow_cmds_dr = internal constant { %struct.mlx5_flow_cmds, [56 x i8] } { %struct.mlx5_flow_cmds { ptr @mlx5_cmd_dr_create_flow_table, ptr @mlx5_cmd_dr_destroy_flow_table, ptr @mlx5_cmd_dr_modify_flow_table, ptr @mlx5_cmd_dr_create_flow_group, ptr @mlx5_cmd_dr_destroy_flow_group, ptr @mlx5_cmd_dr_create_fte, ptr @mlx5_cmd_dr_update_fte, ptr @mlx5_cmd_dr_delete_fte, ptr @mlx5_cmd_dr_update_root_ft, ptr @mlx5_cmd_dr_packet_reformat_alloc, ptr @mlx5_cmd_dr_packet_reformat_dealloc, ptr @mlx5_cmd_dr_modify_header_alloc, ptr @mlx5_cmd_dr_modify_header_dealloc, ptr @mlx5_cmd_dr_set_peer, ptr @mlx5_cmd_dr_create_ns, ptr @mlx5_cmd_dr_destroy_ns, ptr @mlx5_cmd_dr_create_match_definer, ptr @mlx5_cmd_dr_destroy_match_definer }, [56 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_create_flow_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): Failed creating dr flow_table\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_cmd_dr_create_flow_table\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_create_flow_table._entry_ptr = internal global ptr @mlx5_cmd_dr_create_flow_table._entry, section ".printk_index", align 4
@set_miss_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): Failed to destroy action (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_miss_action\00", [16 x i8] zeroinitializer }, align 32
@set_miss_action._entry_ptr = internal global ptr @set_miss_action._entry, section ".printk_index", align 4
@set_miss_action._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@set_miss_action._entry_ptr.8 = internal global ptr @set_miss_action._entry.7, section ".printk_index", align 4
@mlx5_cmd_dr_destroy_flow_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to destroy flow_table (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_cmd_dr_destroy_flow_table\00", [33 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_destroy_flow_table._entry_ptr = internal global ptr @mlx5_cmd_dr_destroy_flow_table._entry, section ".printk_index", align 4
@mlx5_cmd_dr_destroy_flow_table._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed to destroy action(%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_destroy_flow_table._entry_ptr.13 = internal global ptr @mlx5_cmd_dr_destroy_flow_table._entry.11, section ".printk_index", align 4
@mlx5_cmd_dr_create_flow_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Failed creating matcher\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_cmd_dr_create_flow_group\00", [34 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_create_flow_group._entry_ptr = internal global ptr @mlx5_cmd_dr_create_flow_group._entry, section ".printk_index", align 4
@mlx5_cmd_dr_create_fte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Failed to create dr rule err(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_cmd_dr_create_fte\00", [41 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_create_fte._entry_ptr = internal global ptr @mlx5_cmd_dr_create_fte._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_cmd_dr_update_fte.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dr update fte duplicate rule deletion failed\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_packet_reformat_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Packet-reformat not supported(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_cmd_dr_packet_reformat_alloc\00", [62 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_packet_reformat_alloc._entry_ptr = internal global ptr @mlx5_cmd_dr_packet_reformat_alloc._entry, section ".printk_index", align 4
@mlx5_cmd_dr_packet_reformat_alloc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 616, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed allocating packet-reformat action\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_packet_reformat_alloc._entry_ptr.23 = internal global ptr @mlx5_cmd_dr_packet_reformat_alloc._entry.21, section ".printk_index", align 4
@mlx5_cmd_dr_modify_header_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed allocating modify-header action\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_cmd_dr_modify_header_alloc\00", [32 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_modify_header_alloc._entry_ptr = internal global ptr @mlx5_cmd_dr_modify_header_alloc._entry, section ".printk_index", align 4
@mlx5_cmd_dr_create_ns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 746, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Failed to create dr flow namespace\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_cmd_dr_create_ns\00", [42 x i8] zeroinitializer }, align 32
@mlx5_cmd_dr_create_ns._entry_ptr = internal global ptr @mlx5_cmd_dr_create_ns._entry, section ".printk_index", align 4
@switch.table.mlx5_cmd_dr_packet_reformat_alloc = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4, i32 5], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 6, i64 8, i64 256, i64 257]
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"mlx5_flow_cmds_dr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 762, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 85, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 49, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 57, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 117, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 124, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 169, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 572, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 720, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 604, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 616, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 646, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 746, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [47 x i8] c"switch.table.mlx5_cmd_dr_packet_reformat_alloc\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @mlx5_cmd_dr_create_flow_group._entry, ptr @mlx5_cmd_dr_create_flow_group._entry_ptr, ptr @mlx5_cmd_dr_create_flow_table._entry, ptr @mlx5_cmd_dr_create_flow_table._entry_ptr, ptr @mlx5_cmd_dr_create_fte._entry, ptr @mlx5_cmd_dr_create_fte._entry_ptr, ptr @mlx5_cmd_dr_create_ns._entry, ptr @mlx5_cmd_dr_create_ns._entry_ptr, ptr @mlx5_cmd_dr_destroy_flow_table._entry, ptr @mlx5_cmd_dr_destroy_flow_table._entry.11, ptr @mlx5_cmd_dr_destroy_flow_table._entry_ptr, ptr @mlx5_cmd_dr_destroy_flow_table._entry_ptr.13, ptr @mlx5_cmd_dr_modify_header_alloc._entry, ptr @mlx5_cmd_dr_modify_header_alloc._entry_ptr, ptr @mlx5_cmd_dr_packet_reformat_alloc._entry, ptr @mlx5_cmd_dr_packet_reformat_alloc._entry.21, ptr @mlx5_cmd_dr_packet_reformat_alloc._entry_ptr, ptr @mlx5_cmd_dr_packet_reformat_alloc._entry_ptr.23, ptr @set_miss_action._entry, ptr @set_miss_action._entry.7, ptr @set_miss_action._entry_ptr, ptr @set_miss_action._entry_ptr.8, ptr @mlx5_flow_cmds_dr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.mlx5_cmd_dr_packet_reformat_alloc], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_flow_cmds_dr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_create_flow_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_miss_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_miss_action._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_destroy_flow_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_destroy_flow_table._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_create_flow_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_create_fte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_packet_reformat_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_packet_reformat_alloc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_modify_header_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_dr_create_ns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_cmd_dr_packet_reformat_alloc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_fs_dr_is_supported(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.mlx5dr_is_supported.exit_crit_edge, label %land.rhs.i

entry.mlx5dr_is_supported.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_is_supported.exit

land.rhs.i:                                       ; preds = %entry
  %arrayidx3.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3.i, align 8
  %add.ptr6.i = getelementptr i32, ptr %6, i32 16
  %7 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr6.i, align 4
  %9 = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i, label %lor.rhs.i, label %land.rhs.i.mlx5dr_is_supported.exit_crit_edge

land.rhs.i.mlx5dr_is_supported.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_is_supported.exit

lor.rhs.i:                                        ; preds = %land.rhs.i
  %10 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not.i = icmp eq i32 %10, 0
  br i1 %tobool18.not.i, label %lor.rhs.i.mlx5dr_is_supported.exit_crit_edge, label %land.rhs19.i

lor.rhs.i.mlx5dr_is_supported.exit_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5dr_is_supported.exit

land.rhs19.i:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr25.i = getelementptr i32, ptr %1, i32 34
  %11 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr25.i, align 4
  %13 = and i32 %12, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br label %mlx5dr_is_supported.exit

mlx5dr_is_supported.exit:                         ; preds = %land.rhs19.i, %lor.rhs.i.mlx5dr_is_supported.exit_crit_edge, %land.rhs.i.mlx5dr_is_supported.exit_crit_edge, %entry.mlx5dr_is_supported.exit_crit_edge
  %14 = phi i1 [ false, %entry.mlx5dr_is_supported.exit_crit_edge ], [ true, %land.rhs.i.mlx5dr_is_supported.exit_crit_edge ], [ false, %lor.rhs.i.mlx5dr_is_supported.exit_crit_edge ], [ %cmp.i, %land.rhs19.i ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mlx5_fs_cmd_get_dr_cmds() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @mlx5_flow_cmds_dr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_create_flow_table(ptr noundef %ns, ptr noundef %ft, i32 noundef %size, ptr noundef %next_ft) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2, align 4
  %call3 = tail call i32 %3(ptr noundef %ns, ptr noundef %ft, i32 noundef %size, ptr noundef %next_ft) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %and7 = and i32 %1, -4
  %spec.select = select i1 %tobool.not, i32 %and7, i32 %1
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %11 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_dr_domain, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 5
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %level, align 4
  %call9 = tail call ptr @mlx5dr_table_create(ptr noundef %12, i32 noundef %14, i32 noundef %spec.select) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i47 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i47 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef %24) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %fs_dr_table = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1
  %25 = ptrtoint ptr %fs_dr_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9, ptr %fs_dr_table, align 4
  %call15 = tail call i32 @mlx5dr_table_get_id(ptr noundef nonnull %call9) #8
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call15, ptr %id, align 4
  %tobool16.not = icmp eq ptr %next_ft, null
  br i1 %tobool16.not, label %if.end14.if.end25_crit_edge, label %if.then17

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17:                                        ; preds = %if.end14
  %call18 = tail call fastcc i32 @set_miss_action(ptr noundef %ns, ptr noundef %ft, ptr noundef nonnull %next_ft)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end25_crit_edge, label %if.then20

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 @mlx5dr_table_destroy(ptr noundef nonnull %call9) #8
  %27 = ptrtoint ptr %fs_dr_table to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fs_dr_table, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then17.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 4
  %28 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2147483647, ptr %max_fte, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then20, %do.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call18, %if.then20 ], [ 0, %if.end25 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_destroy_flow_table(ptr noundef %ns, ptr noundef %ft) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %miss_action = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %miss_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %miss_action, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %destroy_flow_table = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %destroy_flow_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy_flow_table, align 4
  %call2 = tail call i32 %5(ptr noundef %ns, ptr noundef %ft) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_dr_table = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1
  %6 = ptrtoint ptr %fs_dr_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_dr_table, align 4
  %call4 = tail call i32 @mlx5dr_table_destroy(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i36 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i36 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 118, i32 noundef %17, i32 noundef %call4) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %call10 = tail call i32 @mlx5dr_action_destroy(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end15

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %18 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev16, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i37 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i37 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task19, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 125, i32 noundef %27, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4, %do.end ], [ %call10, %do.end15 ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_modify_flow_table(ptr noundef %ns, ptr noundef %ft, ptr noundef %next_ft) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %modify_flow_table = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %modify_flow_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modify_flow_table, align 4
  %call2 = tail call i32 %3(ptr noundef %ns, ptr noundef %ft, ptr noundef %next_ft) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @set_miss_action(ptr noundef %ns, ptr noundef %ft, ptr noundef %next_ft)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_create_flow_group(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #2 align 64 {
entry:
  %mask = alloca %struct.mlx5dr_match_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %in, i32 7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i32, ptr %in, i32 15
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #8
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %create_flow_group = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call4, i32 0, i32 3
  %6 = ptrtoint ptr %create_flow_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %create_flow_group, align 4
  %call5 = tail call i32 %7(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.mlx5dr_match_parameters, ptr %mask, i32 0, i32 1
  %conv = trunc i32 %3 to i8
  %add.ptr6 = getelementptr i8, ptr %in, i32 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr6, ptr %8, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 448, ptr %mask, align 4
  %fs_dr_table = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1
  %11 = ptrtoint ptr %fs_dr_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_dr_table, align 4
  %call7 = call ptr @mlx5dr_matcher_create(ptr noundef %12, i32 noundef %1, i8 noundef zeroext %conv, ptr noundef nonnull %mask) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i22 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i22 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 169, i32 noundef %22) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fs_dr_matcher = getelementptr inbounds %struct.mlx5_flow_group, ptr %fg, i32 0, i32 1
  %23 = ptrtoint ptr %fs_dr_matcher to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7, ptr %fs_dr_matcher, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %if.end10 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_destroy_flow_group(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %destroy_flow_group = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %destroy_flow_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_flow_group, align 4
  %call2 = tail call i32 %3(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fs_dr_matcher = getelementptr inbounds %struct.mlx5_flow_group, ptr %fg, i32 0, i32 1
  %4 = ptrtoint ptr %fs_dr_matcher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_dr_matcher, align 4
  %call3 = tail call i32 @mlx5dr_matcher_destroy(ptr noundef %5) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_create_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %group, ptr noundef %fte) #2 align 64 {
entry:
  %params = alloca %struct.mlx5dr_match_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_domain, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %params) #8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %params, align 4, !annotation !69
  %3 = getelementptr inbounds %struct.mlx5dr_match_parameters, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !69
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %create_fte = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %create_fte to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %create_fte, align 4
  %call3 = tail call i32 %10(ptr noundef %ns, ptr noundef %ft, ptr noundef %group, ptr noundef %fte) #8
  br label %cleanup390

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 136) #12
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i611 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 136) #12
  %tobool8.not = icmp eq ptr %call7.i.i.i611, null
  br i1 %tobool8.not, label %if.end6.free_actions_alloc_crit_edge, label %if.end10

if.end6.free_actions_alloc_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions_alloc

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i612 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 272) #12
  %tobool12.not = icmp eq ptr %call7.i.i.i612, null
  br i1 %tobool12.not, label %if.end10.free_fs_dr_actions_alloc_crit_edge, label %if.end14

if.end10.free_fs_dr_actions_alloc_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fs_dr_actions_alloc

if.end14:                                         ; preds = %if.end10
  %action = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %14 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.if.end33_crit_edge, label %if.then17

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then17:                                        ; preds = %if.end14
  %children = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %16 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %16)
  %dst.0656 = load ptr, ptr %children, align 4
  %cmp.not657 = icmp eq ptr %dst.0656, %children
  br i1 %cmp.not657, label %if.then17.if.end33_crit_edge, label %if.then17.for.body_crit_edge

if.then17.for.body_crit_edge:                     ; preds = %if.then17
  br label %for.body

if.then17.if.end33_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.then17.for.body_crit_edge
  %dst.0658 = phi ptr [ %dst.0, %for.cond.backedge.for.body_crit_edge ], [ %dst.0656, %if.then17.for.body_crit_edge ]
  %dest_attr.i = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0658, i32 0, i32 2
  %17 = ptrtoint ptr %dest_attr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dest_attr.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %for.body.for.cond.backedge_crit_edge [
    i32 0, label %for.body.land.rhs.i_crit_edge
    i32 8, label %for.body.land.rhs.i_crit_edge701
  ]

for.body.land.rhs.i_crit_edge701:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

land.rhs.i:                                       ; preds = %for.body.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge701
  %flags.i = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0658, i32 0, i32 2, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 4
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not = icmp eq i8 %22, 0
  br i1 %tobool.i.not, label %land.rhs.i.for.cond.backedge_crit_edge, label %if.end23

land.rhs.i.for.cond.backedge_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %land.rhs.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %23 = ptrtoint ptr %dst.0658 to i32
  call void @__asan_load4_noabort(i32 %23)
  %dst.0 = load ptr, ptr %dst.0658, align 4
  %cmp.not = icmp eq ptr %dst.0, %children
  br i1 %cmp.not, label %for.cond.backedge.if.end33_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.backedge.if.end33_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end23:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %and26 = and i32 %15, -17
  %24 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and26, ptr %action, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end23, %for.cond.backedge.if.end33_crit_edge, %if.then17.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  %25 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %action, align 4
  %and36 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end33.if.end45_crit_edge, label %if.then38

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then38:                                        ; preds = %if.end33
  %call39 = tail call ptr @mlx5dr_action_create_packet_reformat(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.for.end388_crit_edge, label %cleanup.thread

if.then38.for.end388_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end388

cleanup.thread:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call7.i.i.i611 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call39, ptr %call7.i.i.i611, align 8
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call39, ptr %call7.i.i.i, align 8
  br label %if.end45

if.end45:                                         ; preds = %cleanup.thread, %if.end33.if.end45_crit_edge
  %fs_dr_num_actions.1 = phi i32 [ 0, %if.end33.if.end45_crit_edge ], [ 1, %cleanup.thread ]
  %29 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %action, align 4
  %and48 = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end45.if.end60_crit_edge, label %if.then50

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then50:                                        ; preds = %if.end45
  %pkt_reformat = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pkt_reformat, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reformat_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp52 = icmp eq i32 %34, 3
  br i1 %cmp52, label %if.then54, label %if.then50.if.end59_crit_edge

if.then50.if.end59_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %35 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %inc57 = add nuw nsw i32 %fs_dr_num_actions.1, 1
  %arrayidx58 = getelementptr ptr, ptr %call7.i.i.i, i32 %fs_dr_num_actions.1
  %38 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx58, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then50.if.end59_crit_edge
  %num_actions.2 = phi i32 [ %inc57, %if.then54 ], [ %fs_dr_num_actions.1, %if.then50.if.end59_crit_edge ]
  %39 = xor i1 %cmp52, true
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end45.if.end60_crit_edge
  %num_actions.3 = phi i32 [ %num_actions.2, %if.end59 ], [ %fs_dr_num_actions.1, %if.end45.if.end60_crit_edge ]
  %delay_encap_set.1.off0 = phi i1 [ %39, %if.end59 ], [ false, %if.end45.if.end60_crit_edge ]
  %and63 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end60.if.end74_crit_edge, label %if.then65

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then65:                                        ; preds = %if.end60
  %call66 = tail call ptr @mlx5dr_action_create_pop_vlan() #8
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then65.free_actions_crit_edge, label %if.end69

if.then65.free_actions_crit_edge:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end69:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %inc70 = add nuw nsw i32 %fs_dr_num_actions.1, 1
  %arrayidx71 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.1
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call66, ptr %arrayidx71, align 4
  %inc72 = add nuw nsw i32 %num_actions.3, 1
  %arrayidx73 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.3
  %41 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call66, ptr %arrayidx73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end69, %if.end60.if.end74_crit_edge
  %num_actions.4 = phi i32 [ %inc72, %if.end69 ], [ %num_actions.3, %if.end60.if.end74_crit_edge ]
  %fs_dr_num_actions.2 = phi i32 [ %inc70, %if.end69 ], [ %fs_dr_num_actions.1, %if.end60.if.end74_crit_edge ]
  %42 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %action, align 4
  %and77 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end74.if.end88_crit_edge, label %if.then79

if.end74.if.end88_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then79:                                        ; preds = %if.end74
  %call80 = tail call ptr @mlx5dr_action_create_pop_vlan() #8
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then79.free_actions_crit_edge, label %if.end83

if.then79.free_actions_crit_edge:                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end83:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %inc84 = add nuw nsw i32 %fs_dr_num_actions.2, 1
  %arrayidx85 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.2
  %44 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call80, ptr %arrayidx85, align 4
  %inc86 = add nuw nsw i32 %num_actions.4, 1
  %arrayidx87 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.4
  %45 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call80, ptr %arrayidx87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end83, %if.end74.if.end88_crit_edge
  %num_actions.5 = phi i32 [ %inc86, %if.end83 ], [ %num_actions.4, %if.end74.if.end88_crit_edge ]
  %fs_dr_num_actions.3 = phi i32 [ %inc84, %if.end83 ], [ %fs_dr_num_actions.2, %if.end74.if.end88_crit_edge ]
  %46 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %action, align 4
  %and91 = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end88.if.end98_crit_edge, label %if.then93

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %modify_hdr = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %modify_hdr, align 4
  %50 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %inc96 = add nuw nsw i32 %num_actions.5, 1
  %arrayidx97 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.5
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %arrayidx97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.end88.if.end98_crit_edge
  %num_actions.6 = phi i32 [ %inc96, %if.then93 ], [ %num_actions.5, %if.end88.if.end98_crit_edge ]
  %and101 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end98.if.end114_crit_edge, label %if.then103

if.end98.if.end114_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then103:                                       ; preds = %if.end98
  %vlan = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5
  %54 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vlan, align 2
  %prio1.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 0, i32 2
  %56 = ptrtoint ptr %prio1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %prio1.i, align 2
  %vid2.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %vid2.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid2.i, align 2
  %conv.i = zext i16 %55 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv3.i = zext i8 %57 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 12
  %or.i = or i32 %shl4.i, %shl.i
  %conv5.i = zext i16 %59 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %call.i = tail call ptr @mlx5dr_action_create_push_vlan(ptr noundef %1, i32 noundef %or6.i) #8
  %tobool107.not = icmp eq ptr %call.i, null
  br i1 %tobool107.not, label %if.then103.free_actions_crit_edge, label %if.end109

if.then103.free_actions_crit_edge:                ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end109:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %inc110 = add nuw nsw i32 %fs_dr_num_actions.3, 1
  %arrayidx111 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.3
  %60 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %arrayidx111, align 4
  %inc112 = add nuw nsw i32 %num_actions.6, 1
  %arrayidx113 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.6
  %61 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %arrayidx113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end109, %if.end98.if.end114_crit_edge
  %num_actions.7 = phi i32 [ %inc112, %if.end109 ], [ %num_actions.6, %if.end98.if.end114_crit_edge ]
  %fs_dr_num_actions.4 = phi i32 [ %inc110, %if.end109 ], [ %fs_dr_num_actions.3, %if.end98.if.end114_crit_edge ]
  %62 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %action, align 4
  %and117 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end114.if.end131_crit_edge, label %if.then119

if.end114.if.end131_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.then119:                                       ; preds = %if.end114
  %arrayidx122 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1
  %64 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx122, align 2
  %prio1.i613 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1, i32 2
  %66 = ptrtoint ptr %prio1.i613 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %prio1.i613, align 2
  %vid2.i614 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1, i32 1
  %68 = ptrtoint ptr %vid2.i614 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vid2.i614, align 2
  %conv.i615 = zext i16 %65 to i32
  %shl.i616 = shl nuw i32 %conv.i615, 16
  %conv3.i617 = zext i8 %67 to i32
  %shl4.i618 = shl nuw nsw i32 %conv3.i617, 12
  %or.i619 = or i32 %shl4.i618, %shl.i616
  %conv5.i620 = zext i16 %69 to i32
  %or6.i621 = or i32 %or.i619, %conv5.i620
  %call.i622 = tail call ptr @mlx5dr_action_create_push_vlan(ptr noundef %1, i32 noundef %or6.i621) #8
  %tobool124.not = icmp eq ptr %call.i622, null
  br i1 %tobool124.not, label %if.then119.free_actions_crit_edge, label %if.end126

if.then119.free_actions_crit_edge:                ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end126:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %inc127 = add nuw nsw i32 %fs_dr_num_actions.4, 1
  %arrayidx128 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.4
  %70 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i622, ptr %arrayidx128, align 4
  %inc129 = add nuw nsw i32 %num_actions.7, 1
  %arrayidx130 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.7
  %71 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i622, ptr %arrayidx130, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end126, %if.end114.if.end131_crit_edge
  %num_actions.8 = phi i32 [ %inc129, %if.end126 ], [ %num_actions.7, %if.end114.if.end131_crit_edge ]
  %fs_dr_num_actions.5 = phi i32 [ %inc127, %if.end126 ], [ %fs_dr_num_actions.4, %if.end114.if.end131_crit_edge ]
  br i1 %delay_encap_set.1.off0, label %if.then133, label %if.end131.if.end139_crit_edge

if.end131.if.end139_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then133:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  %pkt_reformat135 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 2
  %72 = ptrtoint ptr %pkt_reformat135 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pkt_reformat135, align 4
  %74 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %73, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %inc137 = add nuw nsw i32 %num_actions.8, 1
  %arrayidx138 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.8
  %77 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %arrayidx138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.end131.if.end139_crit_edge
  %num_actions.9 = phi i32 [ %inc137, %if.then133 ], [ %num_actions.8, %if.end131.if.end139_crit_edge ]
  %78 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %action, align 4
  %and142 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end139.if.end153_crit_edge, label %if.then144

if.end139.if.end153_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then144:                                       ; preds = %if.end139
  %call145 = tail call ptr @mlx5dr_action_create_drop() #8
  %tobool146.not = icmp eq ptr %call145, null
  br i1 %tobool146.not, label %if.then144.free_actions_crit_edge, label %if.end148

if.then144.free_actions_crit_edge:                ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end148:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %inc149 = add nuw nsw i32 %fs_dr_num_actions.5, 1
  %arrayidx150 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.5
  %80 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call145, ptr %arrayidx150, align 4
  %81 = ptrtoint ptr %call7.i.i.i612 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call145, ptr %call7.i.i.i612, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.end148, %if.end139.if.end153_crit_edge
  %num_term_actions.0 = phi i32 [ 1, %if.end148 ], [ 0, %if.end139.if.end153_crit_edge ]
  %fs_dr_num_actions.6 = phi i32 [ %inc149, %if.end148 ], [ %fs_dr_num_actions.5, %if.end139.if.end153_crit_edge ]
  %flow_tag = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flow_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool154.not = icmp eq i32 %83, 0
  br i1 %tobool154.not, label %if.end153.if.end166_crit_edge, label %if.then155

if.end153.if.end166_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then155:                                       ; preds = %if.end153
  %call158 = tail call ptr @mlx5dr_action_create_tag(i32 noundef %83) #8
  %tobool159.not = icmp eq ptr %call158, null
  br i1 %tobool159.not, label %if.then155.free_actions_crit_edge, label %if.end161

if.then155.free_actions_crit_edge:                ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end161:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  %inc162 = add nuw nsw i32 %fs_dr_num_actions.6, 1
  %arrayidx163 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.6
  %84 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call158, ptr %arrayidx163, align 4
  %inc164 = add nuw nsw i32 %num_actions.9, 1
  %arrayidx165 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.9
  %85 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call158, ptr %arrayidx165, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.end161, %if.end153.if.end166_crit_edge
  %num_actions.10 = phi i32 [ %inc164, %if.end161 ], [ %num_actions.9, %if.end153.if.end166_crit_edge ]
  %fs_dr_num_actions.7 = phi i32 [ %inc162, %if.end161 ], [ %fs_dr_num_actions.6, %if.end153.if.end166_crit_edge ]
  %86 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %action, align 4
  %and169 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end166.if.end259_crit_edge, label %if.then171

if.end166.if.end259_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

if.then171:                                       ; preds = %if.end166
  %children174 = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %88 = ptrtoint ptr %children174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %dst.1659 = load ptr, ptr %children174, align 4
  %cmp183.not660 = icmp eq ptr %dst.1659, %children174
  br i1 %cmp183.not660, label %if.then171.if.end259_crit_edge, label %if.then171.for.body185_crit_edge

if.then171.for.body185_crit_edge:                 ; preds = %if.then171
  br label %for.body185

if.then171.if.end259_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

for.body185:                                      ; preds = %for.inc251.for.body185_crit_edge, %if.then171.for.body185_crit_edge
  %dst.1665 = phi ptr [ %dst.1, %for.inc251.for.body185_crit_edge ], [ %dst.1659, %if.then171.for.body185_crit_edge ]
  %fs_dr_num_actions.8663 = phi i32 [ %fs_dr_num_actions.10, %for.inc251.for.body185_crit_edge ], [ %fs_dr_num_actions.7, %if.then171.for.body185_crit_edge ]
  %num_term_actions.1661 = phi i32 [ %num_term_actions.3, %for.inc251.for.body185_crit_edge ], [ %num_term_actions.0, %if.then171.for.body185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %fs_dr_num_actions.8663)
  %cmp187 = icmp eq i32 %fs_dr_num_actions.8663, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %num_term_actions.1661)
  %cmp188 = icmp eq i32 %num_term_actions.1661, 34
  %or.cond = select i1 %cmp187, i1 true, i1 %cmp188
  br i1 %or.cond, label %for.body185.free_actions_crit_edge, label %if.end190

for.body185.free_actions_crit_edge:               ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end190:                                        ; preds = %for.body185
  %dest_attr = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2
  %89 = ptrtoint ptr %dest_attr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dest_attr, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %90, label %if.end190.free_actions_crit_edge [
    i32 256, label %if.end190.for.inc251_crit_edge
    i32 1, label %sw.bb
    i32 6, label %sw.bb236
    i32 257, label %sw.bb225
    i32 0, label %cond.true
    i32 8, label %cond.false
  ]

if.end190.for.inc251_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc251

if.end190.free_actions_crit_edge:                 ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

sw.bb:                                            ; preds = %if.end190
  %92 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %flags.i623 = getelementptr inbounds %struct.mlx5_flow_table, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %flags.i623 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags.i623, align 4
  %and.i.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @mlx5dr_action_create_dest_flow_fw_table(ptr noundef %1, ptr noundef %94) #8
  br label %create_ft_action.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %fs_dr_table.i = getelementptr inbounds %struct.mlx5_flow_table, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %fs_dr_table.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fs_dr_table.i, align 4
  %call2.i = tail call ptr @mlx5dr_action_create_dest_table(ptr noundef %98) #8
  br label %create_ft_action.exit

create_ft_action.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call2.i, %if.end.i ]
  %tobool195.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool195.not, label %create_ft_action.exit.free_actions_crit_edge, label %if.end197

create_ft_action.exit.free_actions_crit_edge:     ; preds = %create_ft_action.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end197:                                        ; preds = %create_ft_action.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx199 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.8663
  %99 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %retval.0.i, ptr %arrayidx199, align 4
  %arrayidx201 = getelementptr %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 %num_term_actions.1661
  %100 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %retval.0.i, ptr %arrayidx201, align 8
  br label %sw.epilog

cond.true:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %101 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %101, align 4
  %flags.i624 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1, i32 0, i32 3
  %104 = ptrtoint ptr %flags.i624 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %flags.i624, align 4
  %106 = and i8 %105, 1
  %vhca_id.i = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1, i32 0, i32 1
  %107 = ptrtoint ptr %vhca_id.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vhca_id.i, align 2
  %call.i625 = tail call ptr @mlx5dr_action_create_dest_vport(ptr noundef %1, i16 noundef zeroext %103, i8 noundef zeroext %106, i16 noundef zeroext %108) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %vhca_id.i626 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %vhca_id.i626 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vhca_id.i626, align 2
  %call.i627 = tail call ptr @mlx5dr_action_create_dest_vport(ptr noundef %1, i16 noundef zeroext -1, i8 noundef zeroext 1, i16 noundef zeroext %110) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call.i625, %cond.true ], [ %call.i627, %cond.false ]
  %tobool207.not = icmp eq ptr %cond, null
  br i1 %tobool207.not, label %cond.end.free_actions_crit_edge, label %if.end209

cond.end.free_actions_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end209:                                        ; preds = %cond.end
  %arrayidx211 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.8663
  %111 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %cond, ptr %arrayidx211, align 4
  %arrayidx212 = getelementptr %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 %num_term_actions.1661
  %112 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %cond, ptr %arrayidx212, align 8
  %flags215 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1, i32 0, i32 3
  %113 = ptrtoint ptr %flags215 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags215, align 4
  %115 = and i8 %114, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool217.not = icmp eq i8 %115, 0
  br i1 %tobool217.not, label %if.end209.sw.epilog_crit_edge, label %if.then218

if.end209.sw.epilog_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then218:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %pkt_reformat220 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1, i32 0, i32 2
  %116 = ptrtoint ptr %pkt_reformat220 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pkt_reformat220, align 4
  %118 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %117, i32 0, i32 2
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %reformat = getelementptr %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 %num_term_actions.1661, i32 1
  %121 = ptrtoint ptr %reformat to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %reformat, align 4
  br label %sw.epilog

sw.bb225:                                         ; preds = %if.end190
  %122 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %call227 = tail call ptr @mlx5dr_action_create_dest_table_num(ptr noundef %1, i32 noundef %124) #8
  %tobool228.not = icmp eq ptr %call227, null
  br i1 %tobool228.not, label %sw.bb225.free_actions_crit_edge, label %if.end230

sw.bb225.free_actions_crit_edge:                  ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end230:                                        ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx232 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.8663
  %125 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call227, ptr %arrayidx232, align 4
  %arrayidx234 = getelementptr %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 %num_term_actions.1661
  %126 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call227, ptr %arrayidx234, align 8
  br label %sw.epilog

sw.bb236:                                         ; preds = %if.end190
  %127 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1665, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %call238 = tail call ptr @mlx5dr_action_create_flow_sampler(ptr noundef %1, i32 noundef %129) #8
  %tobool239.not = icmp eq ptr %call238, null
  br i1 %tobool239.not, label %sw.bb236.free_actions_crit_edge, label %if.end241

sw.bb236.free_actions_crit_edge:                  ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end241:                                        ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx243 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.8663
  %130 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call238, ptr %arrayidx243, align 4
  %arrayidx245 = getelementptr %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 %num_term_actions.1661
  %131 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call238, ptr %arrayidx245, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end241, %if.end230, %if.then218, %if.end209.sw.epilog_crit_edge, %if.end197
  %fs_dr_num_actions.9 = add i32 %fs_dr_num_actions.8663, 1
  %num_term_actions.2 = add i32 %num_term_actions.1661, 1
  br label %for.inc251

for.inc251:                                       ; preds = %sw.epilog, %if.end190.for.inc251_crit_edge
  %num_term_actions.3 = phi i32 [ %num_term_actions.2, %sw.epilog ], [ %num_term_actions.1661, %if.end190.for.inc251_crit_edge ]
  %fs_dr_num_actions.10 = phi i32 [ %fs_dr_num_actions.9, %sw.epilog ], [ %fs_dr_num_actions.8663, %if.end190.for.inc251_crit_edge ]
  %132 = ptrtoint ptr %dst.1665 to i32
  call void @__asan_load4_noabort(i32 %132)
  %dst.1 = load ptr, ptr %dst.1665, align 4
  %cmp183.not = icmp eq ptr %dst.1, %children174
  br i1 %cmp183.not, label %for.inc251.if.end259_crit_edge, label %for.inc251.for.body185_crit_edge

for.inc251.for.body185_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body185

for.inc251.if.end259_crit_edge:                   ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

if.end259:                                        ; preds = %for.inc251.if.end259_crit_edge, %if.then171.if.end259_crit_edge, %if.end166.if.end259_crit_edge
  %num_term_actions.4 = phi i32 [ %num_term_actions.0, %if.end166.if.end259_crit_edge ], [ %num_term_actions.0, %if.then171.if.end259_crit_edge ], [ %num_term_actions.3, %for.inc251.if.end259_crit_edge ]
  %fs_dr_num_actions.11 = phi i32 [ %fs_dr_num_actions.7, %if.end166.if.end259_crit_edge ], [ %fs_dr_num_actions.7, %if.then171.if.end259_crit_edge ], [ %fs_dr_num_actions.10, %for.inc251.if.end259_crit_edge ]
  %133 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %action, align 4
  %and262 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.end259.if.end314_crit_edge, label %if.then264

if.end259.if.end314_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end314

if.then264:                                       ; preds = %if.end259
  %children267 = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %135 = ptrtoint ptr %children267 to i32
  call void @__asan_load4_noabort(i32 %135)
  %dst.2667 = load ptr, ptr %children267, align 4
  %cmp276.not668 = icmp eq ptr %dst.2667, %children267
  br i1 %cmp276.not668, label %if.then264.if.end314_crit_edge, label %if.then264.for.body279_crit_edge

if.then264.for.body279_crit_edge:                 ; preds = %if.then264
  br label %for.body279

if.then264.if.end314_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end314

for.body279:                                      ; preds = %for.inc306.for.body279_crit_edge, %if.then264.for.body279_crit_edge
  %dst.2671 = phi ptr [ %dst.2, %for.inc306.for.body279_crit_edge ], [ %dst.2667, %if.then264.for.body279_crit_edge ]
  %fs_dr_num_actions.12670 = phi i32 [ %fs_dr_num_actions.13.ph, %for.inc306.for.body279_crit_edge ], [ %fs_dr_num_actions.11, %if.then264.for.body279_crit_edge ]
  %num_actions.11669 = phi i32 [ %num_actions.12.ph, %for.inc306.for.body279_crit_edge ], [ %num_actions.10, %if.then264.for.body279_crit_edge ]
  %dest_attr281 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.2671, i32 0, i32 2
  %136 = ptrtoint ptr %dest_attr281 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dest_attr281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %137)
  %cmp283.not = icmp eq i32 %137, 256
  br i1 %cmp283.not, label %if.end286, label %for.body279.for.inc306_crit_edge

for.body279.for.inc306_crit_edge:                 ; preds = %for.body279
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc306

if.end286:                                        ; preds = %for.body279
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %num_actions.11669)
  %cmp287 = icmp eq i32 %num_actions.11669, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %fs_dr_num_actions.12670)
  %cmp290 = icmp eq i32 %fs_dr_num_actions.12670, 34
  %or.cond607 = select i1 %cmp287, i1 true, i1 %cmp290
  br i1 %or.cond607, label %if.end286.free_actions_crit_edge, label %if.end293

if.end286.free_actions_crit_edge:                 ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end293:                                        ; preds = %if.end286
  %138 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.2671, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %call295 = tail call ptr @mlx5dr_action_create_flow_counter(i32 noundef %140) #8
  %tobool296.not = icmp eq ptr %call295, null
  br i1 %tobool296.not, label %if.end293.free_actions_crit_edge, label %if.end298

if.end293.free_actions_crit_edge:                 ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end298:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #10
  %inc299 = add i32 %fs_dr_num_actions.12670, 1
  %arrayidx300 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.12670
  %141 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call295, ptr %arrayidx300, align 4
  %inc301 = add i32 %num_actions.11669, 1
  %arrayidx302 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.11669
  %142 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call295, ptr %arrayidx302, align 4
  br label %for.inc306

for.inc306:                                       ; preds = %if.end298, %for.body279.for.inc306_crit_edge
  %num_actions.12.ph = phi i32 [ %num_actions.11669, %for.body279.for.inc306_crit_edge ], [ %inc301, %if.end298 ]
  %fs_dr_num_actions.13.ph = phi i32 [ %fs_dr_num_actions.12670, %for.body279.for.inc306_crit_edge ], [ %inc299, %if.end298 ]
  %143 = ptrtoint ptr %dst.2671 to i32
  call void @__asan_load4_noabort(i32 %143)
  %dst.2 = load ptr, ptr %dst.2671, align 4
  %cmp276.not = icmp eq ptr %dst.2, %children267
  br i1 %cmp276.not, label %for.inc306.if.end314_crit_edge, label %for.inc306.for.body279_crit_edge

for.inc306.for.body279_crit_edge:                 ; preds = %for.inc306
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body279

for.inc306.if.end314_crit_edge:                   ; preds = %for.inc306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end314

if.end314:                                        ; preds = %for.inc306.if.end314_crit_edge, %if.then264.if.end314_crit_edge, %if.end259.if.end314_crit_edge
  %num_actions.13 = phi i32 [ %num_actions.10, %if.end259.if.end314_crit_edge ], [ %num_actions.10, %if.then264.if.end314_crit_edge ], [ %num_actions.12.ph, %for.inc306.if.end314_crit_edge ]
  %fs_dr_num_actions.14 = phi i32 [ %fs_dr_num_actions.11, %if.end259.if.end314_crit_edge ], [ %fs_dr_num_actions.11, %if.then264.if.end314_crit_edge ], [ %fs_dr_num_actions.13.ph, %for.inc306.if.end314_crit_edge ]
  %144 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 448, ptr %params, align 4
  %val = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 2
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %val, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_term_actions.4)
  %cmp316 = icmp eq i32 %num_term_actions.4, 1
  br i1 %cmp316, label %if.then318, label %if.else337

if.then318:                                       ; preds = %if.end314
  %reformat319 = getelementptr inbounds %struct.mlx5dr_action_dest, ptr %call7.i.i.i612, i32 0, i32 1
  %146 = ptrtoint ptr %reformat319 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reformat319, align 4
  %tobool320.not = icmp eq ptr %147, null
  br i1 %tobool320.not, label %if.then318.if.end329_crit_edge, label %if.then321

if.then318.if.end329_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end329

if.then321:                                       ; preds = %if.then318
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %num_actions.13)
  %cmp322 = icmp eq i32 %num_actions.13, 34
  br i1 %cmp322, label %if.then321.free_actions_crit_edge, label %if.end325

if.then321.free_actions_crit_edge:                ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end325:                                        ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #10
  %inc327 = add i32 %num_actions.13, 1
  %arrayidx328 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.13
  %148 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %arrayidx328, align 4
  br label %if.end329

if.end329:                                        ; preds = %if.end325, %if.then318.if.end329_crit_edge
  %num_actions.14 = phi i32 [ %inc327, %if.end325 ], [ %num_actions.13, %if.then318.if.end329_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %num_actions.14)
  %cmp330 = icmp eq i32 %num_actions.14, 34
  br i1 %cmp330, label %if.end329.free_actions_crit_edge, label %if.end333

if.end329.free_actions_crit_edge:                 ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end333:                                        ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %call7.i.i.i612 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %call7.i.i.i612, align 8
  br label %if.end368.sink.split

if.else337:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_term_actions.4)
  %cmp338 = icmp sgt i32 %num_term_actions.4, 1
  br i1 %cmp338, label %if.then340, label %if.else337.if.end368_crit_edge

if.else337.if.end368_crit_edge:                   ; preds = %if.else337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end368

if.then340:                                       ; preds = %if.else337
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %num_actions.13)
  %cmp348 = icmp eq i32 %num_actions.13, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %fs_dr_num_actions.14)
  %cmp351 = icmp eq i32 %fs_dr_num_actions.14, 34
  %or.cond608 = select i1 %cmp348, i1 true, i1 %cmp351
  br i1 %or.cond608, label %if.then340.free_actions_crit_edge, label %if.end354

if.then340.free_actions_crit_edge:                ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end354:                                        ; preds = %if.then340
  %flags342 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 4
  %151 = ptrtoint ptr %flags342 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags342, align 4
  %and343 = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and343)
  %tobool344 = icmp ne i32 %and343, 0
  %call356 = tail call ptr @mlx5dr_action_create_mult_dest_tbl(ptr noundef %1, ptr noundef nonnull %call7.i.i.i612, i32 noundef %num_term_actions.4, i1 noundef zeroext %tobool344) #8
  %tobool357.not = icmp eq ptr %call356, null
  br i1 %tobool357.not, label %if.end354.free_actions_crit_edge, label %cleanup364

if.end354.free_actions_crit_edge:                 ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

cleanup364:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #10
  %inc360 = add i32 %fs_dr_num_actions.14, 1
  %arrayidx361 = getelementptr ptr, ptr %call7.i.i.i611, i32 %fs_dr_num_actions.14
  %153 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call356, ptr %arrayidx361, align 4
  br label %if.end368.sink.split

if.end368.sink.split:                             ; preds = %cleanup364, %if.end333
  %num_actions.13.sink690 = phi i32 [ %num_actions.13, %cleanup364 ], [ %num_actions.14, %if.end333 ]
  %call356.sink = phi ptr [ %call356, %cleanup364 ], [ %150, %if.end333 ]
  %fs_dr_num_actions.16.ph = phi i32 [ %inc360, %cleanup364 ], [ %fs_dr_num_actions.14, %if.end333 ]
  %inc362 = add i32 %num_actions.13.sink690, 1
  %arrayidx363 = getelementptr ptr, ptr %call7.i.i.i, i32 %num_actions.13.sink690
  %154 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call356.sink, ptr %arrayidx363, align 4
  br label %if.end368

if.end368:                                        ; preds = %if.end368.sink.split, %if.else337.if.end368_crit_edge
  %num_actions.16 = phi i32 [ %num_actions.13, %if.else337.if.end368_crit_edge ], [ %inc362, %if.end368.sink.split ]
  %fs_dr_num_actions.16 = phi i32 [ %fs_dr_num_actions.14, %if.else337.if.end368_crit_edge ], [ %fs_dr_num_actions.16.ph, %if.end368.sink.split ]
  %fs_dr_matcher = getelementptr inbounds %struct.mlx5_flow_group, ptr %group, i32 0, i32 1
  %155 = ptrtoint ptr %fs_dr_matcher to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fs_dr_matcher, align 4
  %flow_source = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 5, i32 2
  %157 = ptrtoint ptr %flow_source to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flow_source, align 4
  %call370 = call ptr @mlx5dr_rule_create(ptr noundef %156, ptr noundef nonnull %params, i32 noundef %num_actions.16, ptr noundef nonnull %call7.i.i.i, i32 noundef %158) #8
  %tobool371.not = icmp eq ptr %call370, null
  br i1 %tobool371.not, label %if.end368.free_actions_crit_edge, label %if.end373

if.end368.free_actions_crit_edge:                 ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_actions

if.end373:                                        ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i612) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %fs_dr_rule = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1
  %159 = ptrtoint ptr %fs_dr_rule to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call370, ptr %fs_dr_rule, align 4
  %num_actions375 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1, i32 2
  %160 = ptrtoint ptr %num_actions375 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %fs_dr_num_actions.16, ptr %num_actions375, align 4
  %dr_actions = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %dr_actions to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call7.i.i.i611, ptr %dr_actions, align 4
  br label %cleanup390

free_actions:                                     ; preds = %if.end368.free_actions_crit_edge, %if.end354.free_actions_crit_edge, %if.then340.free_actions_crit_edge, %if.end329.free_actions_crit_edge, %if.then321.free_actions_crit_edge, %if.end293.free_actions_crit_edge, %if.end286.free_actions_crit_edge, %sw.bb236.free_actions_crit_edge, %sw.bb225.free_actions_crit_edge, %cond.end.free_actions_crit_edge, %create_ft_action.exit.free_actions_crit_edge, %if.end190.free_actions_crit_edge, %for.body185.free_actions_crit_edge, %if.then155.free_actions_crit_edge, %if.then144.free_actions_crit_edge, %if.then119.free_actions_crit_edge, %if.then103.free_actions_crit_edge, %if.then79.free_actions_crit_edge, %if.then65.free_actions_crit_edge
  %err.9 = phi i32 [ -12, %if.then65.free_actions_crit_edge ], [ -12, %if.then79.free_actions_crit_edge ], [ -12, %if.then103.free_actions_crit_edge ], [ -12, %if.then119.free_actions_crit_edge ], [ -12, %if.then144.free_actions_crit_edge ], [ -12, %if.then155.free_actions_crit_edge ], [ -95, %if.then321.free_actions_crit_edge ], [ -95, %if.end329.free_actions_crit_edge ], [ -22, %if.end368.free_actions_crit_edge ], [ -95, %if.then340.free_actions_crit_edge ], [ -95, %if.end354.free_actions_crit_edge ], [ -12, %if.end293.free_actions_crit_edge ], [ -95, %if.end286.free_actions_crit_edge ], [ -95, %if.end190.free_actions_crit_edge ], [ -95, %for.body185.free_actions_crit_edge ], [ -12, %create_ft_action.exit.free_actions_crit_edge ], [ -12, %cond.end.free_actions_crit_edge ], [ -12, %sw.bb225.free_actions_crit_edge ], [ -12, %sw.bb236.free_actions_crit_edge ]
  %fs_dr_num_actions.17 = phi i32 [ %fs_dr_num_actions.1, %if.then65.free_actions_crit_edge ], [ %fs_dr_num_actions.2, %if.then79.free_actions_crit_edge ], [ %fs_dr_num_actions.3, %if.then103.free_actions_crit_edge ], [ %fs_dr_num_actions.4, %if.then119.free_actions_crit_edge ], [ %fs_dr_num_actions.5, %if.then144.free_actions_crit_edge ], [ %fs_dr_num_actions.6, %if.then155.free_actions_crit_edge ], [ %fs_dr_num_actions.14, %if.then321.free_actions_crit_edge ], [ %fs_dr_num_actions.14, %if.end329.free_actions_crit_edge ], [ %fs_dr_num_actions.16, %if.end368.free_actions_crit_edge ], [ %fs_dr_num_actions.14, %if.then340.free_actions_crit_edge ], [ %fs_dr_num_actions.14, %if.end354.free_actions_crit_edge ], [ %fs_dr_num_actions.12670, %if.end293.free_actions_crit_edge ], [ %fs_dr_num_actions.12670, %if.end286.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %for.body185.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %create_ft_action.exit.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %cond.end.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %sw.bb225.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %sw.bb236.free_actions_crit_edge ], [ %fs_dr_num_actions.8663, %if.end190.free_actions_crit_edge ]
  %i.0674 = add i32 %fs_dr_num_actions.17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0674)
  %cmp378675 = icmp sgt i32 %i.0674, -1
  br i1 %cmp378675, label %free_actions.for.body380_crit_edge, label %free_actions.for.end388_crit_edge

free_actions.for.end388_crit_edge:                ; preds = %free_actions
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end388

free_actions.for.body380_crit_edge:               ; preds = %free_actions
  br label %for.body380

for.body380:                                      ; preds = %for.inc387.for.body380_crit_edge, %free_actions.for.body380_crit_edge
  %i.0676 = phi i32 [ %i.0, %for.inc387.for.body380_crit_edge ], [ %i.0674, %free_actions.for.body380_crit_edge ]
  %arrayidx381 = getelementptr ptr, ptr %call7.i.i.i611, i32 %i.0676
  %162 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx381, align 4
  %tobool.not.i628 = icmp eq ptr %163, null
  %cmp.i = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i628, %cmp.i
  br i1 %spec.select.i, label %for.body380.for.inc387_crit_edge, label %if.then383

for.body380.for.inc387_crit_edge:                 ; preds = %for.body380
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc387

if.then383:                                       ; preds = %for.body380
  call void @__sanitizer_cov_trace_pc() #10
  %call385 = call i32 @mlx5dr_action_destroy(ptr noundef nonnull %163) #8
  br label %for.inc387

for.inc387:                                       ; preds = %if.then383, %for.body380.for.inc387_crit_edge
  %i.0 = add i32 %i.0676, -1
  %cmp378 = icmp sgt i32 %i.0, -1
  br i1 %cmp378, label %for.inc387.for.body380_crit_edge, label %for.inc387.for.end388_crit_edge

for.inc387.for.end388_crit_edge:                  ; preds = %for.inc387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end388

for.inc387.for.body380_crit_edge:                 ; preds = %for.inc387
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body380

for.end388:                                       ; preds = %for.inc387.for.end388_crit_edge, %free_actions.for.end388_crit_edge, %if.then38.for.end388_crit_edge
  %err.9685 = phi i32 [ %err.9, %free_actions.for.end388_crit_edge ], [ -12, %if.then38.for.end388_crit_edge ], [ %err.9, %for.inc387.for.end388_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i612) #8
  br label %free_fs_dr_actions_alloc

free_fs_dr_actions_alloc:                         ; preds = %for.end388, %if.end10.free_fs_dr_actions_alloc_crit_edge
  %err.10 = phi i32 [ %err.9685, %for.end388 ], [ -12, %if.end10.free_fs_dr_actions_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i611) #8
  br label %free_actions_alloc

free_actions_alloc:                               ; preds = %free_fs_dr_actions_alloc, %if.end6.free_actions_alloc_crit_edge
  %err.11 = phi i32 [ %err.10, %free_fs_dr_actions_alloc ], [ -12, %if.end6.free_actions_alloc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end

do.end:                                           ; preds = %free_actions_alloc, %if.end.do.end_crit_edge
  %err.12 = phi i32 [ %err.11, %free_actions_alloc ], [ -12, %if.end.do.end_crit_edge ]
  %164 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %6, align 8
  %166 = call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i629 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i629 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 68
  %170 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 572, i32 noundef %171, i32 noundef %err.12) #11
  br label %cleanup390

cleanup390:                                       ; preds = %do.end, %if.end373, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %err.12, %do.end ], [ 0, %if.end373 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_update_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %group, i32 noundef %modify_mask, ptr noundef %fte) #2 align 64 {
entry:
  %fte_tmp = alloca %struct.fs_fte, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 676, ptr nonnull %fte_tmp) #8
  %0 = call ptr @memset(ptr %fte_tmp, i32 0, i32 676)
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and.i = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %update_fte = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %update_fte to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %update_fte, align 4
  %call2 = tail call i32 %4(ptr noundef %ns, ptr noundef %ft, ptr noundef %group, i32 noundef %modify_mask, ptr noundef %fte) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_dr_rule = getelementptr inbounds %struct.fs_fte, ptr %fte_tmp, i32 0, i32 1
  %fs_dr_rule3 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %fs_dr_rule, ptr %fs_dr_rule3, i32 12)
  %6 = call ptr @memset(ptr %fs_dr_rule3, i32 0, i32 12)
  %call5 = tail call i32 @mlx5_cmd_dr_create_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %group, ptr noundef %fte)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %restore_fte

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i, label %mlx5_cmd_dr_delete_fte.exit

if.end.i:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %fs_dr_rule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_dr_rule, align 4
  %call3.i = tail call i32 @mlx5dr_rule_destroy(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i66 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i66, label %if.end5.i, label %if.end.i.land.rhs_crit_edge

if.end.i.land.rhs_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end5.i:                                        ; preds = %if.end.i
  %num_actions.i = getelementptr inbounds %struct.fs_fte, ptr %fte_tmp, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %num_actions.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_actions.i, align 4
  %i.026.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.026.i)
  %cmp27.i = icmp sgt i32 %i.026.i, -1
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %if.end5.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge

if.end5.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_cmd_dr_delete_fte.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %dr_actions.i = getelementptr inbounds %struct.fs_fte, ptr %fte_tmp, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dr_actions.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dr_actions.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ %i.026.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.028.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i25.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i25.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 @mlx5dr_action_destroy(ptr noundef nonnull %16) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.028.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge

for.inc.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_cmd_dr_delete_fte.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mlx5_cmd_dr_delete_fte.exit.thread:               ; preds = %for.inc.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge, %if.end5.i.mlx5_cmd_dr_delete_fte.exit.thread_crit_edge
  %dr_actions12.i = getelementptr inbounds %struct.fs_fte, ptr %fte_tmp, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dr_actions12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dr_actions12.i, align 4
  tail call void @kfree(ptr noundef %18) #8
  br label %cleanup

mlx5_cmd_dr_delete_fte.exit:                      ; preds = %if.end7
  %call1.i = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %delete_fte.i = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1.i, i32 0, i32 7
  %19 = ptrtoint ptr %delete_fte.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %delete_fte.i, align 4
  %call2.i = call i32 %20(ptr noundef %ns, ptr noundef %ft, ptr noundef nonnull %fte_tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool9.not = icmp eq i32 %call2.i, 0
  br i1 %tobool9.not, label %mlx5_cmd_dr_delete_fte.exit.cleanup_crit_edge, label %mlx5_cmd_dr_delete_fte.exit.land.rhs_crit_edge

mlx5_cmd_dr_delete_fte.exit.land.rhs_crit_edge:   ; preds = %mlx5_cmd_dr_delete_fte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

mlx5_cmd_dr_delete_fte.exit.cleanup_crit_edge:    ; preds = %mlx5_cmd_dr_delete_fte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %mlx5_cmd_dr_delete_fte.exit.land.rhs_crit_edge, %if.end.i.land.rhs_crit_edge
  %retval.0.i72 = phi i32 [ %call2.i, %mlx5_cmd_dr_delete_fte.exit.land.rhs_crit_edge ], [ %call3.i, %if.end.i.land.rhs_crit_edge ]
  %.b65 = load i1, ptr @mlx5_cmd_dr_update_fte.__already_done, align 1
  br i1 %.b65, label %land.rhs.cleanup_crit_edge, label %if.then17, !prof !70

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5_cmd_dr_update_fte.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 720, i32 noundef 9, ptr noundef nonnull @.str.18) #8
  br label %cleanup

restore_fte:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = call ptr @memcpy(ptr %fs_dr_rule3, ptr %fs_dr_rule, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %restore_fte, %if.then17, %land.rhs.cleanup_crit_edge, %mlx5_cmd_dr_delete_fte.exit.cleanup_crit_edge, %mlx5_cmd_dr_delete_fte.exit.thread, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call5, %restore_fte ], [ 0, %mlx5_cmd_dr_delete_fte.exit.cleanup_crit_edge ], [ %retval.0.i72, %if.then17 ], [ %retval.0.i72, %land.rhs.cleanup_crit_edge ], [ 0, %mlx5_cmd_dr_delete_fte.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 676, ptr nonnull %fte_tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_delete_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %delete_fte = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %delete_fte to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %delete_fte, align 4
  %call2 = tail call i32 %3(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fs_dr_rule = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1
  %4 = ptrtoint ptr %fs_dr_rule to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_dr_rule, align 4
  %call3 = tail call i32 @mlx5dr_rule_destroy(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num_actions = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %num_actions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_actions, align 4
  %i.026 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.026)
  %cmp27 = icmp sgt i32 %i.026, -1
  br i1 %cmp27, label %for.body.lr.ph, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %dr_actions = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ %i.026, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %dr_actions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dr_actions, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i25 = icmp eq ptr %11, null
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i25, %cmp.i
  br i1 %spec.select.i, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @mlx5dr_action_destroy(ptr noundef nonnull %11) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.028, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %dr_actions12 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dr_actions12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dr_actions12, align 4
  tail call void @kfree(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %for.end ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_update_root_ft(ptr noundef %ns, ptr noundef %ft, i32 noundef %underlay_qpn, i1 noundef zeroext %disconnect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_fs_cmd_get_fw_cmds() #8
  %update_root_ft = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %update_root_ft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_root_ft, align 4
  %call1 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, i32 noundef %underlay_qpn, i1 noundef zeroext %disconnect) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_packet_reformat_alloc(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %params, i32 noundef %namespace, ptr nocapture noundef writeonly %pkt_reformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_domain, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %4 = icmp ult i32 %3, 17
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 605, i32 noundef %14, i32 noundef %3) #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 98335, %3
  %15 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.lobit.not = icmp eq i32 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.mlx5_cmd_dr_packet_reformat_alloc, i32 0, i32 %3
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %param_0 = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %param_0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %param_0, align 4
  %param_1 = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 2
  %19 = ptrtoint ptr %param_1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %param_1, align 1
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 3
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %call7 = tail call ptr @mlx5dr_action_create_packet_reformat(ptr noundef %1, i32 noundef %switch.load, i8 noundef zeroext %18, i8 noundef zeroext %20, i32 noundef %22, ptr noundef %24) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end10, label %if.end

do.end10:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %25 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev11, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i26 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i26 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 616, i32 noundef %34) #11
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %35 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %pkt_reformat, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7, ptr %35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end10, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cmd_dr_packet_reformat_dealloc(ptr nocapture noundef readnone %ns, ptr nocapture noundef readonly %pkt_reformat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %pkt_reformat, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @mlx5dr_action_destroy(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_modify_header_alloc(ptr nocapture noundef readonly %ns, i8 noundef zeroext %namespace, i8 noundef zeroext %num_actions, ptr noundef %modify_actions, ptr nocapture noundef writeonly %modify_hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_domain, align 4
  %conv = zext i8 %num_actions to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call = tail call ptr @mlx5dr_action_create_modify_header(ptr noundef %1, i32 noundef 0, i32 noundef %mul, ptr noundef %modify_actions) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !59) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 646, i32 noundef %11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %modify_hdr, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cmd_dr_modify_header_dealloc(ptr nocapture noundef readnone %ns, ptr nocapture noundef readonly %modify_hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %modify_hdr, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @mlx5dr_action_destroy(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_set_peer(ptr nocapture noundef readonly %ns, ptr noundef readonly %peer_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peer_ns, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %peer_ns, i32 0, i32 2
  %0 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_domain, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %peer_domain.0 = phi ptr [ %1, %if.then ], [ null, %entry.if.end_crit_edge ]
  %fs_dr_domain1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %2 = ptrtoint ptr %fs_dr_domain1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_dr_domain1, align 4
  tail call void @mlx5dr_domain_set_peer(ptr noundef %3, ptr noundef %peer_domain.0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_create_ns(ptr nocapture noundef %ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @mlx5dr_domain_create(ptr noundef %1, i32 noundef 2) #8
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %2 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fs_dr_domain, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !59) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 746, i32 noundef %12) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_dr_destroy_ns(ptr nocapture noundef readonly %ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_dr_domain = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %fs_dr_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_domain, align 4
  %call = tail call i32 @mlx5dr_domain_destroy(ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_dr_create_match_definer(ptr nocapture noundef readnone %ns, i16 noundef zeroext %format_id, ptr nocapture noundef readnone %match_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_dr_destroy_match_definer(ptr nocapture noundef readnone %ns, i32 noundef %definer_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fs_cmd_get_fw_cmds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_table_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_table_get_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_miss_action(ptr nocapture noundef readonly %ns, ptr nocapture noundef %ft, ptr noundef readonly %next_ft) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %next_ft, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %cond.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

cond.end:                                         ; preds = %entry
  %fs_dr_table = getelementptr inbounds %struct.mlx5_flow_table, ptr %next_ft, i32 0, i32 1
  %0 = ptrtoint ptr %fs_dr_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_dr_table, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %cond.end.if.end4_crit_edge, label %if.then

cond.end.if.end4_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %cond.end
  %call = tail call ptr @mlx5dr_action_create_dest_table(ptr noundef nonnull %1) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %cond.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %action.0 = phi ptr [ %call, %if.then.if.end4_crit_edge ], [ null, %cond.end.if.end4_crit_edge ], [ null, %entry.if.end4_crit_edge ]
  %fs_dr_table5 = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1
  %miss_action = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %miss_action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miss_action, align 4
  %4 = ptrtoint ptr %fs_dr_table5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_dr_table5, align 4
  %call8 = tail call i32 @mlx5dr_table_set_miss_action(ptr noundef %5, ptr noundef %action.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end4.if.end17_crit_edge, label %land.lhs.true

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end4
  %tobool10.not = icmp eq ptr %action.0, null
  br i1 %tobool10.not, label %land.lhs.true.if.end17_crit_edge, label %if.then11

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  %call12 = tail call i32 @mlx5dr_action_destroy(ptr noundef nonnull %action.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end17_crit_edge, label %if.then14

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 50, i32 noundef %15, i32 noundef %call12) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %action.1 = phi ptr [ null, %if.then14 ], [ %action.0, %if.then11.if.end17_crit_edge ], [ null, %land.lhs.true.if.end17_crit_edge ], [ %action.0, %if.end4.if.end17_crit_edge ]
  %err.0 = phi i32 [ %call12, %if.then14 ], [ 0, %if.then11.if.end17_crit_edge ], [ %call8, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.end4.if.end17_crit_edge ]
  %16 = ptrtoint ptr %miss_action to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %action.1, ptr %miss_action, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 @mlx5dr_action_destroy(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %do.end27

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %17 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev28, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i53 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i53 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task31, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 58, i32 noundef %26, i32 noundef %call22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %call22, %do.end27 ], [ 0, %if.then21.cleanup_crit_edge ], [ %err.0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_table_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_dest_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_table_set_miss_action(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_action_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_matcher_create(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_matcher_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_packet_reformat(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_pop_vlan() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_drop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_tag(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_dest_table_num(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_flow_sampler(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_flow_counter(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_mult_dest_tbl(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_rule_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_push_vlan(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_dest_flow_fw_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_dest_vport(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_rule_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_action_create_modify_header(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_domain_set_peer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_domain_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_domain_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @mlx5_flow_cmds_dr, !1, !"mlx5_flow_cmds_dr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 762, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 85, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5_cmd_dr_create_flow_table._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlx5_cmd_dr_create_flow_table._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 49, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @set_miss_action._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @set_miss_action._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @set_miss_action._entry.7, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 57, i32 4}
!17 = !{ptr @set_miss_action._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 117, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5_cmd_dr_destroy_flow_table._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mlx5_cmd_dr_destroy_flow_table._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 124, i32 4}
!25 = !{ptr @mlx5_cmd_dr_destroy_flow_table._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5_cmd_dr_destroy_flow_table._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 169, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_cmd_dr_create_flow_group._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_cmd_dr_create_flow_group._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 572, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_cmd_dr_create_fte._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_cmd_dr_create_fte._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 720, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 604, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5_cmd_dr_packet_reformat_alloc._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx5_cmd_dr_packet_reformat_alloc._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 616, i32 3}
!47 = !{ptr @mlx5_cmd_dr_packet_reformat_alloc._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5_cmd_dr_packet_reformat_alloc._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 646, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5_cmd_dr_modify_header_alloc._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5_cmd_dr_modify_header_alloc._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.c", i32 746, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mlx5_cmd_dr_create_ns._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mlx5_cmd_dr_create_ns._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 2000, i32 1}
