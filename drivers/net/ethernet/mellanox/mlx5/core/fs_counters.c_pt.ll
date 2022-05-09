; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_fc_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_fc_create\09\09\09\09"
module asm "\09.long\09__crc_mlx5_fc_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_fc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_fc_create\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_fc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_fc_id\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_fc_id\09\09\09\09"
module asm "\09.long\09__crc_mlx5_fc_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_fc_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_fc_id\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_fc_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_fc_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_fc_destroy\09\09\09\09"
module asm "\09.long\09__crc_mlx5_fc_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_fc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_fc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_fc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_fc_query\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_fc_query\09\09\09\09"
module asm "\09.long\09__crc_mlx5_fc_query\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_fc_query:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_fc_query\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_fc_query:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mlx5_fc_bulk = type { %struct.list_head, i32, i32, ptr, [108 x i8], [0 x %struct.mlx5_fc] }
%struct.mlx5_fc = type { %struct.list_head, %struct.llist_node, %struct.llist_node, i64, i64, ptr, i32, i8, [87 x i8], %struct.mlx5_fc_cache, [104 x i8] }
%struct.llist_node = type { ptr }
%struct.mlx5_fc_cache = type { i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_mlx5_fc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_fc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_fc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_fc_create to i32), ptr @__kstrtab_mlx5_fc_create, ptr @__kstrtabns_mlx5_fc_create }, section "___ksymtab+mlx5_fc_create", align 4
@__kstrtab_mlx5_fc_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_fc_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_fc_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_fc_id to i32), ptr @__kstrtab_mlx5_fc_id, ptr @__kstrtabns_mlx5_fc_id }, section "___ksymtab+mlx5_fc_id", align 4
@__kstrtab_mlx5_fc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_fc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_fc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_fc_destroy to i32), ptr @__kstrtab_mlx5_fc_destroy, ptr @__kstrtabns_mlx5_fc_destroy }, section "___ksymtab+mlx5_fc_destroy", align 4
@mlx5_init_fc_stats.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&fc_stats->counters_idr_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx5_fc\00", [24 x i8] zeroinitializer }, align 32
@mlx5_init_fc_stats.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&fc_stats->work)->work)\00", [52 x i8] zeroinitializer }, align 32
@mlx5_init_fc_stats.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&fc_stats->work)->timer\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_fc_query = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_fc_query = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_fc_query = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_fc_query to i32), ptr @__kstrtab_mlx5_fc_query, ptr @__kstrtabns_mlx5_fc_query }, section "___ksymtab+mlx5_fc_query", align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@mlx5_fc_pool_release_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 742, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): Attempted to release a counter which is not acquired\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_fc_pool_release_counter\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fc_pool_release_counter._entry_ptr = internal global ptr @mlx5_fc_pool_release_counter._entry, section ".printk_index", align 4
@mlx5_fc_bulk_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.12, i32 593, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Freeing bulk before all counters were released\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fc_bulk_destroy\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fc_bulk_destroy._entry_ptr = internal global ptr @mlx5_fc_bulk_destroy._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlx5_fc_stats_bulk_query_size_increase.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mlx5_fc_stats_bulk_query_size_increase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.12, i32 253, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s:%d:(pid %d): Can't increase flow counters bulk query buffer size, insufficient memory, bulk_size(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_fc_stats_bulk_query_size_increase\00", [57 x i8] zeroinitializer }, align 32
@mlx5_fc_stats_bulk_query_size_increase._entry_ptr = internal global ptr @mlx5_fc_stats_bulk_query_size_increase._entry, section ".printk_index", align 4
@mlx5_fc_stats_bulk_query_size_increase._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.12, i32 266, ptr @.str.26, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Flow counters bulk query buffer size increased, bulk_size(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fc_stats_bulk_query_size_increase._entry_ptr.27 = internal global ptr @mlx5_fc_stats_bulk_query_size_increase._entry.24, section ".printk_index", align 4
@mlx5_fc_stats_query_counter_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.12, i32 201, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Error doing bulk query: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_fc_stats_query_counter_range\00", [62 x i8] zeroinitializer }, align 32
@mlx5_fc_stats_query_counter_range._entry_ptr = internal global ptr @mlx5_fc_stats_query_counter_range._entry, section ".printk_index", align 4
@mlx5_fc_pool_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fc_pool->pool_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 429, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 442, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 447, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 36, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 742, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 593, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 378, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 695, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 251, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 264, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 201, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 631, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_mlx5_fc_create, ptr @__ksymtab_mlx5_fc_destroy, ptr @__ksymtab_mlx5_fc_id, ptr @__ksymtab_mlx5_fc_query, ptr @mlx5_fc_bulk_destroy._entry, ptr @mlx5_fc_bulk_destroy._entry_ptr, ptr @mlx5_fc_pool_release_counter._entry, ptr @mlx5_fc_pool_release_counter._entry_ptr, ptr @mlx5_fc_stats_bulk_query_size_increase._entry, ptr @mlx5_fc_stats_bulk_query_size_increase._entry.24, ptr @mlx5_fc_stats_bulk_query_size_increase._entry_ptr, ptr @mlx5_fc_stats_bulk_query_size_increase._entry_ptr.27, ptr @mlx5_fc_stats_query_counter_range._entry, ptr @mlx5_fc_stats_query_counter_range._entry_ptr, ptr @mlx5_init_fc_stats.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mlx5_init_fc_stats.__key.3, ptr @.str.4, ptr @mlx5_init_fc_stats.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @xa_init_flags.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @mlx5_fc_pool_init.__key, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_fc_stats.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_fc_stats.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_fc_stats.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_pool_release_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_bulk_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_stats_bulk_query_size_increase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_stats_bulk_query_size_increase._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_stats_query_counter_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fc_pool_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_fc_create_ex(ptr noundef %dev, i1 noundef zeroext %aging) local_unnamed_addr #0 align 64 {
entry:
  %base_id.i.i.i.i = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %aging, label %land.lhs.true.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end4.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %fc_pool.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14
  %pool_lock.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 1
  tail call void @mutex_lock_nested(ptr noundef %pool_lock.i.i, i32 noundef 0) #12
  %partially_used.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3
  %fully_used.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 2
  %5 = ptrtoint ptr %partially_used.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %partially_used.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %partially_used.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.if.then.i.i_crit_edge, label %if.end.i16.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i16.i:                                     ; preds = %if.then.i
  %bitmask.i.i12.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bitmask.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitmask.i.i12.i, align 16
  %bulk_len.i.i13.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bulk_len.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bulk_len.i.i13.i, align 4
  %call.i.i14.i = tail call i32 @_find_first_bit_be(ptr noundef %8, i32 noundef %10) #12
  %11 = ptrtoint ptr %bulk_len.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bulk_len.i.i13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i14.i, i32 %12)
  %cmp.not.i.i15.i = icmp slt i32 %call.i.i14.i, %12
  br i1 %cmp.not.i.i15.i, label %if.end.i.i18.i, label %if.end.i16.i.if.end.i.i.i24.i_crit_edge

if.end.i16.i.if.end.i.i.i24.i_crit_edge:          ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i24.i

if.end.i.i18.i:                                   ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bitmask.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmask.i.i12.i, align 16
  tail call void @_clear_bit(i32 noundef %call.i.i14.i, ptr noundef %14) #12
  %arrayidx.i.i17.i = getelementptr %struct.mlx5_fc_bulk, ptr %6, i32 0, i32 5, i32 %call.i.i14.i
  br label %if.end.i.i.i24.i

if.end.i.i.i24.i:                                 ; preds = %if.end.i.i18.i, %if.end.i16.i.if.end.i.i.i24.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %arrayidx.i.i17.i, %if.end.i.i18.i ], [ inttoptr (i32 -28 to ptr), %if.end.i16.i.if.end.i.i.i24.i_crit_edge ]
  %15 = ptrtoint ptr %bulk_len.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bulk_len.i.i13.i, align 4
  %17 = ptrtoint ptr %bitmask.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmask.i.i12.i, align 16
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %18, i32 noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp.i26.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %cmp.i26.i, label %if.then5.i28.i, label %if.end.i.i.i24.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge

if.end.i.i.i24.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge: ; preds = %if.end.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_acquire_from_list.exit.i

if.then5.i28.i:                                   ; preds = %if.end.i.i.i24.i
  %call.i.i.i27.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i.i27.i, label %if.end.i.i13.i.i, label %if.then5.i28.i.__list_del_entry.exit.i.i.i_crit_edge

if.then5.i28.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then5.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i

if.end.i.i13.i.i:                                 ; preds = %if.then5.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i13.i.i, %if.then5.i28.i.__list_del_entry.exit.i.i.i_crit_edge
  %25 = ptrtoint ptr %fully_used.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fully_used.i.i, align 4
  %call.i.i.i.i29.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %fully_used.i.i, ptr noundef %26) #12
  br i1 %call.i.i.i.i29.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge

