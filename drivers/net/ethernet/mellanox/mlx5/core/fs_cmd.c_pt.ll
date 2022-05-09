; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_flow_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.139, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.139 = type { i8, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_flow_namespace, i32, %struct.mlx5_fs_dr_domain, i32, ptr, ptr, %struct.mutex, %struct.list_head, ptr }
%struct.mlx5_flow_namespace = type { %struct.fs_node, i32 }
%struct.mlx5_fs_dr_domain = type { ptr }
%struct.mlx5_flow_group = type { %struct.fs_node, %struct.mlx5_fs_dr_matcher, %struct.mlx5_flow_group_mask, i32, i32, %struct.ida, i32, %struct.rhashtable, %struct.rhlist_head }
%struct.mlx5_fs_dr_matcher = type { ptr }
%struct.mlx5_flow_group_mask = type { i8, [112 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.202, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.201] }
%struct.anon.201 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.165 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.165 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.202 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
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
%struct.fs_fte = type { %struct.fs_node, %struct.mlx5_fs_dr_rule, [112 x i32], i32, i32, %struct.mlx5_flow_context, %struct.mlx5_flow_act, i32, ptr, %struct.rhash_head, i32 }
%struct.mlx5_fs_dr_rule = type { ptr, ptr, i32 }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.142, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.142 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_pkt_reformat = type { i32, i32, %union.anon.141 }
%union.anon.141 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5_fs_dr_action = type { ptr }
%struct.mlx5_modify_hdr = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5_flow_rule = type { %struct.fs_node, ptr, %struct.mlx5_flow_destination, %struct.list_head, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.196 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { i16, i16, ptr, i8 }

@mlx5_flow_cmds = internal constant { %struct.mlx5_flow_cmds, [56 x i8] } { %struct.mlx5_flow_cmds { ptr @mlx5_cmd_create_flow_table, ptr @mlx5_cmd_destroy_flow_table, ptr @mlx5_cmd_modify_flow_table, ptr @mlx5_cmd_create_flow_group, ptr @mlx5_cmd_destroy_flow_group, ptr @mlx5_cmd_create_fte, ptr @mlx5_cmd_update_fte, ptr @mlx5_cmd_delete_fte, ptr @mlx5_cmd_update_root_ft, ptr @mlx5_cmd_packet_reformat_alloc, ptr @mlx5_cmd_packet_reformat_dealloc, ptr @mlx5_cmd_modify_header_alloc, ptr @mlx5_cmd_modify_header_dealloc, ptr @mlx5_cmd_stub_set_peer, ptr @mlx5_cmd_stub_create_ns, ptr @mlx5_cmd_stub_destroy_ns, ptr @mlx5_cmd_create_match_definer, ptr @mlx5_cmd_destroy_match_definer }, [56 x i8] zeroinitializer }, align 32
@mlx5_set_extended_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 464, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FW does not support extended destination\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_set_extended_dest\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_set_extended_dest._entry_ptr = internal global ptr @mlx5_set_extended_dest._entry, section ".printk_index", align 4
@mlx5_set_extended_dest._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FW does not support more than %d encaps\00", [40 x i8] zeroinitializer }, align 32
@mlx5_set_extended_dest._entry_ptr.7 = internal global ptr @mlx5_set_extended_dest._entry.5, section ".printk_index", align 4
@mlx5_cmd_packet_reformat_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): encap size %zd too big, max supported is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_cmd_packet_reformat_alloc\00", [33 x i8] zeroinitializer }, align 32
@mlx5_cmd_packet_reformat_alloc._entry_ptr = internal global ptr @mlx5_cmd_packet_reformat_alloc._entry, section ".printk_index", align 4
@mlx5_cmd_modify_header_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 895, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): too many modify header actions %d, max supported %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_cmd_modify_header_alloc\00", [35 x i8] zeroinitializer }, align 32
@mlx5_cmd_modify_header_alloc._entry_ptr = internal global ptr @mlx5_cmd_modify_header_alloc._entry, section ".printk_index", align 4
@mlx5_flow_cmd_stubs = internal constant { %struct.mlx5_flow_cmds, [56 x i8] } { %struct.mlx5_flow_cmds { ptr @mlx5_cmd_stub_create_flow_table, ptr @mlx5_cmd_stub_destroy_flow_table, ptr @mlx5_cmd_stub_modify_flow_table, ptr @mlx5_cmd_stub_create_flow_group, ptr @mlx5_cmd_stub_destroy_flow_group, ptr @mlx5_cmd_stub_create_fte, ptr @mlx5_cmd_stub_update_fte, ptr @mlx5_cmd_stub_delete_fte, ptr @mlx5_cmd_stub_update_root_ft, ptr @mlx5_cmd_stub_packet_reformat_alloc, ptr @mlx5_cmd_stub_packet_reformat_dealloc, ptr @mlx5_cmd_stub_modify_header_alloc, ptr @mlx5_cmd_stub_modify_header_dealloc, ptr @mlx5_cmd_stub_set_peer, ptr @mlx5_cmd_stub_create_ns, ptr @mlx5_cmd_stub_destroy_ns, ptr @mlx5_cmd_stub_create_match_definer, ptr @mlx5_cmd_stub_destroy_match_definer }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 4, i64 7, i64 8, i64 10, i64 13, i64 14, i64 17]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 256]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 6, i64 8, i64 256, i64 257]
@__sancov_gen_cov_switch_values.15 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"mlx5_flow_cmds\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 974, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 464, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 468, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 799, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 894, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"mlx5_flow_cmd_stubs\00", align 1
@___asan_gen_.62 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 995, i32 36 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mlx5_cmd_modify_header_alloc._entry, ptr @mlx5_cmd_modify_header_alloc._entry_ptr, ptr @mlx5_cmd_packet_reformat_alloc._entry, ptr @mlx5_cmd_packet_reformat_alloc._entry_ptr, ptr @mlx5_set_extended_dest._entry, ptr @mlx5_set_extended_dest._entry.5, ptr @mlx5_set_extended_dest._entry_ptr, ptr @mlx5_set_extended_dest._entry_ptr.7, ptr @mlx5_flow_cmds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlx5_flow_cmd_stubs], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_flow_cmds to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_set_extended_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_set_extended_dest._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_packet_reformat_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_modify_header_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_flow_cmd_stubs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_bulk_alloc(ptr noundef %dev, i32 noundef %alloc_bitmask, ptr nocapture noundef writeonly %id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 154730496, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 3
  %and15 = and i32 %alloc_bitmask, 255
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and15, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr25 = getelementptr inbounds i32, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr25, align 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_alloc(ptr noundef %dev, ptr nocapture noundef writeonly %id) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %0 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %1 = getelementptr inbounds i8, ptr %in.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 154730496, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %4 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr13.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mlx5_cmd_fc_bulk_alloc.exit_crit_edge

entry.mlx5_cmd_fc_bulk_alloc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_cmd_fc_bulk_alloc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr25.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %5 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr25.i, align 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %id, align 4
  br label %mlx5_cmd_fc_bulk_alloc.exit

mlx5_cmd_fc_bulk_alloc.exit:                      ; preds = %if.then.i, %entry.mlx5_cmd_fc_bulk_alloc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_free(ptr noundef %dev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 154796032, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_query(ptr noundef %dev, i32 noundef %id, ptr nocapture noundef writeonly %packets, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [32 x i32], align 4
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %1 = getelementptr inbounds i8, ptr %in, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 154861568, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 1
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 7
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %id, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr40 = getelementptr inbounds i8, ptr %out, i32 16
  %6 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr40, align 8
  %8 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %packets, align 8
  %add.ptr42 = getelementptr inbounds i8, ptr %out, i32 24
  %9 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr42, align 8
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32 noundef %bulk_len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %bulk_len, 4
  %add = add i32 %mul, 16
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fc_bulk_query(ptr noundef %dev, i32 noundef %base_id, i32 noundef %bulk_len, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %bulk_len, 4
  %add.i = add i32 %mul.i, 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 154861568, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 7
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %base_id, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 6
  %and30 = and i32 %bulk_len, 65535
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and30, ptr %add.ptr28, align 4
  %call38 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef %out, i32 noundef %add.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %call38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mlx5_fs_cmd_get_fw_cmds() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @mlx5_flow_cmds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mlx5_fs_cmd_get_default(i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %switch = icmp ult i32 %type, 10
  %spec.select = select i1 %switch, ptr @mlx5_flow_cmds, ptr @mlx5_flow_cmd_stubs
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_create_flow_table(ptr nocapture noundef readonly %ns, ptr nocapture noundef %ft, i32 noundef %size, ptr noundef readonly %next_ft) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %3 = call ptr @memset(ptr %in, i32 0, i32 64)
  %dev16 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %4 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %cond.false32

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.false32:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i330 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i330)
  %tobool.not.i.i.i = icmp eq i32 %sub.i330, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i330, i1 true) #9, !range !36
  %sub.i.i.i = sub nuw nsw i32 32, %6
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %if.end

if.end:                                           ; preds = %cond.false32, %entry.if.end_crit_edge
  %size.addr.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %shl.i, %cond.false32 ]
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %call36 = tail call i32 @mlx5_ft_pool_get_avail_sz(ptr noundef %5, i32 noundef %8, i32 noundef %size.addr.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in, align 4
  %and41 = and i32 %10, 65535
  %or = or i32 %and41, 154140672
  store i32 %or, ptr %in, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %add.ptr55 = getelementptr inbounds i32, ptr %in, i32 4
  %13 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr55, align 4
  %and56 = and i32 %14, 16777215
  %shl58 = shl i32 %12, 24
  %or59 = or i32 %and56, %shl58
  store i32 %or59, ptr %add.ptr55, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 5
  %15 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level, align 4
  %add.ptr70 = getelementptr inbounds i32, ptr %in, i32 6
  %17 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr70, align 4
  %and71 = and i32 %18, 788594432
  %and72 = shl i32 %16, 16
  %shl73 = and i32 %and72, 16711680
  %or74 = or i32 %and71, %shl73
  %19 = tail call i32 @llvm.ctlz.i32(i32 %call36, i1 true) #9, !range !36
  %20 = or i32 %19, %or74
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %21 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vport, align 4
  %conv115 = zext i16 %22 to i32
  %add.ptr120 = getelementptr inbounds i32, ptr %in, i32 2
  %23 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr120, align 4
  %and121 = and i32 %24, 2147418112
  %or124 = or i32 %and121, %conv115
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %27 = shl i32 %26, 27
  %shl145 = and i32 %27, -2147483648
  %or146 = or i32 %shl145, %or124
  store i32 %or146, ptr %add.ptr120, align 4
  %28 = shl i32 %1, 29
  %shl160 = and i32 %28, 1073741824
  %29 = or i32 %20, %shl160
  %shl175 = shl i32 %1, 31
  %30 = or i32 %29, %shl175
  %31 = shl i32 %1, 26
  %shl190 = and i32 %31, 268435456
  %32 = or i32 %30, %shl190
  %or191 = xor i32 %32, 31
  %33 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or191, ptr %add.ptr70, align 4
  %op_mod = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 7
  %34 = ptrtoint ptr %op_mod to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_mod, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %do.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.body245
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body
  %tobool196.not = icmp eq ptr %next_ft, null
  br i1 %tobool196.not, label %do.body228, label %do.body198

do.body198:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %and205 = and i32 %or191, -251658241
  %or208 = or i32 %and205, 16777216
  %37 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or208, ptr %add.ptr70, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %next_ft, i32 0, i32 2
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %add.ptr219 = getelementptr inbounds i32, ptr %in, i32 7
  %40 = ptrtoint ptr %add.ptr219 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr219, align 4
  %and220 = and i32 %41, -16777216
  %and221 = and i32 %39, 16777215
  %or223 = or i32 %and220, %and221
  store i32 %or223, ptr %add.ptr219, align 4
  br label %sw.epilog

do.body228:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %def_miss_action = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 13
  %42 = ptrtoint ptr %def_miss_action to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %def_miss_action, align 4
  %and235 = and i32 %or191, -251658241
  %and236 = shl i32 %43, 24
  %shl237 = and i32 %and236, 251658240
  %or238 = or i32 %shl237, %and235
  %44 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or238, ptr %add.ptr70, align 4
  br label %sw.epilog

do.body245:                                       ; preds = %do.body
  %add.ptr251 = getelementptr inbounds i32, ptr %in, i32 1
  %45 = ptrtoint ptr %add.ptr251 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr251, align 4
  %and252 = and i32 %46, -65536
  %or255 = or i32 %and252, 1
  store i32 %or255, ptr %add.ptr251, align 4
  %tobool260.not = icmp eq ptr %next_ft, null
  br i1 %tobool260.not, label %do.body245.sw.epilog_crit_edge, label %do.body262

do.body245.sw.epilog_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body262:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  %id264 = getelementptr inbounds %struct.mlx5_flow_table, ptr %next_ft, i32 0, i32 2
  %47 = ptrtoint ptr %id264 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id264, align 4
  %add.ptr269 = getelementptr inbounds i32, ptr %in, i32 8
  %49 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr269, align 4
  %and270 = and i32 %50, -16777216
  %and271 = and i32 %48, 16777215
  %or273 = or i32 %and270, %and271
  store i32 %or273, ptr %add.ptr269, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body262, %do.body245.sw.epilog_crit_edge, %do.body228, %do.body198, %do.body.sw.epilog_crit_edge
  %call281 = call i32 @mlx5_cmd_exec(ptr noundef %5, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.then283, label %if.else288

if.then283:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr285 = getelementptr inbounds i32, ptr %out, i32 2
  %51 = ptrtoint ptr %add.ptr285 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr285, align 4
  %and286 = and i32 %52, 16777215
  %id287 = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %53 = ptrtoint ptr %id287 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and286, ptr %id287, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 4
  %54 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call36, ptr %max_fte, align 4
  br label %cleanup

if.else288:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev16, align 4
  call void @mlx5_ft_pool_put_sz(ptr noundef %56, i32 noundef %call36) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else288, %if.then283, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.end.cleanup_crit_edge ], [ %call281, %if.else288 ], [ 0, %if.then283 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_destroy_flow_table(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft) #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 154206208, ptr %in, align 4
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 4
  %shl17 = shl i32 %6, 24
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl17, ptr %add.ptr14, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 5
  %and31 = and i32 %9, 16777215
  %10 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and31, ptr %add.ptr29, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %11 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vport, align 4
  %conv = zext i16 %12 to i32
  %add.ptr44 = getelementptr inbounds i32, ptr %in, i32 2
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %15 = shl i32 %14, 27
  %shl64 = and i32 %15, -2147483648
  %or65 = or i32 %shl64, %conv
  %16 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or65, ptr %add.ptr44, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %17 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool73.not = icmp eq i32 %call, 0
  br i1 %tobool73.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 4
  %20 = ptrtoint ptr %max_fte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_fte, align 4
  call void @mlx5_ft_pool_put_sz(ptr noundef %19, i32 noundef %21) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_modify_flow_table(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr noundef readonly %next_ft) #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 154927104, ptr %in, align 4
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 4
  %shl17 = shl i32 %6, 24
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl17, ptr %add.ptr14, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 5
  %and31 = and i32 %9, 16777215
  %10 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and31, ptr %add.ptr29, align 4
  %op_mod = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 7
  %11 = ptrtoint ptr %op_mod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op_mod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.body38, label %do.body86

do.body38:                                        ; preds = %entry
  %add.ptr44 = getelementptr inbounds i32, ptr %in, i32 3
  %13 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr44, align 4
  %and45 = and i32 %14, -65536
  %or48 = or i32 %and45, 32768
  store i32 %or48, ptr %add.ptr44, align 4
  %tobool.not = icmp eq ptr %next_ft, null
  br i1 %tobool.not, label %do.body70, label %do.body54

do.body54:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %id56 = getelementptr inbounds %struct.mlx5_flow_table, ptr %next_ft, i32 0, i32 2
  %15 = ptrtoint ptr %id56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id56, align 4
  %add.ptr61 = getelementptr inbounds i32, ptr %in, i32 8
  %17 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr61, align 4
  %and62 = and i32 %18, -16777216
  %and63 = and i32 %16, 16777215
  %or65 = or i32 %and62, %and63
  store i32 %or65, ptr %add.ptr61, align 4
  br label %if.end184

do.body70:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr76 = getelementptr inbounds i32, ptr %in, i32 8
  %19 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr76, align 4
  %and77 = and i32 %20, -16777216
  store i32 %and77, ptr %add.ptr76, align 4
  br label %if.end184

do.body86:                                        ; preds = %entry
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %21 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vport, align 4
  %conv = zext i16 %22 to i32
  %add.ptr92 = getelementptr inbounds i32, ptr %in, i32 2
  %23 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr92, align 4
  %and93 = and i32 %24, 2147418112
  %or96 = or i32 %and93, %conv
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %27 = shl i32 %26, 27
  %shl113 = and i32 %27, -2147483648
  %or114 = or i32 %shl113, %or96
  store i32 %or114, ptr %add.ptr92, align 4
  %add.ptr125 = getelementptr inbounds i32, ptr %in, i32 3
  %28 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr125, align 4
  %and126 = and i32 %29, -65536
  %or129 = or i32 %and126, 1
  store i32 %or129, ptr %add.ptr125, align 4
  %tobool134.not = icmp eq ptr %next_ft, null
  br i1 %tobool134.not, label %do.body168, label %do.body136

do.body136:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr142 = getelementptr inbounds i32, ptr %in, i32 6
  %30 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr142, align 4
  %and143 = and i32 %31, -251658241
  %or146 = or i32 %and143, 16777216
  store i32 %or146, ptr %add.ptr142, align 4
  %id153 = getelementptr inbounds %struct.mlx5_flow_table, ptr %next_ft, i32 0, i32 2
  %32 = ptrtoint ptr %id153 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id153, align 4
  %add.ptr158 = getelementptr inbounds i32, ptr %in, i32 7
  %34 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr158, align 4
  %and159 = and i32 %35, -16777216
  %and160 = and i32 %33, 16777215
  %or162 = or i32 %and159, %and160
  store i32 %or162, ptr %add.ptr158, align 4
  br label %if.end184

do.body168:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %def_miss_action = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 13
  %36 = ptrtoint ptr %def_miss_action to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %def_miss_action, align 4
  %add.ptr174 = getelementptr inbounds i32, ptr %in, i32 6
  %38 = ptrtoint ptr %add.ptr174 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr174, align 4
  %and175 = and i32 %39, -251658241
  %and176 = shl i32 %37, 24
  %shl177 = and i32 %and176, 251658240
  %or178 = or i32 %and175, %shl177
  store i32 %or178, ptr %add.ptr174, align 4
  br label %if.end184

if.end184:                                        ; preds = %do.body168, %do.body136, %do.body70, %do.body54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %40 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_create_flow_group(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr noundef %in, ptr nocapture noundef writeonly %fg) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in, align 4
  %and = and i32 %4, 65535
  %or = or i32 %and, 154337280
  store i32 %or, ptr %in, align 4
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %add.ptr12 = getelementptr i32, ptr %in, i32 4
  %7 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr12, align 4
  %and13 = and i32 %8, 16777215
  %shl15 = shl i32 %6, 24
  %or16 = or i32 %and13, %shl15
  store i32 %or16, ptr %add.ptr12, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %add.ptr25 = getelementptr i32, ptr %in, i32 5
  %11 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %12, -16777216
  %and27 = and i32 %10, 16777215
  %or29 = or i32 %and26, %and27
  store i32 %or29, ptr %add.ptr25, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %13 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %entry.do.body60_crit_edge, label %do.body33

entry.do.body60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

do.body33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %14 to i32
  %add.ptr39 = getelementptr i32, ptr %in, i32 2
  %15 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr39, align 4
  %and40 = and i32 %16, 2147418112
  %or43 = or i32 %and40, %conv
  %or56 = or i32 %or43, -2147483648
  store i32 %or56, ptr %add.ptr39, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body33, %entry.do.body60_crit_edge
  %17 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vport, align 4
  %conv63 = zext i16 %18 to i32
  %add.ptr67 = getelementptr i32, ptr %in, i32 2
  %19 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr67, align 4
  %and68 = and i32 %20, -65536
  %or71 = or i32 %and68, %conv63
  store i32 %or71, ptr %add.ptr67, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and84 = and i32 %or71, 2147483647
  %23 = shl i32 %22, 27
  %shl86 = and i32 %23, -2147483648
  %or87 = or i32 %shl86, %and84
  store i32 %or87, ptr %add.ptr67, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef %in, i32 noundef 1024, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool91.not = icmp eq i32 %call, 0
  br i1 %tobool91.not, label %if.then92, label %do.body60.if.end97_crit_edge

do.body60.if.end97_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then92:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr94 = getelementptr inbounds i32, ptr %out, i32 2
  %24 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr94, align 4
  %and95 = and i32 %25, 16777215
  %id96 = getelementptr inbounds %struct.mlx5_flow_group, ptr %fg, i32 0, i32 6
  %26 = ptrtoint ptr %id96 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and95, ptr %id96, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %do.body60.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_destroy_flow_group(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr nocapture noundef readonly %fg) #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 154402816, ptr %in, align 4
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 4
  %shl17 = shl i32 %6, 24
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl17, ptr %add.ptr14, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 5
  %and31 = and i32 %9, 16777215
  %10 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and31, ptr %add.ptr29, align 4
  %id40 = getelementptr inbounds %struct.mlx5_flow_group, ptr %fg, i32 0, i32 6
  %11 = ptrtoint ptr %id40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id40, align 4
  %add.ptr45 = getelementptr inbounds i32, ptr %in, i32 6
  %13 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr45, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport, align 4
  %conv = zext i16 %15 to i32
  %add.ptr60 = getelementptr inbounds i32, ptr %in, i32 2
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %18 = shl i32 %17, 27
  %shl80 = and i32 %18, -2147483648
  %or81 = or i32 %shl80, %conv
  %19 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or81, ptr %add.ptr60, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %20 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_create_fte(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr nocapture noundef readonly %group, ptr noundef %fte) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_group, ptr %group, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call fastcc i32 @mlx5_cmd_set_fte(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %ft, i32 noundef %3, ptr noundef %fte)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_update_fte(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr nocapture noundef readonly %fg, i32 noundef %modify_mask, ptr noundef %fte) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.mlx5_flow_group, ptr %fg, i32 0, i32 6
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call = tail call fastcc i32 @mlx5_cmd_set_fte(ptr noundef %1, i32 noundef 1, i32 noundef %modify_mask, ptr noundef %ft, i32 noundef %8, ptr noundef %fte)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_delete_fte(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, ptr nocapture noundef readonly %fte) #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 154664960, ptr %in, align 4
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 4
  %shl17 = shl i32 %6, 24
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl17, ptr %add.ptr14, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %add.ptr29 = getelementptr inbounds i32, ptr %in, i32 5
  %and31 = and i32 %9, 16777215
  %10 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and31, ptr %add.ptr29, align 4
  %index = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %add.ptr44 = getelementptr inbounds i32, ptr %in, i32 8
  %13 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr44, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport, align 4
  %conv = zext i16 %15 to i32
  %add.ptr59 = getelementptr inbounds i32, ptr %in, i32 2
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %18 = shl i32 %17, 27
  %shl79 = and i32 %18, -2147483648
  %or80 = or i32 %shl79, %conv
  %19 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or80, ptr %add.ptr59, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %20 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_update_root_ft(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %ft, i32 noundef %underlay_qpn, i1 noundef zeroext %disconnect) #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [16 x i32], align 4
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  %_out172 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 64)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 768
  %8 = or i32 %7, %underlay_qpn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp3 = icmp eq i32 %11, 4
  br i1 %cmp3, label %land.lhs.true4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true4:                                   ; preds = %if.end
  %call = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %2) #9
  br i1 %call, label %land.lhs.true5, label %land.lhs.true4.do.body_crit_edge

land.lhs.true4.do.body_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true5:                                   ; preds = %land.lhs.true4
  %call6 = tail call zeroext i1 @mlx5_lag_is_master(ptr noundef %2) #9
  br i1 %call6, label %land.lhs.true5.do.body_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %land.lhs.true5.do.body_crit_edge, %land.lhs.true4.do.body_crit_edge, %if.end.do.body_crit_edge
  %12 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in, align 4
  %and12 = and i32 %13, 65535
  %or = or i32 %and12, 154075136
  store i32 %or, ptr %in, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %add.ptr25 = getelementptr inbounds i32, ptr %in, i32 4
  %16 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %17, 16777215
  %shl28 = shl i32 %15, 24
  %or29 = or i32 %and26, %shl28
  store i32 %or29, ptr %add.ptr25, align 4
  br i1 %disconnect, label %do.body35, label %do.body50

do.body35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr41 = getelementptr inbounds i32, ptr %in, i32 1
  %18 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr41, align 4
  %and42 = and i32 %19, -65536
  %or45 = or i32 %and42, 1
  store i32 %or45, ptr %add.ptr41, align 4
  br label %do.body66

do.body50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  %add.ptr56 = getelementptr inbounds i32, ptr %in, i32 5
  %22 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr56, align 4
  %and57 = and i32 %23, -16777216
  %and58 = and i32 %21, 16777215
  %or60 = or i32 %and57, %and58
  store i32 %or60, ptr %add.ptr56, align 4
  br label %do.body66

do.body66:                                        ; preds = %do.body50, %do.body35
  %add.ptr72 = getelementptr inbounds i32, ptr %in, i32 6
  %24 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr72, align 4
  %and73 = and i32 %25, -16777216
  %and74 = and i32 %underlay_qpn, 16777215
  %or76 = or i32 %and73, %and74
  store i32 %or76, ptr %add.ptr72, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %26 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vport, align 4
  %conv = zext i16 %27 to i32
  %add.ptr87 = getelementptr inbounds i32, ptr %in, i32 2
  %28 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr87, align 4
  %and88 = and i32 %29, 2147418112
  %or91 = or i32 %and88, %conv
  %flags = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %32 = shl i32 %31, 27
  %shl108 = and i32 %32, -2147483648
  %or109 = or i32 %shl108, %or91
  store i32 %or109, ptr %add.ptr87, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %33 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call117 = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.lhs.true119, label %do.body66.cleanup_crit_edge

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true119:                                 ; preds = %do.body66
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp121 = icmp eq i32 %35, 4
  br i1 %cmp121, label %land.lhs.true123, label %land.lhs.true119.cleanup_crit_edge

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true123:                                 ; preds = %land.lhs.true119
  %call124 = call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %2) #9
  br i1 %call124, label %land.lhs.true126, label %land.lhs.true123.cleanup_crit_edge

land.lhs.true123.cleanup_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true126:                                 ; preds = %land.lhs.true123
  %call127 = call zeroext i1 @mlx5_lag_is_master(ptr noundef %2) #9
  br i1 %call127, label %if.then129, label %land.lhs.true126.cleanup_crit_edge

land.lhs.true126.cleanup_crit_edge:               ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then129:                                       ; preds = %land.lhs.true126
  %call130 = call ptr @mlx5_lag_get_peer_mdev(ptr noundef %2) #9
  br i1 %disconnect, label %if.else.i, label %do.body22.i

do.body22.i:                                      ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %id135 = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %36 = ptrtoint ptr %id135 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id135, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %38 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #9
  %39 = getelementptr inbounds i8, ptr %in.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 60)
  %41 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 154075136, ptr %in.i, align 4
  %add.ptr13.i204 = getelementptr inbounds i32, ptr %in.i, i32 4
  %42 = ptrtoint ptr %add.ptr13.i204 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 67108864, ptr %add.ptr13.i204, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 7
  %43 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %caps, align 8
  %add.ptr40.i = getelementptr i32, ptr %44, i32 1
  %45 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr40.i, align 4
  %and41.i = and i32 %46, 65535
  %or50.i = or i32 %and41.i, -2147483648
  %47 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or50.i, ptr %add.ptr28.i, align 4
  br label %mlx5_cmd_set_slave_root_fdb.exit

