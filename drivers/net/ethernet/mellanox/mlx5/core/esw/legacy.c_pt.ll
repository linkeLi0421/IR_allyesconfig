; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.175, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.177, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.173, i32 }
%union.anon.173 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.175 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.177 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.187, i16, i8, i32, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.182, %struct.anon.183 }
%struct.anon.182 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.183 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.184 }
%union.anon.184 = type { %struct.anon.186 }
%struct.anon.186 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.187 = type { i8, i32, i32, i32, i32, ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.188 }
%struct.anon.188 = type { i32, i32 }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_flow_destination = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.190, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.190 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.143] }
%struct.anon.143 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_vport_drop_stats = type { i64, i64 }

@mlx5_eswitch_set_vport_spoofchk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Spoofchk in set while MAC is invalid, vport(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_eswitch_set_vport_spoofchk\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_eswitch_set_vport_spoofchk._entry_ptr = internal global ptr @mlx5_eswitch_set_vport_spoofchk._entry, section ".printk_index", align 4
@esw_create_legacy_vepa_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"E-Switch: Failed to get FDB flow namespace\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"esw_create_legacy_vepa_table\00", [35 x i8] zeroinitializer }, align 32
@esw_create_legacy_vepa_table._entry_ptr = internal global ptr @esw_create_legacy_vepa_table._entry, section ".printk_index", align 4
@esw_create_legacy_vepa_table._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"E-Switch: Failed to create VEPA FDB err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@esw_create_legacy_vepa_table._entry_ptr.9 = internal global ptr @esw_create_legacy_vepa_table._entry.7, section ".printk_index", align 4
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@esw_create_legacy_fdb_table.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"esw_create_legacy_fdb_table\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Create FDB log_max_size(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.11, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry_ptr = internal global ptr @esw_create_legacy_fdb_table._entry, section ".printk_index", align 4
@esw_create_legacy_fdb_table._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"E-Switch: Failed to create FDB Table err %d\0A\00", [51 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry_ptr.15 = internal global ptr @esw_create_legacy_fdb_table._entry.13, section ".printk_index", align 4
@esw_create_legacy_fdb_table._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"E-Switch: Failed to create flow group err(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry_ptr.18 = internal global ptr @esw_create_legacy_fdb_table._entry.16, section ".printk_index", align 4
@esw_create_legacy_fdb_table._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"E-Switch: Failed to create allmulti flow group err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry_ptr.21 = internal global ptr @esw_create_legacy_fdb_table._entry.19, section ".printk_index", align 4
@esw_create_legacy_fdb_table._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E-Switch: Failed to create promisc flow group err(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@esw_create_legacy_fdb_table._entry_ptr.24 = internal global ptr @esw_create_legacy_fdb_table._entry.22, section ".printk_index", align 4
@esw_destroy_legacy_fdb_table.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"esw_destroy_legacy_fdb_table\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): Destroy FDB Table\0A\00", [61 x i8] zeroinitializer }, align 32
@esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"esw_destroy_legacy_vepa_table\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Destroy VEPA Table\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 475, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 31, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 42, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 85, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 90, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 104, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 121, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 136, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 153, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 52, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 168, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @esw_create_legacy_fdb_table._entry, ptr @esw_create_legacy_fdb_table._entry.13, ptr @esw_create_legacy_fdb_table._entry.16, ptr @esw_create_legacy_fdb_table._entry.19, ptr @esw_create_legacy_fdb_table._entry.22, ptr @esw_create_legacy_fdb_table._entry_ptr, ptr @esw_create_legacy_fdb_table._entry_ptr.15, ptr @esw_create_legacy_fdb_table._entry_ptr.18, ptr @esw_create_legacy_fdb_table._entry_ptr.21, ptr @esw_create_legacy_fdb_table._entry_ptr.24, ptr @esw_create_legacy_vepa_table._entry, ptr @esw_create_legacy_vepa_table._entry.7, ptr @esw_create_legacy_vepa_table._entry_ptr, ptr @esw_create_legacy_vepa_table._entry_ptr.9, ptr @mlx5_eswitch_set_vport_spoofchk._entry, ptr @mlx5_eswitch_set_vport_spoofchk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_set_vport_spoofchk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_vepa_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_vepa_table._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_fdb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_fdb_table._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_fdb_table._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_fdb_table._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_create_legacy_fdb_table._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_legacy_enable(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #7
  %call = tail call fastcc i32 @esw_create_legacy_table(ptr noundef %esw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %num_vfs = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_vfs, align 8
  %conv = zext i16 %2 to i32
  %call1 = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv, i32 noundef 1) #7
  %tobool2.not24 = icmp eq ptr %call1, null
  br i1 %tobool2.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %vport.025 = phi ptr [ %call7, %for.body.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %link_state = getelementptr inbounds %struct.mlx5_vport, ptr %vport.025, i32 0, i32 10, i32 3
  %3 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %link_state, align 8
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_vfs, align 8
  %conv6 = zext i16 %5 to i32
  %call7 = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv6, i32 noundef 1) #7
  %tobool2.not = icmp eq ptr %call7, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call8 = call i32 @mlx5_eswitch_enable_pf_vf_vports(ptr noundef %esw, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %if.then10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @esw_destroy_legacy_table(ptr noundef %esw)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.then10 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_create_legacy_table(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %0 = call ptr @memset(ptr %fdb_table, i32 0, i32 28)
  %user_count = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %user_count, i64 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %1 = getelementptr inbounds i8, ptr %ft_attr.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esw, align 8
  %call.i = tail call ptr @mlx5_get_fdb_sub_ns(ptr noundef %4, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %esw_create_legacy_vepa_table.exit.thread16, label %if.end.i

esw_create_legacy_vepa_table.exit.thread16:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ft_attr.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %8 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %max_fte.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %9 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %autogroup.i, align 4
  %call2.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call.i, ptr noundef nonnull %ft_attr.i) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %esw_create_legacy_vepa_table.exit, label %esw_create_legacy_vepa_table.exit.thread

esw_create_legacy_vepa_table.exit.thread:         ; preds = %if.end.i
  %vepa_fdb.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %vepa_fdb.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %call1 = call fastcc i32 @esw_create_legacy_fdb_table(ptr noundef %esw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %esw_create_legacy_vepa_table.exit.thread.cleanup_crit_edge, label %if.then3

esw_create_legacy_vepa_table.exit.thread.cleanup_crit_edge: ; preds = %esw_create_legacy_vepa_table.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

esw_create_legacy_vepa_table.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call2.i to i32
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %cleanup

if.then3:                                         ; preds = %esw_create_legacy_vepa_table.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %14 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i12 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i12, label %if.then3.do.end8.i_crit_edge, label %do.body1.i

if.then3.do.end8.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.body1.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_create_legacy_table, %if.then5.i)) #7
          to label %do.end8.i [label %if.then5.i], !srcloc !59

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %esw, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689, ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 168, i32 noundef %24) #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %if.then3.do.end8.i_crit_edge
  %25 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vepa_fdb.i, align 4
  %tobool9.not.i = icmp eq ptr %26, null
  br i1 %tobool9.not.i, label %do.end8.i.cleanup_crit_edge, label %if.end11.i

do.end8.i.cleanup_crit_edge:                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %26) #7
  %27 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %vepa_fdb.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %do.end8.i.cleanup_crit_edge, %esw_create_legacy_vepa_table.exit, %esw_create_legacy_vepa_table.exit.thread.cleanup_crit_edge, %esw_create_legacy_vepa_table.exit.thread16
  %retval.0 = phi i32 [ %11, %esw_create_legacy_vepa_table.exit ], [ 0, %esw_create_legacy_vepa_table.exit.thread.cleanup_crit_edge ], [ -95, %esw_create_legacy_vepa_table.exit.thread16 ], [ %call1, %do.end8.i.cleanup_crit_edge ], [ %call1, %if.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_enable_pf_vf_vports(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esw_destroy_legacy_table(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vepa_uplink_rule.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vepa_uplink_rule.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %vepa_star_rule.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 6
  %2 = ptrtoint ptr %vepa_star_rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vepa_star_rule.i, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %if.end.i.esw_cleanup_vepa_rules.exit_crit_edge, label %if.then5.i

if.end.i.esw_cleanup_vepa_rules.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esw_cleanup_vepa_rules.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #7
  br label %esw_cleanup_vepa_rules.exit

esw_cleanup_vepa_rules.exit:                      ; preds = %if.then5.i, %if.end.i.esw_cleanup_vepa_rules.exit_crit_edge
  %4 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vepa_uplink_rule.i, align 4
  %5 = ptrtoint ptr %vepa_star_rule.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vepa_star_rule.i, align 4
  tail call fastcc void @esw_destroy_legacy_fdb_table(ptr noundef %esw)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i3 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i3, label %esw_cleanup_vepa_rules.exit.do.end8.i_crit_edge, label %do.body1.i

esw_cleanup_vepa_rules.exit.do.end8.i_crit_edge:  ; preds = %esw_cleanup_vepa_rules.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

do.body1.i:                                       ; preds = %esw_cleanup_vepa_rules.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_destroy_legacy_table, %if.then5.i4)) #7
          to label %do.end8.i [label %if.then5.i4], !srcloc !59

if.then5.i4:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689, ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 168, i32 noundef %16) #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i4, %do.body1.i, %esw_cleanup_vepa_rules.exit.do.end8.i_crit_edge
  %vepa_fdb.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vepa_fdb.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %do.end8.i.esw_destroy_legacy_vepa_table.exit_crit_edge, label %if.end11.i

do.end8.i.esw_destroy_legacy_vepa_table.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esw_destroy_legacy_vepa_table.exit

if.end11.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %18) #7
  %19 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vepa_fdb.i, align 4
  br label %esw_destroy_legacy_vepa_table.exit