__list_del_entry.exit.i.i.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_acquire_from_list.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %6, ptr %prev1.i.i2.i.i.i, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %6, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fully_used.i.i, ptr %prev3.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %fully_used.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %6, ptr %fully_used.i.i, align 4
  br label %mlx5_fc_pool_acquire_from_list.exit.i

mlx5_fc_pool_acquire_from_list.exit.i:            ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge, %if.end.i.i.i24.i.mlx5_fc_pool_acquire_from_list.exit.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5_fc_pool_acquire_from_list.exit.i.if.then.i.i_crit_edge, label %mlx5_fc_pool_acquire_from_list.exit.i.if.end.i.i_crit_edge

mlx5_fc_pool_acquire_from_list.exit.i.if.end.i.i_crit_edge: ; preds = %mlx5_fc_pool_acquire_from_list.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

mlx5_fc_pool_acquire_from_list.exit.i.if.then.i.i_crit_edge: ; preds = %mlx5_fc_pool_acquire_from_list.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %mlx5_fc_pool_acquire_from_list.exit.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %unused.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 4
  %31 = ptrtoint ptr %unused.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %unused.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %32, %unused.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.if.then5.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.then5.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %bitmask.i.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bitmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bitmask.i.i.i.i, align 16
  %bulk_len.i.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %bulk_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bulk_len.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %34, i32 noundef %36) #12
  %37 = ptrtoint ptr %bulk_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bulk_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i.i, i32 %38)
  %cmp.not.i.i.i.i = icmp slt i32 %call.i.i.i.i, %38
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i.i_crit_edge

if.end.i.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_bulk_acquire_fc.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %bitmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bitmask.i.i.i.i, align 16
  tail call void @_clear_bit(i32 noundef %call.i.i.i.i, ptr noundef %40) #12
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_fc_bulk, ptr %32, i32 0, i32 5, i32 %call.i.i.i.i
  br label %mlx5_fc_bulk_acquire_fc.exit.i.i.i

mlx5_fc_bulk_acquire_fc.exit.i.i.i:               ; preds = %if.end.i.i.i.i, %if.end.i.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %arrayidx.i.i.i.i, %if.end.i.i.i.i ], [ inttoptr (i32 -28 to ptr), %if.end.i.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i13.i.i.i, label %mlx5_fc_bulk_acquire_fc.exit.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge

mlx5_fc_bulk_acquire_fc.exit.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge: ; preds = %mlx5_fc_bulk_acquire_fc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i.i.i

if.end.i.i13.i.i.i:                               ; preds = %mlx5_fc_bulk_acquire_fc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i13.i.i.i, %mlx5_fc_bulk_acquire_fc.exit.i.i.i.__list_del_entry.exit.i.i.i.i_crit_edge
  %47 = ptrtoint ptr %partially_used.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %partially_used.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %32, ptr noundef %partially_used.i.i, ptr noundef %48) #12
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.if.end.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.if.end.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i.i.i.i.i:                               ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %32, ptr %prev1.i.i2.i.i.i.i, align 4
  %50 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %32, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %partially_used.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %partially_used.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %32, ptr %partially_used.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.if.end.i.i_crit_edge, %mlx5_fc_pool_acquire_from_list.exit.i.if.end.i.i_crit_edge
  %fc.0.i.i = phi ptr [ %retval.0.i.i.i, %mlx5_fc_pool_acquire_from_list.exit.i.if.end.i.i_crit_edge ], [ %retval.0.i.i.i.i, %__list_del_entry.exit.i.i.i.i.if.end.i.i_crit_edge ], [ %retval.0.i.i.i.i, %if.end.i.i.i.i.i.i ]
  %cmp.i29.i.i = icmp ugt ptr %fc.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29.i.i, label %if.end.i.i.if.then5.i.i_crit_edge, label %if.end.i.i.if.end13.i.i_crit_edge

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end.i.i.if.then5.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i.if.then5.i.i_crit_edge, %if.then.i.i.if.then5.i.i_crit_edge
  %53 = ptrtoint ptr %fc_pool.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fc_pool.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_id.i.i.i.i) #12
  %55 = ptrtoint ptr %base_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %base_id.i.i.i.i, align 4, !annotation !76
  %caps.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %54, i32 0, i32 8
  %56 = ptrtoint ptr %caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %caps.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %57, i32 24
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %59, 8
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.not.i.i30.i.i = icmp eq i32 %and.i.i.i.i, 0
  %mul.i.i.i.i = shl nuw nsw i32 %and.i.i.i.i, 7
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i30.i.i, i32 1, i32 %mul.i.i.i.i
  %60 = shl nuw nsw i32 %spec.select.i.i.i.i, 8
  %61 = or i32 %60, 128
  %call.i.i.i.i31.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %61, i32 noundef 3520, i32 noundef -1) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i31.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then5.i.i.err_alloc_bulk.i.i.i.i_crit_edge, label %kvcalloc.exit.i.i.i.i

if.then5.i.i.err_alloc_bulk.i.i.i.i_crit_edge:    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_bulk.i.i.i.i

kvcalloc.exit.i.i.i.i:                            ; preds = %if.then5.i.i
  %sub.i.i.i.i = add nuw nsw i32 %spec.select.i.i.i.i, 31
  %62 = lshr i32 %sub.i.i.i.i, 3
  %63 = and i32 %62, 4084
  %call.i.i.i.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %63, i32 noundef 3520, i32 noundef -1) #15
  %bitmask.i.i32.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %call.i.i.i.i31.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %bitmask.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i.i.i.i.i.i, ptr %bitmask.i.i32.i.i, align 16
  %tobool4.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i.i, label %kvcalloc.exit.i.i.i.i.err_alloc_bitmask.i.i.i.i_crit_edge, label %if.end6.i.i.i.i

kvcalloc.exit.i.i.i.i.err_alloc_bitmask.i.i.i.i_crit_edge: ; preds = %kvcalloc.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_alloc_bitmask.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %kvcalloc.exit.i.i.i.i
  %call7.i.i.i.i = call i32 @mlx5_cmd_fc_bulk_alloc(ptr noundef %54, i32 noundef %and.i.i.i.i, ptr noundef nonnull %base_id.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %if.end10.i.i.i.i, label %err_mlx5_cmd_bulk_alloc.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  %65 = ptrtoint ptr %base_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base_id.i.i.i.i, align 4
  %base_id11.i.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %call.i.i.i.i31.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %base_id11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %base_id11.i.i.i.i, align 8
  %bulk_len12.i.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %call.i.i.i.i31.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %bulk_len12.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.select.i.i.i.i, ptr %bulk_len12.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i)
  %cmp1349.not.i.i.i.i = icmp eq i32 %spec.select.i.i.i.i, 0
  br i1 %cmp1349.not.i.i.i.i, label %if.end10.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge, label %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge

if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.end10.i.i.i.i
  br label %for.body.i.i.i.i

if.end10.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge: ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_bulk_create.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.050.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end10.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %base_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_id.i.i.i.i, align 4
  %add15.i.i.i.i = add i32 %70, %i.050.i.i.i.i
  %bulk1.i.i.i.i.i = getelementptr %struct.mlx5_fc_bulk, ptr %call.i.i.i.i31.i.i, i32 0, i32 5, i32 %i.050.i.i.i.i, i32 5
  %71 = ptrtoint ptr %bulk1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i.i.i.i31.i.i, ptr %bulk1.i.i.i.i.i, align 32
  %id2.i.i.i.i.i = getelementptr %struct.mlx5_fc_bulk, ptr %call.i.i.i.i31.i.i, i32 0, i32 5, i32 %i.050.i.i.i.i, i32 6
  %72 = ptrtoint ptr %id2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add15.i.i.i.i, ptr %id2.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %bitmask.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bitmask.i.i32.i.i, align 16
  call void @_set_bit(i32 noundef %i.050.i.i.i.i, ptr noundef %74) #12
  %inc.i.i.i.i = add nuw nsw i32 %i.050.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.body.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_bulk_create.exit.i.i.i

err_mlx5_cmd_bulk_alloc.i.i.i.i:                  ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %bitmask.i.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bitmask.i.i32.i.i, align 16
  call void @kvfree(ptr noundef %76) #12
  br label %err_alloc_bitmask.i.i.i.i

err_alloc_bitmask.i.i.i.i:                        ; preds = %err_mlx5_cmd_bulk_alloc.i.i.i.i, %kvcalloc.exit.i.i.i.i.err_alloc_bitmask.i.i.i.i_crit_edge
  %err.0.i.i.i.i = phi i32 [ %call7.i.i.i.i, %err_mlx5_cmd_bulk_alloc.i.i.i.i ], [ -12, %kvcalloc.exit.i.i.i.i.err_alloc_bitmask.i.i.i.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i31.i.i) #12
  br label %err_alloc_bulk.i.i.i.i

err_alloc_bulk.i.i.i.i:                           ; preds = %err_alloc_bitmask.i.i.i.i, %if.then5.i.i.err_alloc_bulk.i.i.i.i_crit_edge
  %err.1.i.i.i.i = phi i32 [ %err.0.i.i.i.i, %err_alloc_bitmask.i.i.i.i ], [ -12, %if.then5.i.i.err_alloc_bulk.i.i.i.i_crit_edge ]
  %77 = inttoptr i32 %err.1.i.i.i.i to ptr
  br label %mlx5_fc_bulk_create.exit.i.i.i

