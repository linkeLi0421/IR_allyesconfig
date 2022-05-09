; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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

@mlx5dr_domain_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dmn->info.rx.mutex\00", [44 x i8] zeroinitializer }, align 32
@mlx5dr_domain_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dmn->info.tx.mutex\00", [44 x i8] zeroinitializer }, align 32
@mlx5dr_domain_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed init domain, no caps\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5dr_domain_create\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_domain_create._entry_ptr = internal global ptr @mlx5dr_domain_create._entry, section ".printk_index", align 4
@mlx5dr_domain_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): SW steering is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5dr_domain_create._entry_ptr.10 = internal global ptr @mlx5dr_domain_create._entry.8, section ".printk_index", align 4
@mlx5dr_domain_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 393, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed init domain resources\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5dr_domain_create._entry_ptr.13 = internal global ptr @mlx5dr_domain_create._entry.11, section ".printk_index", align 4
@mlx5dr_domain_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 421, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Force drain failed flags: %d, ret: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5dr_domain_sync\00", [45 x i8] zeroinitializer }, align 32
@mlx5dr_domain_sync._entry_ptr = internal global ptr @mlx5dr_domain_sync._entry, section ".printk_index", align 4
@mlx5dr_domain_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dr_domain_add_vport_cap.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dr_domain_add_vport_cap\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Couldn't insert new vport into xarray (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_domain_caps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 294, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed to allocate domain, bad link type\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dr_domain_caps_init\00", [44 x i8] zeroinitializer }, align 32
@dr_domain_caps_init._entry_ptr = internal global ptr @dr_domain_caps_init._entry, section ".printk_index", align 4
@dr_domain_caps_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:(pid %d): Invalid domain\0A\00", [32 x i8] zeroinitializer }, align 32
@dr_domain_caps_init._entry_ptr.23 = internal global ptr @dr_domain_caps_init._entry.21, section ".printk_index", align 4
@dr_domain_query_fdb_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 273, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Failed to query eswitch manager vport caps (err: %d)\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dr_domain_query_fdb_caps\00", [39 x i8] zeroinitializer }, align 32
@dr_domain_query_fdb_caps._entry_ptr = internal global ptr @dr_domain_query_fdb_caps._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 65, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): SW Steering on this device is unsupported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dr_domain_init_resources\00", [39 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr = internal global ptr @dr_domain_init_resources._entry, section ".printk_index", align 4
@dr_domain_init_resources._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 71, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Couldn't allocate PD, ret: %d\00", [50 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr.31 = internal global ptr @dr_domain_init_resources._entry.29, section ".printk_index", align 4
@dr_domain_init_resources._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.5, i32 77, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): Couldn't allocate UAR\0A\00", [57 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr.34 = internal global ptr @dr_domain_init_resources._entry.32, section ".printk_index", align 4
@dr_domain_init_resources._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.5, i32 84, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Couldn't get icm memory\0A\00", [55 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr.37 = internal global ptr @dr_domain_init_resources._entry.35, section ".printk_index", align 4
@dr_domain_init_resources._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.5, i32 91, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Couldn't get action icm memory\0A\00", [48 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr.40 = internal global ptr @dr_domain_init_resources._entry.38, section ".printk_index", align 4
@dr_domain_init_resources._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.5, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Couldn't create send-ring\0A\00", [53 x i8] zeroinitializer }, align 32
@dr_domain_init_resources._entry_ptr.43 = internal global ptr @dr_domain_init_resources._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 373, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 374, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 377, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 386, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 393, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 420, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 196, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 294, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 343, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 273, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 378, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 65, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 71, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 77, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 84, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 91, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 98, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @dr_domain_caps_init._entry, ptr @dr_domain_caps_init._entry.21, ptr @dr_domain_caps_init._entry_ptr, ptr @dr_domain_caps_init._entry_ptr.23, ptr @dr_domain_init_resources._entry, ptr @dr_domain_init_resources._entry.29, ptr @dr_domain_init_resources._entry.32, ptr @dr_domain_init_resources._entry.35, ptr @dr_domain_init_resources._entry.38, ptr @dr_domain_init_resources._entry.41, ptr @dr_domain_init_resources._entry_ptr, ptr @dr_domain_init_resources._entry_ptr.31, ptr @dr_domain_init_resources._entry_ptr.34, ptr @dr_domain_init_resources._entry_ptr.37, ptr @dr_domain_init_resources._entry_ptr.40, ptr @dr_domain_init_resources._entry_ptr.43, ptr @dr_domain_query_fdb_caps._entry, ptr @dr_domain_query_fdb_caps._entry_ptr, ptr @mlx5dr_domain_create._entry, ptr @mlx5dr_domain_create._entry.11, ptr @mlx5dr_domain_create._entry.8, ptr @mlx5dr_domain_create._entry_ptr, ptr @mlx5dr_domain_create._entry_ptr.10, ptr @mlx5dr_domain_create._entry_ptr.13, ptr @mlx5dr_domain_sync._entry, ptr @mlx5dr_domain_sync._entry_ptr, ptr @mlx5dr_domain_create.__key, ptr @.str, ptr @mlx5dr_domain_create.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @xa_init_flags.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_domain_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_caps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_caps_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_query_fdb_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_domain_init_resources._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_domain_get_recalc_cs_ft_addr(ptr noundef %dmn, i16 noundef zeroext %vport_num, ptr nocapture noundef writeonly %rx_icm_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_fts_xa = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 10
  %conv = zext i16 %vport_num to i32
  %call = tail call ptr @xa_load(ptr noundef %csum_fts_xa, i32 noundef %conv) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @mlx5dr_fw_create_recalc_cs_ft(ptr noundef %dmn, i16 noundef zeroext %vport_num) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call6 = tail call ptr @xa_store(ptr noundef %csum_fts_xa, i32 noundef %conv, ptr noundef nonnull %call1, i32 noundef 3264) #9
  %0 = ptrtoint ptr %call6 to i32
  %and.i.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call6, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %0, 2
  %retval.0.i = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %recalc_cs_ft.0 = phi ptr [ %call, %entry.if.end11_crit_edge ], [ %call1, %if.end.if.end11_crit_edge ]
  %1 = ptrtoint ptr %recalc_cs_ft.0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %recalc_cs_ft.0, align 8
  %3 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %rx_icm_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %if.then.cleanup_crit_edge ], [ %retval.0.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_fw_create_recalc_cs_ft(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_domain_get_vport_cap(ptr noundef %dmn, i16 noundef zeroext %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ecpf.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 33
  %0 = ptrtoint ptr %is_ecpf.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_ecpf.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i = icmp slt i8 %bf.load.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %vport)
  %cmp.i = icmp eq i16 %vport, -2
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.if.then_crit_edge, label %dr_domain_is_esw_mgr_vport.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

dr_domain_is_esw_mgr_vport.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vport)
  %cmp9.i = icmp eq i16 %vport, 0
  %spec.select.i = and i1 %cmp9.i, %tobool7.not.i
  br i1 %spec.select.i, label %dr_domain_is_esw_mgr_vport.exit.if.then_crit_edge, label %if.end

dr_domain_is_esw_mgr_vport.exit.if.then_crit_edge: ; preds = %dr_domain_is_esw_mgr_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %dr_domain_is_esw_mgr_vport.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %vports = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 30
  br label %cleanup

if.end:                                           ; preds = %dr_domain_is_esw_mgr_vport.exit
  %conv = zext i16 %vport to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vport)
  %cmp = icmp eq i16 %vport, -1
  br i1 %cmp, label %if.then3, label %vport_load.preheader