esw_destroy_legacy_vepa_table.exit:               ; preds = %if.end11.i, %do.end8.i.esw_destroy_legacy_vepa_table.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_legacy_disable(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_eswitch_disable_pf_vf_vports(ptr noundef %esw) #7
  %uplink_rule = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %uplink_rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uplink_rule, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @esw_destroy_legacy_table(ptr noundef %esw)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_disable_pf_vf_vports(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vepa(ptr noundef %esw, i8 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %esw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end2

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %mlx5_esw_allowed.exit
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end4, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #7
  %9 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #7
  %11 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %setting)
  %tobool.not.i12 = icmp eq i8 %setting, 0
  br i1 %tobool.not.i12, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  %vepa_uplink_rule.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %vepa_uplink_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vepa_uplink_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %14) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %vepa_star_rule.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 6
  %15 = ptrtoint ptr %vepa_star_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vepa_star_rule.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.esw_cleanup_vepa_rules.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.esw_cleanup_vepa_rules.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esw_cleanup_vepa_rules.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %16) #7
  br label %esw_cleanup_vepa_rules.exit.i

esw_cleanup_vepa_rules.exit.i:                    ; preds = %if.then5.i.i, %if.end.i.i.esw_cleanup_vepa_rules.exit.i_crit_edge
  %17 = ptrtoint ptr %vepa_uplink_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vepa_uplink_rule.i.i, align 4
  %18 = ptrtoint ptr %vepa_star_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vepa_star_rule.i.i, align 4
  br label %_mlx5_eswitch_set_vepa_locked.exit