if.else.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %48 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #9
  %49 = getelementptr inbounds i8, ptr %in.i, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 60)
  %51 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 154075136, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 4
  %52 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 67108864, ptr %add.ptr13.i, align 4
  %call.i = call ptr @mlx5_get_flow_namespace(ptr noundef %call130, i32 noundef 8) #9
  %call70.i = call ptr @find_root(ptr noundef %call.i) #9
  %root_ft.i = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %call70.i, i32 0, i32 5
  %53 = ptrtoint ptr %root_ft.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %root_ft.i, align 4
  %id.i = getelementptr inbounds %struct.mlx5_flow_table, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.i, align 4
  br label %mlx5_cmd_set_slave_root_fdb.exit

mlx5_cmd_set_slave_root_fdb.exit:                 ; preds = %if.else.i, %do.body22.i
  %.sink.i = phi i32 [ %56, %if.else.i ], [ %37, %do.body22.i ]
  %add.ptr77.i = getelementptr inbounds i32, ptr %in.i, i32 5
  %57 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr77.i, align 4
  %and78.i = and i32 %58, -16777216
  %and79.i = and i32 %.sink.i, 16777215
  %or81.i = or i32 %and78.i, %and79.i
  store i32 %or81.i, ptr %add.ptr77.i, align 4
  %call88.i = call i32 @mlx5_cmd_exec(ptr noundef %call130, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool137.not = icmp eq i32 %call88.i, 0
  %brmerge = or i1 %tobool137.not, %disconnect
  br i1 %brmerge, label %mlx5_cmd_set_slave_root_fdb.exit.cleanup_crit_edge, label %do.body141

mlx5_cmd_set_slave_root_fdb.exit.cleanup_crit_edge: ; preds = %mlx5_cmd_set_slave_root_fdb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body141:                                       ; preds = %mlx5_cmd_set_slave_root_fdb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr147 = getelementptr inbounds i32, ptr %in, i32 1
  %59 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr147, align 4
  %and148 = and i32 %60, -65536
  store i32 %and148, ptr %add.ptr147, align 4
  %root_ft = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 5
  %61 = ptrtoint ptr %root_ft to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %root_ft, align 4
  %id158 = getelementptr inbounds %struct.mlx5_flow_table, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %id158 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id158, align 4
  %add.ptr163 = getelementptr inbounds i32, ptr %in, i32 5
  %65 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr163, align 4
  %and164 = and i32 %66, -16777216
  %and165 = and i32 %64, 16777215
  %or167 = or i32 %and164, %and165
  store i32 %or167, ptr %add.ptr163, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out172) #9
  %67 = call ptr @memset(ptr %_out172, i32 0, i32 16)
  %call177 = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out172, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out172) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body141, %mlx5_cmd_set_slave_root_fdb.exit.cleanup_crit_edge, %land.lhs.true126.cleanup_crit_edge, %land.lhs.true123.cleanup_crit_edge, %land.lhs.true119.cleanup_crit_edge, %do.body66.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ %call117, %do.body66.cleanup_crit_edge ], [ %call88.i, %do.body141 ], [ %call88.i, %mlx5_cmd_set_slave_root_fdb.exit.cleanup_crit_edge ], [ 0, %land.lhs.true126.cleanup_crit_edge ], [ 0, %land.lhs.true123.cleanup_crit_edge ], [ 0, %land.lhs.true119.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_packet_reformat_alloc(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %params, i32 noundef %namespace, ptr nocapture noundef writeonly %pkt_reformat) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %namespace.off = add i32 %namespace, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %namespace.off)
  %switch = icmp ult i32 %namespace.off, 2
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 9
  %arrayidx5 = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 7
  %.pn.in = select i1 %switch, ptr %arrayidx, ptr %arrayidx5
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %max_encap_size.0.in.in = getelementptr i32, ptr %.pn, i32 1
  %4 = ptrtoint ptr %max_encap_size.0.in.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %max_encap_size.0.in = load i32, ptr %max_encap_size.0.in.in, align 4
  %max_encap_size.0 = and i32 %max_encap_size.0.in, 1023
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %max_encap_size.0)
  %cmp11 = icmp ugt i32 %6, %max_encap_size.0
  br i1 %cmp11, label %do.end, label %if.end8.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 800, i32 noundef %14, i32 noundef %6, i32 noundef %max_encap_size.0) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add = add i32 %6, 36
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end18

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end8.i.i
  %add.ptr19 = getelementptr i8, ptr %call9.i.i, i32 28
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %add22 = add i32 %16, 34
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call9.i.i, align 128
  %and28 = and i32 %18, 65535
  %or = or i32 %and28, 154992640
  store i32 %or, ptr %call9.i.i, align 128
  %19 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr19, align 4
  %and40 = and i32 %20, 15793152
  %and41 = and i32 %16, 1023
  %or43 = or i32 %and40, %and41
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %params, align 4
  %shl55 = shl i32 %22, 24
  %or56 = or i32 %or43, %shl55
  %param_0 = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %param_0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %param_0, align 4
  %25 = and i8 %24, 15
  %and67 = zext i8 %25 to i32
  %shl68 = shl nuw nsw i32 %and67, 16
  %or69 = or i32 %shl68, %or56
  store i32 %or69, ptr %add.ptr19, align 4
  %param_1 = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 2
  %26 = ptrtoint ptr %param_1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %param_1, align 1
  %conv75 = zext i8 %27 to i32
  %add.ptr79 = getelementptr i8, ptr %call9.i.i, i32 32
  %28 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr79, align 32
  %and80 = and i32 %29, 16777215
  %shl82 = shl nuw i32 %conv75, 24
  %or83 = or i32 %and80, %shl82
  store i32 %or83, ptr %add.ptr79, align 32
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %params, i32 0, i32 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %tobool87.not = icmp eq ptr %31, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool89.not = icmp eq i32 %16, 0
  %or.cond = select i1 %tobool87.not, i1 true, i1 %tobool89.not
  br i1 %or.cond, label %if.end18.if.end93_crit_edge, label %if.then90

