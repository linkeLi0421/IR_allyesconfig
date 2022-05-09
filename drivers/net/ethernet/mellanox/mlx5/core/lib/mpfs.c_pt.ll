; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_mpfs_add_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_mpfs_add_mac\09\09\09\09"
module asm "\09.long\09__crc_mlx5_mpfs_add_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_mpfs_add_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_mpfs_add_mac\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_mpfs_add_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_mpfs_del_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_mpfs_del_mac\09\09\09\09"
module asm "\09.long\09__crc_mlx5_mpfs_del_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_mpfs_del_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_mpfs_del_mac\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_mpfs_del_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_mpfs = type { [256 x %struct.hlist_head], %struct.mutex, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.l2table_node = type { %struct.l2addr_node, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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

@mlx5_mpfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mpfs->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c\00", [45 x i8] zeroinitializer }, align 32
@mlx5_mpfs_add_mac.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_mpfs_add_mac\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): MPFS mac added %pM, index (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_mpfs_add_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_mpfs_add_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_mpfs_add_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_mpfs_add_mac to i32), ptr @__kstrtab_mlx5_mpfs_add_mac, ptr @__kstrtabns_mlx5_mpfs_add_mac }, section "___ksymtab+mlx5_mpfs_add_mac", align 4
@mlx5_mpfs_del_mac.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_mpfs_del_mac\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): MPFS mac deleted %pM, index (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_mpfs_del_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_mpfs_del_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_mpfs_del_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_mpfs_del_mac to i32), ptr @__kstrtab_mlx5_mpfs_del_mac, ptr @__kstrtabns_mlx5_mpfs_del_mac }, section "___ksymtab+mlx5_mpfs_del_mac", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 109, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 128, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 168, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 206, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_mlx5_mpfs_add_mac, ptr @__ksymtab_mlx5_mpfs_del_mac, ptr @mlx5_mpfs_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mpfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mpfs_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 36
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 24
  %and = and i32 %shr, 31
  %shl = shl nuw i32 1, %and
  %add.ptr6 = getelementptr i32, ptr %1, i32 13
  %4 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr6, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1124) #8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.mlx5_mpfs, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_mpfs_init.__key) #5
  %size = getelementptr inbounds %struct.mlx5_mpfs, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %size, align 4
  %call12 = tail call ptr @bitmap_zalloc(i32 noundef %shl, i32 noundef 3264) #5
  %bitmap = getelementptr inbounds %struct.mlx5_mpfs, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %bitmap, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %mpfs17 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 27
  %10 = ptrtoint ptr %mpfs17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %mpfs17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %if.then15 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_mpfs_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mpfs1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 27
  %0 = ptrtoint ptr %mpfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpfs1, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %1, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %if.end.if.end19_crit_edge, label %do.end, !prof !28

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 128, i32 noundef 9, ptr noundef null) #5
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %bitmap = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitmap, align 4
  tail call void @bitmap_free(ptr noundef %10) #5
  tail call void @kfree(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mpfs_add_mac(ptr noundef %dev, ptr noundef %mac) #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mpfs1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 27
  %0 = ptrtoint ptr %mpfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpfs1, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %arrayidx2 = getelementptr i8, ptr %mac, i32 5
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %8 to i32
  %arrayidx3 = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %conv
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ptr.0.in = phi ptr [ %arrayidx3, %if.end ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool7.not = icmp eq ptr %ptr.0, null
  br i1 %tobool7.not, label %if.end28, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %13, %11
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then27, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ref_count = getelementptr inbounds %struct.l2table_node, ptr %ptr.0, i32 0, i32 2
  %18 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %ref_count, align 4
  br label %out

if.end28:                                         ; preds = %for.cond
  %bitmap.i = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bitmap.i, align 4
  %size.i = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %21, i32 noundef %23) #5
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %25)
  %cmp.not.i = icmp ult i32 %call.i, %25
  br i1 %cmp.not.i, label %if.end32, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end32:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap.i, align 4
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %27, i32 %div2.i.i
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %29, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %30 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 24) #8
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.end32.hash_add_err_crit_edge, label %if.then39

if.end32.hash_add_err_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %hash_add_err

if.then39:                                        ; preds = %if.end32
  %conv35 = zext i8 %31 to i32
  %addr41 = getelementptr inbounds %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mac, align 4
  %35 = ptrtoint ptr %addr41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %addr41, align 8
  %36 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i105 = getelementptr %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %add.ptr1.i105 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i105, align 4
  %arrayidx46 = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %conv35
  %39 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx46, align 4
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then39.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then39.hlist_add_head.exit_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then39.hlist_add_head.exit_crit_edge
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i.i, ptr %arrayidx46, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx46, ptr %pprev34.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #5
  %45 = getelementptr inbounds i8, ptr %in.i, i32 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 60)
  %47 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 136904704, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 5
  %and15.i = and i32 %call.i, 16777215
  %48 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  %arrayidx.i = getelementptr inbounds i8, ptr %in.i, i32 34
  %49 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mac, align 4
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %in.i, i32 38
  %54 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %add.ptr1.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #5
  %55 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i107 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %_out.i, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool53.not = icmp eq i32 %call.i107, 0
  br i1 %tobool53.not, label %if.end55, label %set_table_entry_err