if.end.i:                                         ; preds = %if.end4
  %fdb_table.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %vepa_uplink_rule.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vepa_uplink_rule.i, align 4
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge

if.end.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mlx5_eswitch_set_vepa_locked.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #11
  %tobool4.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i, label %if.end3.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge, label %if.end6.i

if.end3.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_mlx5_eswitch_set_vepa_locked.exit

if.end6.i:                                        ; preds = %if.end3.i
  %add.ptr8.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 17
  %21 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr8.i, align 4
  %or.i = or i32 %22, 65535
  store i32 %or.i, ptr %add.ptr8.i, align 4
  %add.ptr19.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 17
  %23 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr19.i, align 4
  %or21.i = or i32 %24, 65535
  store i32 %or21.i, ptr %add.ptr19.i, align 4
  %25 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %call.i.i.i, align 4
  %26 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %dest.i, align 4
  %27 = ptrtoint ptr %fdb_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fdb_table.i, align 4
  %29 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %29, align 4
  %31 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %flow_act.i, align 4
  %vepa_fdb.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 4
  %32 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vepa_fdb.i, align 4
  %call27.i = call ptr @mlx5_add_flow_rules(ptr noundef %33, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end6.i.out.i_crit_edge, label %if.else.i

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.else.i:                                        ; preds = %if.end6.i
  %34 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call27.i, ptr %vepa_uplink_rule.i, align 4
  %35 = call ptr @memset(ptr %dest.i, i32 0, i32 16)
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %29, align 4
  %37 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %flow_act.i, align 4
  %38 = ptrtoint ptr %vepa_fdb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vepa_fdb.i, align 4
  %call38.i = call ptr @mlx5_add_flow_rules(ptr noundef %39, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %cmp.i74.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i, label %if.else.i.out.i_crit_edge, label %out.thread.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

out.thread.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vepa_star_rule.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 6
  %40 = ptrtoint ptr %vepa_star_rule.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call38.i, ptr %vepa_star_rule.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  br label %_mlx5_eswitch_set_vepa_locked.exit

out.i:                                            ; preds = %if.else.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge
  %err.0.in.i = phi ptr [ %call27.i, %if.end6.i.out.i_crit_edge ], [ %call38.i, %if.else.i.out.i_crit_edge ]
  %err.0.i = ptrtoint ptr %err.0.in.i to i32
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #7
  %41 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vepa_uplink_rule.i, align 4
  %tobool.not.i76.i = icmp eq ptr %42, null
  br i1 %tobool.not.i76.i, label %out.i.if.end.i80.i_crit_edge, label %if.then.i77.i

out.i.if.end.i80.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i80.i

if.then.i77.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_del_flow_rules(ptr noundef nonnull %42) #7
  br label %if.end.i80.i

if.end.i80.i:                                     ; preds = %if.then.i77.i, %out.i.if.end.i80.i_crit_edge
  %vepa_star_rule.i78.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 6
  %43 = ptrtoint ptr %vepa_star_rule.i78.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vepa_star_rule.i78.i, align 4
  %tobool4.not.i79.i = icmp eq ptr %44, null
  br i1 %tobool4.not.i79.i, label %if.end.i80.i.esw_cleanup_vepa_rules.exit82.i_crit_edge, label %if.then5.i81.i

if.end.i80.i.esw_cleanup_vepa_rules.exit82.i_crit_edge: ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esw_cleanup_vepa_rules.exit82.i

if.then5.i81.i:                                   ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5_del_flow_rules(ptr noundef nonnull %44) #7
  br label %esw_cleanup_vepa_rules.exit82.i

esw_cleanup_vepa_rules.exit82.i:                  ; preds = %if.then5.i81.i, %if.end.i80.i.esw_cleanup_vepa_rules.exit82.i_crit_edge
  %45 = ptrtoint ptr %vepa_uplink_rule.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %vepa_uplink_rule.i, align 4
  %46 = ptrtoint ptr %vepa_star_rule.i78.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %vepa_star_rule.i78.i, align 4
  br label %_mlx5_eswitch_set_vepa_locked.exit

_mlx5_eswitch_set_vepa_locked.exit:               ; preds = %esw_cleanup_vepa_rules.exit82.i, %out.thread.i, %if.end3.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge, %if.end.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge, %esw_cleanup_vepa_rules.exit.i
  %retval.0.i = phi i32 [ 0, %esw_cleanup_vepa_rules.exit.i ], [ 0, %if.end.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge ], [ -12, %if.end3.i._mlx5_eswitch_set_vepa_locked.exit_crit_edge ], [ %err.0.i, %esw_cleanup_vepa_rules.exit82.i ], [ 0, %out.thread.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  br label %out

out:                                              ; preds = %_mlx5_eswitch_set_vepa_locked.exit, %if.end2.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %_mlx5_eswitch_set_vepa_locked.exit ], [ -95, %if.end2.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_eswitch_get_vepa(ptr noundef readonly %esw, ptr nocapture noundef writeonly %setting) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %esw, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %mlx5_esw_allowed.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.return_crit_edge, label %if.end2

mlx5_esw_allowed.exit.return_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %mlx5_esw_allowed.exit
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end4, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %vepa_uplink_rule = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %vepa_uplink_rule to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vepa_uplink_rule, align 4
  %tobool5.not = icmp ne ptr %10, null
  %conv = zext i1 %tobool5.not to i8
  %11 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %setting, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.end2.return_crit_edge, %mlx5_esw_allowed.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.return_crit_edge ], [ -1, %mlx5_esw_allowed.exit.return_crit_edge ], [ -95, %if.end2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_legacy_vport_acl_setup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport1, align 8
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %2 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manager_vport.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i = icmp eq i16 %3, %1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @esw_acl_ingress_lgcy_setup(ptr noundef %esw, ptr noundef %vport) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @esw_acl_egress_lgcy_setup(ptr noundef %esw, ptr noundef %vport) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %egress_err

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

egress_err:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esw_acl_ingress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport) #7
  br label %cleanup

cleanup:                                          ; preds = %egress_err, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call5, %egress_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_ingress_lgcy_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_egress_lgcy_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_ingress_lgcy_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_legacy_vport_acl_cleanup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport1, align 8
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %2 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manager_vport.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i = icmp eq i16 %3, %1
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esw_acl_egress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport) #7
  tail call void @esw_acl_ingress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_lgcy_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_query_vport_drop_stats(ptr noundef %dev, ptr nocapture noundef readonly %vport, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %rx_discard_vport_down = alloca i64, align 8
  %tx_discard_vport_down = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_discard_vport_down) #7
  %0 = ptrtoint ptr %rx_discard_vport_down to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rx_discard_vport_down, align 8, !annotation !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_discard_vport_down) #7
  %1 = ptrtoint ptr %tx_discard_vport_down to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tx_discard_vport_down, align 8, !annotation !60
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #7
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %bytes, align 8
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 13
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end2

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end2:                                          ; preds = %if.end
  %drop_counter = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %drop_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drop_counter, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end2.if.end7_crit_edge, label %if.then3

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 @mlx5_fc_query(ptr noundef %dev, ptr noundef nonnull %10, ptr noundef %stats, ptr noundef nonnull %bytes) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end2.if.end7_crit_edge
  %drop_counter8 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 5
  %11 = ptrtoint ptr %drop_counter8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drop_counter8, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dropped = getelementptr inbounds %struct.mlx5_vport_drop_stats, ptr %stats, i32 0, i32 1
  %call14 = call i32 @mlx5_fc_query(ptr noundef %dev, ptr noundef nonnull %12, ptr noundef %tx_dropped, ptr noundef nonnull %bytes) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end7.if.end15_crit_edge
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %14, i32 26
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %17 = and i32 %16, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end15.unlock_crit_edge, label %if.end27