if.end18.if.end93_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then90:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr20 = getelementptr i8, ptr %call9.i.i, i32 34
  %32 = call ptr @memcpy(ptr %add.ptr20, ptr %31, i32 %16)
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end18.if.end93_crit_edge
  %call95 = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef nonnull %call9.i.i, i32 noundef %add22, ptr noundef nonnull %out, i32 noundef 16) #9
  %add.ptr97 = getelementptr inbounds i32, ptr %out, i32 2
  %33 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr97, align 4
  %35 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %pkt_reformat, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call95, %if.end93 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cmd_packet_reformat_dealloc(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %pkt_reformat) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 155058176, ptr %in, align 4
  %5 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %pkt_reformat, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %8 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %9 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_modify_header_alloc(ptr nocapture noundef readonly %ns, i8 noundef zeroext %namespace, i8 noundef zeroext %num_actions, ptr nocapture noundef readonly %modify_actions, ptr nocapture noundef writeonly %modify_hdr) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %3 = zext i8 %namespace to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %namespace, label %entry.cleanup_crit_edge [
    i8 8, label %entry.sw.bb_crit_edge
    i8 7, label %entry.sw.bb_crit_edge119
    i8 4, label %entry.sw.bb2_crit_edge
    i8 0, label %entry.sw.bb2_crit_edge120
    i8 13, label %entry.sw.bb11_crit_edge
    i8 14, label %entry.sw.bb11_crit_edge121
    i8 10, label %sw.bb20
    i8 17, label %sw.bb29
  ]