mlx5_fc_bulk_create.exit.i.i.i:                   ; preds = %err_alloc_bulk.i.i.i.i, %for.body.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge, %if.end10.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge
  %retval.0.i.i33.i.i = phi ptr [ %77, %err_alloc_bulk.i.i.i.i ], [ %call.i.i.i.i31.i.i, %if.end10.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge ], [ %call.i.i.i.i31.i.i, %for.body.i.i.i.i.mlx5_fc_bulk_create.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_id.i.i.i.i) #12
  %cmp.i.i.i.i = icmp ugt ptr %retval.0.i.i33.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %mlx5_fc_bulk_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %used_fcs.i.i43.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 6
  %78 = ptrtoint ptr %used_fcs.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %used_fcs.i.i43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621449, i32 %79)
  %cmp.i7.i44.i.i = icmp sgt i32 %79, 2621449
  %div.i.i45.i.i = sdiv i32 %79, 10
  %cond.i.i46.i.i = select i1 %cmp.i7.i44.i.i, i32 262144, i32 %div.i.i45.i.i
  %threshold.i.i47.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 7
  %80 = ptrtoint ptr %threshold.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.i.i46.i.i, ptr %threshold.i.i47.i.i, align 4
  br label %mlx5_fc_pool_acquire_counter.exit.i

if.end10.i.i:                                     ; preds = %mlx5_fc_bulk_create.exit.i.i.i
  %bulk_len.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %retval.0.i.i33.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %bulk_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bulk_len.i.i.i, align 4
  %available_fcs.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 5
  %83 = ptrtoint ptr %available_fcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %available_fcs.i.i.i, align 4
  %add.i.i.i = add i32 %84, %82
  store i32 %add.i.i.i, ptr %available_fcs.i.i.i, align 4
  %used_fcs.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 6
  %85 = ptrtoint ptr %used_fcs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %used_fcs.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621449, i32 %86)
  %cmp.i7.i.i.i = icmp sgt i32 %86, 2621449
  %div.i.i.i.i = sdiv i32 %86, 10
  %cond.i.i.i.i = select i1 %cmp.i7.i.i.i, i32 262144, i32 %div.i.i.i.i
  %threshold.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 7
  %87 = ptrtoint ptr %threshold.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond.i.i.i.i, ptr %threshold.i.i.i.i, align 4
  %bitmask.i.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %retval.0.i.i33.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %bitmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bitmask.i.i.i, align 16
  %90 = ptrtoint ptr %bulk_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bulk_len.i.i.i, align 4
  %call.i.i.i = call i32 @_find_first_bit_be(ptr noundef %89, i32 noundef %91) #12
  %92 = ptrtoint ptr %bulk_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bulk_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %93)
  %cmp.not.i.i.i = icmp slt i32 %call.i.i.i, %93
  br i1 %cmp.not.i.i.i, label %if.end.i37.i.i, label %if.end10.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i_crit_edge

if.end10.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_bulk_acquire_fc.exit.i.i

if.end.i37.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %bitmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bitmask.i.i.i, align 16
  call void @_clear_bit(i32 noundef %call.i.i.i, ptr noundef %95) #12
  %arrayidx.i.i.i = getelementptr %struct.mlx5_fc_bulk, ptr %retval.0.i.i33.i.i, i32 0, i32 5, i32 %call.i.i.i
  br label %mlx5_fc_bulk_acquire_fc.exit.i.i

mlx5_fc_bulk_acquire_fc.exit.i.i:                 ; preds = %if.end.i37.i.i, %if.end10.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i_crit_edge
  %retval.0.i38.i.i = phi ptr [ %arrayidx.i.i.i, %if.end.i37.i.i ], [ inttoptr (i32 -28 to ptr), %if.end10.i.i.mlx5_fc_bulk_acquire_fc.exit.i.i_crit_edge ]
  %96 = ptrtoint ptr %partially_used.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %partially_used.i.i, align 4
  %call.i.i39.i.i = call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i.i33.i.i, ptr noundef %partially_used.i.i, ptr noundef %97) #12
  br i1 %call.i.i39.i.i, label %if.end.i.i40.i.i, label %mlx5_fc_bulk_acquire_fc.exit.i.i.if.end13.i.i_crit_edge

mlx5_fc_bulk_acquire_fc.exit.i.i.if.end13.i.i_crit_edge: ; preds = %mlx5_fc_bulk_acquire_fc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.end.i.i40.i.i:                                 ; preds = %mlx5_fc_bulk_acquire_fc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %retval.0.i.i33.i.i, ptr %prev1.i.i.i.i, align 4
  %99 = ptrtoint ptr %retval.0.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %97, ptr %retval.0.i.i33.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i.i33.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %partially_used.i.i, ptr %prev3.i.i.i.i, align 4
  %101 = ptrtoint ptr %partially_used.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %retval.0.i.i33.i.i, ptr %partially_used.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i40.i.i, %mlx5_fc_bulk_acquire_fc.exit.i.i.if.end13.i.i_crit_edge, %if.end.i.i.if.end13.i.i_crit_edge
  %fc.1.i.i = phi ptr [ %fc.0.i.i, %if.end.i.i.if.end13.i.i_crit_edge ], [ %retval.0.i38.i.i, %mlx5_fc_bulk_acquire_fc.exit.i.i.if.end13.i.i_crit_edge ], [ %retval.0.i38.i.i, %if.end.i.i40.i.i ]
  %available_fcs.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 5
  %102 = ptrtoint ptr %available_fcs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %available_fcs.i.i, align 4
  %dec.i.i = add i32 %103, -1
  store i32 %dec.i.i, ptr %available_fcs.i.i, align 4
  %used_fcs.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 6
  %104 = ptrtoint ptr %used_fcs.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %used_fcs.i.i, align 4
  %inc.i.i = add i32 %105, 1
  store i32 %inc.i.i, ptr %used_fcs.i.i, align 4
  br label %mlx5_fc_pool_acquire_counter.exit.i

mlx5_fc_pool_acquire_counter.exit.i:              ; preds = %if.end13.i.i, %if.then8.i.i
  %fc.2.i.i = phi ptr [ %retval.0.i.i33.i.i, %if.then8.i.i ], [ %fc.1.i.i, %if.end13.i.i ]
  call void @mutex_unlock(ptr noundef %pool_lock.i.i) #12
  %cmp.i.i = icmp ugt ptr %fc.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_fc_pool_acquire_counter.exit.i.if.end4.i_crit_edge, label %mlx5_fc_pool_acquire_counter.exit.i.mlx5_fc_acquire.exit_crit_edge

mlx5_fc_pool_acquire_counter.exit.i.mlx5_fc_acquire.exit_crit_edge: ; preds = %mlx5_fc_pool_acquire_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_acquire.exit

mlx5_fc_pool_acquire_counter.exit.i.if.end4.i_crit_edge: ; preds = %mlx5_fc_pool_acquire_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %mlx5_fc_pool_acquire_counter.exit.i.if.end4.i_crit_edge, %land.lhs.true.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i10.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3520, i32 noundef 256) #16
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i10.i, null
  br i1 %tobool.not.i.i, label %if.end4.i.cleanup20_crit_edge, label %if.end.i11.i

if.end4.i.cleanup20_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end.i11.i:                                     ; preds = %if.end4.i
  %id.i.i = getelementptr inbounds %struct.mlx5_fc, ptr %call7.i.i.i10.i, i32 0, i32 6
  %call2.i.i = call i32 @mlx5_cmd_fc_alloc(ptr noundef %dev, ptr noundef %id.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i11.i.mlx5_fc_acquire.exit_crit_edge, label %if.then4.i.i

if.end.i11.i.mlx5_fc_acquire.exit_crit_edge:      ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_acquire.exit

if.then4.i.i:                                     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i10.i) #12
  %107 = inttoptr i32 %call2.i.i to ptr
  br label %mlx5_fc_acquire.exit

mlx5_fc_acquire.exit:                             ; preds = %if.then4.i.i, %if.end.i11.i.mlx5_fc_acquire.exit_crit_edge, %mlx5_fc_pool_acquire_counter.exit.i.mlx5_fc_acquire.exit_crit_edge
  %retval.0.i = phi ptr [ %fc.2.i.i, %mlx5_fc_pool_acquire_counter.exit.i.mlx5_fc_acquire.exit_crit_edge ], [ %107, %if.then4.i.i ], [ %call7.i.i.i10.i, %if.end.i11.i.mlx5_fc_acquire.exit_crit_edge ]
  %fc_stats1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_fc_acquire.exit.cleanup20_crit_edge, label %if.end

