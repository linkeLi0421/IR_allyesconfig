; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_tc_attr_to_reg_mapping = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_fs_chains = type { ptr, %struct.rhashtable, %struct.rhashtable, %struct.mutex, ptr, ptr, ptr, i32, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.174, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.148] }
%struct.anon.148 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.174 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.145, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.147, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.140, i32 }
%union.anon.140 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.144, ptr }
%struct.anon.144 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.145 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.147 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.mlx5_flow_destination = type { i32, %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.184, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.184 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_mapped_obj = type { i32, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { i32, i32, i32, i32 }
%struct.prio_key = type { i32, i32, i32 }
%struct.fs_chain = type { %struct.rhash_head, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.139, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.139 = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.prio = type { %struct.rhash_head, %struct.list_head, %struct.prio_key, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
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
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.208 }
%struct.anon.208 = type { i32, i32 }
%struct.mlx5_chains_attr = type { i32, i32, i32, i32, ptr, ptr }

@prio_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 12, i16 12, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx5_chains_put_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't find table: (chain: %d prio: %d level: %d)\00", [44 x i8] zeroinitializer }, align 32
@mlx5_chains_create_global_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s:%d:(pid %d): Couldn't create global flow table, ignore_flow_level not supported.\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_chains_create_global_table\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_chains_create_global_table._entry_ptr = internal global ptr @mlx5_chains_create_global_table._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@chain_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx5e_tc_attr_to_reg_mappings = external dso_local local_unnamed_addr global [0 x %struct.mlx5e_tc_attr_to_reg_mapping], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_chains_create_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s:%d:(pid %d): Failed to create chains table err %d (chain: %d, prio: %d, level: %d, size: %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_chains_create_table\00", [39 x i8] zeroinitializer }, align 32
@mlx5_chains_create_table._entry_ptr = internal global ptr @mlx5_chains_create_table._entry, section ".printk_index", align 4
@mlx5_chains_init.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_chains_init\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s:%d:(pid %d): Init flow table chains, max counters(%d), groups(%d), max flow table size(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_chains_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str, i32 745, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Supported tc offload range - chains: %u, prios: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_chains_init._entry_ptr = internal global ptr @mlx5_chains_init._entry, section ".printk_index", align 4
@mlx5_chains_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&chains_lock(chains_priv)\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"prio_params\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 82, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 676, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 696, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 594, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"chain_params\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 75, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 755, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 203, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 732, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 743, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 755, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @mlx5_chains_create_global_table._entry, ptr @mlx5_chains_create_global_table._entry_ptr, ptr @mlx5_chains_create_table._entry, ptr @mlx5_chains_create_table._entry_ptr, ptr @mlx5_chains_init._entry, ptr @mlx5_chains_init._entry_ptr, ptr @prio_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @chain_params, ptr @.str.13, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mlx5_chains_init.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prio_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_chains_create_global_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chain_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_chains_create_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_chains_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_chains_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_chains_prios_supported(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_chains_ignore_flow_level_supported(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_chains_backwards_supported(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %3 = icmp eq i32 %2, 3
  ret i1 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_chains_get_chain_range(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i6 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.i7.not = icmp eq i32 %and.i6, 0
  %. = select i1 %tobool.i7.not, i32 3, i32 -2
  %retval.0 = select i1 %tobool.i.not, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_chains_get_nf_ft_chain(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i6.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.i7.not.i = icmp eq i32 %and.i6.i, 0
  %..i.op = select i1 %tobool.i7.not.i, i32 4, i32 -1
  %add = select i1 %tobool.i.not.i, i32 2, i32 %..i.op
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_chains_get_prio_range(ptr nocapture noundef readonly %chains) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chains, align 4
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  %spec.select = select i1 %cmp.not, i32 16, i32 1
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5_chains_set_end_ft(ptr nocapture noundef writeonly %chains, ptr noundef %ft) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_end_ft = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 5
  %0 = ptrtoint ptr %tc_end_ft to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ft, ptr %tc_end_ft, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_chains_get_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %level) local_unnamed_addr #3 align 64 {
entry:
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %act.i.i = alloca %struct.mlx5_flow_act, align 4
  %mapped_obj.i161.i.i.i.i = alloca %struct.mlx5_mapped_obj, align 4
  %mapped_obj.i.i.i.i.i = alloca %struct.mlx5_mapped_obj, align 4
  %modact.i.i.i.i = alloca [8 x i8], align 8
  %index.i.i.i.i = alloca i32, align 4
  %chain.addr.i.i = alloca i32, align 4
  %key = alloca %struct.prio_key, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key) #13
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key, align 4, !annotation !81
  %1 = getelementptr inbounds %struct.prio_key, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !81
  %3 = getelementptr inbounds %struct.prio_key, ptr %key, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !81
  %flags.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i6.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.i7.not.i = icmp eq i32 %and.i6.i, 0
  %..i = select i1 %tobool.i7.not.i, i32 3, i32 -2
  %retval.0.i = select i1 %tobool.i.not.i, i32 1, i32 %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %chain)
  %cmp = icmp ult i32 %retval.0.i, %chain
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %..i.op.i = select i1 %tobool.i7.not.i, i32 4, i32 -1
  %add.i = select i1 %tobool.i.not.i, i32 2, i32 %..i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %chain)
  %cmp2.not = icmp eq i32 %add.i, %chain
  br i1 %cmp2.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  br i1 %tobool.i7.not.i, label %if.end.i, label %lor.lhs.false.for.cond.preheader_crit_edge

lor.lhs.false.for.cond.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end.i:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chains, align 4
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %8, i32 0, i32 17, i32 28
  %9 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eswitch.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge, label %lor.lhs.false.i

if.end.i.mlx5_chains_get_prio_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_get_prio_range.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 2
  %spec.select.i = select i1 %cmp.not.i, i32 16, i32 1
  br label %mlx5_chains_get_prio_range.exit

mlx5_chains_get_prio_range.exit:                  ; preds = %lor.lhs.false.i, %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge
  %retval.0.i73 = phi i32 [ 1, %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i73, i32 %prio)
  %cmp4 = icmp ult i32 %retval.0.i73, %prio
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cmp7 = icmp ugt i32 %level, 2
  %or.cond = or i1 %cmp4, %cmp7
  br i1 %or.cond, label %mlx5_chains_get_prio_range.exit.cleanup_crit_edge, label %mlx5_chains_get_prio_range.exit.for.cond.preheader_crit_edge

mlx5_chains_get_prio_range.exit.for.cond.preheader_crit_edge: ; preds = %mlx5_chains_get_prio_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

mlx5_chains_get_prio_range.exit.cleanup_crit_edge: ; preds = %mlx5_chains_get_prio_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %mlx5_chains_get_prio_range.exit.for.cond.preheader_crit_edge, %lor.lhs.false.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp994.not = icmp eq i32 %level, 0
  br i1 %cmp994.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %l.095 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call10 = tail call ptr @mlx5_chains_get_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %l.095)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.err_get_prevs_crit_edge, label %for.inc

for.body.err_get_prevs_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_get_prevs

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %l.095, 1
  %exitcond.not = icmp eq i32 %inc, %level
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %chain, ptr %key, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %prio, ptr %1, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %level, ptr %3, align 4
  %lock = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %prios_ht = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 2
  %call18 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %prios_ht, ptr noundef nonnull %key, [7 x i32] [i32 12, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %if.then19, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then19:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chain.addr.i.i) #13
  %16 = ptrtoint ptr %chain.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %chain, ptr %chain.addr.i.i, align 4
  %chains_ht.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 1
  %call.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %chains_ht.i.i, ptr noundef nonnull %chain.addr.i.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then19.if.end4.i.i_crit_edge

if.then19.if.end4.i.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then19
  %17 = ptrtoint ptr %chain.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chain.addr.i.i, align 4
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 36, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %mlx5_chains_create_prio.exit.thread, label %if.end.i.i.i

mlx5_chains_create_prio.exit.thread:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chain.addr.i.i) #13
  br label %err_create_prio

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %chains2.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %chains2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chains, ptr %chains2.i.i.i, align 4
  %chain3.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %chain3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %chain3.i.i.i, align 4
  %prios_list.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %prios_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %prios_list.i.i.i, ptr %prios_list.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %prios_list.i.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chains, align 4
  %eswitch.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %24, i32 0, i32 17, i32 28
  %25 = ptrtoint ptr %eswitch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eswitch.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %modact.i.i.i.i) #13
  %27 = ptrtoint ptr %modact.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %modact.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i.i.i.i) #13
  %28 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %index.i.i.i.i, align 4, !annotation !81
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  %and.i6.i.i.i.i.i.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i.i.i.i.i)
  %tobool.i7.not.i.i.i.i.i.i = icmp eq i32 %and.i6.i.i.i.i.i.i, 0
  %..i.op.i.i.i.i.i = select i1 %tobool.i7.not.i.i.i.i.i.i, i32 4, i32 -1
  %add.i.i.i.i.i = select i1 %tobool.i.not.i.i.i.i.i.i, i32 2, i32 %..i.op.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %18)
  %cmp.i.i.i.i = icmp ne i32 %add.i.i.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.i.i.i.i.i = icmp ne i32 %and.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i, i1 %tobool.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.i.create_chain_restore.exit.thread.i.i.i_crit_edge