vport_load.preheader:                             ; preds = %if.end
  %vports_caps_xa = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 30, i32 2
  br label %vport_load

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %uplink_caps = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 30, i32 1
  br label %cleanup

vport_load:                                       ; preds = %if.end10.vport_load_crit_edge, %vport_load.preheader
  %call8 = tail call ptr @xa_load(ptr noundef %vports_caps_xa, i32 noundef %conv) #9
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end10, label %vport_load.cleanup_crit_edge

vport_load.cleanup_crit_edge:                     ; preds = %vport_load
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %vport_load
  %call11 = tail call fastcc ptr @dr_domain_add_vport_cap(ptr noundef %dmn, i16 noundef zeroext %vport)
  %cmp13 = icmp eq ptr %call11, inttoptr (i32 -16 to ptr)
  br i1 %cmp13, label %if.end10.vport_load_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.vport_load_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %vport_load

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %vport_load.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi ptr [ %vports, %if.then ], [ %uplink_caps, %if.then3 ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call8, %vport_load.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dr_domain_add_vport_cap(ptr noundef %dmn, i16 noundef zeroext %vport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 24, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 4
  %icm_address_rx.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call.i.i, i32 0, i32 3
  %icm_address_tx.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call.i.i, i32 0, i32 4
  %call.i = tail call i32 @mlx5dr_cmd_query_esw_vport_context(ptr noundef %1, i1 noundef zeroext true, i16 noundef zeroext %vport, ptr noundef %icm_address_rx.i, ptr noundef %icm_address_tx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 4
  %call4.i = tail call i32 @mlx5dr_cmd_query_gvmi(ptr noundef %3, i1 noundef zeroext true, i16 noundef zeroext %vport, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end5, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %if.end.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %num.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vport, ptr %num.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %caps.i, align 8
  %vhca_gvmi.i = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %vhca_gvmi.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vhca_gvmi.i, align 2
  %vports_caps_xa = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 30, i32 2
  %conv = zext i16 %vport to i32
  tail call void @_raw_spin_lock(ptr noundef %vports_caps_xa) #9
  %call.i32 = tail call i32 @__xa_insert(ptr noundef %vports_caps_xa, i32 noundef %conv, ptr noundef nonnull %call.i.i, i32 noundef 3264) #9
  tail call void @_raw_spin_unlock(ptr noundef %vports_caps_xa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool7.not = icmp eq i32 %call.i32, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_domain_add_vport_cap.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_domain_add_vport_cap, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !86

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_domain_add_vport_cap.__UNIQUE_ID_ddebug544, ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 196, i32 noundef %17, i32 noundef %call.i32) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #9
  %18 = inttoptr i32 %call.i32 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ %18, %do.end ], [ null, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_domain_create(ptr noundef %mdev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp ugt i32 %type, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 704) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mdev3 = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mdev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdev, ptr %mdev3, align 4
  %type4 = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type4, align 8
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcount, align 4
  %info = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9
  %mutex = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5dr_domain_create.__key) #9
  %mutex7 = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6, i32 3
  tail call void @__mutex_init(ptr noundef %mutex7, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5dr_domain_create.__key.1) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 256
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 294, i32 noundef %18) #14
  br label %do.end15

if.end.i:                                         ; preds = %if.end2
  %caps2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7
  %call3.i = tail call i32 @mlx5dr_cmd_query_device(ptr noundef %mdev, ptr noundef %caps2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.do.end15_crit_edge

if.end.i.do.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

if.end5.i:                                        ; preds = %if.end.i
  %eswitch_manager.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 24
  %19 = ptrtoint ptr %eswitch_manager.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %eswitch_manager.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end5.i.do.end15_crit_edge, label %if.end.i.i

if.end5.i.do.end15_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

if.end.i.i:                                       ; preds = %if.end5.i
  %esw_caps.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 29
  %call.i.i = tail call i32 @mlx5dr_cmd_query_esw_caps(ptr noundef %mdev, ptr noundef %esw_caps.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.do.end15_crit_edge

if.end.i.i.do.end15_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

if.end5.i.i:                                      ; preds = %if.end.i.i
  %sw_owner.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 29, i32 4
  %21 = ptrtoint ptr %sw_owner.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %sw_owner.i.i, align 8
  %fdb_sw_owner.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 27
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i, 7
  %22 = ptrtoint ptr %fdb_sw_owner.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.load.lobit.i.i, ptr %fdb_sw_owner.i.i, align 8
  %fdb_sw_owner_v2.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 28
  %23 = ptrtoint ptr %fdb_sw_owner_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load19.i.i = load i8, ptr %fdb_sw_owner_v2.i.i, align 1
  %24 = lshr i8 %bf.load.i.i, 1
  %bf.shl.i.i = and i8 %24, 32
  %bf.clear20.i.i = and i8 %bf.load19.i.i, -33
  %bf.set.i.i = or i8 %bf.clear20.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %fdb_sw_owner_v2.i.i, align 1
  %25 = ptrtoint ptr %esw_caps.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %esw_caps.i.i, align 8
  %esw_rx_drop_address.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 4
  %27 = ptrtoint ptr %esw_rx_drop_address.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %esw_rx_drop_address.i.i, align 8
  %drop_icm_address_tx.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 29, i32 1
  %28 = ptrtoint ptr %drop_icm_address_tx.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %drop_icm_address_tx.i.i, align 8
  %esw_tx_drop_address.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 5
  %30 = ptrtoint ptr %esw_tx_drop_address.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %esw_tx_drop_address.i.i, align 8
  %vports_caps_xa.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %vports_caps_xa.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 2, i32 1
  %31 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 2, i32 2
  %32 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %xa_head.i.i.i.i, align 8
  %33 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev3, align 4
  %icm_address_rx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 0, i32 3
  %icm_address_tx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @mlx5dr_cmd_query_esw_vport_context(ptr noundef %34, i1 noundef zeroext false, i16 noundef zeroext 0, ptr noundef %icm_address_rx.i.i.i.i, ptr noundef %icm_address_tx.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.i.do.end.i.i_crit_edge

if.end5.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  %vports.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30
  %35 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev3, align 4
  %call4.i.i.i.i = tail call i32 @mlx5dr_cmd_query_gvmi(ptr noundef %36, i1 noundef zeroext false, i16 noundef zeroext 0, ptr noundef %vports.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i, label %if.end9.i, label %if.end.i.i.i.i.do.end.i.i_crit_edge

if.end.i.i.i.i.do.end.i.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i.i.i.do.end.i.i_crit_edge, %if.end5.i.i.do.end.i.i_crit_edge
  %retval.0.i.i.ph.i.i = phi i32 [ %call4.i.i.i.i, %if.end.i.i.i.i.do.end.i.i_crit_edge ], [ %call.i.i.i.i, %if.end5.i.i.do.end.i.i_crit_edge ]
  %37 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdev3, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 273, i32 noundef %46, i32 noundef %retval.0.i.i.ph.i.i) #14
  tail call void @xa_destroy(ptr noundef %vports_caps_xa.i.i) #9
  br label %do.end15

if.end9.i:                                        ; preds = %if.end.i.i.i.i
  %num.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 0, i32 2
  %47 = ptrtoint ptr %num.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %num.i.i.i.i, align 4
  %48 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %caps2.i, align 8
  %vhca_gvmi.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 0, i32 1
  %50 = ptrtoint ptr %vhca_gvmi.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %vhca_gvmi.i.i.i.i, align 2
  %uplink_caps.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 1
  %num.i.i62.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 1, i32 2
  %51 = ptrtoint ptr %num.i.i62.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %num.i.i62.i.i, align 4
  %uplink_icm_address_rx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 29, i32 2
  %52 = ptrtoint ptr %uplink_icm_address_rx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %uplink_icm_address_rx.i.i.i.i, align 8
  %icm_address_rx.i.i63.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 1, i32 3
  %54 = ptrtoint ptr %icm_address_rx.i.i63.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %icm_address_rx.i.i63.i.i, align 8
  %uplink_icm_address_tx.i.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 29, i32 3
  %55 = ptrtoint ptr %uplink_icm_address_tx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %uplink_icm_address_tx.i.i.i.i, align 8
  %icm_address_tx.i.i64.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 1, i32 4
  %57 = ptrtoint ptr %icm_address_tx.i.i64.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %icm_address_tx.i.i64.i.i, align 8
  %58 = ptrtoint ptr %uplink_caps.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %uplink_caps.i.i.i, align 8
  %vhca_gvmi.i.i65.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 30, i32 1, i32 1
  %59 = ptrtoint ptr %vhca_gvmi.i.i65.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %49, ptr %vhca_gvmi.i.i65.i.i, align 2
  %60 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type4, align 8
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %do.end125.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb35.i
    i32 2, label %sw.bb70.i
  ]

sw.bb.i:                                          ; preds = %if.end9.i
  %rx_sw_owner.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 25
  %63 = ptrtoint ptr %rx_sw_owner.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rx_sw_owner.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool12.not.i = icmp eq i8 %64, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i, label %sw.bb.i.if.end22.i_crit_edge

sw.bb.i.if.end22.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %65 = ptrtoint ptr %fdb_sw_owner_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %fdb_sw_owner_v2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool15.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool15.not.i, label %lor.lhs.false.i.do.end15_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end15_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %sw_format_ver.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 23
  %66 = ptrtoint ptr %sw_format_ver.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sw_format_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp19.i = icmp ult i8 %67, 2
  br i1 %cmp19.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %land.lhs.true.i.do.end15_crit_edge

land.lhs.true.i.do.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true.i.if.end22.i_crit_edge, %sw.bb.i.if.end22.i_crit_edge
  %68 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %info, align 8
  %rx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5
  %type25.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5, i32 2
  %69 = ptrtoint ptr %type25.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type25.i, align 8
  %nic_rx_drop_address.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 1
  %70 = ptrtoint ptr %nic_rx_drop_address.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %nic_rx_drop_address.i, align 8
  %default_icm_addr.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5, i32 1
  %72 = ptrtoint ptr %default_icm_addr.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %default_icm_addr.i, align 8
  %73 = ptrtoint ptr %rx.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %71, ptr %rx.i, align 8
  br label %if.end18

sw.bb35.i:                                        ; preds = %if.end9.i
  %tx_sw_owner.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 26
  %74 = ptrtoint ptr %tx_sw_owner.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tx_sw_owner.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool38.not.i = icmp eq i8 %75, 0
  br i1 %tobool38.not.i, label %lor.lhs.false40.i, label %sw.bb35.i.if.end55.i_crit_edge

sw.bb35.i.if.end55.i_crit_edge:                   ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

lor.lhs.false40.i:                                ; preds = %sw.bb35.i
  %76 = ptrtoint ptr %fdb_sw_owner_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load43.i = load i8, ptr %fdb_sw_owner_v2.i.i, align 1
  %77 = and i8 %bf.load43.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool46.not.i = icmp eq i8 %77, 0
  br i1 %tobool46.not.i, label %lor.lhs.false40.i.do.end15_crit_edge, label %land.lhs.true47.i

lor.lhs.false40.i.do.end15_crit_edge:             ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true47.i:                                ; preds = %lor.lhs.false40.i
  %sw_format_ver50.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 23
  %78 = ptrtoint ptr %sw_format_ver50.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sw_format_ver50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp52.i = icmp ult i8 %79, 2
  br i1 %cmp52.i, label %land.lhs.true47.i.if.end55.i_crit_edge, label %land.lhs.true47.i.do.end15_crit_edge

land.lhs.true47.i.do.end15_crit_edge:             ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true47.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %land.lhs.true47.i.if.end55.i_crit_edge, %sw.bb35.i.if.end55.i_crit_edge
  %80 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %info, align 8
  %tx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6
  %type59.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6, i32 2
  %81 = ptrtoint ptr %type59.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %type59.i, align 8
  %nic_tx_allow_address.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 3
  %82 = ptrtoint ptr %nic_tx_allow_address.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %nic_tx_allow_address.i, align 8
  %default_icm_addr64.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6, i32 1
  %84 = ptrtoint ptr %default_icm_addr64.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %default_icm_addr64.i, align 8
  %nic_tx_drop_address.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 2
  %85 = ptrtoint ptr %nic_tx_drop_address.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %nic_tx_drop_address.i, align 8
  %87 = ptrtoint ptr %tx.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %tx.i, align 8
  br label %if.end18

sw.bb70.i:                                        ; preds = %if.end9.i
  %88 = ptrtoint ptr %eswitch_manager.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %eswitch_manager.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool73.not.i = icmp eq i8 %89, 0
  br i1 %tobool73.not.i, label %sw.bb70.i.do.end15_crit_edge, label %if.end75.i

sw.bb70.i.do.end15_crit_edge:                     ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

if.end75.i:                                       ; preds = %sw.bb70.i
  %90 = ptrtoint ptr %fdb_sw_owner.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fdb_sw_owner.i.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool78.not.i = icmp eq i8 %91, 0
  br i1 %tobool78.not.i, label %lor.lhs.false80.i, label %if.end75.i.if.end96.i_crit_edge

if.end75.i.if.end96.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

lor.lhs.false80.i:                                ; preds = %if.end75.i
  %92 = ptrtoint ptr %fdb_sw_owner_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load83.i = load i8, ptr %fdb_sw_owner_v2.i.i, align 1
  %93 = and i8 %bf.load83.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool87.not.i = icmp eq i8 %93, 0
  br i1 %tobool87.not.i, label %lor.lhs.false80.i.do.end15_crit_edge, label %land.lhs.true88.i

lor.lhs.false80.i.do.end15_crit_edge:             ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true88.i:                                ; preds = %lor.lhs.false80.i
  %sw_format_ver91.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 23
  %94 = ptrtoint ptr %sw_format_ver91.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sw_format_ver91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp93.i = icmp ult i8 %95, 2
  br i1 %cmp93.i, label %land.lhs.true88.i.if.end96.i_crit_edge, label %land.lhs.true88.i.do.end15_crit_edge

land.lhs.true88.i.do.end15_crit_edge:             ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.lhs.true88.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

if.end96.i:                                       ; preds = %land.lhs.true88.i.if.end96.i_crit_edge, %if.end75.i.if.end96.i_crit_edge
  %rx98.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5
  %type99.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5, i32 2
  %96 = ptrtoint ptr %type99.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %type99.i, align 8
  %tx101.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6
  %type102.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6, i32 2
  %97 = ptrtoint ptr %type102.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type102.i, align 8
  %98 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %info, align 8
  %99 = ptrtoint ptr %icm_address_tx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %icm_address_tx.i.i.i.i, align 8
  %default_icm_addr109.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 6, i32 1
  %101 = ptrtoint ptr %default_icm_addr109.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %default_icm_addr109.i, align 8
  %102 = ptrtoint ptr %icm_address_rx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %icm_address_rx.i.i.i.i, align 8
  %default_icm_addr112.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 5, i32 1
  %104 = ptrtoint ptr %default_icm_addr112.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %default_icm_addr112.i, align 8
  %105 = ptrtoint ptr %esw_rx_drop_address.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %esw_rx_drop_address.i.i, align 8
  %107 = ptrtoint ptr %rx98.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %rx98.i, align 8
  %108 = ptrtoint ptr %esw_tx_drop_address.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %esw_tx_drop_address.i.i, align 8
  %110 = ptrtoint ptr %tx101.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %tx101.i, align 8
  br label %if.end18

do.end125.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mdev3, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %115 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i175.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i175.i to ptr
  %task129.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task129.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task129.i, align 8
  %pid130.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 68
  %119 = ptrtoint ptr %pid130.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pid130.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 343, i32 noundef %120) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end125.i, %land.lhs.true88.i.do.end15_crit_edge, %lor.lhs.false80.i.do.end15_crit_edge, %sw.bb70.i.do.end15_crit_edge, %land.lhs.true47.i.do.end15_crit_edge, %lor.lhs.false40.i.do.end15_crit_edge, %land.lhs.true.i.do.end15_crit_edge, %lor.lhs.false.i.do.end15_crit_edge, %do.end.i.i, %if.end.i.i.do.end15_crit_edge, %if.end5.i.do.end15_crit_edge, %if.end.i.do.end15_crit_edge, %do.end.i
  %121 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mdev3, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %125 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 68
  %129 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef %130) #14
  br label %free_domain

if.end18:                                         ; preds = %if.end96.i, %if.end55.i, %if.end22.i
  %max_log_action_icm_sz = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 4
  %131 = ptrtoint ptr %max_log_action_icm_sz to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 12, ptr %max_log_action_icm_sz, align 8
  %log_icm_size = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 6
  %132 = ptrtoint ptr %log_icm_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %log_icm_size, align 8
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 20)
  %max_log_sw_icm_sz = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 3
  %135 = ptrtoint ptr %max_log_sw_icm_sz to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %max_log_sw_icm_sz, align 4
  %136 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %info, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool24.not = icmp eq i8 %137, 0
  br i1 %tobool24.not, label %do.end28, label %if.end34

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mdev3, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %142 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i71 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i71 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 68
  %146 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pid33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 386, i32 noundef %147) #14
  br label %uninit_caps