mlx5_fc_acquire.exit.cleanup20_crit_edge:         ; preds = %mlx5_fc_acquire.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end:                                           ; preds = %mlx5_fc_acquire.exit
  %frombool = zext i1 %aging to i8
  %108 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %retval.0.i, ptr %retval.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %retval.0.i, ptr %prev.i, align 4
  %aging4 = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 7
  %110 = ptrtoint ptr %aging4 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %frombool, ptr %aging4, align 8
  br i1 %aging, label %if.then7, label %if.end.cleanup20_crit_edge

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %id8 = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 6
  %111 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id8, align 4
  %113 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %114 to i64
  %cache = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 9
  %lastuse = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 9, i32 2
  %115 = ptrtoint ptr %lastuse to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv, ptr %lastuse, align 16
  %bytes = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %bytes, align 8
  %lastbytes = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 4
  %118 = ptrtoint ptr %lastbytes to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %lastbytes, align 8
  %119 = ptrtoint ptr %cache to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %cache, align 128
  %lastpackets = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 3
  %121 = ptrtoint ptr %lastpackets to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %lastpackets, align 16
  call void @idr_preload(i32 noundef 3264) #12
  call void @_raw_spin_lock(ptr noundef %fc_stats1) #12
  %counters_idr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1
  %call11 = call i32 @idr_alloc_u32(ptr noundef %counters_idr, ptr noundef %retval.0.i, ptr noundef nonnull %id, i32 noundef %112, i32 noundef 2048) #12
  call void @_raw_spin_unlock(ptr noundef %fc_stats1) #12
  %122 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %127, ptrtoint (ptr @radix_tree_preloads to i32)
  %128 = inttoptr i32 %add.i to ptr
  call fastcc void @local_lock_release(ptr noundef %128) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  %129 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i.i.i45 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i45 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %132, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %cleanup.thread, label %err_out_alloc

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %addlist = getelementptr inbounds %struct.mlx5_fc, ptr %retval.0.i, i32 0, i32 1
  %addlist16 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 3
  %call.i = call zeroext i1 @llist_add_batch(ptr noundef %addlist, ptr noundef %addlist, ptr noundef %addlist16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  br label %cleanup20

err_out_alloc:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  call fastcc void @mlx5_fc_release(ptr noundef %dev, ptr noundef %retval.0.i)
  %133 = inttoptr i32 %call11 to ptr
  br label %cleanup20

cleanup20:                                        ; preds = %err_out_alloc, %cleanup.thread, %if.end.cleanup20_crit_edge, %mlx5_fc_acquire.exit.cleanup20_crit_edge, %if.end4.i.cleanup20_crit_edge
  %retval.0 = phi ptr [ %133, %err_out_alloc ], [ %retval.0.i, %mlx5_fc_acquire.exit.cleanup20_crit_edge ], [ %retval.0.i, %if.end.cleanup20_crit_edge ], [ %retval.0.i, %cleanup.thread ], [ inttoptr (i32 -12 to ptr), %if.end4.i.cleanup20_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_u32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fc_release(ptr noundef %dev, ptr noundef %counter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 5
  %0 = ptrtoint ptr %bulk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bulk, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fc_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14
  %2 = ptrtoint ptr %fc_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc_pool, align 4
  %pool_lock.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 1
  tail call void @mutex_lock_nested(ptr noundef %pool_lock.i, i32 noundef 0) #12
  %id.i.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 6
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 4
  %base_id.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base_id.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_id.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  %bitmask.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmask.i.i, align 16
  %div3.i.i.i = lshr i32 %sub.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %9, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %sub.i.i, 31
  %12 = shl nuw i32 1, %and.i.i.i
  %13 = and i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 742, i32 noundef %21) #17
  br label %mlx5_fc_pool_release_counter.exit

if.end.i:                                         ; preds = %if.then
  tail call void @_set_bit(i32 noundef %sub.i.i, ptr noundef %9) #12
  %available_fcs.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 5
  %22 = ptrtoint ptr %available_fcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %available_fcs.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %available_fcs.i, align 4
  %used_fcs.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 6
  %24 = ptrtoint ptr %used_fcs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used_fcs.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %used_fcs.i, align 4
  %bulk_len.i.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %bulk_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bulk_len.i.i, align 4
  %28 = ptrtoint ptr %bitmask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmask.i.i, align 16
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %29, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i.i)
  %cmp.i = icmp eq i32 %call4.i.i.i, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  %partially_used.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #12
  br i1 %call.i.i.i, label %if.end.i.i36.i, label %if.then5.i.__list_del_entry.exit.i.i_crit_edge

if.then5.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i36.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i36.i, %if.then5.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %37, ptr noundef %partially_used.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end6.i_crit_edge

__list_del_entry.exit.i.i.if.end6.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %prev.i2.i.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %partially_used.i, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %1, ptr %37, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %42 = ptrtoint ptr %bulk_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bulk_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i.i, i32 %43)
  %cmp7.i = icmp eq i32 %call4.i.i.i, %43
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.mlx5_fc_pool_release_counter.exit_crit_edge

if.end6.i.mlx5_fc_pool_release_counter.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_release_counter.exit

if.then8.i:                                       ; preds = %if.end6.i
  %call.i.i37.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #12
  br i1 %call.i.i37.i, label %if.end.i.i40.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i40.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i38.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i38.i, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %prev1.i.i.i39.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i39.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i40.i, %if.then8.i.list_del.exit.i_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %available_fcs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %available_fcs.i, align 4
  %threshold.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 7
  %54 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp11.i = icmp sgt i32 %53, %55
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %fc_pool to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fc_pool, align 4
  %58 = ptrtoint ptr %bulk_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bulk_len.i.i, align 4
  %sub.i43.i = sub i32 %53, %59
  %60 = ptrtoint ptr %available_fcs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i43.i, ptr %available_fcs.i, align 4
  tail call fastcc void @mlx5_fc_bulk_destroy(ptr noundef %57, ptr noundef nonnull %1) #12
  %61 = ptrtoint ptr %used_fcs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %used_fcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621449, i32 %62)
  %cmp.i.i.i = icmp sgt i32 %62, 2621449
  %div.i.i.i = sdiv i32 %62, 10
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 262144, i32 %div.i.i.i
  %63 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond.i.i.i, ptr %threshold.i, align 4
  br label %mlx5_fc_pool_release_counter.exit

if.else.i:                                        ; preds = %list_del.exit.i
  %unused.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 4
  %64 = ptrtoint ptr %unused.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %unused.i, align 4
  %call.i.i44.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %1, ptr noundef %unused.i, ptr noundef %65) #12
  br i1 %call.i.i44.i, label %if.end.i.i45.i, label %if.else.i.mlx5_fc_pool_release_counter.exit_crit_edge

if.else.i.mlx5_fc_pool_release_counter.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_release_counter.exit

if.end.i.i45.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %1, align 4
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %unused.i, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %unused.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %1, ptr %unused.i, align 4
  br label %mlx5_fc_pool_release_counter.exit

mlx5_fc_pool_release_counter.exit:                ; preds = %if.end.i.i45.i, %if.else.i.mlx5_fc_pool_release_counter.exit_crit_edge, %if.then12.i, %if.end6.i.mlx5_fc_pool_release_counter.exit_crit_edge, %do.end.i
  tail call void @mutex_unlock(ptr noundef %pool_lock.i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 6
  %70 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id.i, align 4
  %call.i = tail call i32 @mlx5_cmd_fc_free(ptr noundef %dev, i32 noundef %71) #12
  tail call void @kfree(ptr noundef %counter) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %mlx5_fc_pool_release_counter.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_fc_create(ptr noundef %dev, i1 noundef zeroext %aging) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_fc_create_ex(ptr noundef %dev, i1 noundef zeroext %aging)
  br i1 %aging, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 5
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_fc_id(ptr nocapture noundef readonly %counter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fc_destroy(ptr noundef %dev, ptr noundef %counter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %counter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %aging = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 7
  %0 = ptrtoint ptr %aging to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aging, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dellist = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 2
  %dellist4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 4
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %dellist, ptr noundef %dellist, ptr noundef %dellist4) #12
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 5
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6
  %call.i13 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_fc_release(ptr noundef %dev, ptr noundef nonnull %counter)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_init_fc_stats(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_stats1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %fc_stats1, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_init_fc_stats.__key, i16 noundef signext 3) #12
  %counters_idr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %counters_idr, ptr noundef nonnull @.str.18, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1, i32 1
  %2 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1, i32 2
  %3 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idr_next.i.i, align 4
  %counters = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 2
  %4 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %counters, ptr %counters, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %counters, ptr %prev.i, align 4
  %addlist = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 3
  %6 = ptrtoint ptr %addlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %addlist, align 4
  %dellist = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 4
  %7 = ptrtoint ptr %dellist to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dellist, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %9, i32 26
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %11, 16
  %and.i = and i32 %shr.i, 255
  %shl.i = shl nuw i32 1, %and.i
  %12 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 8) #12
  %call3 = tail call i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32 noundef %12) #12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3520) #15
  %bulk_query_out = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 9
  %13 = ptrtoint ptr %bulk_query_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %bulk_query_out, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bulk_query_len = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 10
  %14 = ptrtoint ptr %bulk_query_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %bulk_query_len, align 4
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.2) #12
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 5
  %15 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6, ptr %wq, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %err_wq_create, label %if.end10

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sampling_interval = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 8
  %16 = ptrtoint ptr %sampling_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %sampling_interval, align 4
  %work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %17 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx5_init_fc_stats.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry21 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i56 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry21, ptr %prev.i56, align 4
  %func = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6, i32 0, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mlx5_fc_stats_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @mlx5_init_fc_stats.__key.5) #12
  %fc_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14
  %21 = ptrtoint ptr %fc_pool to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %fc_pool, align 4
  %pool_lock.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 1
  tail call void @__mutex_init(ptr noundef %pool_lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @mlx5_fc_pool_init.__key) #12
  %fully_used.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 2
  %22 = ptrtoint ptr %fully_used.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %fully_used.i, ptr %fully_used.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fully_used.i, ptr %prev.i.i, align 4
  %partially_used.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3
  %24 = ptrtoint ptr %partially_used.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %partially_used.i, ptr %partially_used.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3, i32 1
  %25 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %partially_used.i, ptr %prev.i9.i, align 4
  %unused.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 4
  %26 = ptrtoint ptr %unused.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %unused.i, ptr %unused.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %unused.i, ptr %prev.i10.i, align 4
  %available_fcs.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 5
  %28 = ptrtoint ptr %available_fcs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %available_fcs.i, align 4
  %used_fcs.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 6
  %29 = ptrtoint ptr %used_fcs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %used_fcs.i, align 4
  %threshold.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 7
  %30 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %threshold.i, align 4
  br label %cleanup