if.end.i.i.i.create_chain_restore.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_chain_restore.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %chains_mapping.i.i.i.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 6
  %31 = ptrtoint ptr %chains_mapping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chains_mapping.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mapped_obj.i.i.i.i.i) #13
  %33 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj.i.i.i.i.i, i32 0, i32 1
  %34 = call ptr @memset(ptr %mapped_obj.i.i.i.i.i, i32 0, i32 20)
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %18, ptr %33, align 4
  %call.i.i31.i.i.i = call i32 @mapping_add(ptr noundef %32, ptr noundef nonnull %mapped_obj.i.i.i.i.i, ptr noundef nonnull %index.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mapped_obj.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i31.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.i.i.i, label %if.end.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge

if.end.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_chain_restore.exit.thread40.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %36 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp9.i.i.i.i, label %if.then10.i.i.i.i, label %if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge

if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  %38 = ptrtoint ptr %chain3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chain3.i.i.i, align 4
  %40 = ptrtoint ptr %chains_mapping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chains_mapping.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mapped_obj.i161.i.i.i.i) #13
  %42 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj.i161.i.i.i.i, i32 0, i32 1
  %43 = call ptr @memset(ptr %mapped_obj.i161.i.i.i.i, i32 0, i32 20)
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %42, align 4
  %call.i163.i.i.i.i = call i32 @mapping_add(ptr noundef %41, ptr noundef nonnull %mapped_obj.i161.i.i.i.i, ptr noundef nonnull %index.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mapped_obj.i161.i.i.i.i) #13
  %45 = ptrtoint ptr %chains_mapping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chains_mapping.i.i.i.i.i, align 4
  %call13.i.i.i.i = call i32 @mapping_remove(ptr noundef %46, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163.i.i.i.i)
  %tobool14.not.i.i.i.i = icmp eq i32 %call.i163.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i.i, label %if.then10.i.i.i.i.if.end17.i.i.i.i_crit_edge, label %if.then10.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge

if.then10.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge: ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_chain_restore.exit.thread40.i.i.i

if.then10.i.i.i.i.if.end17.i.i.i.i_crit_edge:     ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i.i.i

if.end17.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i.if.end17.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.end17.i.i.i.i_crit_edge
  %47 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index.i.i.i.i, align 4
  %id.i.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %id.i.i.i.i, align 4
  %ns.i.i.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 7
  %50 = ptrtoint ptr %ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ns.i.i.i.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %if.end17.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge [
    i32 8, label %if.then19.i.i.i.i
    i32 4, label %if.end17.i.i.i.i.do.body.i.i.i.i_crit_edge
  ]

if.end17.i.i.i.i.do.body.i.i.i.i_crit_edge:       ; preds = %if.end17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

if.end17.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge: ; preds = %if.end17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_chain_restore.exit.i.i.i

if.then19.i.i.i.i:                                ; preds = %if.end17.i.i.i.i
  %call21.i.i.i.i = call ptr @esw_add_restore_rule(ptr noundef %26, i32 noundef %48) #13
  %restore_rule.i.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %restore_rule.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call21.i.i.i.i, ptr %restore_rule.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %call21.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.then24.i.i.i.i, label %if.then19.i.i.i.i.do.body.i.i.i.i_crit_edge

if.then19.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %if.then19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

if.then24.i.i.i.i:                                ; preds = %if.then19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %call21.i.i.i.i to i32
  br label %create_chain_restore.exit.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then19.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end17.i.i.i.i.do.body.i.i.i.i_crit_edge
  %chain_to_reg.0.i.i.i.i = phi i32 [ 0, %if.then19.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 9, %if.end17.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %55 = ptrtoint ptr %modact.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %modact.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr [0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 %chain_to_reg.0.i.i.i.i
  %57 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %or.i.i.i.i = and i32 %56, 57568
  %and48.i.i.i.i = shl i32 %58, 16
  %moffset.i.i.i.i = getelementptr [0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 %chain_to_reg.0.i.i.i.i, i32 1
  %59 = ptrtoint ptr %moffset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %moffset.i.i.i.i, align 4
  %and64.i.i.i.i = shl i32 %60, 8
  %shl65.i.i.i.i = and i32 %and64.i.i.i.i, 7936
  %mlen.i.i.i.i = getelementptr [0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 %chain_to_reg.0.i.i.i.i, i32 2
  %61 = ptrtoint ptr %mlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mlen.i.i.i.i, align 4
  %phi.bo.i.i.i.i = and i32 %62, 31
  %and48.masked.i.i.i.i = and i32 %and48.i.i.i.i, 268369920
  %and47.i.i.i.i = or i32 %or.i.i.i.i, %and48.masked.i.i.i.i
  %or50.masked.i.i.i.i = or i32 %and47.i.i.i.i, %shl65.i.i.i.i
  %and82.i.i.i.i = or i32 %or50.masked.i.i.i.i, %phi.bo.i.i.i.i
  %or85.i.i.i.i = or i32 %and82.i.i.i.i, 268435456
  store i32 %or85.i.i.i.i, ptr %modact.i.i.i.i, align 8
  %63 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id.i.i.i.i, align 4
  %add.ptr97.i.i.i.i = getelementptr inbounds i32, ptr %modact.i.i.i.i, i32 1
  %65 = ptrtoint ptr %add.ptr97.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %add.ptr97.i.i.i.i, align 4
  %66 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chains, align 4
  %68 = ptrtoint ptr %ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ns.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %69 to i8
  %call109.i.i.i.i = call ptr @mlx5_modify_header_alloc(ptr noundef %67, i8 noundef zeroext %conv.i.i.i.i, i8 noundef zeroext 1, ptr noundef nonnull %modact.i.i.i.i) #13
  %cmp.i164.i.i.i.i = icmp ugt ptr %call109.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164.i.i.i.i, label %if.then111.i.i.i.i, label %if.end113.i.i.i.i

if.then111.i.i.i.i:                               ; preds = %do.body.i.i.i.i
  %70 = ptrtoint ptr %call109.i.i.i.i to i32
  %restore_rule114.i.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %restore_rule114.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %restore_rule114.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %72, null
  %cmp.i165.i.i.i.i = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %cmp.i165.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %if.then111.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge, label %if.then116.i.i.i.i

if.then111.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge: ; preds = %if.then111.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %create_chain_restore.exit.i.i.i

if.end113.i.i.i.i:                                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %miss_modify_hdr.i.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %miss_modify_hdr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call109.i.i.i.i, ptr %miss_modify_hdr.i.i.i.i, align 4
  br label %create_chain_restore.exit.thread.i.i.i

if.then116.i.i.i.i:                               ; preds = %if.then111.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlx5_del_flow_rules(ptr noundef nonnull %72) #13
  br label %create_chain_restore.exit.i.i.i

create_chain_restore.exit.thread.i.i.i:           ; preds = %if.end113.i.i.i.i, %if.end.i.i.i.create_chain_restore.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %modact.i.i.i.i) #13
  %call8.i.i.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %chains_ht.i.i, ptr noundef nonnull %call.i.i.i.i.i, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %create_chain_restore.exit.thread.i.i.i.mlx5_chains_create_chain.exit.i.i_crit_edge, label %err_insert.i.i.i

create_chain_restore.exit.thread.i.i.i.mlx5_chains_create_chain.exit.i.i_crit_edge: ; preds = %create_chain_restore.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_create_chain.exit.i.i

create_chain_restore.exit.thread40.i.i.i:         ; preds = %if.then10.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge, %if.end.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ %call.i163.i.i.i.i, %if.then10.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge ], [ %call.i.i31.i.i.i, %if.end.i.i.i.i.create_chain_restore.exit.thread40.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %modact.i.i.i.i) #13
  br label %err_restore.i.i.i

create_chain_restore.exit.i.i.i:                  ; preds = %if.then116.i.i.i.i, %if.then111.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge, %if.then24.i.i.i.i, %if.end17.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge
  %err.0.i.i.i.i = phi i32 [ %54, %if.then24.i.i.i.i ], [ %70, %if.then111.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge ], [ %70, %if.then116.i.i.i.i ], [ -22, %if.end17.i.i.i.i.create_chain_restore.exit.i.i.i_crit_edge ]
  %74 = ptrtoint ptr %chains_mapping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chains_mapping.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i.i.i.i, align 4
  %call121.i.i.i.i = call i32 @mapping_remove(ptr noundef %75, i32 noundef %77) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %modact.i.i.i.i) #13
  br label %err_restore.i.i.i

err_insert.i.i.i:                                 ; preds = %create_chain_restore.exit.thread.i.i.i
  %78 = ptrtoint ptr %chains2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chains2.i.i.i, align 4
  %miss_modify_hdr.i32.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %miss_modify_hdr.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %miss_modify_hdr.i32.i.i.i, align 4
  %tobool.not.i33.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i33.i.i.i, label %err_insert.i.i.i.err_restore.i.i.i_crit_edge, label %if.end.i35.i.i.i

err_insert.i.i.i.err_restore.i.i.i_crit_edge:     ; preds = %err_insert.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_restore.i.i.i

if.end.i35.i.i.i:                                 ; preds = %err_insert.i.i.i
  %restore_rule.i34.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %restore_rule.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %restore_rule.i34.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %83, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i35.i.i.i.if.end5.i.i.i.i_crit_edge, label %if.then3.i.i.i.i

if.end.i35.i.i.i.if.end5.i.i.i.i_crit_edge:       ; preds = %if.end.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlx5_del_flow_rules(ptr noundef nonnull %83) #13
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i35.i.i.i.if.end5.i.i.i.i_crit_edge
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %79, align 4
  %86 = ptrtoint ptr %miss_modify_hdr.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %miss_modify_hdr.i32.i.i.i, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %85, ptr noundef %87) #13
  %chains_mapping.i.i.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %79, i32 0, i32 6
  %88 = ptrtoint ptr %chains_mapping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chains_mapping.i.i.i.i, align 4
  %id.i36.i.i.i = getelementptr inbounds %struct.fs_chain, ptr %call.i.i.i.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %id.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id.i36.i.i.i, align 4
  %call.i.i.i.i = call i32 @mapping_remove(ptr noundef %89, i32 noundef %91) #13
  br label %err_restore.i.i.i