entry.sw.bb11_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb2_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge119:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge119
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 17
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge120
  %arrayidx5 = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %add.ptr8 = getelementptr i32, ptr %7, i32 17
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge121
  %arrayidx14 = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %add.ptr17 = getelementptr i32, ptr %9, i32 65
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx23 = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx23, align 8
  %add.ptr26 = getelementptr i32, ptr %11, i32 33
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx32 = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx32, align 4
  %add.ptr35 = getelementptr i32, ptr %13, i32 81
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb20, %sw.bb11, %sw.bb2, %sw.bb
  %table_type.0 = phi i32 [ 134217728, %sw.bb29 ], [ 50331648, %sw.bb20 ], [ 16777216, %sw.bb11 ], [ 0, %sw.bb2 ], [ 67108864, %sw.bb ]
  %max_actions.0.in.in.in = phi ptr [ %add.ptr35, %sw.bb29 ], [ %add.ptr26, %sw.bb20 ], [ %add.ptr17, %sw.bb11 ], [ %add.ptr8, %sw.bb2 ], [ %add.ptr, %sw.bb ]
  %14 = ptrtoint ptr %max_actions.0.in.in.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %max_actions.0.in.in = load i32, ptr %max_actions.0.in.in.in, align 4
  %max_actions.0.in = lshr i32 %max_actions.0.in.in, 8
  %max_actions.0 = and i32 %max_actions.0.in, 255
  %conv38 = zext i8 %num_actions to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_actions.0, i32 %conv38)
  %cmp = icmp ult i32 %max_actions.0, %conv38
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 895, i32 noundef %22, i32 noundef %conv38, i32 noundef %max_actions.0) #12
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %mul = shl nuw nsw i32 %conv38, 3
  %add = add nuw nsw i32 %mul, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body45

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call9.i.i, align 128
  %and50 = and i32 %24, 65535
  %or = or i32 %and50, 155189248
  store i32 %or, ptr %call9.i.i, align 128
  %add.ptr61 = getelementptr i32, ptr %call9.i.i, i32 3
  %25 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr61, align 4
  %and62 = and i32 %26, 16776960
  %or65 = or i32 %table_type.0, %conv38
  %or79 = or i32 %or65, %and62
  store i32 %or79, ptr %add.ptr61, align 4
  %add.ptr83 = getelementptr i8, ptr %call9.i.i, i32 16
  %27 = call ptr @memcpy(ptr %add.ptr83, ptr %modify_actions, i32 %mul)
  %call85 = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef nonnull %call9.i.i, i32 noundef %add, ptr noundef nonnull %out, i32 noundef 16) #9
  %add.ptr87 = getelementptr inbounds i32, ptr %out, i32 2
  %28 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr87, align 4
  %30 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %modify_hdr, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %30, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ %call85, %do.body45 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cmd_modify_header_dealloc(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %modify_hdr) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 155254784, ptr %in, align 4
  %5 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %modify_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %8 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %9 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_set_peer(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %peer_ns) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_create_ns(ptr nocapture noundef readnone %ns) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_destroy_ns(ptr nocapture noundef readnone %ns) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_create_match_definer(ptr nocapture noundef readonly %ns, i16 noundef zeroext %format_id, ptr nocapture noundef readonly %match_mask) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [36 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %in) #9
  %1 = getelementptr inbounds i8, ptr %in, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 72)
  %dev1 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 167772160, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 1
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %add.ptr14, align 4
  %conv = zext i16 %format_id to i32
  %add.ptr30 = getelementptr inbounds i8, ptr %in, i32 32
  %7 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %add.ptr30, align 4
  %add.ptr38 = getelementptr inbounds i8, ptr %in, i32 80
  %8 = call ptr @memcpy(ptr %add.ptr38, ptr %match_mask, i32 64)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef nonnull %in, i32 noundef 144, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr42 = getelementptr inbounds i32, ptr %out, i32 2
  %9 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_cmd_destroy_match_definer(ptr nocapture noundef readonly %ns, i32 noundef %definer_id) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %out, i32 255, i32 16)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 167968768, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 1
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %definer_id, ptr %add.ptr28, align 4
  %dev = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ft_pool_get_avail_sz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ft_pool_put_sz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_cmd_set_fte(ptr noundef %dev, i32 noundef %opmod, i32 noundef %modify_mask, ptr nocapture noundef readonly %ft, i32 noundef %group_id, ptr noundef readonly %fte) unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %2, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %4, 24
  %and.i = and i32 %shr.i, 31
  %action.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %action.i, align 4
  %and2.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %children.i = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %7 = ptrtoint ptr %children.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %dst.074.i = load ptr, ptr %children.i, align 4
  %cmp.not75.i = icmp eq ptr %dst.074.i, %children.i
  br i1 %cmp.not75.i, label %if.end.i.if.end40.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %dst.078.i = phi ptr [ %dst.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dst.074.i, %if.end.i.for.body.i_crit_edge ]
  %num_fwd_destinations.077.i = phi i32 [ %num_fwd_destinations.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %num_encap.076.i = phi i32 [ %num_encap.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %dest_attr.i = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.078.i, i32 0, i32 2
  %8 = ptrtoint ptr %dest_attr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dest_attr.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %9, label %for.body.i.if.end20.i_crit_edge [
    i32 256, label %for.body.i.for.inc.i_crit_edge
    i32 0, label %for.body.i.land.lhs.true.i_crit_edge
    i32 8, label %for.body.i.land.lhs.true.i_crit_edge947
  ]

for.body.i.land.lhs.true.i_crit_edge947:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge947
  %flags.i = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.078.i, i32 0, i32 2, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 4
  %13 = lshr i8 %12, 1
  %.lobit.i = and i8 %13, 1
  %14 = zext i8 %.lobit.i to i32
  %spec.select.i = add i32 %num_encap.076.i, %14
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i, %for.body.i.if.end20.i_crit_edge
  %num_encap.1.i = phi i32 [ %num_encap.076.i, %for.body.i.if.end20.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc21.i = add i32 %num_fwd_destinations.077.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %for.body.i.for.inc.i_crit_edge
  %num_encap.2.i = phi i32 [ %num_encap.076.i, %for.body.i.for.inc.i_crit_edge ], [ %num_encap.1.i, %if.end20.i ]
  %num_fwd_destinations.1.i = phi i32 [ %num_fwd_destinations.077.i, %for.body.i.for.inc.i_crit_edge ], [ %inc21.i, %if.end20.i ]
  %15 = ptrtoint ptr %dst.078.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %dst.0.i = load ptr, ptr %dst.078.i, align 4
  %cmp.not.i = icmp eq ptr %dst.0.i, %children.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fwd_destinations.1.i)
  %cmp28.i = icmp sgt i32 %num_fwd_destinations.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_encap.2.i)
  %cmp31.i = icmp sgt i32 %num_encap.2.i, 0
  %or.cond.i = select i1 %cmp28.i, i1 %cmp31.i, i1 false
  br i1 %or.cond.i, label %if.end34.i, label %for.end.i.if.end40.i_crit_edge

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end34.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %do.end.i, label %if.end34.i.if.end40.i_crit_edge

if.end34.i.if.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !26) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef %23) #12
  br label %cleanup759