err_wq_create:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %bulk_query_out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bulk_query_out, align 4
  tail call void @kfree(ptr noundef %32) #12
  br label %cleanup

cleanup:                                          ; preds = %err_wq_create, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %err_wq_create ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fc_stats_work(ptr noundef %work) #0 align 64 {
entry:
  %next_id.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2740
  %dellist2 = getelementptr i8, ptr %work, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dellist2, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %dellist2, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %dellist2) #12, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !81
  %addlist3 = getelementptr i8, ptr %work, i32 -12
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %addlist3, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %addlist3, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %addlist3) #12, !srcloc !80
  %asmresult.i.i101 = extractvalue { i32, i32 } %2, 0
  %3 = inttoptr i32 %asmresult.i.i101 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i101)
  %tobool.not = icmp eq i32 %asmresult.i.i101, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %counters = getelementptr i8, ptr %work, i32 -20
  %5 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %counters, align 4
  %cmp.i.not = icmp eq ptr %6, %counters
  br i1 %cmp.i.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %wq = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %sampling_interval = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %sampling_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sampling_interval, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %counter.0136 = getelementptr i8, ptr %3, i32 -8
  %cmp.not137 = icmp eq ptr %counter.0136, inttoptr (i32 -8 to ptr)
  br i1 %cmp.not137, label %if.end.for.cond20.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond20.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %counters_idr.i.i = getelementptr i8, ptr %work, i32 -80
  %counters.i.i = getelementptr i8, ptr %work, i32 -20
  %num_counters = getelementptr i8, ptr %work, i32 116
  br label %for.body

for.cond20.preheader:                             ; preds = %mlx5_fc_stats_insert.exit.for.cond20.preheader_crit_edge, %if.end.for.cond20.preheader_crit_edge
  %counter.1141 = getelementptr i8, ptr %1, i32 -12
  %cmp22.not142 = icmp eq ptr %counter.1141, inttoptr (i32 -12 to ptr)
  br i1 %cmp22.not142, label %for.cond20.preheader.for.end31_crit_edge, label %land.rhs.lr.ph

for.cond20.preheader.for.end31_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

land.rhs.lr.ph:                                   ; preds = %for.cond20.preheader
  %fc_stats1.i = getelementptr i8, ptr %work, i32 -124
  %counters_idr.i = getelementptr i8, ptr %work, i32 -80
  %num_counters29 = getelementptr i8, ptr %work, i32 116
  br label %land.rhs

for.body:                                         ; preds = %mlx5_fc_stats_insert.exit.for.body_crit_edge, %for.body.lr.ph
  %counter.0140 = phi ptr [ %counter.0136, %for.body.lr.ph ], [ %counter.0, %mlx5_fc_stats_insert.exit.for.body_crit_edge ]
  %call4.pn138 = phi ptr [ %3, %for.body.lr.ph ], [ %35, %mlx5_fc_stats_insert.exit.for.body_crit_edge ]
  %id.i = getelementptr i8, ptr %call4.pn138, i32 28
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_id.i.i) #12
  %add.i.i = add i32 %12, 1
  %13 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i.i, ptr %next_id.i.i, align 4
  %14 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %for.body.land.rhs.i.i.preheader_crit_edge, label %land.lhs.true.i.i.i

for.body.land.rhs.i.i.preheader_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.preheader

land.lhs.true.i.i.i:                              ; preds = %for.body
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.land.rhs.i.i.preheader_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.land.rhs.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.preheader

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.land.rhs.i.i.preheader_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.land.rhs.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.preheader

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.land.rhs.i.i.preheader_crit_edge, %land.lhs.true.i.i.i.land.rhs.i.i.preheader_crit_edge, %for.body.land.rhs.i.i.preheader_crit_edge
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %land.rhs.i.i.preheader
  %call.i.i102 = call ptr @idr_get_next_ul(ptr noundef %counters_idr.i.i, ptr noundef nonnull %next_id.i.i) #12
  %cmp2.not.i.i = icmp eq ptr %call.i.i102, null
  br i1 %cmp2.not.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %18 = ptrtoint ptr %call.i.i102 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %call.i.i102, align 4
  %cmp.i.not.i.i = icmp eq ptr %19, %call.i.i102
  br i1 %cmp.i.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %20 = ptrtoint ptr %next_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next_id.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %next_id.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %21, -1
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %land.rhs.i.i.for.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %call.i.i102, %for.inc.i.i.for.end.i.i_crit_edge ], [ %call.i.i102, %for.body.i.i.for.end.i.i_crit_edge ], [ %counters.i.i, %land.rhs.i.i.for.end.i.i_crit_edge ]
  %call.i9.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i9.i.i, label %for.end.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge, label %land.lhs.true.i12.i.i

for.end.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_counters_lookup_next.exit.i

land.lhs.true.i12.i.i:                            ; preds = %for.end.i.i
  %call1.i10.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i.i)
  %tobool.not.i11.i.i = icmp eq i32 %call1.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %land.lhs.true.i12.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge, label %land.lhs.true2.i14.i.i

land.lhs.true.i12.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_counters_lookup_next.exit.i

land.lhs.true2.i14.i.i:                           ; preds = %land.lhs.true.i12.i.i
  %.b4.i13.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i.i, label %land.lhs.true2.i14.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge, label %if.then.i15.i.i

land.lhs.true2.i14.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge: ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_counters_lookup_next.exit.i

if.then.i15.i.i:                                  ; preds = %land.lhs.true2.i14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %mlx5_fc_counters_lookup_next.exit.i

mlx5_fc_counters_lookup_next.exit.i:              ; preds = %if.then.i15.i.i, %land.lhs.true2.i14.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge, %land.lhs.true.i12.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge, %for.end.i.i.mlx5_fc_counters_lookup_next.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %22 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i.i.i.i16.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i16.i.i to ptr
  %preempt_count.i.i.i.i17.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i17.i.i, align 4
  %sub.i.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i17.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_id.i.i) #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cond.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i2.i = call zeroext i1 @__list_add_valid(ptr noundef %counter.0140, ptr noundef %27, ptr noundef %cond.i.i) #12
  br i1 %call.i.i2.i, label %if.end.i.i.i, label %mlx5_fc_counters_lookup_next.exit.i.mlx5_fc_stats_insert.exit_crit_edge

mlx5_fc_counters_lookup_next.exit.i.mlx5_fc_stats_insert.exit_crit_edge: ; preds = %mlx5_fc_counters_lookup_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_stats_insert.exit

if.end.i.i.i:                                     ; preds = %mlx5_fc_counters_lookup_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %counter.0140, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %counter.0140 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cond.i.i, ptr %counter.0140, align 4
  %prev3.i.i.i = getelementptr i8, ptr %call4.pn138, i32 -4
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %counter.0140, ptr %27, align 4
  br label %mlx5_fc_stats_insert.exit

mlx5_fc_stats_insert.exit:                        ; preds = %if.end.i.i.i, %mlx5_fc_counters_lookup_next.exit.i.mlx5_fc_stats_insert.exit_crit_edge
  %32 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_counters, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %num_counters, align 4
  %34 = ptrtoint ptr %call4.pn138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call4.pn138, align 8
  %counter.0 = getelementptr i8, ptr %35, i32 -8
  %cmp.not = icmp eq ptr %counter.0, inttoptr (i32 -8 to ptr)
  br i1 %cmp.not, label %mlx5_fc_stats_insert.exit.for.cond20.preheader_crit_edge, label %mlx5_fc_stats_insert.exit.for.body_crit_edge