err_restore.i.i.i:                                ; preds = %if.end5.i.i.i.i, %err_insert.i.i.i.err_restore.i.i.i_crit_edge, %create_chain_restore.exit.i.i.i, %create_chain_restore.exit.thread40.i.i.i
  %err.0.i.i.i = phi i32 [ %err.0.i.i.i.i, %create_chain_restore.exit.i.i.i ], [ %retval.0.i.ph.i.i.i, %create_chain_restore.exit.thread40.i.i.i ], [ %call8.i.i.i, %err_insert.i.i.i.err_restore.i.i.i_crit_edge ], [ %call8.i.i.i, %if.end5.i.i.i.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i) #13
  %92 = inttoptr i32 %err.0.i.i.i to ptr
  br label %mlx5_chains_create_chain.exit.i.i

mlx5_chains_create_chain.exit.i.i:                ; preds = %err_restore.i.i.i, %create_chain_restore.exit.thread.i.i.i.mlx5_chains_create_chain.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %92, %err_restore.i.i.i ], [ %call.i.i.i.i.i, %create_chain_restore.exit.thread.i.i.i.mlx5_chains_create_chain.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5_chains_create_chain.exit.i.i.mlx5_chains_get_chain.exit.i_crit_edge, label %mlx5_chains_create_chain.exit.i.i.if.end4.i.i_crit_edge

mlx5_chains_create_chain.exit.i.i.if.end4.i.i_crit_edge: ; preds = %mlx5_chains_create_chain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

mlx5_chains_create_chain.exit.i.i.mlx5_chains_get_chain.exit.i_crit_edge: ; preds = %mlx5_chains_create_chain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_get_chain.exit.i

if.end4.i.i:                                      ; preds = %mlx5_chains_create_chain.exit.i.i.if.end4.i.i_crit_edge, %if.then19.if.end4.i.i_crit_edge
  %chain_s.0.i.i = phi ptr [ %call.i.i, %if.then19.if.end4.i.i_crit_edge ], [ %retval.0.i.i.i, %mlx5_chains_create_chain.exit.i.i.if.end4.i.i_crit_edge ]
  %ref.i.i = getelementptr inbounds %struct.fs_chain, ptr %chain_s.0.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ref.i.i, align 4
  %inc.i.i = add i32 %94, 1
  store i32 %inc.i.i, ptr %ref.i.i, align 4
  br label %mlx5_chains_get_chain.exit.i

mlx5_chains_get_chain.exit.i:                     ; preds = %if.end4.i.i, %mlx5_chains_create_chain.exit.i.i.mlx5_chains_get_chain.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %chain_s.0.i.i, %if.end4.i.i ], [ %retval.0.i.i.i, %mlx5_chains_create_chain.exit.i.i.mlx5_chains_get_chain.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chain.addr.i.i) #13
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_chains_get_chain.exit.i.mlx5_chains_create_prio.exit_crit_edge, label %if.end.i79

mlx5_chains_get_chain.exit.i.mlx5_chains_create_prio.exit_crit_edge: ; preds = %mlx5_chains_get_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_create_prio.exit

if.end.i79:                                       ; preds = %mlx5_chains_get_chain.exit.i
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 48, i32 noundef 3520, i32 noundef -1) #16
  %call.i.i183.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i78 = icmp eq ptr %call.i.i.i, null
  %tobool5.not.i = icmp eq ptr %call.i.i183.i, null
  %or.cond.i = select i1 %tobool.not.i78, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %if.end.i79.err_alloc.i_crit_edge, label %if.end7.i

if.end.i79.err_alloc.i_crit_edge:                 ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc.i

if.end7.i:                                        ; preds = %if.end.i79
  %95 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and.i6.i.i.i = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i.i)
  %tobool.i7.not.i.i.i = icmp eq i32 %and.i6.i.i.i, 0
  %..i.op.i.i = select i1 %tobool.i7.not.i.i.i, i32 4, i32 -1
  %add.i.i = select i1 %tobool.i.not.i.i.i, i32 2, i32 %..i.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %chain)
  %cmp.i80 = icmp eq i32 %add.i.i, %chain
  %tc_default_ft.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 4
  %tc_end_ft.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 5
  %cond.in.i = select i1 %cmp.i80, ptr %tc_default_ft.i, ptr %tc_end_ft.i
  %97 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %prios_list.i = getelementptr inbounds %struct.fs_chain, ptr %retval.0.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %prios_list.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %pos.0204.i = load ptr, ptr %prios_list.i, align 4
  %cmp.i184.not205.i = icmp eq ptr %pos.0204.i, %prios_list.i
  br i1 %cmp.i184.not205.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %pos.0206.i = phi ptr [ %pos.0.i, %cleanup.i.for.body.i_crit_edge ], [ %pos.0204.i, %if.end7.i.for.body.i_crit_edge ]
  %prio12.i = getelementptr i8, ptr %pos.0206.i, i32 12
  %99 = ptrtoint ptr %prio12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %prio12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %prio)
  %cmp13.i = icmp ugt i32 %100, %prio
  br i1 %cmp13.i, label %for.body.i.cleanup.thread.i_crit_edge, label %lor.lhs.false14.i

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

