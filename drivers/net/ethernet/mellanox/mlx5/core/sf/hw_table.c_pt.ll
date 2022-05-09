; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.136 }
%union.anon.136 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mlx5_sf_hw_table = type { ptr, %struct.mutex, %struct.notifier_block, [2 x %struct.mlx5_sf_hwc_table] }
%struct.mlx5_sf_hwc_table = type { ptr, i32, i16 }
%struct.mlx5_sf_hw = type { i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mlx5_vhca_state_event = type { i16, i16, i8 }

@mlx5_sf_hw_table_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&table->table_lock\00", [45 x i8] zeroinitializer }, align 32
@mlx5_sf_hw_table_init.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_sf_hw_table_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): SF HW table: max sfs = %d, ext sfs = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_mlx5_sf_hwc_alloc = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h\00", [32 x i8] zeroinitializer }, align 32
@trace_mlx5_sf_hwc_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mlx5_sf_hwc_deferred_free = external dso_local global %struct.tracepoint, align 4
@trace_mlx5_sf_hwc_deferred_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_mlx5_sf_hwc_free = external dso_local global %struct.tracepoint, align 4
@trace_mlx5_sf_hwc_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 272, i32 2 }
@___asan_gen_.24 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 286, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 59, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mlx5_sf_hw_table_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_sf_hw_table_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5_sf_sw_to_hw_id(ptr nocapture noundef readonly %dev, i32 noundef %controller, i16 noundef zeroext %sw_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool.i = icmp ne i32 %controller, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %sf_hw_table.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table.i, align 4
  %start_fn_id = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 %lnot.ext.i, i32 2
  %2 = ptrtoint ptr %start_fn_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start_fn_id, align 4
  %add = add i16 %3, %sw_id
  ret i16 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sf_hw_table_sf_alloc(ptr noundef %dev, i32 noundef %controller, i32 noundef %usr_sfnum) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %table_lock = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool.i.i = icmp ne i32 %controller, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %sf_hw_table.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 43
  %4 = ptrtoint ptr %sf_hw_table.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sf_hw_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_sf_hw_table, ptr %5, i32 0, i32 3, i32 %lnot.ext.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.cleanup.sink.split_crit_edge, label %for.cond.preheader.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader.i:                             ; preds = %if.end
  %max_fn.i = getelementptr %struct.mlx5_sf_hw_table, ptr %5, i32 0, i32 3, i32 %lnot.ext.i.i, i32 1
  %8 = ptrtoint ptr %max_fn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp50.i = icmp sgt i32 %9, 0
  br i1 %cmp50.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.cleanup.sink.split_crit_edge

for.cond.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %free_idx.051.i = phi i32 [ %free_idx.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %allocated.i = getelementptr %struct.mlx5_sf_hw, ptr %7, i32 %i.052.i, i32 1
  %10 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %allocated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_idx.051.i)
  %cmp3.i = icmp eq i32 %free_idx.051.i, -1
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp3.i, i1 false
  %i.0.mux.i = select i1 %or.cond.i, i32 %i.052.i, i32 %free_idx.051.i
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true12.i:                                ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.mlx5_sf_hw, ptr %7, i32 %i.052.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %usr_sfnum)
  %cmp16.i = icmp eq i32 %12, %usr_sfnum
  br i1 %cmp16.i, label %land.lhs.true12.i.cleanup.sink.split_crit_edge, label %land.lhs.true12.i.for.inc.i_crit_edge

land.lhs.true12.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true12.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %land.lhs.true12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %free_idx.1.i = phi i32 [ %free_idx.051.i, %land.lhs.true12.i.for.inc.i_crit_edge ], [ %i.0.mux.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_idx.1.i)
  %cmp20.i = icmp eq i32 %free_idx.1.i, -1
  br i1 %cmp20.i, label %for.end.i.cleanup.sink.split_crit_edge, label %mlx5_sf_hw_table_id_alloc.exit

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