mlx5_fc_stats_insert.exit.for.body_crit_edge:     ; preds = %mlx5_fc_stats_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

mlx5_fc_stats_insert.exit.for.cond20.preheader_crit_edge: ; preds = %mlx5_fc_stats_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond20.preheader

land.rhs:                                         ; preds = %mlx5_fc_stats_remove.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %counter.1145 = phi ptr [ %counter.1141, %land.rhs.lr.ph ], [ %counter.1, %mlx5_fc_stats_remove.exit.land.rhs_crit_edge ]
  %call.pn143 = phi ptr [ %1, %land.rhs.lr.ph ], [ %37, %mlx5_fc_stats_remove.exit.land.rhs_crit_edge ]
  %36 = ptrtoint ptr %call.pn143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.pn143, align 4
  %call.i.i.i103 = call zeroext i1 @__list_del_entry_valid(ptr noundef %counter.1145) #12
  br i1 %call.i.i.i103, label %if.end.i.i.i104, label %land.rhs.list_del.exit.i_crit_edge

land.rhs.list_del.exit.i_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i104:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %call.pn143, i32 -8
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %counter.1145 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %counter.1145, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i104, %land.rhs.list_del.exit.i_crit_edge
  %44 = ptrtoint ptr %counter.1145 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %counter.1145, align 4
  %prev.i.i105 = getelementptr i8, ptr %call.pn143, i32 -8
  %45 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i105, align 4
  call void @_raw_spin_lock(ptr noundef %fc_stats1.i) #12
  %id.i106 = getelementptr i8, ptr %call.pn143, i32 24
  %46 = ptrtoint ptr %id.i106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i106, align 4
  %call.i107 = call ptr @idr_remove(ptr noundef %counters_idr.i, i32 noundef %47) #12
  %tobool.not.i = icmp eq ptr %call.i107, null
  br i1 %tobool.not.i, label %do.end.i, label %list_del.exit.i.mlx5_fc_stats_remove.exit_crit_edge, !prof !84

list_del.exit.i.mlx5_fc_stats_remove.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_stats_remove.exit

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 145, i32 noundef 9, ptr noundef null) #12
  br label %mlx5_fc_stats_remove.exit

mlx5_fc_stats_remove.exit:                        ; preds = %do.end.i, %list_del.exit.i.mlx5_fc_stats_remove.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %fc_stats1.i) #12
  call fastcc void @mlx5_fc_release(ptr noundef %add.ptr, ptr noundef %counter.1145)
  %48 = ptrtoint ptr %num_counters29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_counters29, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %num_counters29, align 4
  %counter.1 = getelementptr i8, ptr %37, i32 -12
  %cmp22.not = icmp eq ptr %counter.1, inttoptr (i32 -12 to ptr)
  br i1 %cmp22.not, label %mlx5_fc_stats_remove.exit.for.end31_crit_edge, label %mlx5_fc_stats_remove.exit.land.rhs_crit_edge

mlx5_fc_stats_remove.exit.land.rhs_crit_edge:     ; preds = %mlx5_fc_stats_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

mlx5_fc_stats_remove.exit.for.end31_crit_edge:    ; preds = %mlx5_fc_stats_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.end31:                                        ; preds = %mlx5_fc_stats_remove.exit.for.end31_crit_edge, %for.cond20.preheader.for.end31_crit_edge
  %bulk_query_len = getelementptr i8, ptr %work, i32 112
  %50 = ptrtoint ptr %bulk_query_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bulk_query_len, align 4
  %caps.i = getelementptr i8, ptr %work, i32 -1796
  %52 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %53, i32 26
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %55, 16
  %and.i = and i32 %shr.i, 255
  %shl.i = shl nuw i32 1, %and.i
  %56 = call i32 @llvm.smin.i32(i32 %shl.i, i32 32768) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %56)
  %cmp33 = icmp slt i32 %51, %56
  br i1 %cmp33, label %land.lhs.true, label %for.end31.if.end38_crit_edge

for.end31.if.end38_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %for.end31
  %num_counters34 = getelementptr i8, ptr %work, i32 116
  %57 = ptrtoint ptr %num_counters34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_counters34, align 4
  %59 = call i32 @llvm.smin.i32(i32 %shl.i, i32 8) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %59)
  %cmp36 = icmp ugt i32 %58, %59
  br i1 %cmp36, label %if.then37, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %bulk_query_alloc_failed.i = getelementptr i8, ptr %work, i32 120
  %61 = ptrtoint ptr %bulk_query_alloc_failed.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bulk_query_alloc_failed.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i113 = icmp eq i8 %62, 0
  br i1 %tobool.not.i113, label %if.then37.if.end.i_crit_edge, label %land.lhs.true.i

if.then37.if.end.i_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then37
  %next_bulk_query_alloc.i = getelementptr i8, ptr %work, i32 124
  %63 = ptrtoint ptr %next_bulk_query_alloc.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %next_bulk_query_alloc.i, align 4
  %sub.i = sub i32 %60, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i114 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i114, label %land.lhs.true.i.if.end38_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.if.end38_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then37.if.end.i_crit_edge
  %call2.i = call i32 @mlx5_cmd_fc_get_bulk_query_out_len(i32 noundef %56) #12
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call2.i, i32 noundef 3520) #15
  %tobool4.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool4.not.i, label %do.body.i, label %if.end16.i

do.body.i:                                        ; preds = %if.end.i
  %.b47.i = load i1, ptr @mlx5_fc_stats_bulk_query_size_increase.__print_once, align 1
  br i1 %.b47.i, label %do.body.i.do.end12.i_crit_edge, label %if.then7.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_fc_stats_bulk_query_size_increase.__print_once, align 1
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %67 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i48.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i48.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 68
  %71 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 253, i32 noundef %72, i32 noundef %56) #17
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i, %do.body.i.do.end12.i_crit_edge
  %73 = ptrtoint ptr %bulk_query_alloc_failed.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %bulk_query_alloc_failed.i, align 4
  %add.i = add i32 %60, 18000
  %next_bulk_query_alloc15.i = getelementptr i8, ptr %work, i32 124
  %74 = ptrtoint ptr %next_bulk_query_alloc15.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i, ptr %next_bulk_query_alloc15.i, align 4
  br label %if.end38

if.end16.i:                                       ; preds = %if.end.i
  %bulk_query_out.i = getelementptr i8, ptr %work, i32 108
  %75 = ptrtoint ptr %bulk_query_out.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bulk_query_out.i, align 4
  call void @kfree(ptr noundef %76) #12
  %77 = ptrtoint ptr %bulk_query_out.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i.i, ptr %bulk_query_out.i, align 4
  %78 = ptrtoint ptr %bulk_query_len to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %56, ptr %bulk_query_len, align 4
  %79 = ptrtoint ptr %bulk_query_alloc_failed.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bulk_query_alloc_failed.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool19.not.i = icmp eq i8 %80, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end38_crit_edge, label %do.end23.i

if.end16.i.if.end38_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.25, i32 noundef %56) #17
  %83 = ptrtoint ptr %bulk_query_alloc_failed.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %bulk_query_alloc_failed.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end23.i, %if.end16.i.if.end38_crit_edge, %do.end12.i, %land.lhs.true.i.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %for.end31.if.end38_crit_edge
  %next_query = getelementptr i8, ptr %work, i32 100
  %84 = ptrtoint ptr %next_query to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %next_query, align 4
  %sub = sub i32 %4, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp39 = icmp slt i32 %sub, 0
  br i1 %cmp39, label %if.end38.cleanup_crit_edge, label %lor.lhs.false40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false40:                                  ; preds = %if.end38
  %counters41 = getelementptr i8, ptr %work, i32 -20
  %86 = ptrtoint ptr %counters41 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %counters41, align 4
  %cmp.i118.not = icmp eq ptr %87, %counters41
  br i1 %cmp.i118.not, label %lor.lhs.false40.cleanup_crit_edge, label %if.end45

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false40
  %tobool55.not = icmp eq ptr %87, null
  br i1 %tobool55.not, label %if.end45.if.end57_crit_edge, label %if.then56

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then56:                                        ; preds = %if.end45
  %prev = getelementptr i8, ptr %work, i32 -16
  %88 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev, align 4
  %id = getelementptr inbounds %struct.mlx5_fc, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id, align 4
  %id.i120 = getelementptr inbounds %struct.mlx5_fc, ptr %87, i32 0, i32 6
  %92 = ptrtoint ptr %id.i120 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %id.i120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %91)
  %cmp.not.i = icmp ugt i32 %93, %91
  %94 = ptrtoint ptr %bulk_query_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bulk_query_len, align 4
  %bulk_query_out.i122 = getelementptr i8, ptr %work, i32 108
  %96 = ptrtoint ptr %bulk_query_out.i122 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bulk_query_out.i122, align 4
  br i1 %cmp.not.i, label %if.then56.if.end57_crit_edge, label %while.body.lr.ph.i