if.end15.unlock_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end27:                                         ; preds = %if.end15
  %vport28 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %19 = ptrtoint ptr %vport28 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport28, align 8
  %call29 = call i32 @mlx5_query_vport_down_stats(ptr noundef %dev, i16 noundef zeroext %20, i8 noundef zeroext 1, ptr noundef nonnull %rx_discard_vport_down, ptr noundef nonnull %tx_discard_vport_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.unlock_crit_edge

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end32:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps, align 8
  %add.ptr38 = getelementptr i32, ptr %22, i32 26
  %23 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr38, align 4
  %25 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool41.not = icmp eq i32 %25, 0
  br i1 %tobool41.not, label %if.end32.if.end44_crit_edge, label %if.then42

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rx_discard_vport_down to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_discard_vport_down, align 8
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %stats, align 8
  %add = add i64 %29, %27
  store i64 %add, ptr %stats, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end32.if.end44_crit_edge
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps, align 8
  %add.ptr50 = getelementptr i32, ptr %31, i32 26
  %32 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr50, align 4
  %34 = and i32 %33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool53.not = icmp eq i32 %34, 0
  br i1 %tobool53.not, label %if.end44.unlock_crit_edge, label %if.then54

if.end44.unlock_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then54:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %tx_discard_vport_down to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_discard_vport_down, align 8
  %tx_dropped55 = getelementptr inbounds %struct.mlx5_vport_drop_stats, ptr %stats, i32 0, i32 1
  %37 = ptrtoint ptr %tx_dropped55 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_dropped55, align 8
  %add56 = add i64 %38, %36
  store i64 %add56, ptr %tx_dropped55, align 8
  br label %unlock

unlock:                                           ; preds = %if.then54, %if.end44.unlock_crit_edge, %if.end27.unlock_crit_edge, %if.end15.unlock_crit_edge, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ %call29, %if.end27.unlock_crit_edge ], [ 0, %if.then54 ], [ 0, %if.end44.unlock_crit_edge ], [ 0, %if.end.unlock_crit_edge ], [ 0, %if.end15.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_discard_vport_down) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_discard_vport_down) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_query(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_vport_down_stats(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_vlan(ptr noundef %esw, i16 noundef zeroext %vport, i16 noundef zeroext %vlan, i8 noundef zeroext %qos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %mlx5_esw_allowed.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.if.then_crit_edge, label %if.end

mlx5_esw_allowed.exit.if.then_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %mlx5_esw_allowed.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %tobool.not = icmp ne i16 %vlan, 0
  %cond = sext i1 %tobool.not to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan)
  %tobool2.not = icmp eq i16 %vlan, 0
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %tobool2.not, i32 0, i32 -95
  br label %unlock

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos)
  %tobool4.not = icmp eq i8 %qos, 0
  %or.cond = and i1 %tobool2.not, %tobool4.not
  %set_flags.0 = select i1 %or.cond, i8 0, i8 3
  %call13 = tail call i32 @__mlx5_eswitch_set_vport_vlan(ptr noundef nonnull %esw, i16 noundef zeroext %vport, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i8 noundef zeroext %set_flags.0) #7
  br label %unlock

unlock:                                           ; preds = %if.end12, %if.then8
  %err.0 = phi i32 [ %call13, %if.end12 ], [ %spec.select, %if.then8 ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then
  %retval.0 = phi i32 [ %err.0, %unlock ], [ %cond, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx5_eswitch_set_vport_vlan(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_spoofchk(ptr noundef %esw, i16 noundef zeroext %vport, i1 noundef zeroext %spoofchk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport) #7
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end7, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %if.end5
  %spoofchk8 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 10, i32 5
  %10 = ptrtoint ptr %spoofchk8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %spoofchk8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %bf.load.lobit = and i8 %bf.load, -128
  %bf.shl = select i1 %spoofchk, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  %11 = ptrtoint ptr %spoofchk8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %spoofchk8, align 1
  br i1 %tobool, label %land.lhs.true, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end7
  %info = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 10
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %info, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr %struct.mlx5_vport, ptr %call, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %is_valid_ether_addr.exit.if.end22_crit_edge

is_valid_ether_addr.exit.if.end22_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %17 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !49) #7
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
  %vport20 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 12
  %27 = ptrtoint ptr %vport20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vport20, align 8
  %conv21 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 477, i32 noundef %26, i32 noundef %conv21) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %is_valid_ether_addr.exit.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 13
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %enabled, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool23.not = icmp eq i8 %30, 0
  br i1 %tobool23.not, label %if.end22.unlock_crit_edge, label %land.lhs.true25

if.end22.unlock_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

land.lhs.true25:                                  ; preds = %if.end22
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp27 = icmp eq i32 %32, 1
  br i1 %cmp27, label %if.end31, label %land.lhs.true25.unlock_crit_edge

land.lhs.true25.unlock_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %land.lhs.true25
  %call30 = tail call i32 @esw_acl_ingress_lgcy_setup(ptr noundef nonnull %esw, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end31.unlock_crit_edge, label %if.then33

if.end31.unlock_crit_edge:                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %spoofchk8 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load38 = load i8, ptr %spoofchk8, align 1
  %bf.clear41 = and i8 %bf.load38, 127
  %bf.set42 = or i8 %bf.clear41, %bf.load.lobit
  store i8 %bf.set42, ptr %spoofchk8, align 1
  br label %unlock

unlock:                                           ; preds = %if.then33, %if.end31.unlock_crit_edge, %land.lhs.true25.unlock_crit_edge, %if.end22.unlock_crit_edge, %if.end5.unlock_crit_edge
  %err.1 = phi i32 [ %call30, %if.then33 ], [ 0, %if.end31.unlock_crit_edge ], [ -95, %if.end5.unlock_crit_edge ], [ 0, %land.lhs.true25.unlock_crit_edge ], [ 0, %if.end22.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then3, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %err.1, %unlock ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_trust(ptr noundef %esw, i16 noundef zeroext %vport, i1 noundef zeroext %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport) #7
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end7, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %if.end5
  %trusted = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 10, i32 5
  %10 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %trusted, align 1
  %bf.shl = select i1 %setting, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %trusted, align 1
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.end7.unlock_crit_edge, label %if.then9

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esw_vport_change_handle_locked(ptr noundef %call) #7
  br label %unlock

unlock:                                           ; preds = %if.then9, %if.end7.unlock_crit_edge, %if.end5.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end7.unlock_crit_edge ], [ -95, %if.end5.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then3, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %err.0, %unlock ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_vport_change_handle_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_rate(ptr noundef %esw, i16 noundef zeroext %vport, i32 noundef %max_rate, i32 noundef %min_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport) #7
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #7
  %call6 = tail call i32 @mlx5_esw_qos_set_vport_rate(ptr noundef nonnull %esw, ptr noundef %call, i32 noundef %max_rate, i32 noundef %min_rate) #7
  tail call void @mutex_unlock(ptr noundef %state_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %call6, %if.end5 ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_qos_set_vport_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_create_legacy_fdb_table(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #7
  %0 = getelementptr inbounds i8, ptr %ft_attr, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esw, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %4 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_create_legacy_fdb_table.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_create_legacy_fdb_table, %if.then6)) #7
          to label %do.end11 [label %if.then6], !srcloc !59

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #7
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
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %14, i32 17
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %16, 24
  %and8 = and i32 %shr, 63
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_create_legacy_fdb_table.__UNIQUE_ID_ddebug678, ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 86, i32 noundef %12, i32 noundef %and8) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body2, %entry.do.end11_crit_edge
  %call12 = tail call ptr @mlx5_get_fdb_sub_ns(ptr noundef %3, i32 noundef 0) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end19:                                         ; preds = %do.end11
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #11
  %tobool21.not = icmp eq ptr %call.i.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 8
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx26, align 8
  %add.ptr29 = getelementptr i32, ptr %20, i32 17
  %21 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr29, align 4
  %shr30 = lshr i32 %22, 24
  %and31 = and i32 %shr30, 63
  %shl = shl nuw i32 1, %and31
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %23 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %max_fte, align 4
  %24 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %ft_attr, align 4
  %call32 = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call12, ptr noundef nonnull %ft_attr) #7
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call32 to i32
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.14, i32 noundef %25) #10
  br label %if.then205

if.end40:                                         ; preds = %if.end23
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %28 = ptrtoint ptr %fdb_table to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call32, ptr %fdb_table, align 4
  %add.ptr46 = getelementptr i32, ptr %call.i.i, i32 15
  %29 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr46, align 4
  %and47 = and i32 %30, -256
  %or = or i32 %and47, 1
  store i32 %or, ptr %add.ptr46, align 4
  %add.ptr54 = getelementptr i8, ptr %call.i.i, i32 72
  %add.ptr60 = getelementptr i32, ptr %call.i.i, i32 7
  %31 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr60, align 4
  %sub = add i32 %shl, -3
  %add.ptr73 = getelementptr i32, ptr %call.i.i, i32 9
  %32 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %add.ptr73, align 4
  %33 = call ptr @memset(ptr %add.ptr54, i32 255, i32 6)
  %call81 = call ptr @mlx5_create_flow_group(ptr noundef %call32, ptr noundef nonnull %call.i.i) #7
  %cmp.i282 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call81 to i32
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.17, i32 noundef %34) #10
  br label %if.then205