if.end34:                                         ; preds = %if.end18
  %sw_format_ver.i72 = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 9, i32 7, i32 23
  %148 = ptrtoint ptr %sw_format_ver.i72 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %sw_format_ver.i72, align 4
  %call.i = tail call ptr @mlx5dr_ste_get_ctx(i8 noundef zeroext %149) #9
  %ste_ctx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 11
  %150 = ptrtoint ptr %ste_ctx.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i, ptr %ste_ctx.i, align 4
  %tobool.not.i73 = icmp eq ptr %call.i, null
  %151 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mdev3, align 4
  br i1 %tobool.not.i73, label %do.end.i77, label %if.end.i78

do.end.i77:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 8
  %155 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i74 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i74 to ptr
  %task.i75 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %task.i75 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task.i75, align 8
  %pid.i76 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 68
  %159 = ptrtoint ptr %pid.i76 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pid.i76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 65, i32 noundef %160) #14
  br label %do.end40

if.end.i78:                                       ; preds = %if.end34
  %pdn.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 2
  %call4.i = tail call i32 @mlx5_core_alloc_pd(ptr noundef %152, ptr noundef %pdn.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %161 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mdev3, align 4
  br i1 %tobool5.not.i, label %if.end15.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 8
  %165 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i108.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i108.i to ptr
  %task13.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task13.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task13.i, align 8
  %pid14.i = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 68
  %169 = ptrtoint ptr %pid14.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pid14.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 71, i32 noundef %170, i32 noundef %call4.i) #14
  br label %do.end40