lor.lhs.false14.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %prio)
  %cmp17.i = icmp eq i32 %100, %prio
  br i1 %cmp17.i, label %land.lhs.true.i, label %lor.lhs.false14.i.cleanup.i_crit_edge

lor.lhs.false14.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false14.i
  %level19.i = getelementptr i8, ptr %pos.0206.i, i32 16
  %101 = ptrtoint ptr %level19.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %level19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %level)
  %cmp20.i = icmp ugt i32 %102, %level
  br i1 %cmp20.i, label %land.lhs.true.i.cleanup.thread.i_crit_edge, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true.i.cleanup.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %land.lhs.true.i.cleanup.thread.i_crit_edge, %for.body.i.cleanup.thread.i_crit_edge
  %level23.i = getelementptr i8, ptr %pos.0206.i, i32 16
  %103 = ptrtoint ptr %level23.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %level23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp24.i = icmp eq i32 %104, 0
  %cond30.in.v.i = select i1 %cmp24.i, i32 28, i32 32
  %cond30.in.i = getelementptr i8, ptr %pos.0206.i, i32 %cond30.in.v.i
  %105 = ptrtoint ptr %cond30.in.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %cond30.i = load ptr, ptr %cond30.in.i, align 4
  br label %for.end.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %lor.lhs.false14.i.cleanup.i_crit_edge
  %106 = ptrtoint ptr %pos.0206.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %pos.0.i = load ptr, ptr %pos.0206.i, align 4
  %cmp.i184.not.i = icmp eq ptr %pos.0.i, %prios_list.i
  br i1 %cmp.i184.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %cleanup.thread.i, %if.end7.i.for.end.i_crit_edge
  %pos.0203.i = phi ptr [ %pos.0206.i, %cleanup.thread.i ], [ %prios_list.i, %if.end7.i.for.end.i_crit_edge ], [ %prios_list.i, %cleanup.i.for.end.i_crit_edge ]
  %next_ft.2.i = phi ptr [ %cond30.i, %cleanup.thread.i ], [ %cond.i, %if.end7.i.for.end.i_crit_edge ], [ %cond.i, %cleanup.i.for.end.i_crit_edge ]
  %call33.i = call fastcc ptr @mlx5_chains_create_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %level) #13
  %cmp.i185.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.i, label %if.then35.i, label %do.body.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %call33.i to i32
  br label %err_alloc.i

do.body.i:                                        ; preds = %for.end.i
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table, ptr %call33.i, i32 0, i32 4
  %108 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_fte.i, align 4
  %sub.i = add i32 %109, -2
  %add.ptr39.i = getelementptr i32, ptr %call.i.i183.i, i32 7
  %110 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.i, ptr %add.ptr39.i, align 4
  %111 = load i32, ptr %max_fte.i, align 4
  %sub47.i = add i32 %111, -1
  %add.ptr51.i = getelementptr i32, ptr %call.i.i183.i, i32 9
  %112 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub47.i, ptr %add.ptr51.i, align 4
  %call59.i = call ptr @mlx5_create_flow_group(ptr noundef %call33.i, ptr noundef nonnull %call.i.i183.i) #13
  %cmp.i186.i = icmp ugt ptr %call59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186.i, label %if.then61.i, label %if.end63.i

if.then61.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %call59.i to i32
  br label %err_group.i

if.end63.i:                                       ; preds = %do.body.i
  %chains1.i.i = getelementptr inbounds %struct.fs_chain, ptr %retval.0.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %chains1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chains1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #13
  %116 = getelementptr inbounds i8, ptr %dest.i.i, i32 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 0, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %act.i.i) #13
  %118 = getelementptr inbounds i8, ptr %act.i.i, i32 4
  %119 = call ptr @memset(ptr %118, i32 0, i32 32)
  %flags.i.i81 = getelementptr inbounds %struct.mlx5_flow_act, ptr %act.i.i, i32 0, i32 4
  %flags.i.i.i82 = getelementptr inbounds %struct.mlx5_fs_chains, ptr %115, i32 0, i32 9
  %120 = ptrtoint ptr %flags.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags.i.i.i82, align 4
  %and.i.i.i83 = and i32 %121, 2
  %122 = or i32 %and.i.i.i83, 1
  %123 = ptrtoint ptr %flags.i.i81 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %flags.i.i81, align 4
  %124 = ptrtoint ptr %act.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 4, ptr %act.i.i, align 4
  %125 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %dest.i.i, align 4
  %126 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %next_ft.2.i, ptr %126, align 4
  %tc_end_ft.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %115, i32 0, i32 5
  %128 = ptrtoint ptr %tc_end_ft.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tc_end_ft.i.i, align 4
  %cmp.i187.i = icmp eq ptr %129, %next_ft.2.i
  br i1 %cmp.i187.i, label %land.lhs.true.i.i, label %if.end63.i.mlx5_chains_add_miss_rule.exit.i_crit_edge

if.end63.i.mlx5_chains_add_miss_rule.exit.i_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_add_miss_rule.exit.i

land.lhs.true.i.i:                                ; preds = %if.end63.i
  %chain4.i.i = getelementptr inbounds %struct.fs_chain, ptr %retval.0.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %chain4.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %chain4.i.i, align 4
  %and.i.i.i.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i83)
  %tobool.i7.not.i.i.i.i = icmp eq i32 %and.i.i.i83, 0
  %..i.op.i.i.i = select i1 %tobool.i7.not.i.i.i.i, i32 4, i32 -1
  %add.i.i.i = select i1 %tobool.i.not.i.i.i.i, i32 2, i32 %..i.op.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %add.i.i.i)
  %cmp6.not.i.i = icmp ne i32 %131, %add.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i22.i.i = icmp ne i32 %and.i.i.i.i.i, 0
  %or.cond.i.i = select i1 %cmp6.not.i.i, i1 %tobool.i22.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.mlx5_chains_add_miss_rule.exit.i_crit_edge

land.lhs.true.i.i.mlx5_chains_add_miss_rule.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_add_miss_rule.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %miss_modify_hdr.i.i = getelementptr inbounds %struct.fs_chain, ptr %retval.0.i.i, i32 0, i32 7
  %132 = ptrtoint ptr %miss_modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %miss_modify_hdr.i.i, align 4
  %134 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %118, align 4
  %135 = ptrtoint ptr %act.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 68, ptr %act.i.i, align 4
  br label %mlx5_chains_add_miss_rule.exit.i

mlx5_chains_add_miss_rule.exit.i:                 ; preds = %if.then9.i.i, %land.lhs.true.i.i.mlx5_chains_add_miss_rule.exit.i_crit_edge, %if.end63.i.mlx5_chains_add_miss_rule.exit.i_crit_edge
  %call13.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %call33.i, ptr noundef null, ptr noundef nonnull %act.i.i, ptr noundef nonnull %dest.i.i, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %act.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #13
  %cmp.i188.i = icmp ugt ptr %call13.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188.i, label %if.then66.i, label %if.end68.i

if.then66.i:                                      ; preds = %mlx5_chains_add_miss_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %call13.i.i to i32
  br label %err_miss_rule.i

if.end68.i:                                       ; preds = %mlx5_chains_add_miss_rule.exit.i
  %miss_group69.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 7
  %137 = ptrtoint ptr %miss_group69.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call59.i, ptr %miss_group69.i, align 4
  %miss_rule70.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 8
  %138 = ptrtoint ptr %miss_rule70.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call13.i.i, ptr %miss_rule70.i, align 4
  %next_ft71.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 6
  %139 = ptrtoint ptr %next_ft71.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %next_ft.2.i, ptr %next_ft71.i, align 4
  %chain72.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 4
  %140 = ptrtoint ptr %chain72.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %retval.0.i.i, ptr %chain72.i, align 4
  %key73.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %key73.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %chain, ptr %key73.i, align 4
  %prio76.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %prio76.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %prio, ptr %prio76.i, align 4
  %level78.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %143 = ptrtoint ptr %level78.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %level, ptr %level78.i, align 4
  %ft79.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 5
  %144 = ptrtoint ptr %ft79.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call33.i, ptr %ft79.i, align 4
  %call80.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %prios_ht, ptr noundef nonnull %call.i.i.i, [7 x i32] [i32 12, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.end68.i.err_insert.i_crit_edge

if.end68.i.err_insert.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_insert.i

if.end83.i:                                       ; preds = %if.end68.i
  %list.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0203.i, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %call.i.i189.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %146, ptr noundef %148) #13
  br i1 %call.i.i189.i, label %if.end.i.i190.i, label %if.end83.i.list_add.exit.i_crit_edge