if.end89:                                         ; preds = %if.end40
  %addr_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %addr_grp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call81, ptr %addr_grp, align 4
  %38 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr46, align 4
  %and97 = and i32 %39, -256
  %or100 = or i32 %and97, 1
  store i32 %or100, ptr %add.ptr46, align 4
  %sub106 = add i32 %shl, -2
  %40 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub106, ptr %add.ptr60, align 4
  %41 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub106, ptr %add.ptr73, align 4
  %42 = getelementptr i8, ptr %call.i.i, i32 73
  %43 = call ptr @memset(ptr %42, i32 0, i32 5)
  %44 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %add.ptr54, align 1
  %call133 = call ptr @mlx5_create_flow_group(ptr noundef %call32, ptr noundef nonnull %call.i.i) #7
  %cmp.i283 = icmp ugt ptr %call133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then135, label %if.end141

if.then135:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call133 to i32
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.20, i32 noundef %45) #10
  br label %if.then205

if.end141:                                        ; preds = %if.end89
  %allmulti_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %allmulti_grp to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call133, ptr %allmulti_grp, align 4
  %49 = call ptr @memset(ptr %add.ptr54, i32 0, i32 6)
  %50 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr46, align 4
  %and149 = and i32 %51, -256
  %or152 = or i32 %and149, 2
  store i32 %or152, ptr %add.ptr46, align 4
  %add.ptr160 = getelementptr i8, ptr %call.i.i, i32 132
  %52 = ptrtoint ptr %add.ptr160 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr160, align 4
  %or162 = or i32 %53, 65535
  store i32 %or162, ptr %add.ptr160, align 4
  %sub168 = add i32 %shl, -1
  %54 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub168, ptr %add.ptr60, align 4
  %55 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub168, ptr %add.ptr73, align 4
  %call194 = call ptr @mlx5_create_flow_group(ptr noundef %call32, ptr noundef nonnull %call.i.i) #7
  %cmp.i284 = icmp ugt ptr %call194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %if.then196, label %out.thread