if.end15.i:                                       ; preds = %if.end.i78
  %call17.i = tail call ptr @mlx5_get_uars_page(ptr noundef %162) #9
  %uar.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 3
  %171 = ptrtoint ptr %uar.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call17.i, ptr %uar.i, align 4
  %cmp.i.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end23.i, label %if.end31.i

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mdev3, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 8
  %176 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i109.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i109.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %task27.i, align 8
  %pid28.i = getelementptr inbounds %struct.task_struct, ptr %179, i32 0, i32 68
  %180 = ptrtoint ptr %pid28.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pid28.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28, i32 noundef 77, i32 noundef %181) #14
  %182 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %uar.i, align 4
  %184 = ptrtoint ptr %183 to i32
  br label %dr_domain_init_resources.exit

if.end31.i:                                       ; preds = %if.end15.i
  %call32.i = tail call ptr @mlx5dr_icm_pool_create(ptr noundef nonnull %call7.i.i, i32 noundef 0) #9
  %ste_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 6
  %185 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call32.i, ptr %ste_icm_pool.i, align 8
  %tobool34.not.i = icmp eq ptr %call32.i, null
  br i1 %tobool34.not.i, label %do.end38.i, label %if.end44.i

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mdev3, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 8
  %190 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i110.i = and i32 %190, -16384
  %191 = inttoptr i32 %and.i110.i to ptr
  %task42.i = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %task42.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task42.i, align 8
  %pid43.i = getelementptr inbounds %struct.task_struct, ptr %193, i32 0, i32 68
  %194 = ptrtoint ptr %pid43.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pid43.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, i32 noundef 84, i32 noundef %195) #14
  br label %clean_uar.i