if.end83.i.list_add.exit.i_crit_edge:             ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i190.i:                                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %150 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %148, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %151 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %146, ptr %prev3.i.i.i, align 4
  %152 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %list.i, ptr %146, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i190.i, %if.end83.i.list_add.exit.i_crit_edge
  %call84.i = call fastcc i32 @mlx5_chains_update_prio_prevs(ptr noundef nonnull %call.i.i.i, ptr noundef %call33.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %err_update.i

if.end87.i:                                       ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef nonnull %call.i.i183.i) #13
  br label %mlx5_chains_create_prio.exit

err_update.i:                                     ; preds = %list_add.exit.i
  %call.i.i191.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i191.i, label %if.end.i.i192.i, label %err_update.i.list_del.exit.i_crit_edge

err_update.i.list_del.exit.i_crit_edge:           ; preds = %err_update.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i192.i:                                  ; preds = %err_update.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %prev.i.i.i, align 4
  %155 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %154, ptr %prev1.i.i.i.i, align 4
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %156, ptr %154, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i192.i, %err_update.i.list_del.exit.i_crit_edge
  %159 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.prio, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @rhashtable_remove_fast(ptr noundef %prios_ht, ptr noundef nonnull %call.i.i.i, [7 x i32] [i32 12, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  br label %err_insert.i

err_insert.i:                                     ; preds = %list_del.exit.i, %if.end68.i.err_insert.i_crit_edge
  %err.0.i = phi i32 [ %call80.i, %if.end68.i.err_insert.i_crit_edge ], [ %call84.i, %list_del.exit.i ]
  call void @mlx5_del_flow_rules(ptr noundef %call13.i.i) #13
  br label %err_miss_rule.i

err_miss_rule.i:                                  ; preds = %err_insert.i, %if.then66.i
  %err.1.i = phi i32 [ %136, %if.then66.i ], [ %err.0.i, %err_insert.i ]
  call void @mlx5_destroy_flow_group(ptr noundef %call59.i) #13
  br label %err_group.i

err_group.i:                                      ; preds = %err_miss_rule.i, %if.then61.i
  %err.2.i = phi i32 [ %113, %if.then61.i ], [ %err.1.i, %err_miss_rule.i ]
  %call92.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call33.i) #13
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_group.i, %if.then35.i, %if.end.i79.err_alloc.i_crit_edge
  %err.3.i = phi i32 [ %107, %if.then35.i ], [ %err.2.i, %err_group.i ], [ -12, %if.end.i79.err_alloc.i_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i.i) #13
  call void @kvfree(ptr noundef %call.i.i183.i) #13
  call fastcc void @mlx5_chains_put_chain(ptr noundef %retval.0.i.i) #13
  %161 = inttoptr i32 %err.3.i to ptr
  br label %mlx5_chains_create_prio.exit

mlx5_chains_create_prio.exit:                     ; preds = %err_alloc.i, %if.end87.i, %mlx5_chains_get_chain.exit.i.mlx5_chains_create_prio.exit_crit_edge
  %retval.0.i84 = phi ptr [ %161, %err_alloc.i ], [ %call.i.i.i, %if.end87.i ], [ %retval.0.i.i, %mlx5_chains_get_chain.exit.i.mlx5_chains_create_prio.exit_crit_edge ]
  %cmp.i85 = icmp ugt ptr %retval.0.i84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %mlx5_chains_create_prio.exit.err_create_prio_crit_edge, label %mlx5_chains_create_prio.exit.if.end24_crit_edge

mlx5_chains_create_prio.exit.if.end24_crit_edge:  ; preds = %mlx5_chains_create_prio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

mlx5_chains_create_prio.exit.err_create_prio_crit_edge: ; preds = %mlx5_chains_create_prio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_create_prio

if.end24:                                         ; preds = %mlx5_chains_create_prio.exit.if.end24_crit_edge, %for.end.if.end24_crit_edge
  %prio_s.0 = phi ptr [ %call18, %for.end.if.end24_crit_edge ], [ %retval.0.i84, %mlx5_chains_create_prio.exit.if.end24_crit_edge ]
  %ref = getelementptr inbounds %struct.prio, ptr %prio_s.0, i32 0, i32 3
  %162 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ref, align 4
  %inc25 = add i32 %163, 1
  store i32 %inc25, ptr %ref, align 4
  call void @mutex_unlock(ptr noundef %lock) #13
  %ft = getelementptr inbounds %struct.prio, ptr %prio_s.0, i32 0, i32 5
  %164 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ft, align 4
  br label %cleanup

err_create_prio:                                  ; preds = %mlx5_chains_create_prio.exit.err_create_prio_crit_edge, %mlx5_chains_create_prio.exit.thread
  %retval.0.i8490 = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_chains_create_prio.exit.thread ], [ %retval.0.i84, %mlx5_chains_create_prio.exit.err_create_prio_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %err_get_prevs

err_get_prevs:                                    ; preds = %err_create_prio, %for.body.err_get_prevs_crit_edge
  %l.093 = phi i32 [ %level, %err_create_prio ], [ %l.095, %for.body.err_get_prevs_crit_edge ]
  %prio_s.1 = phi ptr [ %retval.0.i8490, %err_create_prio ], [ %call10, %for.body.err_get_prevs_crit_edge ]
  %dec96 = add i32 %l.093, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec96)
  %cmp2897 = icmp sgt i32 %dec96, -1
  br i1 %cmp2897, label %err_get_prevs.while.body_crit_edge, label %err_get_prevs.cleanup_crit_edge