mlx5_sf_hw_table_id_alloc.exit:                   ; preds = %for.end.i
  %arrayidx25.i = getelementptr %struct.mlx5_sf_hw, ptr %7, i32 %free_idx.1.i
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %usr_sfnum, ptr %arrayidx25.i, align 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %allocated29.i = getelementptr %struct.mlx5_sf_hw, ptr %15, i32 %free_idx.1.i, i32 1
  %16 = ptrtoint ptr %allocated29.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load30.i = load i8, ptr %allocated29.i, align 4
  %bf.set.i = or i8 %bf.load30.i, -128
  store i8 %bf.set.i, ptr %allocated29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_idx.1.i)
  %cmp = icmp slt i32 %free_idx.1.i, 0
  br i1 %cmp, label %mlx5_sf_hw_table_id_alloc.exit.cleanup.sink.split_crit_edge, label %if.end2

mlx5_sf_hw_table_id_alloc.exit.cleanup.sink.split_crit_edge: ; preds = %mlx5_sf_hw_table_id_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end2:                                          ; preds = %mlx5_sf_hw_table_id_alloc.exit
  %conv = trunc i32 %free_idx.1.i to i16
  %17 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sf_hw_table, align 4
  %start_fn_id.i = getelementptr %struct.mlx5_sf_hw_table, ptr %18, i32 0, i32 3, i32 %lnot.ext.i.i, i32 2
  %19 = ptrtoint ptr %start_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_fn_id.i, align 4
  %add.i = add i16 %20, %conv
  %call4 = tail call i32 @mlx5_cmd_alloc_sf(ptr noundef %dev, i16 noundef zeroext %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.err21_crit_edge

if.end2.err21_crit_edge:                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err21

if.end7:                                          ; preds = %if.end2
  %call8 = tail call i32 @mlx5_modify_vhca_sw_id(ptr noundef %dev, i16 noundef zeroext %add.i, i32 noundef %usr_sfnum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.vhca_err_crit_edge

if.end7.vhca_err_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhca_err

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool12.not = icmp eq i32 %controller, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @mlx5_vhca_event_arm(ptr noundef %dev, i16 noundef zeroext %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.vhca_err_crit_edge

if.then13.vhca_err_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %vhca_err

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  tail call fastcc void @trace_mlx5_sf_hwc_alloc(ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %add.i, i32 noundef %usr_sfnum)
  br label %cleanup.sink.split

vhca_err:                                         ; preds = %if.then13.vhca_err_crit_edge, %if.end7.vhca_err_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.vhca_err_crit_edge ], [ %call14, %if.then13.vhca_err_crit_edge ]
  %call20 = tail call i32 @mlx5_cmd_dealloc_sf(ptr noundef %dev, i16 noundef zeroext %add.i) #9
  br label %err21

err21:                                            ; preds = %vhca_err, %if.end2.err21_crit_edge
  %err.1 = phi i32 [ %call4, %if.end2.err21_crit_edge ], [ %err.0, %vhca_err ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %sf_hw_table.i.i59 = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 17, i32 43
  %23 = ptrtoint ptr %sf_hw_table.i.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sf_hw_table.i.i59, align 4
  %arrayidx.i.i60 = getelementptr %struct.mlx5_sf_hw_table, ptr %24, i32 0, i32 3, i32 %lnot.ext.i.i
  %25 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i60, align 4
  %allocated.i61 = getelementptr %struct.mlx5_sf_hw, ptr %26, i32 %free_idx.1.i, i32 1
  %27 = ptrtoint ptr %allocated.i61 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i62 = load i8, ptr %allocated.i61, align 4
  %bf.clear.i = and i8 %bf.load.i62, 127
  store i8 %bf.clear.i, ptr %allocated.i61, align 4
  %28 = load ptr, ptr %arrayidx.i.i60, align 4
  %pending_delete.i = getelementptr %struct.mlx5_sf_hw, ptr %28, i32 %free_idx.1.i, i32 1
  %29 = ptrtoint ptr %pending_delete.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load3.i = load i8, ptr %pending_delete.i, align 4
  %bf.clear4.i = and i8 %bf.load3.i, -65
  store i8 %bf.clear4.i, ptr %pending_delete.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err21, %if.end18, %mlx5_sf_hw_table_id_alloc.exit.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %land.lhs.true12.i.cleanup.sink.split_crit_edge, %for.cond.preheader.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %free_idx.1.i, %if.end18 ], [ %err.1, %err21 ], [ %free_idx.1.i, %mlx5_sf_hw_table_id_alloc.exit.cleanup.sink.split_crit_edge ], [ -28, %for.cond.preheader.i.cleanup.sink.split_crit_edge ], [ -28, %for.end.i.cleanup.sink.split_crit_edge ], [ -28, %if.end.cleanup.sink.split_crit_edge ], [ -17, %land.lhs.true12.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %table_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_alloc_sf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_vhca_sw_id(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_arm(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_hwc_alloc(ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_alloc, i32 0, i32 1), ptr blockaddress(@trace_mlx5_sf_hwc_alloc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !35
  %call42 = tail call i32 @__traceiter_mlx5_sf_hwc_alloc(ptr noundef null, ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %hw_fn_id, i32 noundef %sfnum) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_hwc_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mlx5_sf_hwc_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @.str.6) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_dealloc_sf(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_hw_table_sf_free(ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %table_lock = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool.i.i = icmp ne i32 %controller, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %2 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sf_hw_table, align 4
  %start_fn_id.i = getelementptr %struct.mlx5_sf_hw_table, ptr %3, i32 0, i32 3, i32 %lnot.ext.i.i, i32 2
  %4 = ptrtoint ptr %start_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_fn_id.i, align 4
  %add.i = add i16 %5, %id
  %call1 = tail call i32 @mlx5_cmd_dealloc_sf(ptr noundef %dev, i16 noundef zeroext %add.i) #9
  %conv = zext i16 %id to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %sf_hw_table.i.i11 = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 17, i32 43
  %8 = ptrtoint ptr %sf_hw_table.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sf_hw_table.i.i11, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_sf_hw_table, ptr %9, i32 0, i32 3, i32 %lnot.ext.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %allocated.i = getelementptr %struct.mlx5_sf_hw, ptr %11, i32 %conv, i32 1
  %12 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %allocated.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %allocated.i, align 4
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %pending_delete.i = getelementptr %struct.mlx5_sf_hw, ptr %13, i32 %conv, i32 1
  %14 = ptrtoint ptr %pending_delete.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load3.i = load i8, ptr %pending_delete.i, align 4
  %bf.clear4.i = and i8 %bf.load3.i, -65
  store i8 %bf.clear4.i, ptr %pending_delete.i, align 4
  tail call void @mutex_unlock(ptr noundef %table_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_hw_table_sf_deferred_free(ptr noundef %dev, i32 noundef %controller, i16 noundef zeroext %id) local_unnamed_addr #2 align 64 {
entry:
  %out = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #9
  %2 = call ptr @memset(ptr %out, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller)
  %tobool.i.i = icmp ne i32 %controller, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %start_fn_id.i = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 %lnot.ext.i.i, i32 2
  %3 = ptrtoint ptr %start_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %start_fn_id.i, align 4
  %add.i = add i16 %4, %id
  %arrayidx.i = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 %lnot.ext.i.i
  %table_lock = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_lock, i32 noundef 0) #9
  %call2 = call i32 @mlx5_cmd_query_vhca_state(ptr noundef %dev, i16 noundef zeroext %add.i, ptr noundef nonnull %out, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err15_crit_edge

entry.err15_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err15

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i32, ptr %out, i32 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp = icmp eq i32 %7, 65536
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @mlx5_cmd_dealloc_sf(ptr noundef %dev, i16 noundef zeroext %add.i) #9
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %idxprom = zext i16 %id to i32
  %allocated = getelementptr %struct.mlx5_sf_hw, ptr %9, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %allocated, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %allocated, align 4
  br label %err15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %idxprom9 = zext i16 %id to i32
  %pending_delete = getelementptr %struct.mlx5_sf_hw, ptr %12, i32 %idxprom9, i32 1
  %13 = ptrtoint ptr %pending_delete to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load11 = load i8, ptr %pending_delete, align 4
  %bf.set13 = or i8 %bf.load11, 64
  store i8 %bf.set13, ptr %pending_delete, align 4
  call fastcc void @trace_mlx5_sf_hwc_deferred_free(ptr noundef %dev, i16 noundef zeroext %add.i)
  br label %err15

err15:                                            ; preds = %if.else, %if.then6, %entry.err15_crit_edge
  call void @mutex_unlock(ptr noundef %table_lock) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_query_vhca_state(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_hwc_deferred_free(ptr noundef %dev, i16 noundef zeroext %hw_fn_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_deferred_free, i32 0, i32 1), ptr blockaddress(@trace_mlx5_sf_hwc_deferred_free, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  %call42 = tail call i32 @__traceiter_mlx5_sf_hwc_deferred_free(ptr noundef null, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_deferred_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_deferred_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_hwc_deferred_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mlx5_sf_hwc_deferred_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 104, ptr noundef nonnull @.str.6) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sf_hw_table_init(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %max_ext_fn = alloca i16, align 2
  %ext_base_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_ext_fn) #9
  %0 = ptrtoint ptr %max_ext_fn to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %max_ext_fn, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ext_base_id) #9
  %1 = ptrtoint ptr %ext_base_id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ext_base_id, align 2
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr %struct.mlx5_hca_cap, ptr %3, i32 0, i32 1, i32 31
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i69 = getelementptr i32, ptr %3, i32 52
  %7 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i70 = icmp slt i32 %8, 0
  br i1 %tobool.i70, label %if.end.i, label %if.end4.thread

if.end.i:                                         ; preds = %if.end
  %add.ptr.i71 = getelementptr i32, ptr %3, i32 50
  %9 = ptrtoint ptr %add.ptr.i71 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i71, align 4
  %call5 = call i32 @mlx5_esw_sf_max_hpf_functions(ptr noundef %dev, ptr noundef nonnull %max_ext_fn, ptr noundef nonnull %ext_base_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.thread:                                   ; preds = %if.end
  %call5120 = call i32 @mlx5_esw_sf_max_hpf_functions(ptr noundef %dev, ptr noundef nonnull %max_ext_fn, ptr noundef nonnull %ext_base_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5120)
  %tobool.not121 = icmp eq i32 %call5120, 0
  br i1 %tobool.not121, label %if.end4.thread.land.lhs.true_crit_edge, label %if.end4.thread.cleanup_crit_edge

if.end4.thread.cleanup_crit_edge:                 ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.thread.land.lhs.true_crit_edge:           ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %tobool.not.i = icmp ult i32 %10, 65536
  %shr.i = lshr i32 %10, 16
  %shr16.i = lshr i32 %8, 24
  %and17.i = and i32 %shr16.i, 31
  %shl.i = shl nuw i32 1, %and17.i
  %max_fn.0.v = select i1 %tobool.not.i, i32 %shl.i, i32 %shr.i
  %max_fn.0 = trunc i32 %max_fn.0.v to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %max_fn.0)
  %tobool8.not = icmp eq i16 %max_fn.0, 0
  br i1 %tobool8.not, label %if.end7.land.lhs.true_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7.land.lhs.true_crit_edge, %if.end4.thread.land.lhs.true_crit_edge
  %11 = ptrtoint ptr %max_ext_fn to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_ext_fn, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool9.not = icmp eq i16 %12, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %tobool8.not127 = phi i1 [ true, %land.lhs.true.if.end11_crit_edge ], [ false, %if.end7.if.end11_crit_edge ]
  %max_fn.0122125 = phi i16 [ 0, %land.lhs.true.if.end11_crit_edge ], [ %max_fn.0, %if.end7.if.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 132) #12
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end11
  %table_lock = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %table_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_sf_hw_table_init.__key) #9
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call7.i.i, align 8
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %15 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %sf_hw_table, align 4
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i, align 8
  %add.ptr.i74 = getelementptr i32, ptr %17, i32 55
  %18 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i74, align 4
  %conv.i75 = trunc i32 %19 to i16
  %hwc = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3
  br i1 %tobool8.not127, label %do.body.if.end21_crit_edge, label %if.end.i78

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.i78:                                       ; preds = %do.body
  %conv.i77 = zext i16 %max_fn.0122125 to i32
  %20 = shl nuw nsw i32 %conv.i77, 3
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %tobool1.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i78.table_err_crit_edge, label %if.end3.i

if.end.i78.table_err_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %table_err

if.end3.i:                                        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %hwc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %hwc, align 4
  %max_fn6.i = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %max_fn6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i77, ptr %max_fn6.i, align 8
  %start_fn_id.i = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %23 = ptrtoint ptr %start_fn_id.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i75, ptr %start_fn_id.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end3.i, %do.body.if.end21_crit_edge
  %arrayidx23 = getelementptr %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %max_ext_fn to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_ext_fn, align 2
  %26 = ptrtoint ptr %ext_base_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ext_base_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i80 = icmp eq i16 %25, 0
  br i1 %tobool.not.i80, label %if.end21.do.body28_crit_edge, label %if.end.i82

if.end21.do.body28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.end.i82:                                       ; preds = %if.end21
  %conv.i81 = zext i16 %25 to i32
  %28 = shl nuw nsw i32 %conv.i81, 3
  %call8.i.i.i109 = call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #13
  %tobool1.not.i112 = icmp eq ptr %call8.i.i.i109, null
  br i1 %tobool1.not.i112, label %ext_err, label %if.end3.i116

if.end3.i116:                                     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i.i109, ptr %arrayidx23, align 8
  %max_fn6.i114 = getelementptr %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %30 = ptrtoint ptr %max_fn6.i114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i81, ptr %max_fn6.i114, align 4
  %start_fn_id.i115 = getelementptr %struct.mlx5_sf_hw_table, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 2
  %31 = ptrtoint ptr %start_fn_id.i115 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %27, ptr %start_fn_id.i115, align 8
  br label %do.body28

do.body28:                                        ; preds = %if.end3.i116, %if.end21.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_sf_hw_table_init.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_sf_hw_table_init, %if.then33)) #9
          to label %cleanup [label %if.then33], !srcloc !33

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %34 = call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  %conv = zext i16 %max_fn.0122125 to i32
  %40 = ptrtoint ptr %max_ext_fn to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_ext_fn, align 2
  %conv35 = zext i16 %41 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_sf_hw_table_init.__UNIQUE_ID_ddebug694, ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 286, i32 noundef %39, i32 noundef %conv, i32 noundef %conv35) #9
  br label %cleanup

ext_err:                                          ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hwc, align 4
  call void @kfree(ptr noundef %43) #9
  br label %table_err

table_err:                                        ; preds = %ext_err, %if.end.i78.table_err_crit_edge
  call void @mutex_destroy(ptr noundef %table_lock) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %table_err, %if.then33, %do.body28, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.thread.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %table_err ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call5120, %if.end4.thread.cleanup_crit_edge ], [ 0, %do.body28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ext_base_id) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_ext_fn) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_sf_max_hpf_functions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_hw_table_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %table_lock = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %table_lock) #9
  %hwc = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %hwc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwc, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_sf_hw_table_create(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vhca_nb = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vhca_nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_sf_hw_vhca_event, ptr %vhca_nb, align 4
  %call = tail call i32 @mlx5_vhca_event_notifier_register(ptr noundef %dev, ptr noundef %vhca_nb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_sf_hw_vhca_event(ptr noundef %nb, i32 noundef %opcode, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -96
  %new_vhca_state = getelementptr inbounds %struct.mlx5_vhca_state_event, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %new_vhca_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %new_vhca_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %conv.i = zext i16 %3 to i32
  %max_fn.i = getelementptr i8, ptr %nb, i32 16
  %4 = ptrtoint ptr %max_fn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_fn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end
  %start_fn_id.i = getelementptr i8, ptr %nb, i32 20
  %6 = ptrtoint ptr %start_fn_id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_fn_id.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %3)
  %cmp4.not.i = icmp ule i16 %7, %3
  %conv3.i = zext i16 %7 to i32
  %add.i = add i32 %5, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp15.i = icmp sgt i32 %add.i, %conv.i
  %or.cond.i = select i1 %cmp4.not.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_sf_table_fn_to_hwc.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.for.inc.i_crit_edge
  %max_fn.1.i = getelementptr i8, ptr %nb, i32 28
  %8 = ptrtoint ptr %max_fn.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fn.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i, label %for.inc.i.cleanup_crit_edge, label %land.lhs.true.1.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %start_fn_id.1.i = getelementptr i8, ptr %nb, i32 32
  %10 = ptrtoint ptr %start_fn_id.1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start_fn_id.1.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %3)
  %cmp4.not.1.i = icmp ule i16 %11, %3
  %conv3.1.i = zext i16 %11 to i32
  %add.1.i = add i32 %9, %conv3.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %conv.i)
  %cmp15.1.i = icmp sgt i32 %add.1.i, %conv.i
  %or.cond.1.i = select i1 %cmp4.not.1.i, i1 %cmp15.1.i, i1 false
  br i1 %or.cond.1.i, label %land.lhs.true.1.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.1.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_sf_table_fn_to_hwc.exit

mlx5_sf_table_fn_to_hwc.exit:                     ; preds = %land.lhs.true.1.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge, %land.lhs.true.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge
  %i.032.lcssa.i = phi i32 [ 0, %land.lhs.true.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge ], [ 1, %land.lhs.true.1.i.mlx5_sf_table_fn_to_hwc.exit_crit_edge ]
  %arrayidx.le.i = getelementptr %struct.mlx5_sf_hw_table, ptr %add.ptr, i32 0, i32 3, i32 %i.032.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %mlx5_sf_table_fn_to_hwc.exit.cleanup_crit_edge, label %if.end3

mlx5_sf_table_fn_to_hwc.exit.cleanup_crit_edge:   ; preds = %mlx5_sf_table_fn_to_hwc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %mlx5_sf_table_fn_to_hwc.exit
  %start_fn_id.i30 = getelementptr inbounds %struct.mlx5_sf_hwc_table, ptr %arrayidx.le.i, i32 0, i32 2
  %12 = ptrtoint ptr %start_fn_id.i30 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %start_fn_id.i30, align 4
  %sub.i = sub i16 %3, %13
  %14 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.le.i, align 4
  %idxprom = zext i16 %sub.i to i32
  %table_lock = getelementptr i8, ptr %nb, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %table_lock, i32 noundef 0) #9
  %allocated = getelementptr %struct.mlx5_sf_hw, ptr %15, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %.not = icmp ugt i8 %bf.load, -65
  br i1 %.not, label %if.then12, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %19 = ptrtoint ptr %start_fn_id.i30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_fn_id.i30, align 4
  %conv1.i = add i16 %20, %sub.i
  %call.i = tail call i32 @mlx5_cmd_dealloc_sf(ptr noundef %18, i16 noundef zeroext %conv1.i) #9
  %21 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.le.i, align 4
  %allocated.i = getelementptr %struct.mlx5_sf_hw, ptr %22, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %allocated.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %allocated.i, align 4
  %24 = load ptr, ptr %arrayidx.le.i, align 4
  %pending_delete.i = getelementptr %struct.mlx5_sf_hw, ptr %24, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %pending_delete.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load4.i = load i8, ptr %pending_delete.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, -65
  store i8 %bf.clear5.i, ptr %pending_delete.i, align 4
  %26 = ptrtoint ptr %start_fn_id.i30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %start_fn_id.i30, align 4
  %conv10.i = add i16 %27, %sub.i
  tail call fastcc void @trace_mlx5_sf_hwc_free(ptr noundef %18, i16 noundef zeroext %conv10.i) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end3.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %table_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %mlx5_sf_table_fn_to_hwc.exit.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_sf_hw_table_destroy(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vhca_nb = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 2
  tail call void @mlx5_vhca_event_notifier_unregister(ptr noundef %dev, ptr noundef %vhca_nb) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %hwc.i = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 1
  %max_fn.i.i = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %max_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_fn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i.i = icmp sgt i32 %5, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge

if.end.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_sf_hw_table_hwc_dealloc_all.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %start_fn_id.i.i.i = getelementptr %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 1, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %allocated.i.i = getelementptr %struct.mlx5_sf_hw, ptr %7, i32 %i.07.i.i, i32 1
  %8 = ptrtoint ptr %allocated.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %allocated.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %start_fn_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %start_fn_id.i.i.i, align 4
  %11 = trunc i32 %i.07.i.i to i16
  %conv1.i.i.i = add i16 %10, %11
  %call.i.i.i = tail call i32 @mlx5_cmd_dealloc_sf(ptr noundef %3, i16 noundef zeroext %conv1.i.i.i) #9
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %allocated.i.i.i = getelementptr %struct.mlx5_sf_hw, ptr %13, i32 %i.07.i.i, i32 1
  %14 = ptrtoint ptr %allocated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i.i = load i8, ptr %allocated.i.i.i, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  store i8 %bf.clear.i.i.i, ptr %allocated.i.i.i, align 4
  %15 = load ptr, ptr %arrayidx.i, align 4
  %pending_delete.i.i.i = getelementptr %struct.mlx5_sf_hw, ptr %15, i32 %i.07.i.i, i32 1
  %16 = ptrtoint ptr %pending_delete.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load4.i.i.i = load i8, ptr %pending_delete.i.i.i, align 4
  %bf.clear5.i.i.i = and i8 %bf.load4.i.i.i, -65
  store i8 %bf.clear5.i.i.i, ptr %pending_delete.i.i.i, align 4
  %17 = ptrtoint ptr %start_fn_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %start_fn_id.i.i.i, align 4
  %conv10.i.i.i = add i16 %18, %11
  tail call fastcc void @trace_mlx5_sf_hwc_free(ptr noundef %3, i16 noundef zeroext %conv10.i.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %19 = ptrtoint ptr %max_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_fn.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %20
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge

for.inc.i.i.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_sf_hw_table_hwc_dealloc_all.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mlx5_sf_hw_table_hwc_dealloc_all.exit.i:          ; preds = %for.inc.i.i.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge, %if.end.mlx5_sf_hw_table_hwc_dealloc_all.exit.i_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %max_fn.i7.i = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %max_fn.i7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_fn.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i8.i = icmp sgt i32 %24, 0
  br i1 %cmp6.i8.i, label %for.body.lr.ph.i10.i, label %mlx5_sf_hw_table_hwc_dealloc_all.exit.i.cleanup_crit_edge

mlx5_sf_hw_table_hwc_dealloc_all.exit.i.cleanup_crit_edge: ; preds = %mlx5_sf_hw_table_hwc_dealloc_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i10.i:                             ; preds = %mlx5_sf_hw_table_hwc_dealloc_all.exit.i
  %start_fn_id.i.i9.i = getelementptr inbounds %struct.mlx5_sf_hw_table, ptr %1, i32 0, i32 3, i32 0, i32 2
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %for.inc.i28.i.for.body.i15.i_crit_edge, %for.body.lr.ph.i10.i
  %i.07.i11.i = phi i32 [ 0, %for.body.lr.ph.i10.i ], [ %inc.i26.i, %for.inc.i28.i.for.body.i15.i_crit_edge ]
  %25 = ptrtoint ptr %hwc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwc.i, align 4
  %allocated.i12.i = getelementptr %struct.mlx5_sf_hw, ptr %26, i32 %i.07.i11.i, i32 1
  %27 = ptrtoint ptr %allocated.i12.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i13.i = load i8, ptr %allocated.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i)
  %tobool.not.i14.i = icmp sgt i8 %bf.load.i13.i, -1
  br i1 %tobool.not.i14.i, label %for.body.i15.i.for.inc.i28.i_crit_edge, label %if.then.i25.i

for.body.i15.i.for.inc.i28.i_crit_edge:           ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i28.i

if.then.i25.i:                                    ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %start_fn_id.i.i9.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %start_fn_id.i.i9.i, align 4
  %30 = trunc i32 %i.07.i11.i to i16
  %conv1.i.i16.i = add i16 %29, %30
  %call.i.i17.i = tail call i32 @mlx5_cmd_dealloc_sf(ptr noundef %22, i16 noundef zeroext %conv1.i.i16.i) #9
  %31 = ptrtoint ptr %hwc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwc.i, align 4
  %allocated.i.i18.i = getelementptr %struct.mlx5_sf_hw, ptr %32, i32 %i.07.i11.i, i32 1
  %33 = ptrtoint ptr %allocated.i.i18.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i19.i = load i8, ptr %allocated.i.i18.i, align 4
  %bf.clear.i.i20.i = and i8 %bf.load.i.i19.i, 127
  store i8 %bf.clear.i.i20.i, ptr %allocated.i.i18.i, align 4
  %34 = load ptr, ptr %hwc.i, align 4
  %pending_delete.i.i21.i = getelementptr %struct.mlx5_sf_hw, ptr %34, i32 %i.07.i11.i, i32 1
  %35 = ptrtoint ptr %pending_delete.i.i21.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load4.i.i22.i = load i8, ptr %pending_delete.i.i21.i, align 4
  %bf.clear5.i.i23.i = and i8 %bf.load4.i.i22.i, -65
  store i8 %bf.clear5.i.i23.i, ptr %pending_delete.i.i21.i, align 4
  %36 = ptrtoint ptr %start_fn_id.i.i9.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %start_fn_id.i.i9.i, align 4
  %conv10.i.i24.i = add i16 %37, %30
  tail call fastcc void @trace_mlx5_sf_hwc_free(ptr noundef %22, i16 noundef zeroext %conv10.i.i24.i) #9
  br label %for.inc.i28.i

for.inc.i28.i:                                    ; preds = %if.then.i25.i, %for.body.i15.i.for.inc.i28.i_crit_edge
  %inc.i26.i = add nuw nsw i32 %i.07.i11.i, 1
  %38 = ptrtoint ptr %max_fn.i7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_fn.i7.i, align 4
  %cmp.i27.i = icmp slt i32 %inc.i26.i, %39
  br i1 %cmp.i27.i, label %for.inc.i28.i.for.body.i15.i_crit_edge, label %for.inc.i28.i.cleanup_crit_edge

for.inc.i28.i.cleanup_crit_edge:                  ; preds = %for.inc.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i28.i.for.body.i15.i_crit_edge:           ; preds = %for.inc.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i15.i

cleanup:                                          ; preds = %for.inc.i28.i.cleanup_crit_edge, %mlx5_sf_hw_table_hwc_dealloc_all.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_sf_hw_table_supported(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sf_hw_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 43
  %0 = ptrtoint ptr %sf_hw_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sf_hw_table, align 4
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlx5_sf_hwc_alloc(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlx5_sf_hwc_deferred_free(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_sf_hwc_free(ptr noundef %dev, i16 noundef zeroext %hw_fn_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_free, i32 0, i32 1), ptr blockaddress(@trace_mlx5_sf_hwc_free, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %call42 = tail call i32 @__traceiter_mlx5_sf_hwc_free(ptr noundef null, ptr noundef %dev, i16 noundef zeroext %hw_fn_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  %13 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !34

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5_sf_hwc_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlx5_sf_hwc_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_mlx5_sf_hwc_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 91, ptr noundef nonnull @.str.6) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %31 = tail call i32 @llvm.read_register.i32(metadata !23) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlx5_sf_hwc_free(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @mlx5_sf_hw_table_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c", i32 272, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/hw_table.c", i32 286, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5_sf_hw_table_init.__UNIQUE_ID_ddebug694, !4, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 59, i32 1}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 93, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/sf/diag/sf_tracepoint.h", i32 80, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148731783, i64 2148731788, i64 2148731801, i64 2148731845, i64 2148731879, i64 2148731900}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2160587498}
!36 = !{i64 2160587759}
!37 = !{i64 2150167239}
!38 = !{i64 2150168275}
!39 = !{i64 2160621887}
!40 = !{i64 2160622126}
!41 = !{i64 2160604665}
!42 = !{i64 2160604886}