if.end55:                                         ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  %index56 = getelementptr inbounds %struct.l2table_node, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %index56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i, ptr %index56, align 8
  %ref_count57 = getelementptr inbounds %struct.l2table_node, ptr %call7.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %ref_count57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %ref_count57, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_mpfs_add_mac.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_mpfs_add_mac, %if.then63)) #5
          to label %out [label %if.then63], !srcloc !29

if.then63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  %60 = call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_mpfs_add_mac.__UNIQUE_ID_ddebug506, ptr noundef %59, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef %65, ptr noundef %mac, i32 noundef %call.i) #5
  br label %out

set_table_entry_err:                              ; preds = %hlist_add_head.exit
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i, align 8
  %68 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pprev34.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %67, ptr %69, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %set_table_entry_err.hlist_del.exit_crit_edge, label %do.body13.i.i

set_table_entry_err.hlist_del.exit_crit_edge:     ; preds = %set_table_entry_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %set_table_entry_err
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %set_table_entry_err.hlist_del.exit_crit_edge
  %72 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %73 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev34.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %hash_add_err

hash_add_err:                                     ; preds = %hlist_del.exit, %if.end32.hash_add_err_crit_edge
  %err.0 = phi i32 [ %call.i107, %hlist_del.exit ], [ -12, %if.end32.hash_add_err_crit_edge ]
  %74 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bitmap.i, align 4
  %add.ptr.i.i112 = getelementptr i32, ptr %75, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %76 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i112, align 4
  %and.i.i = and i32 %77, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i112, align 4
  br label %out

out:                                              ; preds = %hash_add_err, %if.then63, %if.end55, %if.end28.out_crit_edge, %if.then27
  %err.1 = phi i32 [ 0, %if.then27 ], [ %err.0, %hash_add_err ], [ 0, %if.then63 ], [ -28, %if.end28.out_crit_edge ], [ 0, %if.end55 ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mpfs_del_mac(ptr noundef %dev, ptr noundef %mac) #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mpfs1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 27
  %0 = ptrtoint ptr %mpfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpfs1, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %arrayidx2 = getelementptr i8, ptr %mac, i32 5
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %8 to i32
  %arrayidx3 = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %conv
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ptr.0.in = phi ptr [ %arrayidx3, %if.end ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool7.not = icmp eq ptr %ptr.0, null
  br i1 %tobool7.not, label %for.cond.unlock_crit_edge, label %for.body

for.cond.unlock_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %13, %11
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end28, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end28:                                         ; preds = %for.body
  %ref_count = getelementptr inbounds %struct.l2table_node, ptr %ptr.0, i32 0, i32 2
  %18 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.end28.unlock_crit_edge, label %if.end31

if.end28.unlock_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end31:                                         ; preds = %if.end28
  %index32 = getelementptr inbounds %struct.l2table_node, ptr %ptr.0, i32 0, i32 1
  %20 = ptrtoint ptr %index32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #5
  %22 = getelementptr inbounds i8, ptr %in.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 60)
  %24 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 137035776, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 5
  %and15.i = and i32 %21, 16777215
  %25 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #5
  %26 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %_out.i, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #5
  %27 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %ptr.0, i32 0, i32 1
  %29 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev2.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %28, ptr %30, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end31.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end31.hlist_del.exit_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end31.hlist_del.exit_crit_edge
  %33 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %34 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %ptr.0) #5
  %bitmap.i = getelementptr inbounds %struct.mlx5_mpfs, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitmap.i, align 4
  %rem.i.i = and i32 %21, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %21, 5
  %add.ptr.i.i = getelementptr i32, ptr %36, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %38, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_mpfs_del_mac.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_mpfs_del_mac, %if.then41)) #5
          to label %unlock [label %if.then41], !srcloc !29

if.then41:                                        ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_mpfs_del_mac.__UNIQUE_ID_ddebug507, ptr noundef %40, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef %46, ptr noundef %mac, i32 noundef %21) #5
  br label %unlock

unlock:                                           ; preds = %if.then41, %hlist_del.exit, %if.end28.unlock_crit_edge, %for.cond.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end28.unlock_crit_edge ], [ 0, %if.then41 ], [ 0, %hlist_del.exit ], [ -2, %for.cond.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @mlx5_mpfs_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 109, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 128, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 168, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_mpfs_add_mac.__UNIQUE_ID_ddebug506, !6, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mlx5_mpfs_add_mac, !11, !"__ksymtab_mlx5_mpfs_add_mac", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 179, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 206, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_mpfs_del_mac.__UNIQUE_ID_ddebug507, !13, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!16 = !{ptr @__ksymtab_mlx5_mpfs_del_mac, !17, !"__ksymtab_mlx5_mpfs_del_mac", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/mpfs.c", i32 211, i32 1}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2148853133, i64 2148853138, i64 2148853151, i64 2148853195, i64 2148853229, i64 2148853250}