err_get_prevs.cleanup_crit_edge:                  ; preds = %err_get_prevs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_get_prevs.while.body_crit_edge:               ; preds = %err_get_prevs
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_get_prevs.while.body_crit_edge
  %dec98 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec96, %err_get_prevs.while.body_crit_edge ]
  call void @mlx5_chains_put_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %dec98)
  %dec = add nsw i32 %dec98, -1
  %cmp28 = icmp sgt i32 %dec98, 0
  br i1 %cmp28, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_get_prevs.cleanup_crit_edge, %if.end24, %mlx5_chains_get_prio_range.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %165, %if.end24 ], [ inttoptr (i32 -95 to ptr), %mlx5_chains_get_prio_range.exit.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true.cleanup_crit_edge ], [ %prio_s.1, %err_get_prevs.cleanup_crit_edge ], [ %prio_s.1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key) #13
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #13
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 594, ptr noundef nonnull @.str.9) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #13
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !83

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #13
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 369, ptr noundef nonnull @.str.9) #13
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !85
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.10, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 614, ptr noundef nonnull @.str.9) #13
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !83

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #13
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #13
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %43 = call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_chains_put_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %level) local_unnamed_addr #3 align 64 {
entry:
  %key = alloca %struct.prio_key, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key) #13
  %0 = getelementptr inbounds %struct.prio_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.prio_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chain, ptr %key, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prio, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %level, ptr %1, align 4
  %lock = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %prios_ht = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 2
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %prios_ht, ptr noundef nonnull %key, [7 x i32] [i32 12, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %err_get_prio, label %if.end

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %chain1.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %chain1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chain1.i, align 4
  %next_ft.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %next_ft.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_ft.i, align 4
  %call.i = call fastcc i32 @mlx5_chains_update_prio_prevs(ptr noundef nonnull %call, ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.if.end.i_crit_edge, label %do.end.i, !prof !83

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then4.if.end.i_crit_edge
  %list.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mlx5_chains_destroy_prio.exit_crit_edge

if.end.i.mlx5_chains_destroy_prio.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_destroy_prio.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %mlx5_chains_destroy_prio.exit

mlx5_chains_destroy_prio.exit:                    ; preds = %if.end.i.i.i, %if.end.i.mlx5_chains_destroy_prio.exit_crit_edge
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @rhashtable_remove_fast(ptr noundef %prios_ht, ptr noundef nonnull %call, [7 x i32] [i32 12, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  %miss_rule.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %miss_rule.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %miss_rule.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %20) #13
  %miss_group.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %miss_group.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %miss_group.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %22) #13
  %ft.i = getelementptr inbounds %struct.prio, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ft.i, align 4
  %call22.i = call i32 @mlx5_destroy_flow_table(ptr noundef %24) #13
  call fastcc void @mlx5_chains_put_chain(ptr noundef %8) #13
  call void @kvfree(ptr noundef nonnull %call) #13
  br label %if.end5

if.end5:                                          ; preds = %mlx5_chains_destroy_prio.exit, %if.end.if.end5_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp8.not69 = icmp eq i32 %level, 0
  br i1 %cmp8.not69, label %if.end5.cleanup_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end5.while.body_crit_edge
  %level.addr.070 = phi i32 [ %dec7, %while.body.while.body_crit_edge ], [ %level, %if.end5.while.body_crit_edge ]
  %dec7 = add i32 %level.addr.070, -1
  call void @mlx5_chains_put_table(ptr noundef %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %dec7)
  %cmp8.not = icmp eq i32 %dec7, 0
  br i1 %cmp8.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_get_prio:                                     ; preds = %entry
  call void @mutex_unlock(ptr noundef %lock) #13
  %.b68 = load i1, ptr @mlx5_chains_put_table.__already_done, align 1
  br i1 %.b68, label %err_get_prio.cleanup_crit_edge, label %if.then15, !prof !83

err_get_prio.cleanup_crit_edge:                   ; preds = %err_get_prio
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %err_get_prio
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mlx5_chains_put_table.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %chain, i32 noundef %prio, i32 noundef %level) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %err_get_prio.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_chains_get_tc_end_ft(ptr nocapture noundef readonly %chains) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_end_ft = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 5
  %0 = ptrtoint ptr %tc_end_ft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tc_end_ft, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_chains_create_global_table(ptr nocapture noundef readonly %chains) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %mlx5_chains_get_prio_range.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chains, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i15 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i15 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 697, i32 noundef %11) #18
  br label %cleanup

mlx5_chains_get_prio_range.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %retval.0.i = select i1 %tobool.i.not.i, i32 1, i32 -2
  %call5 = tail call fastcc ptr @mlx5_chains_create_table(ptr noundef %chains, i32 noundef %retval.0.i, i32 noundef -1, i32 noundef -1)
  br label %cleanup

cleanup:                                          ; preds = %mlx5_chains_get_prio_range.exit, %if.then
  %retval.0 = phi ptr [ %call5, %mlx5_chains_get_prio_range.exit ], [ inttoptr (i32 -95 to ptr), %if.then ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_chains_create_table(ptr nocapture noundef readonly %chains, i32 noundef %chain, i32 noundef %prio, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #13
  %0 = call ptr @memset(ptr %ft_attr, i32 0, i32 28)
  %flags = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 9
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags1 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 3
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags1, align 4
  %or = or i32 %4, 3
  store i32 %or, ptr %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %and.i6.i.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i)
  %tobool.i7.not.i.i = icmp eq i32 %and.i6.i.i, 0
  %..i.op.i = select i1 %tobool.i7.not.i.i, i32 4, i32 -1
  %add.i = select i1 %tobool.i.not.i.i, i32 2, i32 %..i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %chain)
  %cmp = icmp eq i32 %add.i, %chain
  %cond = select i1 %cmp, i32 65536, i32 0
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %5 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %max_fte, align 4
  %tc_default_ft = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 4
  %6 = ptrtoint ptr %tc_default_ft to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc_default_ft, align 4
  %next_ft = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 4
  %8 = ptrtoint ptr %next_ft to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %next_ft, align 4
  br i1 %tobool.i7.not.i.i, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prio)
  %cmp4 = icmp eq i32 %prio, 1
  %9 = or i32 %level, %chain
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %cmp4, %10
  br i1 %11, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %level8 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %12 = ptrtoint ptr %level8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %level, ptr %level8, align 4
  %sub = add i32 %prio, -1
  %13 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %ft_attr, align 4
  %ns10 = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 7
  %14 = ptrtoint ptr %ns10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp11 = icmp eq i32 %15, 8
  %16 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chains, align 4
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call ptr @mlx5_get_fdb_sub_ns(ptr noundef %17, i32 noundef %chain) #13
  br label %if.end27

cond.false:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %17, i32 noundef %15) #13
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %flags17 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 3
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags17, align 4
  %or18 = or i32 %19, 8
  store i32 %or18, ptr %flags17, align 4
  %ns19 = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 7
  %20 = ptrtoint ptr %ns19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ns19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp20 = icmp eq i32 %21, 8
  %cond21 = zext i1 %cmp20 to i32
  %22 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond21, ptr %ft_attr, align 4
  %level23 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %23 = ptrtoint ptr %level23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %level23, align 4
  %24 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chains, align 4
  %call26 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %25, i32 noundef %21) #13
  br label %if.end27

if.end27:                                         ; preds = %if.else, %cond.false, %cond.true
  %ns.0 = phi ptr [ %call26, %if.else ], [ %call12, %cond.true ], [ %call15, %cond.false ]
  %autogroup = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 5
  %num_reserved_entries = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %num_reserved_entries to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %num_reserved_entries, align 4
  %group_num = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 8
  %27 = ptrtoint ptr %group_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %group_num, align 4
  %29 = ptrtoint ptr %autogroup to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %autogroup, align 4
  %call29 = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef %ns.0, ptr noundef nonnull %ft_attr) #13
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chains, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i63 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i63 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  %40 = ptrtoint ptr %call29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 204, i32 noundef %39, i32 noundef %40, i32 noundef %chain, i32 noundef %prio, i32 noundef %level, i32 noundef %cond) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end27.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #13
  ret ptr %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_chains_destroy_global_table(ptr nocapture noundef readnone %chains, ptr noundef %ft) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_destroy_flow_table(ptr noundef %ft) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_chains_create(ptr noundef %dev, ptr nocapture noundef readonly %attr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mlx5_chains_init(ptr noundef %dev, ptr noundef %attr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_chains_init(ptr noundef %dev, ptr nocapture noundef readonly %attr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 576) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %2, i32 22
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %add.ptr7 = getelementptr i32, ptr %2, i32 26
  %5 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_chains_init.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_chains_init, %if.then14)) #13
          to label %do.end [label %if.then14], !srcloc !87

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shr = and i32 %4, -65536
  %and9 = and i32 %6, 65535
  %or = or i32 %and9, %shr
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %max_grp_num = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 3
  %15 = ptrtoint ptr %max_grp_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_grp_num, align 4
  %max_ft_sz = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 2
  %17 = ptrtoint ptr %max_ft_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_ft_sz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_chains_init.__UNIQUE_ID_ddebug684, ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 734, i32 noundef %14, i32 noundef %or, i32 noundef %16, i32 noundef %18) #13
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %call7.i.i, align 8
  %flags = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %flags18 = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags18, align 4
  %23 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr, align 4
  %ns19 = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %ns19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ns19, align 4
  %max_grp_num20 = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 3
  %26 = ptrtoint ptr %max_grp_num20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_grp_num20, align 4
  %group_num = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %group_num to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %group_num, align 8
  %mapping = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 5
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mapping, align 4
  %chains_mapping = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %chains_mapping to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %chains_mapping, align 8
  %default_ft = getelementptr inbounds %struct.mlx5_chains_attr, ptr %attr, i32 0, i32 4
  %32 = ptrtoint ptr %default_ft to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %default_ft, align 4
  %tc_end_ft = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %tc_end_ft to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %tc_end_ft, align 4
  %tc_default_ft = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %tc_default_ft to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %tc_default_ft, align 8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %and.i6.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool.i7.not.i = icmp eq i32 %and.i6.i, 0
  %..i = select i1 %tobool.i7.not.i, i32 3, i32 -2
  %retval.0.i69 = select i1 %tobool.i.not.i, i32 1, i32 %..i
  br i1 %tobool.i7.not.i, label %if.end.i, label %do.end.mlx5_chains_get_prio_range.exit_crit_edge