if.end40.i:                                       ; preds = %if.end34.i.if.end40.i_crit_edge, %for.end.i.if.end40.i_crit_edge, %if.end.i.if.end40.i_crit_edge
  %num_encap.0.lcssa85.i928 = phi i32 [ %num_encap.2.i, %if.end34.i.if.end40.i_crit_edge ], [ 0, %if.end.i.if.end40.i_crit_edge ], [ %num_encap.2.i, %for.end.i.if.end40.i_crit_edge ]
  %extended_dest.0927 = phi i8 [ 1, %if.end34.i.if.end40.i_crit_edge ], [ 0, %if.end.i.if.end40.i_crit_edge ], [ 0, %for.end.i.if.end40.i_crit_edge ]
  %shl.i = shl nuw i32 1, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_encap.0.lcssa85.i928, i32 %shl.i)
  %cmp41.i = icmp sgt i32 %num_encap.0.lcssa85.i928, %shl.i
  br i1 %cmp41.i, label %do.end46.i, label %if.end40.i.if.end_crit_edge

if.end40.i.if.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #9
  %and.i73.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i73.i to ptr
  %task49.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task49.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task49.i, align 8
  %pid50.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid50.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid50.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 469, i32 noundef %31, i32 noundef %shl.i) #12
  br label %cleanup759

if.end:                                           ; preds = %if.end40.i.if.end_crit_edge, %entry.if.end_crit_edge
  %extended_dest.1.ph = phi i8 [ %extended_dest.0927, %if.end40.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extended_dest.1.ph)
  %tobool1.not = icmp eq i8 %extended_dest.1.ph, 0
  %. = select i1 %tobool1.not, i32 8, i32 16
  %dests_size = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 3
  %32 = ptrtoint ptr %dests_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dests_size, align 4
  %mul = mul i32 %., %33
  %add = add i32 %mul, 832
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #13
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup759_crit_edge, label %do.body