if.end44.i:                                       ; preds = %if.end31.i
  %call45.i = tail call ptr @mlx5dr_icm_pool_create(ptr noundef nonnull %call7.i.i, i32 noundef 1) #9
  %action_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 7
  %196 = ptrtoint ptr %action_icm_pool.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call45.i, ptr %action_icm_pool.i, align 4
  %tobool47.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool47.not.i, label %do.end51.i, label %if.end57.i

do.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mdev3, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 8
  %201 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i111.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i111.i to ptr
  %task55.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %task55.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task55.i, align 8
  %pid56.i = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 68
  %205 = ptrtoint ptr %pid56.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %pid56.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, i32 noundef 91, i32 noundef %206) #14
  br label %free_ste_icm_pool.i

if.end57.i:                                       ; preds = %if.end44.i
  %call58.i = tail call i32 @mlx5dr_send_ring_alloc(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end57.i.if.end46_crit_edge, label %do.end63.i

if.end57.i.if.end46_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mdev3, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 8
  %211 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i112.i = and i32 %211, -16384
  %212 = inttoptr i32 %and.i112.i to ptr
  %task67.i = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %task67.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %task67.i, align 8
  %pid68.i = getelementptr inbounds %struct.task_struct, ptr %214, i32 0, i32 68
  %215 = ptrtoint ptr %pid68.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pid68.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.28, i32 noundef 98, i32 noundef %216) #14
  %217 = ptrtoint ptr %action_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %action_icm_pool.i, align 4
  tail call void @mlx5dr_icm_pool_destroy(ptr noundef %218) #9
  br label %free_ste_icm_pool.i