do.end.mlx5_chains_get_prio_range.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_get_prio_range.exit

if.end.i:                                         ; preds = %do.end
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %38 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eswitch.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge, label %lor.lhs.false.i

if.end.i.mlx5_chains_get_prio_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_get_prio_range.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 2
  %spec.select.i = select i1 %cmp.not.i, i32 16, i32 1
  br label %mlx5_chains_get_prio_range.exit

mlx5_chains_get_prio_range.exit:                  ; preds = %lor.lhs.false.i, %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge, %do.end.mlx5_chains_get_prio_range.exit_crit_edge
  %retval.0.i73 = phi i32 [ -1, %do.end.mlx5_chains_get_prio_range.exit_crit_edge ], [ 1, %if.end.i.mlx5_chains_get_prio_range.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i69, i32 noundef %retval.0.i73) #18
  %chains_ht = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 1
  %call27 = tail call i32 @rhashtable_init(ptr noundef %chains_ht, ptr noundef nonnull @chain_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %mlx5_chains_get_prio_range.exit.init_chains_ht_err_crit_edge

mlx5_chains_get_prio_range.exit.init_chains_ht_err_crit_edge: ; preds = %mlx5_chains_get_prio_range.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_chains_ht_err

if.end30:                                         ; preds = %mlx5_chains_get_prio_range.exit
  %prios_ht = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 2
  %call31 = tail call i32 @rhashtable_init(ptr noundef %prios_ht, ptr noundef nonnull @prio_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body35, label %init_prios_ht_err

do.body35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.mlx5_fs_chains, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @mlx5_chains_init.__key) #13
  br label %cleanup

init_prios_ht_err:                                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rhashtable_destroy(ptr noundef %chains_ht) #13
  br label %init_chains_ht_err

init_chains_ht_err:                               ; preds = %init_prios_ht_err, %mlx5_chains_get_prio_range.exit.init_chains_ht_err_crit_edge
  %err.0 = phi i32 [ %call27, %mlx5_chains_get_prio_range.exit.init_chains_ht_err_crit_edge ], [ %call31, %init_prios_ht_err ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %42 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %init_chains_ht_err, %do.body35, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %42, %init_chains_ht_err ], [ %call7.i.i, %do.body35 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_chains_destroy(ptr noundef %chains) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock.i) #13
  %prios_ht.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 2
  tail call void @rhashtable_destroy(ptr noundef %prios_ht.i) #13
  %chains_ht.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 1
  tail call void @rhashtable_destroy(ptr noundef %chains_ht.i) #13
  tail call void @kfree(ptr noundef %chains) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_chains_get_chain_mapping(ptr nocapture noundef readonly %chains, i32 noundef %chain, ptr noundef %chain_mapping) local_unnamed_addr #3 align 64 {
entry:
  %mapped_obj = alloca %struct.mlx5_mapped_obj, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chains_mapping = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 6
  %0 = ptrtoint ptr %chains_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chains_mapping, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mapped_obj) #13
  %2 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1
  %3 = call ptr @memset(ptr %mapped_obj, i32 0, i32 20)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %chain, ptr %2, align 4
  %call = call i32 @mapping_add(ptr noundef %1, ptr noundef nonnull %mapped_obj, ptr noundef %chain_mapping) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mapped_obj) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_chains_put_chain_mapping(ptr nocapture noundef readonly %chains, i32 noundef %chain_mapping) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chains_mapping = getelementptr inbounds %struct.mlx5_fs_chains, ptr %chains, i32 0, i32 6
  %0 = ptrtoint ptr %chains_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chains_mapping, align 4
  %call = tail call i32 @mapping_remove(ptr noundef %1, i32 noundef %chain_mapping) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_remove(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 715, ptr noundef nonnull @.str.9) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !88

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #13
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !83

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !83

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %25 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #13
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 377, ptr noundef nonnull @.str.13) #13
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.14, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 732, ptr noundef nonnull @.str.13) #13
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !83

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !88

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 377, ptr noundef nonnull @.str.13) #13
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !89
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #13
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #13
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %60 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #13
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_chains_update_prio_prevs(ptr nocapture noundef readonly %prio, ptr noundef %next_ft) unnamed_addr #3 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %act.i = alloca %struct.mlx5_flow_act, align 4
  %miss_rules = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %miss_rules) #13
  %0 = call ptr @memset(ptr %miss_rules, i32 0, i32 12)
  %chain1 = getelementptr inbounds %struct.prio, ptr %prio, i32 0, i32 4
  %1 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chain1, align 4
  %level = getelementptr inbounds %struct.prio, ptr %prio, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.prio, ptr %prio, i32 0, i32 1, i32 1
  %prios_list = getelementptr inbounds %struct.fs_chain, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn81 = load ptr, ptr %prev, align 4
  %cmp.not82 = icmp eq ptr %.pn81, %prios_list
  br i1 %cmp.not82, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chains1.i = getelementptr inbounds %struct.fs_chain, ptr %2, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %7 = getelementptr inbounds i8, ptr %act.i, i32 4
  %flags.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %act.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %chain4.i = getelementptr inbounds %struct.fs_chain, ptr %2, i32 0, i32 1
  %miss_modify_hdr.i = getelementptr inbounds %struct.fs_chain, ptr %2, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn84 = phi ptr [ %.pn81, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %n.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ft = getelementptr i8, ptr %.pn84, i32 28
  %9 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ft, align 4
  %11 = ptrtoint ptr %chains1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chains1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #13
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %act.i) #13
  %14 = call ptr @memset(ptr %7, i32 0, i32 32)
  %flags.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 2
  %17 = or i32 %and.i.i, 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags.i, align 4
  %19 = ptrtoint ptr %act.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %act.i, align 4
  %20 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dest.i, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %next_ft, ptr %8, align 4
  %tc_end_ft.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %12, i32 0, i32 5
  %22 = ptrtoint ptr %tc_end_ft.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tc_end_ft.i, align 4
  %cmp.i = icmp eq ptr %23, %next_ft
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.mlx5_chains_add_miss_rule.exit_crit_edge

for.body.mlx5_chains_add_miss_rule.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_add_miss_rule.exit

land.lhs.true.i:                                  ; preds = %for.body
  %24 = ptrtoint ptr %chain4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chain4.i, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i7.not.i.i.i = icmp eq i32 %and.i.i, 0
  %..i.op.i.i = select i1 %tobool.i7.not.i.i.i, i32 4, i32 -1
  %add.i.i = select i1 %tobool.i.not.i.i.i, i32 2, i32 %..i.op.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add.i.i)
  %cmp6.not.i = icmp ne i32 %25, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i22.i = icmp ne i32 %and.i.i.i.i, 0
  %or.cond.i = select i1 %cmp6.not.i, i1 %tobool.i22.i, i1 false
  br i1 %or.cond.i, label %if.then9.i, label %land.lhs.true.i.mlx5_chains_add_miss_rule.exit_crit_edge

land.lhs.true.i.mlx5_chains_add_miss_rule.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_add_miss_rule.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %miss_modify_hdr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %miss_modify_hdr.i, align 4
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %7, align 4
  %29 = ptrtoint ptr %act.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 68, ptr %act.i, align 4
  br label %mlx5_chains_add_miss_rule.exit

mlx5_chains_add_miss_rule.exit:                   ; preds = %if.then9.i, %land.lhs.true.i.mlx5_chains_add_miss_rule.exit_crit_edge, %for.body.mlx5_chains_add_miss_rule.exit_crit_edge
  %call13.i = call ptr @mlx5_add_flow_rules(ptr noundef %10, ptr noundef null, ptr noundef nonnull %act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %act.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #13
  %arrayidx = getelementptr [3 x ptr], ptr %miss_rules, i32 0, i32 %n.083
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13.i, ptr %arrayidx, align 4
  %cmp.i77 = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then5, label %if.end8

if.then5:                                         ; preds = %mlx5_chains_add_miss_rule.exit
  %31 = ptrtoint ptr %call13.i to i32
  %dec86 = add i32 %n.083, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec86)
  %cmp4687 = icmp sgt i32 %dec86, -1
  br i1 %cmp4687, label %if.then5.while.body_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5.while.body_crit_edge:                    ; preds = %if.then5
  br label %while.body