if.then196:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call194 to i32
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.23, i32 noundef %56) #10
  br label %if.then205

out.thread:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %promisc_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %promisc_grp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call194, ptr %promisc_grp, align 4
  br label %if.end206

if.then205:                                       ; preds = %if.then196, %if.then135, %if.then83, %if.then34
  %err.0 = phi i32 [ %25, %if.then34 ], [ %34, %if.then83 ], [ %45, %if.then135 ], [ %56, %if.then196 ]
  call fastcc void @esw_destroy_legacy_fdb_table(ptr noundef %esw)
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %out.thread
  %err.0288 = phi i32 [ 0, %out.thread ], [ %err.0, %if.then205 ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %if.end19.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ %err.0288, %if.end206 ], [ -95, %do.end17 ], [ -12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_fdb_sub_ns(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esw_destroy_legacy_fdb_table(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %0 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_destroy_legacy_fdb_table.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_destroy_legacy_fdb_table, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !59

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %esw, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !49) #7
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_destroy_legacy_fdb_table.__UNIQUE_ID_ddebug677, ptr noundef %4, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 52, i32 noundef %10) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %11 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fdb_table, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %do.end8.return_crit_edge, label %if.end11

do.end8.return_crit_edge:                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end11:                                         ; preds = %do.end8
  %promisc_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %promisc_grp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %promisc_grp, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %14) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %allmulti_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %allmulti_grp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %allmulti_grp, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %16) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %addr_grp = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %addr_grp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr_grp, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %18) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %19 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fdb_table, align 4
  %call32 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %20) #7
  %user_count = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 12
  %21 = call ptr @memset(ptr %fdb_table, i32 0, i32 16)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %user_count, i64 noundef 0) #7
  br label %return