if.then56.if.end57_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

while.body.lr.ph.i:                               ; preds = %if.then56
  %sub.i123 = add i32 %91, 4
  %98 = ptrtoint ptr %id.i120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %id.i120, align 4
  %and.i124148 = and i32 %99, -4
  %add3.i150 = sub i32 %sub.i123, %and.i124148
  %and4.i151 = and i32 %add3.i150, -4
  %100 = call i32 @llvm.smin.i32(i32 %95, i32 %and4.i151) #12
  %call.i125152 = call i32 @mlx5_cmd_fc_bulk_query(ptr noundef %add.ptr, i32 noundef %and.i124148, i32 noundef %100, ptr noundef %97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125152)
  %tobool6.not.i153 = icmp eq i32 %call.i125152, 0
  br i1 %tobool6.not.i153, label %while.body.lr.ph.i.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i.do.end.i129_crit_edge

while.body.lr.ph.i.do.end.i129_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i129

while.body.lr.ph.i.for.cond.preheader.i_crit_edge: ; preds = %while.body.lr.ph.i
  br label %for.cond.preheader.i

while.body.i.loopexit:                            ; preds = %for.body.i
  %id9.i.le = getelementptr inbounds %struct.mlx5_fc, ptr %counter.155.i, i32 0, i32 6
  %101 = ptrtoint ptr %id9.i.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id9.i.le, align 4
  %and.i124 = and i32 %102, -4
  %add3.i = sub i32 %sub.i123, %and.i124
  %and4.i = and i32 %add3.i, -4
  %103 = call i32 @llvm.smin.i32(i32 %95, i32 %and4.i) #12
  %call.i125 = call i32 @mlx5_cmd_fc_bulk_query(ptr noundef %add.ptr, i32 noundef %and.i124, i32 noundef %103, ptr noundef %97) #12
  %tobool6.not.i = icmp eq i32 %call.i125, 0
  br i1 %tobool6.not.i, label %while.body.i.loopexit.for.cond.preheader.i_crit_edge, label %while.body.i.loopexit.do.end.i129_crit_edge

while.body.i.loopexit.do.end.i129_crit_edge:      ; preds = %while.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i129

while.body.i.loopexit.for.cond.preheader.i_crit_edge: ; preds = %while.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.body.i.loopexit.for.cond.preheader.i_crit_edge, %while.body.lr.ph.i.for.cond.preheader.i_crit_edge
  %104 = phi i32 [ %103, %while.body.i.loopexit.for.cond.preheader.i_crit_edge ], [ %100, %while.body.lr.ph.i.for.cond.preheader.i_crit_edge ]
  %and.i124155 = phi i32 [ %and.i124, %while.body.i.loopexit.for.cond.preheader.i_crit_edge ], [ %and.i124148, %while.body.lr.ph.i.for.cond.preheader.i_crit_edge ]
  %counter.061.i154 = phi ptr [ %counter.155.i, %while.body.i.loopexit.for.cond.preheader.i_crit_edge ], [ %87, %while.body.lr.ph.i.for.cond.preheader.i_crit_edge ]
  %cmp8.not54.i = icmp eq ptr %counter.061.i154, %counters41
  br i1 %cmp8.not54.i, label %for.cond.preheader.i.if.end57_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end57_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add13.i = add i32 %104, %and.i124155
  br label %for.body.i

do.end.i129:                                      ; preds = %while.body.i.loopexit.do.end.i129_crit_edge, %while.body.lr.ph.i.do.end.i129_crit_edge
  %call.i125.lcssa = phi i32 [ %call.i125152, %while.body.lr.ph.i.do.end.i129_crit_edge ], [ %call.i125, %while.body.i.loopexit.do.end.i129_crit_edge ]
  %105 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr, align 8
  %107 = call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i.i126 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i126 to ptr
  %task.i127 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i127 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i127, align 8
  %pid.i128 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 68
  %111 = ptrtoint ptr %pid.i128 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pid.i128, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 201, i32 noundef %112, i32 noundef %call.i125.lcssa) #17
  br label %if.end57

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %counter.155.i = phi ptr [ %counter.061.i154, %for.body.lr.ph.i ], [ %128, %for.inc.i.for.body.i_crit_edge ]
  %id9.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter.155.i, i32 0, i32 6
  %113 = ptrtoint ptr %id9.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %add13.i)
  %cmp14.not.i = icmp ult i32 %114, %add13.i
  br i1 %cmp14.not.i, label %if.end16.i131, label %while.body.i.loopexit

if.end16.i131:                                    ; preds = %for.body.i
  %cache11.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter.155.i, i32 0, i32 9
  %sub10.i = sub i32 %114, %and.i124155
  %115 = shl i32 %sub10.i, 7
  %116 = add i32 %115, 128
  %div13.i.i = lshr exact i32 %116, 3
  %add.ptr.i.i130 = getelementptr i8, ptr %97, i32 %div13.i.i
  %117 = ptrtoint ptr %add.ptr.i.i130 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %add.ptr.i.i130, align 8
  %119 = ptrtoint ptr %cache11.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %cache11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %118)
  %cmp.i.i = icmp eq i64 %120, %118
  br i1 %cmp.i.i, label %if.end16.i131.for.inc.i_crit_edge, label %if.end.i.i