if.end.cleanup759_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup759

do.body:                                          ; preds = %if.end
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i.i, align 4
  %and = and i32 %35, 65535
  %or = or i32 %and, 154533888
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr18 = getelementptr i32, ptr %call.i.i, i32 1
  %36 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %37, -65536
  %and20 = and i32 %opmod, 65535
  %or22 = or i32 %and19, %and20
  store i32 %or22, ptr %add.ptr18, align 4
  %add.ptr31 = getelementptr i32, ptr %call.i.i, i32 6
  %38 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr31, align 4
  %and32 = and i32 %39, 2147483392
  %and33 = and i32 %modify_mask, 255
  %or35 = or i32 %and32, %and33
  %type = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 6
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type, align 4
  %add.ptr44 = getelementptr i32, ptr %call.i.i, i32 4
  %42 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr44, align 4
  %and45 = and i32 %43, 16777215
  %shl47 = shl i32 %41, 24
  %or48 = or i32 %and45, %shl47
  store i32 %or48, ptr %add.ptr44, align 4
  %id = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 2
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id, align 4
  %add.ptr57 = getelementptr i32, ptr %call.i.i, i32 5
  %46 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr57, align 4
  %and58 = and i32 %47, -16777216
  %and59 = and i32 %45, 16777215
  %or61 = or i32 %and58, %and59
  store i32 %or61, ptr %add.ptr57, align 4
  %index = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 4
  %48 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index, align 4
  %add.ptr70 = getelementptr i32, ptr %call.i.i, i32 8
  %50 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %add.ptr70, align 4
  %flags = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 4
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %53 = shl i32 %52, 30
  %shl89 = and i32 %53, -2147483648
  %or90 = or i32 %shl89, %or35
  store i32 %or90, ptr %add.ptr31, align 4
  %vport = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 3
  %54 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vport, align 4
  %conv = zext i16 %55 to i32
  %add.ptr99 = getelementptr i32, ptr %call.i.i, i32 2
  %56 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr99, align 4
  %and100 = and i32 %57, 2147418112
  %or103 = or i32 %and100, %conv
  %flags109 = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 11
  %58 = ptrtoint ptr %flags109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags109, align 4
  %60 = shl i32 %59, 27
  %shl122 = and i32 %60, -2147483648
  %or123 = or i32 %shl122, %or103
  store i32 %or123, ptr %add.ptr99, align 4
  %add.ptr127 = getelementptr i8, ptr %call.i.i, i32 64
  %add.ptr133 = getelementptr i8, ptr %call.i.i, i32 68
  %61 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %group_id, ptr %add.ptr133, align 4
  %flow_tag = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flow_tag, align 4
  %add.ptr146 = getelementptr i8, ptr %call.i.i, i32 72
  %64 = ptrtoint ptr %add.ptr146 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr146, align 4
  %and147 = and i32 %65, -16777216
  %and148 = and i32 %63, 16777215
  %or150 = or i32 %and147, %and148
  store i32 %or150, ptr %add.ptr146, align 4
  %flow_source = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %flow_source to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flow_source, align 4
  %add.ptr160 = getelementptr i8, ptr %call.i.i, i32 80
  %68 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr160, align 4
  %and161 = and i32 %69, 1342177279
  %and162 = shl i32 %67, 28
  %shl163 = and i32 %and162, 805306368
  %or164 = or i32 %and161, %shl163
  %70 = zext i8 %extended_dest.1.ph to i32
  %shl178 = shl nuw i32 %70, 31
  %or179 = or i32 %or164, %shl178
  store i32 %or179, ptr %add.ptr160, align 4
  %71 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %action.i, align 4
  %add.ptr210 = getelementptr i8, ptr %call.i.i, i32 76
  %73 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr210, align 4
  %and211 = and i32 %74, -65536
  br i1 %tobool1.not, label %do.body203, label %if.then184

if.then184:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %and196 = and i32 %72, 65519
  %or198 = or i32 %and211, %and196
  %75 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or198, ptr %add.ptr210, align 4
  br label %if.end237

do.body203:                                       ; preds = %do.body
  %and212 = and i32 %72, 65535
  %or214 = or i32 %and211, %and212
  %76 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or214, ptr %add.ptr210, align 4
  %pkt_reformat = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 2
  %77 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pkt_reformat, align 4
  %tobool219.not = icmp eq ptr %78, null
  br i1 %tobool219.not, label %do.body203.if.end237_crit_edge, label %do.body221

do.body203.if.end237_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

do.body221:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #11
  %79 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %78, i32 0, i32 2
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add.ptr228 = getelementptr i8, ptr %call.i.i, i32 88
  %82 = ptrtoint ptr %add.ptr228 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %add.ptr228, align 4
  br label %if.end237

if.end237:                                        ; preds = %do.body221, %do.body203.if.end237_crit_edge, %if.then184
  %modify_hdr = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %modify_hdr, align 4
  %tobool239.not = icmp eq ptr %84, null
  br i1 %tobool239.not, label %if.end237.do.body257_crit_edge, label %do.body241

if.end237.do.body257_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body257

do.body241:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  %85 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add.ptr248 = getelementptr i8, ptr %call.i.i, i32 92
  %88 = ptrtoint ptr %add.ptr248 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %add.ptr248, align 4
  br label %do.body257

do.body257:                                       ; preds = %do.body241, %if.end237.do.body257_crit_edge
  %89 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add.ptr263 = getelementptr i8, ptr %call.i.i, i32 100
  %92 = ptrtoint ptr %add.ptr263 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %add.ptr263, align 4
  %vlan275 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5
  %93 = ptrtoint ptr %vlan275 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vlan275, align 4
  %conv276 = zext i16 %94 to i32
  %95 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr127, align 4
  %and281 = and i32 %96, 4096
  %shl283 = shl nuw i32 %conv276, 16
  %or284 = or i32 %and281, %shl283
  %vid = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 0, i32 1
  %97 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vid, align 2
  %99 = and i16 %98, 4095
  %and299 = zext i16 %99 to i32
  %or301 = or i32 %or284, %and299
  %prio = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 0, i32 2
  %100 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %prio, align 4
  %102 = and i8 %101, 7
  %and316 = zext i8 %102 to i32
  %shl317 = shl nuw nsw i32 %and316, 13
  %or318 = or i32 %shl317, %or301
  store i32 %or318, ptr %add.ptr127, align 4
  %add.ptr322 = getelementptr i8, ptr %call.i.i, i32 96
  %arrayidx327 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1
  %103 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx327, align 2
  %conv329 = zext i16 %104 to i32
  %105 = ptrtoint ptr %add.ptr322 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr322, align 4
  %and334 = and i32 %106, 4096
  %shl336 = shl nuw i32 %conv329, 16
  %or337 = or i32 %and334, %shl336
  %vid346 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1, i32 1
  %107 = ptrtoint ptr %vid346 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %vid346, align 2
  %109 = and i16 %108, 4095
  %and353 = zext i16 %109 to i32
  %or355 = or i32 %or337, %and353
  %prio364 = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 5, i32 1, i32 2
  %110 = ptrtoint ptr %prio364 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %prio364, align 2
  %112 = and i8 %111, 7
  %and371 = zext i8 %112 to i32
  %shl372 = shl nuw nsw i32 %and371, 13
  %or373 = or i32 %shl372, %or355
  store i32 %or373, ptr %add.ptr322, align 4
  %add.ptr377 = getelementptr i8, ptr %call.i.i, i32 128
  %val = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 2
  %113 = call ptr @memcpy(ptr %add.ptr377, ptr %val, i32 448)
  %add.ptr378 = getelementptr i8, ptr %call.i.i, i32 832
  %114 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %action.i, align 4
  %and381 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and381)
  %tobool382.not = icmp eq i32 %and381, 0
  br i1 %tobool382.not, label %do.body257.if.end540_crit_edge, label %if.then383

do.body257.if.end540_crit_edge:                   ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end540

if.then383:                                       ; preds = %do.body257
  %children = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %116 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %116)
  %dst.0935 = load ptr, ptr %children, align 4
  %cmp.not936 = icmp eq ptr %dst.0935, %children
  br i1 %cmp.not936, label %if.then383.do.body527_crit_edge, label %if.then383.for.body_crit_edge

if.then383.for.body_crit_edge:                    ; preds = %if.then383
  br label %for.body

if.then383.do.body527_crit_edge:                  ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body527

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then383.for.body_crit_edge
  %dst.0939 = phi ptr [ %dst.0, %cleanup.for.body_crit_edge ], [ %dst.0935, %if.then383.for.body_crit_edge ]
  %in_dests.0938 = phi ptr [ %in_dests.1, %cleanup.for.body_crit_edge ], [ %add.ptr378, %if.then383.for.body_crit_edge ]
  %list_size.0937 = phi i32 [ %list_size.1, %cleanup.for.body_crit_edge ], [ 0, %if.then383.for.body_crit_edge ]
  %dest_attr = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2
  %117 = ptrtoint ptr %dest_attr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dest_attr, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %118, label %sw.default [
    i32 256, label %for.body.cleanup_crit_edge
    i32 257, label %sw.bb
    i32 1, label %sw.bb399
    i32 8, label %for.body.do.body403_crit_edge
    i32 0, label %for.body.do.body403_crit_edge948
    i32 6, label %sw.bb490
  ]