free_ste_icm_pool.i:                              ; preds = %do.end63.i, %do.end51.i
  %ret.0.i = phi i32 [ %call58.i, %do.end63.i ], [ -12, %do.end51.i ]
  %219 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ste_icm_pool.i, align 8
  tail call void @mlx5dr_icm_pool_destroy(ptr noundef %220) #9
  br label %clean_uar.i

clean_uar.i:                                      ; preds = %free_ste_icm_pool.i, %do.end38.i
  %ret.1.i = phi i32 [ %ret.0.i, %free_ste_icm_pool.i ], [ -12, %do.end38.i ]
  %221 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mdev3, align 4
  %223 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %uar.i, align 4
  tail call void @mlx5_put_uars_page(ptr noundef %222, ptr noundef %224) #9
  br label %dr_domain_init_resources.exit

dr_domain_init_resources.exit:                    ; preds = %clean_uar.i, %do.end23.i
  %ret.2.i = phi i32 [ %184, %do.end23.i ], [ %ret.1.i, %clean_uar.i ]
  %225 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mdev3, align 4
  %227 = ptrtoint ptr %pdn.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pdn.i, align 8
  %call76.i = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %226, i32 noundef %228) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool36.not = icmp eq i32 %ret.2.i, 0
  br i1 %tobool36.not, label %dr_domain_init_resources.exit.if.end46_crit_edge, label %dr_domain_init_resources.exit.do.end40_crit_edge

dr_domain_init_resources.exit.do.end40_crit_edge: ; preds = %dr_domain_init_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

dr_domain_init_resources.exit.if.end46_crit_edge: ; preds = %dr_domain_init_resources.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end40:                                         ; preds = %dr_domain_init_resources.exit.do.end40_crit_edge, %do.end9.i, %do.end.i77
  %229 = ptrtoint ptr %mdev3 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mdev3, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 8
  %233 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i80 = and i32 %233, -16384
  %234 = inttoptr i32 %and.i80 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task44, align 8
  %pid45 = getelementptr inbounds %struct.task_struct, ptr %236, i32 0, i32 68
  %237 = ptrtoint ptr %pid45 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pid45, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef 393, i32 noundef %238) #14
  br label %uninit_caps