if.end16.i131.for.inc.i_crit_edge:                ; preds = %if.end16.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end16.i131
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2.i.i = getelementptr i64, ptr %add.ptr.i.i130, i32 1
  %121 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %add.ptr2.i.i, align 8
  %123 = ptrtoint ptr %cache11.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %118, ptr %cache11.i, align 8
  %bytes5.i.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter.155.i, i32 0, i32 9, i32 1
  %124 = ptrtoint ptr %bytes5.i.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %122, ptr %bytes5.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %conv.i.i = zext i32 %125 to i64
  %lastuse.i.i = getelementptr inbounds %struct.mlx5_fc, ptr %counter.155.i, i32 0, i32 9, i32 2
  %126 = ptrtoint ptr %lastuse.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv.i.i, ptr %lastuse.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end16.i131.for.inc.i_crit_edge
  %127 = ptrtoint ptr %counter.155.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %counter.155.i, align 128
  %cmp8.not.i = icmp eq ptr %128, %counters41
  br i1 %cmp8.not.i, label %for.inc.i.if.end57_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end57_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.end57:                                         ; preds = %for.inc.i.if.end57_crit_edge, %do.end.i129, %for.cond.preheader.i.if.end57_crit_edge, %if.then56.if.end57_crit_edge, %if.end45.if.end57_crit_edge
  %sampling_interval58 = getelementptr i8, ptr %work, i32 104
  %129 = ptrtoint ptr %sampling_interval58 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sampling_interval58, align 4
  %add59 = add i32 %130, %4
  %131 = ptrtoint ptr %next_query to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add59, ptr %next_query, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %lor.lhs.false40.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cleanup_fc_stats(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #12
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 5
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %1) #12
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %wq, align 8
  %addlist = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %addlist, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %addlist, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %addlist) #12, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  %4 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !81
  %counter.052 = getelementptr i8, ptr %4, i32 -8
  %cmp.not53 = icmp eq ptr %counter.052, inttoptr (i32 -8 to ptr)
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %counter.055 = phi ptr [ %counter.0, %land.rhs.land.rhs_crit_edge ], [ %counter.052, %entry.land.rhs_crit_edge ]
  %call9.pn54 = phi ptr [ %6, %land.rhs.land.rhs_crit_edge ], [ %4, %entry.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %call9.pn54 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call9.pn54, align 8
  tail call fastcc void @mlx5_fc_release(ptr noundef %dev, ptr noundef %counter.055)
  %counter.0 = getelementptr i8, ptr %6, i32 -8
  %cmp.not = icmp eq ptr %counter.0, inttoptr (i32 -8 to ptr)
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %counters = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 2
  %7 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counters, align 4
  %cmp26.not56 = icmp eq ptr %8, %counters
  br i1 %cmp26.not56, label %for.end.for.end34_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %counter.157 = phi ptr [ %tmp.0, %for.body27.for.body27_crit_edge ], [ %8, %for.end.for.body27_crit_edge ]
  %9 = ptrtoint ptr %counter.157 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0 = load ptr, ptr %counter.157, align 128
  tail call fastcc void @mlx5_fc_release(ptr noundef %dev, ptr noundef %counter.157)
  %cmp26.not = icmp eq ptr %tmp.0, %counters
  br i1 %cmp26.not, label %for.body27.for.end34_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body27

for.body27.for.end34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.end34:                                        ; preds = %for.body27.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %fc_pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14
  %10 = ptrtoint ptr %fc_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fc_pool, align 4
  %fully_used.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 2
  %12 = ptrtoint ptr %fully_used.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fully_used.i, align 4
  %cmp.not81.i = icmp eq ptr %13, %fully_used.i
  br i1 %cmp.not81.i, label %for.end34.for.end.i_crit_edge, label %for.end34.for.body.i_crit_edge

for.end34.for.body.i_crit_edge:                   ; preds = %for.end34
  br label %for.body.i

for.end34.for.end.i_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end34.for.body.i_crit_edge
  %bulk.082.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %13, %for.end34.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %bulk.082.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0.i = load ptr, ptr %bulk.082.i, align 128
  tail call fastcc void @mlx5_fc_bulk_destroy(ptr noundef %11, ptr noundef %bulk.082.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %fully_used.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.end34.for.end.i_crit_edge
  %partially_used.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 3
  %15 = ptrtoint ptr %partially_used.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %partially_used.i, align 4
  %cmp26.not83.i = icmp eq ptr %16, %partially_used.i
  br i1 %cmp26.not83.i, label %for.end.i.for.end36.i_crit_edge, label %for.end.i.for.body28.i_crit_edge

for.end.i.for.body28.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body28.i

for.end.i.for.end36.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end.i.for.body28.i_crit_edge
  %bulk.184.i = phi ptr [ %tmp.1.i, %for.body28.i.for.body28.i_crit_edge ], [ %16, %for.end.i.for.body28.i_crit_edge ]
  %17 = ptrtoint ptr %bulk.184.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.1.i = load ptr, ptr %bulk.184.i, align 128
  tail call fastcc void @mlx5_fc_bulk_destroy(ptr noundef %11, ptr noundef %bulk.184.i) #12
  %cmp26.not.i = icmp eq ptr %tmp.1.i, %partially_used.i
  br i1 %cmp26.not.i, label %for.body28.i.for.end36.i_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

for.body28.i.for.end36.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36.i

for.end36.i:                                      ; preds = %for.body28.i.for.end36.i_crit_edge, %for.end.i.for.end36.i_crit_edge
  %unused.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 14, i32 4
  %18 = ptrtoint ptr %unused.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unused.i, align 4
  %cmp49.not85.i = icmp eq ptr %19, %unused.i
  br i1 %cmp49.not85.i, label %for.end36.i.mlx5_fc_pool_cleanup.exit_crit_edge, label %for.end36.i.for.body51.i_crit_edge

for.end36.i.for.body51.i_crit_edge:               ; preds = %for.end36.i
  br label %for.body51.i

for.end36.i.mlx5_fc_pool_cleanup.exit_crit_edge:  ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_cleanup.exit

for.body51.i:                                     ; preds = %for.body51.i.for.body51.i_crit_edge, %for.end36.i.for.body51.i_crit_edge
  %bulk.286.i = phi ptr [ %tmp.2.i, %for.body51.i.for.body51.i_crit_edge ], [ %19, %for.end36.i.for.body51.i_crit_edge ]
  %20 = ptrtoint ptr %bulk.286.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.2.i = load ptr, ptr %bulk.286.i, align 128
  tail call fastcc void @mlx5_fc_bulk_destroy(ptr noundef %11, ptr noundef %bulk.286.i) #12
  %cmp49.not.i = icmp eq ptr %tmp.2.i, %unused.i
  br i1 %cmp49.not.i, label %for.body51.i.mlx5_fc_pool_cleanup.exit_crit_edge, label %for.body51.i.for.body51.i_crit_edge

for.body51.i.for.body51.i_crit_edge:              ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body51.i

for.body51.i.mlx5_fc_pool_cleanup.exit_crit_edge: ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fc_pool_cleanup.exit

mlx5_fc_pool_cleanup.exit:                        ; preds = %for.body51.i.mlx5_fc_pool_cleanup.exit_crit_edge, %for.end36.i.mlx5_fc_pool_cleanup.exit_crit_edge
  %counters_idr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 1
  tail call void @idr_destroy(ptr noundef %counters_idr) #12
  %bulk_query_out = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 9
  %21 = ptrtoint ptr %bulk_query_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bulk_query_out, align 4
  tail call void @kfree(ptr noundef %22) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fc_query(ptr noundef %dev, ptr nocapture noundef readonly %counter, ptr noundef %packets, ptr noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call = tail call i32 @mlx5_cmd_fc_query(ptr noundef %dev, i32 noundef %1, ptr noundef %packets, ptr noundef %bytes) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_query(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mlx5_fc_query_lastuse(ptr nocapture noundef readonly %counter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lastuse = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %lastuse to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lastuse, align 16
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_fc_query_cached(ptr nocapture noundef %counter, ptr nocapture noundef writeonly %bytes, ptr nocapture noundef writeonly %packets, ptr nocapture noundef writeonly %lastuse) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 9
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load8_noabort(i32 %0)
  %c.sroa.0.0.copyload = load i64, ptr %cache, align 128
  %c.sroa.6.0.cache.sroa_idx = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %c.sroa.6.0.cache.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %c.sroa.6.0.copyload = load i64, ptr %c.sroa.6.0.cache.sroa_idx, align 8
  %c.sroa.9.0.cache.sroa_idx = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %c.sroa.9.0.cache.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %2)
  %c.sroa.9.0.copyload = load i64, ptr %c.sroa.9.0.cache.sroa_idx, align 16
  %lastbytes = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 4
  %3 = ptrtoint ptr %lastbytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %lastbytes, align 8
  %sub = sub i64 %c.sroa.6.0.copyload, %4
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sub, ptr %bytes, align 8
  %lastpackets = getelementptr inbounds %struct.mlx5_fc, ptr %counter, i32 0, i32 3
  %6 = ptrtoint ptr %lastpackets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lastpackets, align 16
  %sub3 = sub i64 %c.sroa.0.0.copyload, %7
  %8 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %sub3, ptr %packets, align 8
  %9 = ptrtoint ptr %lastuse to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %c.sroa.9.0.copyload, ptr %lastuse, align 8
  store i64 %c.sroa.6.0.copyload, ptr %lastbytes, align 8
  store i64 %c.sroa.0.0.copyload, ptr %lastpackets, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fc_queue_stats_work(ptr nocapture noundef readonly %dev, ptr noundef %dwork, i32 noundef %delay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 5
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %dwork, i32 noundef %delay) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_fc_update_sampling_interval(ptr nocapture noundef %dev, i32 noundef %interval) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_interval = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 35, i32 8
  %0 = ptrtoint ptr %sampling_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_interval, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %interval)
  %3 = ptrtoint ptr %sampling_interval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %sampling_interval, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_bulk_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !66) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !85

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fc_bulk_destroy(ptr noundef %dev, ptr noundef %bulk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmask.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %bulk, i32 0, i32 3
  %bulk_len.i = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %bulk, i32 0, i32 2
  %0 = ptrtoint ptr %bulk_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_len.i, align 4
  %2 = ptrtoint ptr %bitmask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmask.i, align 16
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %3, i32 noundef %1) #12
  %4 = ptrtoint ptr %bulk_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bulk_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %5)
  %cmp = icmp slt i32 %call4.i.i, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !66) #12
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 593, i32 noundef %13) #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base_id = getelementptr inbounds %struct.mlx5_fc_bulk, ptr %bulk, i32 0, i32 1
  %14 = ptrtoint ptr %base_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_id, align 8
  %call2 = tail call i32 @mlx5_cmd_fc_free(ptr noundef %dev, i32 noundef %15) #12
  %16 = ptrtoint ptr %bitmask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmask.i, align 16
  tail call void @kvfree(ptr noundef %17) #12
  tail call void @kvfree(ptr noundef %bulk) #12
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next_ul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fc_bulk_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_mlx5_fc_create, !1, !"__ksymtab_mlx5_fc_create", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 398, i32 1}
!2 = !{ptr @__ksymtab_mlx5_fc_id, !3, !"__ksymtab_mlx5_fc_id", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 404, i32 1}
!4 = !{ptr @__ksymtab_mlx5_fc_destroy, !5, !"__ksymtab_mlx5_fc_destroy", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 421, i32 1}
!6 = !{ptr @mlx5_init_fc_stats.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 429, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 442, i32 17}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5_init_fc_stats.__key.3, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 447, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_init_fc_stats.__key.5, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_mlx5_fc_query, !18, !"__ksymtab_mlx5_fc_query", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 485, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 742, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlx5_fc_pool_release_counter._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_fc_pool_release_counter._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 593, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_fc_bulk_destroy._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_fc_bulk_destroy._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @xa_init_flags.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__print_once", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 251, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mlx5_fc_stats_bulk_query_size_increase._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlx5_fc_stats_bulk_query_size_increase._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 264, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mlx5_fc_stats_bulk_query_size_increase._entry.24, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlx5_fc_stats_bulk_query_size_increase._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 201, i32 4}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlx5_fc_stats_query_counter_range._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx5_fc_stats_query_counter_range._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mlx5_fc_pool_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fs_counters.c", i32 631, i32 2}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
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
!77 = !{i64 2151481835}
!78 = !{i8 0, i8 2}
!79 = !{i64 2149161607}
!80 = !{i64 768949, i64 768966, i64 768990, i64 769016, i64 769034}
!81 = !{i64 2149161960}
!82 = !{i64 2150170893}
!83 = !{i64 2150171159}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{!"branch_weights", i32 2000, i32 1}