for.body.do.body403_crit_edge948:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body403

for.body.do.body403_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body403

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %120 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  br label %do.body493

sw.bb399:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %123 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %id401 = getelementptr inbounds %struct.mlx5_flow_table, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %id401 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %id401, align 4
  br label %do.body493

do.body403:                                       ; preds = %for.body.do.body403_crit_edge, %for.body.do.body403_crit_edge948
  %flags406 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1, i32 0, i32 3
  %128 = ptrtoint ptr %flags406 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags406, align 4
  %add.ptr417 = getelementptr i32, ptr %in_dests.0938, i32 1
  %130 = ptrtoint ptr %add.ptr417 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr417, align 4
  %and418 = and i32 %131, 2147483647
  %and419 = zext i8 %129 to i32
  %shl420 = shl i32 %and419, 31
  %or421 = or i32 %and418, %shl420
  store i32 %or421, ptr %add.ptr417, align 4
  %vhca_id = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1, i32 0, i32 1
  %132 = ptrtoint ptr %vhca_id to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vhca_id, align 2
  %conv428 = zext i16 %133 to i32
  %and433 = and i32 %or421, -65536
  %or436 = or i32 %and433, %conv428
  store i32 %or436, ptr %add.ptr417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %118)
  %cmp440 = icmp eq i32 %118, 8
  br i1 %cmp440, label %do.body403.do.body493_crit_edge, label %if.end443

do.body403.do.body493_crit_edge:                  ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body493

if.end443:                                        ; preds = %do.body403
  %134 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %134, align 4
  %conv445 = zext i16 %136 to i32
  br i1 %tobool1.not, label %if.end443.do.body493_crit_edge, label %land.lhs.true

if.end443.do.body493_crit_edge:                   ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body493

land.lhs.true:                                    ; preds = %if.end443
  %pkt_reformat449 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1, i32 0, i32 2
  %137 = ptrtoint ptr %pkt_reformat449 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pkt_reformat449, align 4
  %tobool450.not = icmp eq ptr %138, null
  br i1 %tobool450.not, label %land.lhs.true.do.body493_crit_edge, label %do.body452

land.lhs.true.do.body493_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body493

do.body452:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %flags406 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %flags406, align 4
  %141 = lshr i8 %140, 1
  %and467 = and i32 %or436, -1073741825
  %142 = and i8 %141, 1
  %and468 = zext i8 %142 to i32
  %shl469 = shl nuw nsw i32 %and468, 30
  %or470 = or i32 %shl469, %and467
  %143 = ptrtoint ptr %add.ptr417 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or470, ptr %add.ptr417, align 4
  %144 = ptrtoint ptr %pkt_reformat449 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pkt_reformat449, align 4
  %146 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %145, i32 0, i32 2
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %add.ptr481 = getelementptr i32, ptr %in_dests.0938, i32 2
  %149 = ptrtoint ptr %add.ptr481 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %add.ptr481, align 4
  br label %do.body493

sw.bb490:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %150 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 4
  br label %do.body493

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %153 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.0939, i32 0, i32 2, i32 1
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  br label %do.body493

do.body493:                                       ; preds = %sw.default, %sw.bb490, %do.body452, %land.lhs.true.do.body493_crit_edge, %if.end443.do.body493_crit_edge, %do.body403.do.body493_crit_edge, %sw.bb399, %sw.bb
  %type392.0 = phi i32 [ %118, %sw.default ], [ 6, %sw.bb490 ], [ %118, %do.body452 ], [ %118, %land.lhs.true.do.body493_crit_edge ], [ %118, %if.end443.do.body493_crit_edge ], [ 1, %sw.bb399 ], [ 1, %sw.bb ], [ 8, %do.body403.do.body493_crit_edge ]
  %id391.0 = phi i32 [ %155, %sw.default ], [ %152, %sw.bb490 ], [ %conv445, %do.body452 ], [ %conv445, %land.lhs.true.do.body493_crit_edge ], [ %conv445, %if.end443.do.body493_crit_edge ], [ %127, %sw.bb399 ], [ %122, %sw.bb ], [ 0, %do.body403.do.body493_crit_edge ]
  %shl501 = shl i32 %type392.0, 24
  %and513 = and i32 %id391.0, 16777215
  %or515 = or i32 %and513, %shl501
  %156 = ptrtoint ptr %in_dests.0938 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or515, ptr %in_dests.0938, align 4
  %add.ptr519 = getelementptr i8, ptr %in_dests.0938, i32 %.
  %inc = add i32 %list_size.0937, 1
  br label %cleanup

cleanup:                                          ; preds = %do.body493, %for.body.cleanup_crit_edge
  %list_size.1 = phi i32 [ %inc, %do.body493 ], [ %list_size.0937, %for.body.cleanup_crit_edge ]
  %in_dests.1 = phi ptr [ %add.ptr519, %do.body493 ], [ %in_dests.0938, %for.body.cleanup_crit_edge ]
  %157 = ptrtoint ptr %dst.0939 to i32
  call void @__asan_load4_noabort(i32 %157)
  %dst.0 = load ptr, ptr %dst.0939, align 4
  %cmp.not = icmp eq ptr %dst.0, %children
  br i1 %cmp.not, label %cleanup.do.body527_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.do.body527_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body527

do.body527:                                       ; preds = %cleanup.do.body527_crit_edge, %if.then383.do.body527_crit_edge
  %list_size.0.lcssa = phi i32 [ 0, %if.then383.do.body527_crit_edge ], [ %list_size.1, %cleanup.do.body527_crit_edge ]
  %in_dests.0.lcssa = phi ptr [ %add.ptr378, %if.then383.do.body527_crit_edge ], [ %in_dests.1, %cleanup.do.body527_crit_edge ]
  %158 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr160, align 4
  %and533 = and i32 %159, -16777216
  %and534 = and i32 %list_size.0.lcssa, 16777215
  %or536 = or i32 %and533, %and534
  store i32 %or536, ptr %add.ptr160, align 4
  br label %if.end540

if.end540:                                        ; preds = %do.body527, %do.body257.if.end540_crit_edge
  %in_dests.2 = phi ptr [ %in_dests.0.lcssa, %do.body527 ], [ %add.ptr378, %do.body257.if.end540_crit_edge ]
  %160 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %action.i, align 4
  %and543 = and i32 %161, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and543)
  %tobool544.not = icmp eq i32 %and543, 0
  br i1 %tobool544.not, label %if.end540.if.end756_crit_edge, label %if.then545

if.end540.if.end756_crit_edge:                    ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end756

if.then545:                                       ; preds = %if.end540
  %162 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %type, align 4
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %163, label %if.then545.cond.end685_crit_edge [
    i32 0, label %cond.true
    i32 1, label %cond.true555
    i32 2, label %cond.true568
    i32 3, label %cond.true581
    i32 4, label %cond.true594
    i32 5, label %cond.true607
    i32 6, label %cond.true620
    i32 7, label %cond.true633
    i32 8, label %cond.true646
    i32 9, label %cond.true659
  ]

if.then545.cond.end685_crit_edge:                 ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end685

cond.true:                                        ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx549 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %165 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx549, align 4
  %add.ptr550 = getelementptr i32, ptr %166, i32 20
  br label %cond.end685.sink.split

cond.true555:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx558 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %167 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx558, align 4
  %add.ptr561 = getelementptr i32, ptr %168, i32 68
  br label %cond.end685.sink.split

cond.true568:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx571 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %169 = ptrtoint ptr %arrayidx571 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx571, align 8
  %add.ptr574 = getelementptr i32, ptr %170, i32 52
  br label %cond.end685.sink.split

cond.true581:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx584 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %171 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx584, align 8
  %add.ptr587 = getelementptr i32, ptr %172, i32 36
  br label %cond.end685.sink.split

cond.true594:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx597 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %173 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx597, align 8
  %add.ptr600 = getelementptr i32, ptr %174, i32 20
  br label %cond.end685.sink.split

cond.true607:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx610 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %175 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx610, align 4
  %add.ptr613 = getelementptr i32, ptr %176, i32 52
  br label %cond.end685.sink.split

cond.true620:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx623 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %177 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx623, align 4
  %add.ptr626 = getelementptr i32, ptr %178, i32 100
  br label %cond.end685.sink.split

cond.true633:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx636 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %179 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx636, align 4
  %add.ptr639 = getelementptr i32, ptr %180, i32 36
  br label %cond.end685.sink.split

cond.true646:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx649 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %181 = ptrtoint ptr %arrayidx649 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx649, align 4
  %add.ptr652 = getelementptr i32, ptr %182, i32 84
  br label %cond.end685.sink.split