if.end46:                                         ; preds = %dr_domain_init_resources.exit.if.end46_crit_edge, %if.end57.i.if.end46_crit_edge
  %csum_fts_xa.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %csum_fts_xa.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 10, i32 1
  %239 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %call7.i.i, i32 0, i32 10, i32 2
  %240 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr null, ptr %xa_head.i.i.i, align 8
  tail call void @mlx5dr_dbg_init_dump(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

uninit_caps:                                      ; preds = %do.end40, %do.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #9
  %241 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %i.i.i, align 4
  %call.i.i82 = call ptr @xa_find(ptr noundef %vports_caps_xa.i.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not14.i.i = icmp eq ptr %call.i.i82, null
  br i1 %tobool.not14.i.i, label %uninit_caps.dr_domain_caps_uninit.exit_crit_edge, label %uninit_caps.for.body.i.i_crit_edge

uninit_caps.for.body.i.i_crit_edge:               ; preds = %uninit_caps
  br label %for.body.i.i

uninit_caps.dr_domain_caps_uninit.exit_crit_edge: ; preds = %uninit_caps
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_caps_uninit.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %uninit_caps.for.body.i.i_crit_edge
  %242 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %i.i.i, align 4
  %call5.i.i = call ptr @xa_erase(ptr noundef %vports_caps_xa.i.i, i32 noundef %243) #9
  call void @kvfree(ptr noundef %call5.i.i) #9
  %call10.i.i = call ptr @xa_find_after(ptr noundef %vports_caps_xa.i.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not.i.i83 = icmp eq ptr %call10.i.i, null
  br i1 %tobool.not.i.i83, label %for.body.i.i.dr_domain_caps_uninit.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.dr_domain_caps_uninit.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_caps_uninit.exit

dr_domain_caps_uninit.exit:                       ; preds = %for.body.i.i.dr_domain_caps_uninit.exit_crit_edge, %uninit_caps.dr_domain_caps_uninit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  call void @xa_destroy(ptr noundef %vports_caps_xa.i.i) #9
  br label %free_domain

free_domain:                                      ; preds = %dr_domain_caps_uninit.exit, %do.end15
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_domain, %if.end46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_domain ], [ %call7.i.i, %if.end46 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_init_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_domain_sync(ptr noundef %dmn, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #9
  %call = tail call i32 @mlx5dr_send_ring_force_drain(ptr noundef %dmn) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 421, i32 noundef %9, i32 noundef %flags, i32 noundef %call) #14
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %and5 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %mdev8 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %10 = ptrtoint ptr %mdev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev8, align 4
  %call9 = tail call i32 @mlx5dr_cmd_sync_steering(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_ring_force_drain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_sync_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_domain_destroy(ptr noundef %dmn) local_unnamed_addr #0 align 64 {
entry:
  %i.i.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b51 = load i1, ptr @mlx5dr_domain_destroy.__already_done, align 1
  br i1 %.b51, label %land.rhs.return_crit_edge, label %if.then, !prof !88

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mlx5dr_domain_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 434, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end37:                                         ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %call38 = tail call i32 @mlx5dr_cmd_sync_steering(ptr noundef %3) #9
  tail call void @mlx5dr_dbg_uninit_dump(ptr noundef %dmn) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %4 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %i.i, align 4
  %csum_fts_xa.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 10
  %call.i = call ptr @xa_find(ptr noundef %csum_fts_xa.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not10.i = icmp eq ptr %call.i, null
  br i1 %tobool.not10.i, label %if.end37.dr_domain_uninit_csum_recalc_fts.exit_crit_edge, label %if.end37.if.then.i_crit_edge

if.end37.if.then.i_crit_edge:                     ; preds = %if.end37
  br label %if.then.i

if.end37.dr_domain_uninit_csum_recalc_fts.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_uninit_csum_recalc_fts.exit

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.end37.if.then.i_crit_edge
  %recalc_cs_ft.011.i = phi ptr [ %call3.i, %if.then.i.if.then.i_crit_edge ], [ %call.i, %if.end37.if.then.i_crit_edge ]
  call void @mlx5dr_fw_destroy_recalc_cs_ft(ptr noundef %dmn, ptr noundef nonnull %recalc_cs_ft.011.i) #9
  %call3.i = call ptr @xa_find_after(ptr noundef %csum_fts_xa.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.then.i.dr_domain_uninit_csum_recalc_fts.exit_crit_edge, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i.dr_domain_uninit_csum_recalc_fts.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_uninit_csum_recalc_fts.exit

dr_domain_uninit_csum_recalc_fts.exit:            ; preds = %if.then.i.dr_domain_uninit_csum_recalc_fts.exit_crit_edge, %if.end37.dr_domain_uninit_csum_recalc_fts.exit_crit_edge
  call void @xa_destroy(ptr noundef %csum_fts_xa.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  %send_ring.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 8
  %5 = ptrtoint ptr %send_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %send_ring.i, align 8
  call void @mlx5dr_send_ring_free(ptr noundef %dmn, ptr noundef %6) #9
  %action_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 7
  %7 = ptrtoint ptr %action_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %action_icm_pool.i, align 4
  call void @mlx5dr_icm_pool_destroy(ptr noundef %8) #9
  %ste_icm_pool.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 6
  %9 = ptrtoint ptr %ste_icm_pool.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ste_icm_pool.i, align 8
  call void @mlx5dr_icm_pool_destroy(ptr noundef %10) #9
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %uar.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 3
  %13 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uar.i, align 4
  call void @mlx5_put_uars_page(ptr noundef %12, ptr noundef %14) #9
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 4
  %pdn.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 2
  %17 = ptrtoint ptr %pdn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdn.i, align 8
  %call.i53 = call i32 @mlx5_core_dealloc_pd(ptr noundef %16, i32 noundef %18) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #9
  %19 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i.i.i, align 4
  %vports_caps_xa.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 30, i32 2
  %call.i.i = call ptr @xa_find(ptr noundef %vports_caps_xa.i.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not14.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not14.i.i, label %dr_domain_uninit_csum_recalc_fts.exit.dr_domain_caps_uninit.exit_crit_edge, label %dr_domain_uninit_csum_recalc_fts.exit.for.body.i.i_crit_edge

dr_domain_uninit_csum_recalc_fts.exit.for.body.i.i_crit_edge: ; preds = %dr_domain_uninit_csum_recalc_fts.exit
  br label %for.body.i.i

dr_domain_uninit_csum_recalc_fts.exit.dr_domain_caps_uninit.exit_crit_edge: ; preds = %dr_domain_uninit_csum_recalc_fts.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_caps_uninit.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %dr_domain_uninit_csum_recalc_fts.exit.for.body.i.i_crit_edge
  %20 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i.i.i, align 4
  %call5.i.i = call ptr @xa_erase(ptr noundef %vports_caps_xa.i.i, i32 noundef %21) #9
  call void @kvfree(ptr noundef %call5.i.i) #9
  %call10.i.i = call ptr @xa_find_after(ptr noundef %vports_caps_xa.i.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.dr_domain_caps_uninit.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.dr_domain_caps_uninit.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dr_domain_caps_uninit.exit

dr_domain_caps_uninit.exit:                       ; preds = %for.body.i.i.dr_domain_caps_uninit.exit_crit_edge, %dr_domain_uninit_csum_recalc_fts.exit.dr_domain_caps_uninit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  call void @xa_destroy(ptr noundef %vports_caps_xa.i.i) #9
  %mutex = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 6, i32 3
  call void @mutex_destroy(ptr noundef %mutex) #9
  %mutex40 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 5, i32 3
  call void @mutex_destroy(ptr noundef %mutex40) #9
  call void @kfree(ptr noundef %dmn) #9
  br label %return

return:                                           ; preds = %dr_domain_caps_uninit.exit, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ 0, %dr_domain_caps_uninit.exit ], [ -16, %if.then ], [ -16, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_uninit_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_domain_set_peer(ptr noundef %dmn, ptr noundef %peer_dmn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #9
  %0 = ptrtoint ptr %dmn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmn, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.if.end_crit_edge, !prof !91

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %dmn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %peer_dmn, ptr %dmn, align 8
  %tobool5.not = icmp eq ptr %peer_dmn, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %refcount8 = getelementptr inbounds %struct.mlx5dr_domain, ptr %peer_dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount8, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount8, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount8, ptr %refcount8, i32 1, ptr elementtype(i32) %refcount8) #9, !srcloc !92
  %asmresult.i.i.i.i.i16 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i16)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i16, 0
  br i1 %tobool1.not.i.i.i, label %if.then6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !91

if.then6.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i16, 1
  %5 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end9_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end9_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount8, i32 noundef %.sink.i.i.i) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i) #9
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_esw_vport_context(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_gvmi(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_query_esw_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_get_ctx(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_alloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_uars_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_icm_pool_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_send_ring_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_icm_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_put_uars_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_dealloc_pd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_fw_destroy_recalc_cs_ft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_send_ring_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @mlx5dr_domain_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 373, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5dr_domain_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 374, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 377, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5dr_domain_create._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5dr_domain_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 386, i32 3}
!16 = !{ptr @mlx5dr_domain_create._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5dr_domain_create._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 393, i32 3}
!20 = !{ptr @mlx5dr_domain_create._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5dr_domain_create._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 420, i32 4}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5dr_domain_sync._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5dr_domain_sync._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 434, i32 6}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 196, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dr_domain_add_vport_cap.__UNIQUE_ID_ddebug544, !30, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 294, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dr_domain_caps_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dr_domain_caps_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 343, i32 3}
!41 = !{ptr @dr_domain_caps_init._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dr_domain_caps_init._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 273, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dr_domain_query_fdb_caps._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dr_domain_query_fdb_caps._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @xa_init_flags.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 65, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dr_domain_init_resources._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dr_domain_init_resources._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 71, i32 3}
!58 = !{ptr @dr_domain_init_resources._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dr_domain_init_resources._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 77, i32 3}
!62 = !{ptr @dr_domain_init_resources._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dr_domain_init_resources._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 84, i32 3}
!66 = !{ptr @dr_domain_init_resources._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dr_domain_init_resources._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 91, i32 3}
!70 = !{ptr @dr_domain_init_resources._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @dr_domain_init_resources._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_domain.c", i32 98, i32 3}
!74 = !{ptr @dr_domain_init_resources._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dr_domain_init_resources._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148741027, i64 2148741032, i64 2148741045, i64 2148741089, i64 2148741123, i64 2148741144}
!87 = !{i8 0, i8 2}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2148348743}
!90 = !{i64 2148263207, i64 2148263239, i64 2148263268, i64 2148263302, i64 2148263333, i64 2148263356}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148260742, i64 2148260774, i64 2148260803, i64 2148260837, i64 2148260868, i64 2148260891}