if.end8:                                          ; preds = %mlx5_chains_add_miss_rule.exit
  %level10 = getelementptr i8, ptr %.pn84, i32 16
  %32 = ptrtoint ptr %level10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %level10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not = icmp eq i32 %33, 0
  br i1 %tobool11.not, label %if.end8.for.end_crit_edge, label %for.inc

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %if.end8
  %inc = add i32 %n.083, 1
  %prev16 = getelementptr inbounds %struct.list_head, ptr %.pn84, i32 0, i32 1
  %34 = ptrtoint ptr %prev16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %prev16, align 4
  %cmp.not = icmp eq ptr %.pn, %prios_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn7689 = load ptr, ptr %prev, align 4
  %cmp27.not90 = icmp eq ptr %.pn7689, %prios_list
  br i1 %cmp27.not90, label %for.end.cleanup_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body29:                                       ; preds = %for.inc39.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %.pn7692 = phi ptr [ %.pn76, %for.inc39.for.body29_crit_edge ], [ %.pn7689, %for.end.for.body29_crit_edge ]
  %n.191 = phi i32 [ %inc33, %for.inc39.for.body29_crit_edge ], [ 0, %for.end.for.body29_crit_edge ]
  %miss_rule = getelementptr i8, ptr %.pn7692, i32 40
  %36 = ptrtoint ptr %miss_rule to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %miss_rule, align 4
  call void @mlx5_del_flow_rules(ptr noundef %37) #13
  %arrayidx30 = getelementptr [3 x ptr], ptr %miss_rules, i32 0, i32 %n.191
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx30, align 4
  %40 = ptrtoint ptr %miss_rule to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %miss_rule, align 4
  %next_ft32 = getelementptr i8, ptr %.pn7692, i32 32
  %41 = ptrtoint ptr %next_ft32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %next_ft, ptr %next_ft32, align 4
  %level35 = getelementptr i8, ptr %.pn7692, i32 16
  %42 = ptrtoint ptr %level35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %level35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool36.not = icmp eq i32 %43, 0
  br i1 %tobool36.not, label %for.body29.cleanup_crit_edge, label %for.inc39

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc39:                                        ; preds = %for.body29
  %inc33 = add i32 %n.191, 1
  %prev42 = getelementptr inbounds %struct.list_head, ptr %.pn7692, i32 0, i32 1
  %44 = ptrtoint ptr %prev42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn76 = load ptr, ptr %prev42, align 4
  %cmp27.not = icmp eq ptr %.pn76, %prios_list
  br i1 %cmp27.not, label %for.inc39.cleanup_crit_edge, label %for.inc39.for.body29_crit_edge

for.inc39.for.body29_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

for.inc39.cleanup_crit_edge:                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then5.while.body_crit_edge
  %dec88 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec86, %if.then5.while.body_crit_edge ]
  %arrayidx47 = getelementptr [3 x ptr], ptr %miss_rules, i32 0, i32 %dec88
  %45 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx47, align 4
  call void @mlx5_del_flow_rules(ptr noundef %46) #13
  %dec = add nsw i32 %dec88, -1
  %cmp46 = icmp sgt i32 %dec88, 0
  br i1 %cmp46, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc39.cleanup_crit_edge, %for.body29.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %31, %if.then5.cleanup_crit_edge ], [ 0, %for.inc39.cleanup_crit_edge ], [ 0, %for.body29.cleanup_crit_edge ], [ %31, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %miss_rules) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1076, ptr noundef nonnull @.str.9) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !88

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #13
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !83

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 377, ptr noundef nonnull @.str.13) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1032, ptr noundef nonnull @.str.13) #13
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #13
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1004, ptr noundef nonnull @.str.13) #13
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !91
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !88

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #13
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.15, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1085, ptr noundef nonnull @.str.9) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.11) #13
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  %46 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_chains_put_chain(ptr noundef %chain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.fs_chain, ptr %chain, i32 0, i32 2
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %chains1.i = getelementptr inbounds %struct.fs_chain, ptr %chain, i32 0, i32 4
  %2 = ptrtoint ptr %chains1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chains1.i, align 4
  %chains_ht.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %3, i32 0, i32 1
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %chains_ht.i, ptr noundef %chain, [7 x i32] [i32 4, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #13
  %4 = ptrtoint ptr %chains1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chains1.i, align 4
  %miss_modify_hdr.i.i = getelementptr inbounds %struct.fs_chain, ptr %chain, i32 0, i32 7
  %6 = ptrtoint ptr %miss_modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %miss_modify_hdr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.mlx5_chains_destroy_chain.exit_crit_edge, label %if.end.i.i

if.then.mlx5_chains_destroy_chain.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5_chains_destroy_chain.exit

if.end.i.i:                                       ; preds = %if.then
  %restore_rule.i.i = getelementptr inbounds %struct.fs_chain, ptr %chain, i32 0, i32 6
  %8 = ptrtoint ptr %restore_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %restore_rule.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %9) #13
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %miss_modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %miss_modify_hdr.i.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %11, ptr noundef %13) #13
  %chains_mapping.i.i = getelementptr inbounds %struct.mlx5_fs_chains, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %chains_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chains_mapping.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.fs_chain, ptr %chain, i32 0, i32 3
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 4
  %call.i.i = tail call i32 @mapping_remove(ptr noundef %15, i32 noundef %17) #13
  br label %mlx5_chains_destroy_chain.exit

mlx5_chains_destroy_chain.exit:                   ; preds = %if.end5.i.i, %if.then.mlx5_chains_destroy_chain.exit_crit_edge
  tail call void @kvfree(ptr noundef %chain) #13
  br label %if.end

if.end:                                           ; preds = %mlx5_chains_destroy_chain.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_add_restore_rule(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !93
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !94

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !95
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !83

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %7 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !98
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !99
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !88

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !101
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !103
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %3 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !106
  %2 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_fdb_sub_ns(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 676, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 696, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_chains_create_global_table._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_chains_create_global_table._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @prio_params, !27, !"prio_params", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 82, i32 39}
!28 = !{ptr @chain_params, !29, !"chain_params", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 75, i32 39}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 203, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mlx5_chains_create_table._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlx5_chains_create_table._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 732, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mlx5_chains_init.__UNIQUE_ID_ddebug684, !59, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 743, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5_chains_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx5_chains_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mlx5_chains_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_chains.c", i32 755, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2150170270}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2158708026}
!85 = !{i64 2158711460}
!86 = !{i64 2150170536}
!87 = !{i64 2148743373, i64 2148743378, i64 2148743391, i64 2148743435, i64 2148743469, i64 2148743490}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2148261558, i64 2148261584, i64 2148261613, i64 2148261647, i64 2148261678, i64 2148261701}
!90 = !{i64 2158771341}
!91 = !{i64 2148264023, i64 2148264049, i64 2148264078, i64 2148264112, i64 2148264143, i64 2148264166}
!92 = !{i8 0, i8 2}
!93 = !{i64 2153475279}
!94 = !{!"branch_weights", i32 2146410443, i32 1073205}
!95 = !{i64 2148270416, i64 2148270448, i64 2148270477, i64 2148270511, i64 2148270542, i64 2148270565}
!96 = !{i64 2148359497}
!97 = !{i64 2153475439}
!98 = !{i64 2153475716}
!99 = !{i64 2153475558}
!100 = !{i64 2153475921}
!101 = !{i64 2153476984, i64 2153477476, i64 2153477021, i64 2153477077, i64 2153477111, i64 2153477135, i64 2153477176, i64 2153477197, i64 2153477225, i64 2153477259}
!102 = !{i64 2148358384}
!103 = !{i64 2148268803, i64 2148268835, i64 2148268864, i64 2148268898, i64 2148268929, i64 2148268952}
!104 = !{i64 2153478379}
!105 = !{i64 2158701099}
!106 = !{i64 2158703398}