cond.true659:                                     ; preds = %if.then545
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx662 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 37
  %183 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx662, align 4
  %add.ptr665 = getelementptr i32, ptr %184, i32 20
  br label %cond.end685.sink.split

cond.end685.sink.split:                           ; preds = %cond.true659, %cond.true646, %cond.true633, %cond.true620, %cond.true607, %cond.true594, %cond.true581, %cond.true568, %cond.true555, %cond.true
  %add.ptr561.sink = phi ptr [ %add.ptr561, %cond.true555 ], [ %add.ptr587, %cond.true581 ], [ %add.ptr613, %cond.true607 ], [ %add.ptr639, %cond.true633 ], [ %add.ptr665, %cond.true659 ], [ %add.ptr652, %cond.true646 ], [ %add.ptr626, %cond.true620 ], [ %add.ptr600, %cond.true594 ], [ %add.ptr574, %cond.true568 ], [ %add.ptr550, %cond.true ]
  %185 = ptrtoint ptr %add.ptr561.sink to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr561.sink, align 4
  %shr562 = lshr i32 %186, 8
  %and563 = and i32 %shr562, 255
  br label %cond.end685

cond.end685:                                      ; preds = %cond.end685.sink.split, %if.then545.cond.end685_crit_edge
  %cond686 = phi i32 [ 0, %if.then545.cond.end685_crit_edge ], [ %and563, %cond.end685.sink.split ]
  %shl687 = shl nuw i32 1, %cond686
  %children691 = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 1
  %187 = ptrtoint ptr %children691 to i32
  call void @__asan_load4_noabort(i32 %187)
  %dst.1941 = load ptr, ptr %children691, align 4
  %cmp700.not942 = icmp eq ptr %dst.1941, %children691
  br i1 %cmp700.not942, label %cond.end685.for.end734_crit_edge, label %cond.end685.for.body704_crit_edge

cond.end685.for.body704_crit_edge:                ; preds = %cond.end685
  br label %for.body704

cond.end685.for.end734_crit_edge:                 ; preds = %cond.end685
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end734

for.body704:                                      ; preds = %for.inc727.for.body704_crit_edge, %cond.end685.for.body704_crit_edge
  %dst.1945 = phi ptr [ %dst.1, %for.inc727.for.body704_crit_edge ], [ %dst.1941, %cond.end685.for.body704_crit_edge ]
  %list_size688.0944 = phi i32 [ %list_size688.1, %for.inc727.for.body704_crit_edge ], [ 0, %cond.end685.for.body704_crit_edge ]
  %in_dests.3943 = phi ptr [ %in_dests.4, %for.inc727.for.body704_crit_edge ], [ %in_dests.2, %cond.end685.for.body704_crit_edge ]
  %dest_attr705 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1945, i32 0, i32 2
  %188 = ptrtoint ptr %dest_attr705 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dest_attr705, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %189)
  %cmp707.not = icmp eq i32 %189, 256
  br i1 %cmp707.not, label %do.body711, label %for.body704.for.inc727_crit_edge

for.body704.for.inc727_crit_edge:                 ; preds = %for.body704
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc727

do.body711:                                       ; preds = %for.body704
  call void @__sanitizer_cov_trace_pc() #11
  %190 = getelementptr inbounds %struct.mlx5_flow_rule, ptr %dst.1945, i32 0, i32 2, i32 1
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %193 = ptrtoint ptr %in_dests.3943 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %in_dests.3943, align 4
  %add.ptr725 = getelementptr i8, ptr %in_dests.3943, i32 %.
  %inc726 = add i32 %list_size688.0944, 1
  br label %for.inc727

for.inc727:                                       ; preds = %do.body711, %for.body704.for.inc727_crit_edge
  %in_dests.4 = phi ptr [ %in_dests.3943, %for.body704.for.inc727_crit_edge ], [ %add.ptr725, %do.body711 ]
  %list_size688.1 = phi i32 [ %list_size688.0944, %for.body704.for.inc727_crit_edge ], [ %inc726, %do.body711 ]
  %194 = ptrtoint ptr %dst.1945 to i32
  call void @__asan_load4_noabort(i32 %194)
  %dst.1 = load ptr, ptr %dst.1945, align 4
  %cmp700.not = icmp eq ptr %dst.1, %children691
  br i1 %cmp700.not, label %for.inc727.for.end734_crit_edge, label %for.inc727.for.body704_crit_edge

for.inc727.for.body704_crit_edge:                 ; preds = %for.inc727
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body704

for.inc727.for.end734_crit_edge:                  ; preds = %for.inc727
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end734

for.end734:                                       ; preds = %for.inc727.for.end734_crit_edge, %cond.end685.for.end734_crit_edge
  %list_size688.0.lcssa = phi i32 [ 0, %cond.end685.for.end734_crit_edge ], [ %list_size688.1, %for.inc727.for.end734_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %list_size688.0.lcssa, i32 %shl687)
  %cmp735 = icmp sgt i32 %list_size688.0.lcssa, %shl687
  br i1 %cmp735, label %for.end734.err_out_crit_edge, label %cleanup752.thread

for.end734.err_out_crit_edge:                     ; preds = %for.end734
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

cleanup752.thread:                                ; preds = %for.end734
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr744 = getelementptr i8, ptr %call.i.i, i32 84
  %195 = ptrtoint ptr %add.ptr744 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr744, align 4
  %and745 = and i32 %196, -16777216
  %and746 = and i32 %list_size688.0.lcssa, 16777215
  %or748 = or i32 %and745, %and746
  store i32 %or748, ptr %add.ptr744, align 4
  br label %if.end756

if.end756:                                        ; preds = %cleanup752.thread, %if.end540.if.end756_crit_edge
  %call758 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %add, ptr noundef nonnull %out, i32 noundef 16) #9
  br label %err_out

err_out:                                          ; preds = %if.end756, %for.end734.err_out_crit_edge
  %err.1 = phi i32 [ %call758, %if.end756 ], [ -22, %for.end734.err_out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup759

cleanup759:                                       ; preds = %err_out, %if.end.cleanup759_crit_edge, %do.end46.i, %do.end.i
  %retval.0 = phi i32 [ %err.1, %err_out ], [ -12, %if.end.cleanup759_crit_edge ], [ -95, %do.end.i ], [ -95, %do.end46.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_lag_get_peer_mdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlx5_cmd_stub_create_flow_table(ptr nocapture noundef readnone %ns, ptr nocapture noundef writeonly %ft, i32 noundef %size, ptr nocapture noundef readnone %next_ft) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cond.end21_crit_edge, label %cond.false16

entry.cond.end21_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end21

cond.false16:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i30 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i30)
  %tobool.not.i.i.i = icmp eq i32 %sub.i30, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i30, i1 true) #9, !range !36
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false16, %entry.cond.end21_crit_edge
  %cond22 = phi i32 [ %shl.i, %cond.false16 ], [ 1, %entry.cond.end21_crit_edge ]
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table, ptr %ft, i32 0, i32 4
  %1 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond22, ptr %max_fte, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_destroy_flow_table(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_modify_flow_table(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %next_ft) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_create_flow_group(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %in, ptr nocapture noundef readnone %fg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_destroy_flow_group(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %fg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_create_fte(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %group, ptr nocapture noundef readnone %fte) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_update_fte(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %group, i32 noundef %modify_mask, ptr nocapture noundef readnone %fte) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_delete_fte(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, ptr nocapture noundef readnone %fte) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_update_root_ft(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %ft, i32 noundef %underlay_qpn, i1 noundef zeroext %disconnect) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_packet_reformat_alloc(ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %params, i32 noundef %namespace, ptr nocapture noundef readnone %pkt_reformat) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_cmd_stub_packet_reformat_dealloc(ptr nocapture noundef %ns, ptr nocapture noundef %pkt_reformat) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_modify_header_alloc(ptr nocapture noundef readnone %ns, i8 noundef zeroext %namespace, i8 noundef zeroext %num_actions, ptr nocapture noundef readnone %modify_actions, ptr nocapture noundef readnone %modify_hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5_cmd_stub_modify_header_dealloc(ptr nocapture noundef %ns, ptr nocapture noundef %modify_hdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_create_match_definer(ptr nocapture noundef readnone %ns, i16 noundef zeroext %format_id, ptr nocapture noundef readnone %match_mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_cmd_stub_destroy_match_definer(ptr nocapture noundef readnone %ns, i32 noundef %definer_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @mlx5_flow_cmds, !1, !"mlx5_flow_cmds", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 974, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 464, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5_set_extended_dest._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlx5_set_extended_dest._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 468, i32 3}
!12 = !{ptr @mlx5_set_extended_dest._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5_set_extended_dest._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 799, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5_cmd_packet_reformat_alloc._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx5_cmd_packet_reformat_alloc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 894, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_cmd_modify_header_alloc._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_cmd_modify_header_alloc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mlx5_flow_cmd_stubs, !25, !"mlx5_flow_cmd_stubs", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_cmd.c", i32 995, i32 36}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i32 0, i32 33}