return:                                           ; preds = %if.end29, %do.end8.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 475, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_eswitch_set_vport_spoofchk._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_eswitch_set_vport_spoofchk._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 31, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esw_create_legacy_vepa_table._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @esw_create_legacy_vepa_table._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 42, i32 3}
!15 = !{ptr @esw_create_legacy_vepa_table._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @esw_create_legacy_vepa_table._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 85, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @esw_create_legacy_fdb_table.__UNIQUE_ID_ddebug678, !18, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!22 = !{ptr @esw_create_legacy_fdb_table._entry, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 90, i32 3}
!24 = !{ptr @esw_create_legacy_fdb_table._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 104, i32 3}
!27 = !{ptr @esw_create_legacy_fdb_table._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @esw_create_legacy_fdb_table._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 121, i32 3}
!31 = !{ptr @esw_create_legacy_fdb_table._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @esw_create_legacy_fdb_table._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 136, i32 3}
!35 = !{ptr @esw_create_legacy_fdb_table._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @esw_create_legacy_fdb_table._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 153, i32 3}
!39 = !{ptr @esw_create_legacy_fdb_table._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @esw_create_legacy_fdb_table._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 52, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @esw_destroy_legacy_fdb_table.__UNIQUE_ID_ddebug677, !42, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/legacy.c", i32 168, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @esw_destroy_legacy_vepa_table.__UNIQUE_ID_ddebug689, !46, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148861386, i64 2148861391, i64 2148861404, i64 2148861448, i64 2148861482, i64 2148861503}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
