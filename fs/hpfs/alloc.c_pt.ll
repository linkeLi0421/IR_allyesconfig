; ModuleID = '/llk/IR_all_yes/fs/hpfs/alloc.c_pt.bc'
source_filename = "../fs/hpfs/alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dnode = type { i32, i32, i8, [3 x i8], i32, i32, [2028 x i8] }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.82, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.anode = type { i32, i32, i32, %struct.bplus_header, %union.anon.83, [3 x i32] }
%union.anon.83 = type { [40 x %struct.bplus_leaf_node] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sector(s) '%s' badly placed at %08x\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Prealloc doesn't work! Wanted %d, allocated at %08x, can't allocate %d\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aip\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Trying to free reserved sector %08x\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sector %08x not allocated\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chkdn1\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chkdn2\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hpfs_free_dnode: dnode %08x not aligned\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trim\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"chk\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sector '%s' - %08x not allocated in bitmap\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sector '%s' - %08x not allocated in directory bitmap\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad allocation size: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aib\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Allocation doesn't work! Wanted %d, allocated at %08x\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"free count underflow, allocating sector %08x\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"free count overflow, freeing sector %08x\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dirband free count overflow, freeing sector %08x\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"dirband free count underflow, allocating sector %08x\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 104, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 268, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 300, i32 50 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 323, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 329, i32 50 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 334, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 379, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 385, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 408, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 567, i32 51 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 73, i32 50 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 75, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 126, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 130, i32 52 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 182, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 17, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 30, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 56, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [19 x i8] c"../fs/hpfs/alloc.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 18 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %start, i32 noundef %len, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %qbh.i = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp = icmp ult i32 %add, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %start)
  %cmp1 = icmp ult i32 %start, 18
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false2

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false2:                                   ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_fs_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp4 = icmp ugt i32 %add, %3
  br i1 %cmp4, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef %msg, i32 noundef %start) #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %sb_chk, align 2
  %5 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp6.not = icmp ne i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp839 = icmp sgt i32 %len, 0
  %or.cond41 = and i1 %cmp6.not, %cmp839
  br i1 %or.cond41, label %if.end.for.body_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add9 = add i32 %i.040, %start
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i) #5
  %shr.i = lshr i32 %add9, 14
  %6 = call ptr @memset(ptr %qbh.i, i32 255, i32 20)
  %call.i = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %shr.i, ptr noundef nonnull %qbh.i, ptr noundef nonnull @.str.10) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.chk_if_allocated.exit.thread31_crit_edge, label %if.end.i

for.body.chk_if_allocated.exit.thread31_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit.thread31

if.end.i:                                         ; preds = %for.body
  %and.i = lshr i32 %add9, 5
  %shr1.i = and i32 %and.i, 511
  %arrayidx.i = getelementptr i32, ptr %call.i, i32 %shr1.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #5
  %and2.i = and i32 %add9, 31
  %10 = shl nuw i32 1, %and2.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.chk_if_allocated.exit_crit_edge

if.end.i.chk_if_allocated.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #5
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %sb_dirband_start.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sb_dirband_start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_dirband_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %15)
  %cmp.not.i = icmp ult i32 %add9, %15
  br i1 %cmp.not.i, label %if.end7.i.chk_if_allocated.exit.thread_crit_edge, label %land.lhs.true.i

if.end7.i.chk_if_allocated.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit.thread

land.lhs.true.i:                                  ; preds = %if.end7.i
  %sb_dirband_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %sb_dirband_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_dirband_size.i, align 4
  %add.i = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add9)
  %cmp12.i = icmp ugt i32 %add.i, %add9
  br i1 %cmp12.i, label %if.then13.i, label %land.lhs.true.i.chk_if_allocated.exit.thread_crit_edge

land.lhs.true.i.chk_if_allocated.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit.thread

if.then13.i:                                      ; preds = %land.lhs.true.i
  %call16.i = call ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef nonnull %qbh.i) #5
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.then13.i.chk_if_allocated.exit.thread31_crit_edge, label %if.end19.i

if.then13.i.chk_if_allocated.exit.thread31_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit.thread31

if.end19.i:                                       ; preds = %if.then13.i
  %sub.i = sub i32 %add9, %15
  %div48.i = lshr i32 %sub.i, 2
  %shr20.i = lshr i32 %sub.i, 7
  %arrayidx21.i = getelementptr i32, ptr %call16.i, i32 %shr20.i
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #5
  %and22.i = and i32 %div48.i, 31
  %21 = shl nuw i32 1, %and22.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not.i = icmp eq i32 %22, 0
  br i1 %tobool25.not.i, label %chk_if_allocated.exit.thread34, label %if.end19.i.chk_if_allocated.exit_crit_edge

if.end19.i.chk_if_allocated.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_if_allocated.exit

chk_if_allocated.exit.thread34:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #5
  br label %for.inc

chk_if_allocated.exit.thread:                     ; preds = %land.lhs.true.i.chk_if_allocated.exit.thread_crit_edge, %if.end7.i.chk_if_allocated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #5
  br label %for.inc

chk_if_allocated.exit.thread31:                   ; preds = %if.then13.i.chk_if_allocated.exit.thread31_crit_edge, %for.body.chk_if_allocated.exit.thread31_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #5
  br label %return

chk_if_allocated.exit:                            ; preds = %if.end19.i.chk_if_allocated.exit_crit_edge, %if.end.i.chk_if_allocated.exit_crit_edge
  %.str.12.sink.i = phi ptr [ @.str.11, %if.end.i.chk_if_allocated.exit_crit_edge ], [ @.str.12, %if.end19.i.chk_if_allocated.exit_crit_edge ]
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull %.str.12.sink.i, ptr noundef %msg, i32 noundef %add9) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #5
  br label %return

for.inc:                                          ; preds = %chk_if_allocated.exit.thread, %chk_if_allocated.exit.thread34
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %chk_if_allocated.exit, %chk_if_allocated.exit.thread31, %if.end.return_crit_edge, %if.then
  %retval.1 = phi i32 [ 1, %if.then ], [ 0, %if.end.return_crit_edge ], [ 1, %chk_if_allocated.exit ], [ 1, %chk_if_allocated.exit.thread31 ], [ 0, %for.inc.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %near, i32 noundef %n, i32 noundef %forward) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward)
  %cmp = icmp slt i32 %forward, 0
  %sub = sub i32 0, %forward
  %spec.select = select i1 %cmp, i32 %sub, i32 %forward
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_fs_size, align 4
  %sub1 = add i32 %3, 16383
  %shr = lshr i32 %sub1, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %near)
  %tobool.not = icmp ne i32 %near, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %near)
  %cmp3 = icmp ugt i32 %3, %near
  %or.cond = select i1 %tobool.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  %div = sdiv i32 %spec.select, 4
  %cond = select i1 %cmp, i32 %sub, i32 %div
  %call6 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %near, i32 noundef %n, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.ret_crit_edge

if.then4.ret_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %shr10 = lshr i32 %near, 14
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div11185 = lshr i32 %sub1, 15
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end9
  %near_bmp.0 = phi i32 [ %shr10, %if.end9 ], [ %div11185, %if.else ]
  br i1 %cmp, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %sb_max_fwd_alloc = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %sb_max_fwd_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_max_fwd_alloc, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %5)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %forward.addr.1 = phi i32 [ %sub, %if.end12.if.end19_crit_edge ], [ %6, %if.then14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub1)
  %cmp20201.not = icmp ult i32 %sub1, 16384
  %sb_c_bitmap63 = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 15
  %sb_max_fwd_alloc77 = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 16
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %less_fwd

less_fwd:                                         ; preds = %if.then75, %if.end19
  %forward.addr.2 = phi i32 [ %forward.addr.1, %if.end19 ], [ %div78, %if.then75 ]
  br i1 %cmp20201.not, label %less_fwd.for.end_crit_edge, label %for.body.lr.ph

less_fwd.for.end_crit_edge:                       ; preds = %less_fwd
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %less_fwd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.addr.2)
  %tobool30.not188 = icmp eq i32 %forward.addr.2, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add21 = add nuw nsw i32 %i.0202, %near_bmp.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %shr)
  %cmp22 = icmp ult i32 %add21, %shr
  br i1 %cmp22, label %land.lhs.true23, label %if.end29.thread

land.lhs.true23:                                  ; preds = %for.body
  %shl = shl i32 %add21, 14
  %call25 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %shl, i32 noundef %n, i32 noundef %forward.addr.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %land.lhs.true23.ret.sink.split_crit_edge

land.lhs.true23.ret.sink.split_crit_edge:         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret.sink.split

if.end29:                                         ; preds = %land.lhs.true23
  br i1 %tobool30.not188, label %if.end29.if.then31_crit_edge, label %if.end29.if.end60_crit_edge

if.end29.if.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.end29.thread:                                  ; preds = %for.body
  br i1 %tobool30.not188, label %if.end29.thread.if.then31_crit_edge, label %land.lhs.true49

if.end29.thread.if.then31_crit_edge:              ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then31

if.then31:                                        ; preds = %if.end29.thread.if.then31_crit_edge, %if.end29.if.then31_crit_edge
  %7 = xor i32 %i.0202, -1
  %sub33 = add nsw i32 %near_bmp.0, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub33)
  %cmp34 = icmp sgt i32 %sub33, -1
  br i1 %cmp34, label %land.lhs.true35, label %if.then31.if.end60_crit_edge

if.then31.if.end60_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

land.lhs.true35:                                  ; preds = %if.then31
  %shl38 = shl i32 %sub33, 14
  %call39 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %shl38, i32 noundef %n, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true35.if.end60_crit_edge, label %land.lhs.true35.ret.sink.split_crit_edge

land.lhs.true35.ret.sink.split_crit_edge:         ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret.sink.split

land.lhs.true35.if.end60_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

land.lhs.true49:                                  ; preds = %if.end29.thread
  %sub51 = sub nsw i32 %add21, %shr
  %shl52 = shl i32 %sub51, 14
  %call53 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %shl52, i32 noundef %n, i32 noundef %forward.addr.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true49.if.end60_crit_edge, label %land.lhs.true49.ret.sink.split_crit_edge

land.lhs.true49.ret.sink.split_crit_edge:         ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret.sink.split

land.lhs.true49.if.end60_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true49.if.end60_crit_edge, %land.lhs.true35.if.end60_crit_edge, %if.then31.if.end60_crit_edge, %if.end29.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0202)
  %cmp61 = icmp eq i32 %i.0202, 1
  br i1 %cmp61, label %land.lhs.true62, label %if.end60.for.inc_crit_edge

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true62:                                  ; preds = %if.end60
  %8 = ptrtoint ptr %sb_c_bitmap63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_c_bitmap63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp64.not = icmp eq i32 %9, -1
  br i1 %cmp64.not, label %land.lhs.true62.for.inc_crit_edge, label %land.lhs.true65

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %shl67 = shl i32 %9, 14
  %call68 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %shl67, i32 noundef %n, i32 noundef %forward.addr.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true65.for.inc_crit_edge, label %land.lhs.true65.ret_crit_edge

land.lhs.true65.ret_crit_edge:                    ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true65.for.inc_crit_edge, %land.lhs.true62.for.inc_crit_edge, %if.end60.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %less_fwd.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.addr.2)
  %tobool74.not = icmp eq i32 %forward.addr.2, 0
  %or.cond187 = select i1 %cmp, i1 true, i1 %tobool74.not
  br i1 %or.cond187, label %for.end.if.end105_crit_edge, label %if.then75

for.end.if.end105_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul i32 %forward.addr.2, 3
  %div76 = sdiv i32 %mul, 4
  %10 = ptrtoint ptr %sb_max_fwd_alloc77 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div76, ptr %sb_max_fwd_alloc77, align 4
  %div78 = sdiv i32 %forward.addr.2, 2
  br label %less_fwd

ret.sink.split:                                   ; preds = %land.lhs.true49.ret.sink.split_crit_edge, %land.lhs.true35.ret.sink.split_crit_edge, %land.lhs.true23.ret.sink.split_crit_edge
  %sub51.lcssa.sink = phi i32 [ %add21, %land.lhs.true23.ret.sink.split_crit_edge ], [ %sub33, %land.lhs.true35.ret.sink.split_crit_edge ], [ %sub51, %land.lhs.true49.ret.sink.split_crit_edge ]
  %forward.addr.3.ph = phi i32 [ %forward.addr.2, %land.lhs.true23.ret.sink.split_crit_edge ], [ 0, %land.lhs.true35.ret.sink.split_crit_edge ], [ %forward.addr.2, %land.lhs.true49.ret.sink.split_crit_edge ]
  %sec.0.ph = phi i32 [ %call25, %land.lhs.true23.ret.sink.split_crit_edge ], [ %call39, %land.lhs.true35.ret.sink.split_crit_edge ], [ %call53, %land.lhs.true49.ret.sink.split_crit_edge ]
  %11 = ptrtoint ptr %sb_c_bitmap63 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub51.lcssa.sink, ptr %sb_c_bitmap63, align 4
  br label %ret

ret:                                              ; preds = %ret.sink.split, %land.lhs.true65.ret_crit_edge, %if.then4.ret_crit_edge
  %forward.addr.3 = phi i32 [ %spec.select, %if.then4.ret_crit_edge ], [ %forward.addr.3.ph, %ret.sink.split ], [ %forward.addr.2, %land.lhs.true65.ret_crit_edge ]
  %sec.0 = phi i32 [ %call6, %if.then4.ret_crit_edge ], [ %sec.0.ph, %ret.sink.split ], [ %call68, %land.lhs.true65.ret_crit_edge ]
  %umax217 = call i32 @llvm.umax.i32(i32 %n, i32 1)
  br label %do.body

do.body:                                          ; preds = %hpfs_claim_alloc.exit.do.body_crit_edge, %ret
  %i.1 = phi i32 [ %inc84, %hpfs_claim_alloc.exit.do.body_crit_edge ], [ 0, %ret ]
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %sb_n_free.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_n_free.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end.i [
    i32 -1, label %do.body.hpfs_claim_alloc.exit_crit_edge
    i32 0, label %if.then5.i
  ], !prof !50

do.body.hpfs_claim_alloc.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %hpfs_claim_alloc.exit

if.then5.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %add83 = add i32 %i.1, %sec.0
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %add83) #5
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %15, -1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i, %if.then5.i
  %dec.sink.i = phi i32 [ %dec.i, %if.end.i ], [ -1, %if.then5.i ]
  %17 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec.sink.i, ptr %sb_n_free.i, align 4
  br label %hpfs_claim_alloc.exit

hpfs_claim_alloc.exit:                            ; preds = %cleanup.sink.split.i, %do.body.hpfs_claim_alloc.exit_crit_edge
  %inc84 = add nuw i32 %i.1, 1
  %exitcond218.not = icmp eq i32 %inc84, %umax217
  br i1 %exitcond218.not, label %if.end88, label %hpfs_claim_alloc.exit.do.body_crit_edge, !prof !51

hpfs_claim_alloc.exit.do.body_crit_edge:          ; preds = %hpfs_claim_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end88:                                         ; preds = %hpfs_claim_alloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.addr.3)
  %cmp94204 = icmp sgt i32 %forward.addr.3, 0
  %or.cond206 = select i1 %cmp, i1 %cmp94204, i1 false
  br i1 %or.cond206, label %for.body95.lr.ph, label %if.end88.if.end105_crit_edge

if.end88.if.end105_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

for.body95.lr.ph:                                 ; preds = %if.end88
  %add96 = add i32 %sec.0, %n
  br label %for.body95

for.body95:                                       ; preds = %for.inc102.for.body95_crit_edge, %for.body95.lr.ph
  %i.2205 = phi i32 [ 0, %for.body95.lr.ph ], [ %inc103, %for.inc102.for.body95_crit_edge ]
  %add97 = add i32 %add96, %i.2205
  %call98 = tail call i32 @hpfs_alloc_if_possible(ptr noundef %s, i32 noundef %add97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %for.inc102

if.then100:                                       ; preds = %for.body95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %forward.addr.3, i32 noundef %sec.0, i32 noundef %i.2205) #5
  br label %if.end105

for.inc102:                                       ; preds = %for.body95
  %inc103 = add nuw nsw i32 %i.2205, 1
  %exitcond219.not = icmp eq i32 %inc103, %forward.addr.3
  br i1 %exitcond219.not, label %for.inc102.if.end105_crit_edge, label %for.inc102.for.body95_crit_edge

for.inc102.for.body95_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body95

for.inc102.if.end105_crit_edge:                   ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.end105:                                        ; preds = %for.inc102.if.end105_crit_edge, %if.then100, %if.end88.if.end105_crit_edge, %for.end.if.end105_crit_edge
  %sec.1 = phi i32 [ 0, %if.then100 ], [ %sec.0, %if.end88.if.end105_crit_edge ], [ %sec.0, %for.inc102.if.end105_crit_edge ], [ 0, %for.end.if.end105_crit_edge ]
  ret i32 %sec.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %near, i32 noundef %n, i32 noundef %forward) unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %and = and i32 %near, -16384
  %and1 = and i32 %near, 16383
  %neg = sub i32 0, %n
  %and2 = and i32 %and1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n)
  %cmp.not = icmp eq i32 %n, 1
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %1 = zext i32 %n to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %n, label %if.then [
    i32 4, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge378
  ]

entry.if.end_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %n) #5
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge378
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16385, i32 %near)
  %cmp4.not = icmp ugt i32 %near, -16385
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %shr = lshr i32 %near, 14
  %call = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %shr, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.14) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.then5.lor.lhs.false.i_crit_edge

if.then5.lor.lhs.false.i_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call8 = call ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef nonnull %qbh) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.else.lor.lhs.false.i_crit_edge

if.else.lor.lhs.false.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.else.lor.lhs.false.i_crit_edge, %if.then5.lor.lhs.false.i_crit_edge
  %bmp.0 = phi ptr [ %call, %if.then5.lor.lhs.false.i_crit_edge ], [ %call8, %if.else.lor.lhs.false.i_crit_edge ]
  %add = add i32 %forward, %n
  %add.i = add i32 %add, -16385
  %2 = add i32 %add.i, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %2)
  %cmp1.i = icmp ult i32 %2, -16384
  br i1 %cmp1.i, label %tstbits.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %and.i = lshr i32 %and2, 5
  %arrayidx.i = getelementptr i32, ptr %bmp.0, i32 %and.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #5
  %and2.i = and i32 %and2, 31
  %6 = shl nuw i32 1, %and2.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.if.end17_crit_edge, label %for.cond.preheader.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp733.i = icmp ugt i32 %add, 1
  br i1 %cmp733.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.then15_crit_edge

for.cond.preheader.i.if.then15_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add8.i = add i32 %i.034.i, %and2
  %and9.i = lshr i32 %add8.i, 5
  %shr10.i = and i32 %and9.i, 511
  %arrayidx11.i = getelementptr i32, ptr %bmp.0, i32 %shr10.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx11.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9) #5
  %and13.i = and i32 %add8.i, 31
  %11 = shl nuw i32 1, %and13.i
  %12 = and i32 %11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not.i = icmp eq i32 %12, 0
  br i1 %tobool16.not.i, label %for.body.i.if.end17_crit_edge, label %for.inc.i

for.body.i.if.end17_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add
  br i1 %exitcond.not.i, label %for.inc.i.if.then15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then15_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

tstbits.exit:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool14.not = icmp eq i32 %add, 0
  br i1 %tobool14.not, label %tstbits.exit.if.then15_crit_edge, label %tstbits.exit.if.end17_crit_edge

tstbits.exit.if.then15_crit_edge:                 ; preds = %tstbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

tstbits.exit.if.end17_crit_edge:                  ; preds = %tstbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  %.pre339 = and i32 %and2, 31
  br label %if.end17

if.then15:                                        ; preds = %tstbits.exit.if.then15_crit_edge, %for.inc.i.if.then15_crit_edge, %for.cond.preheader.i.if.then15_crit_edge
  %add16 = or i32 %and2, %and
  br label %rt

if.end17:                                         ; preds = %tstbits.exit.if.end17_crit_edge, %for.body.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %and37.pre-phi = phi i32 [ %.pre339, %tstbits.exit.if.end17_crit_edge ], [ %and2.i, %if.end.i.if.end17_crit_edge ], [ %and2.i, %for.body.i.if.end17_crit_edge ]
  %add18 = add i32 %and2, %n
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp733.i232 = icmp ugt i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp21.not = icmp eq i32 %add, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end17
  %q.0 = phi i32 [ %add18, %if.end17 ], [ %q.0.be, %while.cond.backedge ]
  %b.0 = phi i32 [ 0, %if.end17 ], [ %b.0.be, %while.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %q.0)
  %cmp.i223 = icmp ugt i32 %q.0, 16383
  %13 = add i32 %add.i, %q.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %13)
  %cmp1.i225 = icmp ult i32 %13, -16384
  %or.cond = or i1 %cmp.i223, %cmp1.i225
  br i1 %or.cond, label %tstbits.exit248, label %if.end.i231

if.end.i231:                                      ; preds = %while.cond
  %and.i227 = lshr i32 %q.0, 5
  %arrayidx.i228 = getelementptr i32, ptr %bmp.0, i32 %and.i227
  %14 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i228, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #5
  %and2.i229 = and i32 %q.0, 31
  %17 = shl nuw i32 1, %and2.i229
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i230 = icmp eq i32 %18, 0
  br i1 %tobool.not.i230, label %if.end.i231.while.body_crit_edge, label %for.cond.preheader.i233

if.end.i231.while.body_crit_edge:                 ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.cond.preheader.i233:                          ; preds = %if.end.i231
  br i1 %cmp733.i232, label %for.cond.preheader.i233.for.body.i241_crit_edge, label %for.cond.preheader.i233.if.then45_crit_edge

for.cond.preheader.i233.if.then45_crit_edge:      ; preds = %for.cond.preheader.i233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

for.cond.preheader.i233.for.body.i241_crit_edge:  ; preds = %for.cond.preheader.i233
  br label %for.body.i241

for.body.i241:                                    ; preds = %for.inc.i246.for.body.i241_crit_edge, %for.cond.preheader.i233.for.body.i241_crit_edge
  %i.034.i234 = phi i32 [ %add18.i242, %for.inc.i246.for.body.i241_crit_edge ], [ 1, %for.cond.preheader.i233.for.body.i241_crit_edge ]
  %add8.i235 = add i32 %i.034.i234, %q.0
  %and9.i236 = lshr i32 %add8.i235, 5
  %shr10.i237 = and i32 %and9.i236, 511
  %arrayidx11.i238 = getelementptr i32, ptr %bmp.0, i32 %shr10.i237
  %19 = ptrtoint ptr %arrayidx11.i238 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.i238, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #5
  %and13.i239 = and i32 %add8.i235, 31
  %22 = shl nuw i32 1, %and13.i239
  %23 = and i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not.i240 = icmp eq i32 %23, 0
  %add18.i242 = add nuw i32 %i.034.i234, 1
  br i1 %tobool16.not.i240, label %for.body.i241.while.body_crit_edge, label %for.inc.i246

for.body.i241.while.body_crit_edge:               ; preds = %for.body.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.inc.i246:                                     ; preds = %for.body.i241
  %exitcond.not.i245 = icmp eq i32 %add18.i242, %add
  br i1 %exitcond.not.i245, label %for.inc.i246.if.then45_crit_edge, label %for.inc.i246.for.body.i241_crit_edge

for.inc.i246.for.body.i241_crit_edge:             ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i241

for.inc.i246.if.then45_crit_edge:                 ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

tstbits.exit248:                                  ; preds = %while.cond
  br i1 %cmp21.not, label %tstbits.exit248.if.then45_crit_edge, label %tstbits.exit248.while.body_crit_edge

tstbits.exit248.while.body_crit_edge:             ; preds = %tstbits.exit248
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

tstbits.exit248.if.then45_crit_edge:              ; preds = %tstbits.exit248
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

while.body:                                       ; preds = %tstbits.exit248.while.body_crit_edge, %for.body.i241.while.body_crit_edge, %if.end.i231.while.body_crit_edge
  %retval.0.i247288 = phi i32 [ %add, %tstbits.exit248.while.body_crit_edge ], [ 1, %if.end.i231.while.body_crit_edge ], [ %add18.i242, %for.body.i241.while.body_crit_edge ]
  %add22 = add i32 %retval.0.i247288, %q.0
  %sub25 = add i32 %add22, -1
  %and28 = and i32 %sub25, %neg
  %add29 = add i32 %and28, %n
  %q.1 = select i1 %cmp.not, i32 %add22, i32 %add29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.0)
  %tobool31.not = icmp eq i32 %b.0, 0
  br i1 %tobool31.not, label %if.then32, label %if.else39

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %cmp35.not.unshifted = xor i32 %q.1, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cmp35.not.unshifted)
  %cmp35.not = icmp ult i32 %cmp35.not.unshifted, 32
  %spec.select = select i1 %cmp35.not, i32 %q.1, i32 %and37.pre-phi
  %not.cmp35.not = xor i1 %cmp35.not, true
  %spec.select221 = zext i1 %not.cmp35.not to i32
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else39.while.cond.backedge_crit_edge, %if.then32
  %q.0.be = phi i32 [ %q.1, %if.else39.while.cond.backedge_crit_edge ], [ %spec.select, %if.then32 ]
  %b.0.be = phi i32 [ 1, %if.else39.while.cond.backedge_crit_edge ], [ %spec.select221, %if.then32 ]
  br label %while.cond

if.else39:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %q.1, i32 %and2)
  %cmp40 = icmp ugt i32 %q.1, %and2
  br i1 %cmp40, label %if.end47, label %if.else39.while.cond.backedge_crit_edge

if.else39.while.cond.backedge_crit_edge:          ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then45:                                        ; preds = %tstbits.exit248.if.then45_crit_edge, %for.inc.i246.if.then45_crit_edge, %for.cond.preheader.i233.if.then45_crit_edge
  %add46 = add i32 %q.0, %and
  br label %rt

if.end47:                                         ; preds = %if.else39
  %shr48 = lshr i32 %and2, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %add)
  %cmp53 = icmp ult i32 %add, 63
  br label %do.body

do.body:                                          ; preds = %cont.do.body_crit_edge, %if.end47
  %i.0 = phi i32 [ %shr48, %if.end47 ], [ %and101, %cont.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %bmp.0, i32 %i.0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool49.not = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp56.not = icmp eq i32 %25, -1
  %or.cond321 = select i1 %cmp53, i1 %tobool49.not, i1 %cmp56.not
  br i1 %or.cond321, label %if.end58, label %do.body.cont_crit_edge

do.body.cont_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont

if.end58:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp59.not = icmp eq i32 %i.0, 0
  br i1 %cmp59.not, label %if.end58.if.end69_crit_edge, label %if.then60

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then60:                                        ; preds = %if.end58
  %shl = shl nuw nsw i32 %i.0, 5
  %sub61 = add nsw i32 %i.0, -1
  %arrayidx62 = getelementptr i32, ptr %bmp.0, i32 %sub61
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx62, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool65.not318 = icmp sgt i32 %28, -1
  br i1 %tobool65.not318, label %if.then60.if.end69_crit_edge, label %if.then60.while.body66_crit_edge

if.then60.while.body66_crit_edge:                 ; preds = %if.then60
  br label %while.body66

if.then60.if.end69_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

while.body66:                                     ; preds = %while.body66.while.body66_crit_edge, %if.then60.while.body66_crit_edge
  %k.0320 = phi i32 [ %shl67, %while.body66.while.body66_crit_edge ], [ %28, %if.then60.while.body66_crit_edge ]
  %q.4319 = phi i32 [ %dec, %while.body66.while.body66_crit_edge ], [ %shl, %if.then60.while.body66_crit_edge ]
  %dec = add nsw i32 %q.4319, -1
  %shl67 = shl i32 %k.0320, 1
  %tobool65.not = icmp sgt i32 %shl67, -1
  br i1 %tobool65.not, label %while.body66.if.end69_crit_edge, label %while.body66.while.body66_crit_edge

while.body66.while.body66_crit_edge:              ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body66

while.body66.if.end69_crit_edge:                  ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end69:                                         ; preds = %while.body66.if.end69_crit_edge, %if.then60.if.end69_crit_edge, %if.end58.if.end69_crit_edge
  %q.5 = phi i32 [ 0, %if.end58.if.end69_crit_edge ], [ %shl, %if.then60.if.end69_crit_edge ], [ %dec, %while.body66.if.end69_crit_edge ]
  %sub72 = add i32 %q.5, -1
  %and75 = and i32 %sub72, %neg
  %add76 = add i32 %and75, %n
  %q.6 = select i1 %cmp.not, i32 %q.5, i32 %add76
  br label %while.cond78

while.cond78:                                     ; preds = %while.body82.while.cond78_crit_edge, %if.end69
  %q.7 = phi i32 [ %q.6, %if.end69 ], [ %q.8, %while.body82.while.cond78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %q.7)
  %cmp.i249 = icmp ugt i32 %q.7, 16383
  %29 = add i32 %add.i, %q.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %29)
  %cmp1.i251 = icmp ult i32 %29, -16384
  %or.cond322 = or i1 %cmp.i249, %cmp1.i251
  br i1 %or.cond322, label %tstbits.exit274, label %if.end.i257

if.end.i257:                                      ; preds = %while.cond78
  %and.i253 = lshr i32 %q.7, 5
  %arrayidx.i254 = getelementptr i32, ptr %bmp.0, i32 %and.i253
  %30 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i254, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31) #5
  %and2.i255 = and i32 %q.7, 31
  %33 = shl nuw i32 1, %and2.i255
  %34 = and i32 %32, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i256 = icmp eq i32 %34, 0
  br i1 %tobool.not.i256, label %if.end.i257.while.body82_crit_edge, label %for.cond.preheader.i259

if.end.i257.while.body82_crit_edge:               ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body82

for.cond.preheader.i259:                          ; preds = %if.end.i257
  br i1 %cmp733.i232, label %for.cond.preheader.i259.for.body.i267_crit_edge, label %for.cond.preheader.i259.if.then98_crit_edge

for.cond.preheader.i259.if.then98_crit_edge:      ; preds = %for.cond.preheader.i259
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then98

for.cond.preheader.i259.for.body.i267_crit_edge:  ; preds = %for.cond.preheader.i259
  br label %for.body.i267

for.body.i267:                                    ; preds = %for.inc.i272.for.body.i267_crit_edge, %for.cond.preheader.i259.for.body.i267_crit_edge
  %i.034.i260 = phi i32 [ %add18.i268, %for.inc.i272.for.body.i267_crit_edge ], [ 1, %for.cond.preheader.i259.for.body.i267_crit_edge ]
  %add8.i261 = add i32 %i.034.i260, %q.7
  %and9.i262 = lshr i32 %add8.i261, 5
  %shr10.i263 = and i32 %and9.i262, 511
  %arrayidx11.i264 = getelementptr i32, ptr %bmp.0, i32 %shr10.i263
  %35 = ptrtoint ptr %arrayidx11.i264 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx11.i264, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #5
  %and13.i265 = and i32 %add8.i261, 31
  %38 = shl nuw i32 1, %and13.i265
  %39 = and i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool16.not.i266 = icmp eq i32 %39, 0
  %add18.i268 = add nuw i32 %i.034.i260, 1
  br i1 %tobool16.not.i266, label %for.body.i267.while.body82_crit_edge, label %for.inc.i272

for.body.i267.while.body82_crit_edge:             ; preds = %for.body.i267
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body82

for.inc.i272:                                     ; preds = %for.body.i267
  %exitcond.not.i271 = icmp eq i32 %add18.i268, %add
  br i1 %exitcond.not.i271, label %for.inc.i272.if.then98_crit_edge, label %for.inc.i272.for.body.i267_crit_edge

for.inc.i272.for.body.i267_crit_edge:             ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i267

for.inc.i272.if.then98_crit_edge:                 ; preds = %for.inc.i272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then98

tstbits.exit274:                                  ; preds = %while.cond78
  br i1 %cmp21.not, label %tstbits.exit274.if.then98_crit_edge, label %tstbits.exit274.while.body82_crit_edge

tstbits.exit274.while.body82_crit_edge:           ; preds = %tstbits.exit274
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body82

tstbits.exit274.if.then98_crit_edge:              ; preds = %tstbits.exit274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then98

while.body82:                                     ; preds = %tstbits.exit274.while.body82_crit_edge, %for.body.i267.while.body82_crit_edge, %if.end.i257.while.body82_crit_edge
  %retval.0.i273300 = phi i32 [ %add, %tstbits.exit274.while.body82_crit_edge ], [ 1, %if.end.i257.while.body82_crit_edge ], [ %add18.i268, %for.body.i267.while.body82_crit_edge ]
  %add83 = add i32 %retval.0.i273300, %q.7
  %sub86 = add i32 %add83, -1
  %and89 = and i32 %sub86, %neg
  %add90 = add i32 %and89, %n
  %q.8 = select i1 %cmp.not, i32 %add83, i32 %add90
  %shr92 = lshr i32 %q.8, 5
  %cmp93 = icmp ugt i32 %shr92, %i.0
  br i1 %cmp93, label %while.body82.cont_crit_edge, label %while.body82.while.cond78_crit_edge

while.body82.while.cond78_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond78

while.body82.cont_crit_edge:                      ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont

if.then98:                                        ; preds = %tstbits.exit274.if.then98_crit_edge, %for.inc.i272.if.then98_crit_edge, %for.cond.preheader.i259.if.then98_crit_edge
  %add99 = add i32 %q.7, %and
  br label %rt

cont:                                             ; preds = %while.body82.cont_crit_edge, %do.body.cont_crit_edge
  %inc = add nuw nsw i32 %i.0, 1
  %and101 = and i32 %inc, 511
  %cmp102.not = icmp eq i32 %and101, %shr48
  br i1 %cmp102.not, label %cont.b132_crit_edge, label %cont.do.body_crit_edge

cont.do.body_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cont.b132_crit_edge:                              ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %b132

rt:                                               ; preds = %if.then98, %if.then45, %if.then15
  %ret.0 = phi i32 [ %add99, %if.then98 ], [ %add46, %if.then45 ], [ %add16, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool103.not = icmp eq i32 %ret.0, 0
  br i1 %tobool103.not, label %rt.b132_crit_edge, label %if.then104

rt.b132_crit_edge:                                ; preds = %rt
  call void @__sanitizer_cov_trace_pc() #7
  br label %b132

if.then104:                                       ; preds = %rt
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load = load i16, ptr %sb_chk, align 2
  %43 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool106.not = icmp eq i16 %43, 0
  br i1 %tobool106.not, label %if.then104.if.end121_crit_edge, label %land.lhs.true107

if.then104.if.end121_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = shl nsw i32 -1, %n
  %.pre333 = xor i32 %.pre, -1
  %.pre334 = and i32 %ret.0, 31
  %.pre335 = shl i32 %.pre333, %.pre334
  %.pre336 = xor i32 %.pre335, -1
  %.pre337 = lshr i32 %ret.0, 5
  %.pre338 = and i32 %.pre337, 511
  br label %if.end121

land.lhs.true107:                                 ; preds = %if.then104
  %cmp110.not.unshifted = xor i32 %ret.0, %near
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %cmp110.not.unshifted)
  %cmp110.not = icmp ult i32 %cmp110.not.unshifted, 16384
  br i1 %cmp110.not, label %lor.lhs.false, label %land.lhs.true107.if.then120_crit_edge

land.lhs.true107.if.then120_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then120

lor.lhs.false:                                    ; preds = %land.lhs.true107
  %and111 = lshr i32 %ret.0, 5
  %shr112 = and i32 %and111, 511
  %arrayidx113 = getelementptr i32, ptr %bmp.0, i32 %shr112
  %44 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx113, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %notmask220 = shl nsw i32 -1, %n
  %sub115 = xor i32 %notmask220, -1
  %and116 = and i32 %ret.0, 31
  %shl117 = shl i32 %sub115, %and116
  %neg118 = xor i32 %shl117, -1
  %or = or i32 %46, %neg118
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp119.not = icmp eq i32 %or, -1
  br i1 %cmp119.not, label %lor.lhs.false.if.end121_crit_edge, label %lor.lhs.false.if.then120_crit_edge

lor.lhs.false.if.then120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then120

lor.lhs.false.if.end121_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then120:                                       ; preds = %lor.lhs.false.if.then120_crit_edge, %land.lhs.true107.if.then120_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %n, i32 noundef %ret.0) #5
  br label %b132

if.end121:                                        ; preds = %lor.lhs.false.if.end121_crit_edge, %if.then104.if.end121_crit_edge
  %shr128.pre-phi = phi i32 [ %.pre338, %if.then104.if.end121_crit_edge ], [ %shr112, %lor.lhs.false.if.end121_crit_edge ]
  %neg126.pre-phi = phi i32 [ %.pre336, %if.then104.if.end121_crit_edge ], [ %neg118, %lor.lhs.false.if.end121_crit_edge ]
  %47 = call i32 @llvm.bswap.i32(i32 %neg126.pre-phi)
  %arrayidx129 = getelementptr i32, ptr %bmp.0, i32 %shr128.pre-phi
  %48 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx129, align 4
  %and130 = and i32 %49, %47
  store i32 %and130, ptr %arrayidx129, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #5
  br label %b132

b132:                                             ; preds = %if.end121, %if.then120, %rt.b132_crit_edge, %cont.b132_crit_edge
  %ret.1 = phi i32 [ 0, %if.then120 ], [ %ret.0, %if.end121 ], [ 0, %rt.b132_crit_edge ], [ 0, %cont.b132_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %cleanup

cleanup:                                          ; preds = %b132, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %b132 ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_alloc_if_possible(ptr noundef %s, i32 noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %shr = lshr i32 %sec, 14
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %call = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %shr, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %sec, 5
  %shr1 = and i32 %and, 511
  %arrayidx = getelementptr i32, ptr %call, i32 %shr1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %and2 = and i32 %sec, 31
  %shl = shl nuw i32 1, %and2
  %and3 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  %neg = xor i32 %shl, -1
  %4 = call i32 @llvm.bswap.i32(i32 %neg)
  %and11 = and i32 %2, %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and11, ptr %arrayidx, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_n_free.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_n_free.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %if.end.i [
    i32 -1, label %if.then5.cleanup_crit_edge
    i32 0, label %if.then5.i
  ], !prof !50

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %sec) #5
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i = add i32 %9, -1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i, %if.then5.i
  %dec.sink.i = phi i32 [ %dec.i, %if.end.i ], [ -1, %if.then5.i ]
  %11 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec.sink.i, ptr %sb_n_free.i, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %cleanup.sink.split.i, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12 ], [ 1, %if.then5.cleanup_crit_edge ], [ 1, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_bitmap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_mark_4buffers_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_free_sectors(ptr noundef %s, i32 noundef %sec, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not = icmp eq i32 %n, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sec)
  %cmp = icmp ult i32 %sec, 18
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %sec) #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = tail call i32 @llvm.umin.i32(i32 %n, i32 65535)
  %sb_max_fwd_alloc = getelementptr inbounds %struct.hpfs_sb_info, ptr %2, i32 0, i32 16
  %4 = ptrtoint ptr %sb_max_fwd_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_max_fwd_alloc, align 4
  %add = add i32 %5, %3
  %6 = tail call i32 @llvm.umin.i32(i32 %add, i32 16777215)
  %7 = ptrtoint ptr %sb_max_fwd_alloc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sb_max_fwd_alloc, align 4
  %shr55 = lshr i32 %sec, 14
  %call956 = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %shr55, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.4) #5
  %tobool10.not57 = icmp eq ptr %call956, null
  br i1 %tobool10.not57, label %if.end2.cleanup_crit_edge, label %if.end2.new_tst.preheader_crit_edge

if.end2.new_tst.preheader_crit_edge:              ; preds = %if.end2
  br label %new_tst.preheader

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

new_tst.preheader:                                ; preds = %if.then29.new_tst.preheader_crit_edge, %if.end2.new_tst.preheader_crit_edge
  %call960 = phi ptr [ %call9, %if.then29.new_tst.preheader_crit_edge ], [ %call956, %if.end2.new_tst.preheader_crit_edge ]
  %n.addr.059 = phi i32 [ %dec, %if.then29.new_tst.preheader_crit_edge ], [ %n, %if.end2.new_tst.preheader_crit_edge ]
  %sec.addr.058 = phi i32 [ %inc, %if.then29.new_tst.preheader_crit_edge ], [ %sec, %if.end2.new_tst.preheader_crit_edge ]
  br label %new_tst

new_tst:                                          ; preds = %if.end26.new_tst_crit_edge, %new_tst.preheader
  %sec.addr.1 = phi i32 [ %inc, %if.end26.new_tst_crit_edge ], [ %sec.addr.058, %new_tst.preheader ]
  %n.addr.1 = phi i32 [ %dec, %if.end26.new_tst_crit_edge ], [ %n.addr.059, %new_tst.preheader ]
  %and = lshr i32 %sec.addr.1, 5
  %shr13 = and i32 %and, 511
  %arrayidx = getelementptr i32, ptr %call960, i32 %shr13
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %and14 = and i32 %sec.addr.1, 31
  %11 = shl nuw i32 1, %and14
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %new_tst
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.5, i32 noundef %sec.addr.1) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %cleanup

if.end19:                                         ; preds = %new_tst
  %13 = call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %13, %9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %sb_n_free.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_n_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not.i = icmp eq i32 %18, -1
  br i1 %cmp.not.i, label %if.end19.hpfs_claim_free.exit_crit_edge, label %if.then.i

if.end19.hpfs_claim_free.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %hpfs_claim_free.exit

if.then.i:                                        ; preds = %if.end19
  %sb_fs_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %sb_fs_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_fs_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp2.not.i = icmp ult i32 %18, %20
  br i1 %cmp2.not.i, label %if.end.i, label %if.then4.i, !prof !51

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %sec.addr.1) #5
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add nuw i32 %18, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i, %if.then4.i
  %inc.sink.i = phi i32 [ %inc.i, %if.end.i ], [ -1, %if.then4.i ]
  %21 = ptrtoint ptr %sb_n_free.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.sink.i, ptr %sb_n_free.i, align 4
  br label %hpfs_claim_free.exit

hpfs_claim_free.exit:                             ; preds = %cleanup.sink.split.i, %if.end19.hpfs_claim_free.exit_crit_edge
  %dec = add i32 %n.addr.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool24.not = icmp eq i32 %dec, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %hpfs_claim_free.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %cleanup

if.end26:                                         ; preds = %hpfs_claim_free.exit
  %inc = add i32 %sec.addr.1, 1
  %and27 = and i32 %inc, 16383
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.new_tst_crit_edge

if.end26.new_tst_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %new_tst

if.then29:                                        ; preds = %if.end26
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %shr = lshr i32 %inc, 14
  %call9 = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %shr, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.4) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then29.cleanup_crit_edge, label %if.then29.new_tst.preheader_crit_edge

if.then29.new_tst.preheader_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %new_tst.preheader

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29.cleanup_crit_edge, %if.then25, %if.then18, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_check_free_dnodes(ptr noundef %s, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_fs_size, align 4
  %sub = add i32 %3, 16383
  %shr = lshr i32 %sub, 14
  %sb_c_bitmap = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %sb_c_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_c_bitmap, align 4
  %and = and i32 %5, 268435455
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %6 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %call2 = call ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef nonnull %qbh) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry.for.body_crit_edge
  %j.0116 = phi i32 [ %inc, %for.inc17.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %n.addr.0115 = phi i32 [ %n.addr.3.ph, %for.inc17.for.body_crit_edge ], [ %n, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call2, i32 %j.0116
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not112 = icmp eq i32 %8, 0
  br i1 %tobool7.not112, label %for.body.for.inc17_crit_edge, label %for.body8.preheader

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc17

for.body8.preheader:                              ; preds = %for.body
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.preheader
  %k.0114 = phi i32 [ %shr16, %for.inc.for.body8_crit_edge ], [ %9, %for.body8.preheader ]
  %n.addr.1113 = phi i32 [ %n.addr.2, %for.inc.for.body8_crit_edge ], [ %n.addr.0115, %for.body8.preheader ]
  %and9 = and i32 %k.0114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body8.for.inc_crit_edge, label %if.then11

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %for.body8
  %dec = add i32 %n.addr.1113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %if.then11.cleanup66.sink.split_crit_edge, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11.cleanup66.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc:                                          ; preds = %if.then11.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %n.addr.2 = phi i32 [ %dec, %if.then11.for.inc_crit_edge ], [ %n.addr.1113, %for.body8.for.inc_crit_edge ]
  %shr16 = lshr i32 %k.0114, 1
  %tobool7.not = icmp ult i32 %k.0114, 2
  br i1 %tobool7.not, label %for.inc.for.inc17_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %n.addr.3.ph = phi i32 [ %n.addr.0115, %for.body.for.inc17_crit_edge ], [ %n.addr.2, %for.inc.for.inc17_crit_edge ]
  %inc = add nuw nsw i32 %j.0116, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc17.if.end19_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc17.if.end19_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %for.inc17.if.end19_crit_edge, %entry.if.end19_crit_edge
  %n.addr.4 = phi i32 [ %n, %entry.if.end19_crit_edge ], [ %n.addr.3.ph, %for.inc17.if.end19_crit_edge ]
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %sb_c_bitmap21 = getelementptr inbounds %struct.hpfs_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %sb_c_bitmap21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_c_bitmap21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp22.not = icmp eq i32 %13, -1
  br i1 %cmp22.not, label %if.end19.chk_next_crit_edge, label %if.then23

if.end19.chk_next_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %chk_next

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %and, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.6) #5
  br label %chk_bmp

chk_next:                                         ; preds = %if.end64, %if.end19.chk_next_crit_edge
  %n.addr.5 = phi i32 [ %n.addr.11, %if.end64 ], [ %n.addr.4, %if.end19.chk_next_crit_edge ]
  %i.0 = phi i32 [ %inc65, %if.end64 ], [ 0, %if.end19.chk_next_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %and)
  %cmp26 = icmp eq i32 %i.0, %and
  %inc28 = zext i1 %cmp26 to i32
  %spec.select = add i32 %i.0, %inc28
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %shr)
  %cmp30.not = icmp slt i32 %spec.select, %shr
  br i1 %cmp30.not, label %if.end32, label %chk_next.cleanup66_crit_edge

chk_next.cleanup66_crit_edge:                     ; preds = %chk_next
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66

if.end32:                                         ; preds = %chk_next
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %spec.select, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.7) #5
  br label %chk_bmp

chk_bmp:                                          ; preds = %if.end32, %if.then23
  %n.addr.6 = phi i32 [ %n.addr.4, %if.then23 ], [ %n.addr.5, %if.end32 ]
  %i.2 = phi i32 [ 0, %if.then23 ], [ %spec.select, %if.end32 ]
  %bmp.0 = phi ptr [ %call24, %if.then23 ], [ %call33, %if.end32 ]
  %tobool34.not = icmp eq ptr %bmp.0, null
  br i1 %tobool34.not, label %chk_bmp.if.end64_crit_edge, label %chk_bmp.for.body38_crit_edge

chk_bmp.for.body38_crit_edge:                     ; preds = %chk_bmp
  br label %for.body38

chk_bmp.if.end64_crit_edge:                       ; preds = %chk_bmp
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

for.body38:                                       ; preds = %for.inc61.for.body38_crit_edge, %chk_bmp.for.body38_crit_edge
  %j.1120 = phi i32 [ %inc62, %for.inc61.for.body38_crit_edge ], [ 0, %chk_bmp.for.body38_crit_edge ]
  %n.addr.7119 = phi i32 [ %n.addr.10.ph, %for.inc61.for.body38_crit_edge ], [ %n.addr.6, %chk_bmp.for.body38_crit_edge ]
  %arrayidx40 = getelementptr i32, ptr %bmp.0, i32 %j.1120
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool41.not = icmp eq i32 %15, 0
  br i1 %tobool41.not, label %for.body38.for.inc61_crit_edge, label %for.cond44.preheader

for.body38.for.inc61_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc61

for.cond44.preheader:                             ; preds = %for.body38
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %and48 = and i32 %16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and48)
  %cmp49 = icmp eq i32 %and48, 15
  br i1 %cmp49, label %if.then50, label %for.cond44.preheader.for.inc56_crit_edge

for.cond44.preheader.for.inc56_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56

if.then50:                                        ; preds = %for.cond44.preheader
  %dec51 = add i32 %n.addr.7119, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51)
  %tobool52.not = icmp eq i32 %dec51, 0
  br i1 %tobool52.not, label %if.then50.cleanup66.sink.split_crit_edge, label %if.then50.for.inc56_crit_edge

if.then50.for.inc56_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56

if.then50.cleanup66.sink.split_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56:                                        ; preds = %if.then50.for.inc56_crit_edge, %for.cond44.preheader.for.inc56_crit_edge
  %n.addr.9 = phi i32 [ %dec51, %if.then50.for.inc56_crit_edge ], [ %n.addr.7119, %for.cond44.preheader.for.inc56_crit_edge ]
  %and48.1 = and i32 %16, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and48.1)
  %cmp49.1 = icmp eq i32 %and48.1, 240
  br i1 %cmp49.1, label %if.then50.1, label %for.inc56.for.inc56.1_crit_edge

for.inc56.for.inc56.1_crit_edge:                  ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.1

if.then50.1:                                      ; preds = %for.inc56
  %dec51.1 = add i32 %n.addr.9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.1)
  %tobool52.not.1 = icmp eq i32 %dec51.1, 0
  br i1 %tobool52.not.1, label %if.then50.1.cleanup66.sink.split_crit_edge, label %if.then50.1.for.inc56.1_crit_edge

if.then50.1.for.inc56.1_crit_edge:                ; preds = %if.then50.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.1

if.then50.1.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.1:                                      ; preds = %if.then50.1.for.inc56.1_crit_edge, %for.inc56.for.inc56.1_crit_edge
  %n.addr.9.1 = phi i32 [ %dec51.1, %if.then50.1.for.inc56.1_crit_edge ], [ %n.addr.9, %for.inc56.for.inc56.1_crit_edge ]
  %and48.2 = and i32 %16, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %and48.2)
  %cmp49.2 = icmp eq i32 %and48.2, 3840
  br i1 %cmp49.2, label %if.then50.2, label %for.inc56.1.for.inc56.2_crit_edge

for.inc56.1.for.inc56.2_crit_edge:                ; preds = %for.inc56.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.2

if.then50.2:                                      ; preds = %for.inc56.1
  %dec51.2 = add i32 %n.addr.9.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.2)
  %tobool52.not.2 = icmp eq i32 %dec51.2, 0
  br i1 %tobool52.not.2, label %if.then50.2.cleanup66.sink.split_crit_edge, label %if.then50.2.for.inc56.2_crit_edge

if.then50.2.for.inc56.2_crit_edge:                ; preds = %if.then50.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.2

if.then50.2.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.2:                                      ; preds = %if.then50.2.for.inc56.2_crit_edge, %for.inc56.1.for.inc56.2_crit_edge
  %n.addr.9.2 = phi i32 [ %dec51.2, %if.then50.2.for.inc56.2_crit_edge ], [ %n.addr.9.1, %for.inc56.1.for.inc56.2_crit_edge ]
  %and48.3 = and i32 %16, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and48.3)
  %cmp49.3 = icmp eq i32 %and48.3, 61440
  br i1 %cmp49.3, label %if.then50.3, label %for.inc56.2.for.inc56.3_crit_edge

for.inc56.2.for.inc56.3_crit_edge:                ; preds = %for.inc56.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.3

if.then50.3:                                      ; preds = %for.inc56.2
  %dec51.3 = add i32 %n.addr.9.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.3)
  %tobool52.not.3 = icmp eq i32 %dec51.3, 0
  br i1 %tobool52.not.3, label %if.then50.3.cleanup66.sink.split_crit_edge, label %if.then50.3.for.inc56.3_crit_edge

if.then50.3.for.inc56.3_crit_edge:                ; preds = %if.then50.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.3

if.then50.3.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.3:                                      ; preds = %if.then50.3.for.inc56.3_crit_edge, %for.inc56.2.for.inc56.3_crit_edge
  %n.addr.9.3 = phi i32 [ %dec51.3, %if.then50.3.for.inc56.3_crit_edge ], [ %n.addr.9.2, %for.inc56.2.for.inc56.3_crit_edge ]
  %and48.4 = and i32 %16, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %and48.4)
  %cmp49.4 = icmp eq i32 %and48.4, 983040
  br i1 %cmp49.4, label %if.then50.4, label %for.inc56.3.for.inc56.4_crit_edge

for.inc56.3.for.inc56.4_crit_edge:                ; preds = %for.inc56.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.4

if.then50.4:                                      ; preds = %for.inc56.3
  %dec51.4 = add i32 %n.addr.9.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.4)
  %tobool52.not.4 = icmp eq i32 %dec51.4, 0
  br i1 %tobool52.not.4, label %if.then50.4.cleanup66.sink.split_crit_edge, label %if.then50.4.for.inc56.4_crit_edge

if.then50.4.for.inc56.4_crit_edge:                ; preds = %if.then50.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.4

if.then50.4.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.4:                                      ; preds = %if.then50.4.for.inc56.4_crit_edge, %for.inc56.3.for.inc56.4_crit_edge
  %n.addr.9.4 = phi i32 [ %dec51.4, %if.then50.4.for.inc56.4_crit_edge ], [ %n.addr.9.3, %for.inc56.3.for.inc56.4_crit_edge ]
  %and48.5 = and i32 %16, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and48.5)
  %cmp49.5 = icmp eq i32 %and48.5, 15728640
  br i1 %cmp49.5, label %if.then50.5, label %for.inc56.4.for.inc56.5_crit_edge

for.inc56.4.for.inc56.5_crit_edge:                ; preds = %for.inc56.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.5

if.then50.5:                                      ; preds = %for.inc56.4
  %dec51.5 = add i32 %n.addr.9.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.5)
  %tobool52.not.5 = icmp eq i32 %dec51.5, 0
  br i1 %tobool52.not.5, label %if.then50.5.cleanup66.sink.split_crit_edge, label %if.then50.5.for.inc56.5_crit_edge

if.then50.5.for.inc56.5_crit_edge:                ; preds = %if.then50.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.5

if.then50.5.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.5:                                      ; preds = %if.then50.5.for.inc56.5_crit_edge, %for.inc56.4.for.inc56.5_crit_edge
  %n.addr.9.5 = phi i32 [ %dec51.5, %if.then50.5.for.inc56.5_crit_edge ], [ %n.addr.9.4, %for.inc56.4.for.inc56.5_crit_edge ]
  %and48.6 = and i32 %16, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %and48.6)
  %cmp49.6 = icmp eq i32 %and48.6, 251658240
  br i1 %cmp49.6, label %if.then50.6, label %for.inc56.5.for.inc56.6_crit_edge

for.inc56.5.for.inc56.6_crit_edge:                ; preds = %for.inc56.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.6

if.then50.6:                                      ; preds = %for.inc56.5
  %dec51.6 = add i32 %n.addr.9.5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.6)
  %tobool52.not.6 = icmp eq i32 %dec51.6, 0
  br i1 %tobool52.not.6, label %if.then50.6.cleanup66.sink.split_crit_edge, label %if.then50.6.for.inc56.6_crit_edge

if.then50.6.for.inc56.6_crit_edge:                ; preds = %if.then50.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc56.6

if.then50.6.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc56.6:                                      ; preds = %if.then50.6.for.inc56.6_crit_edge, %for.inc56.5.for.inc56.6_crit_edge
  %n.addr.9.6 = phi i32 [ %dec51.6, %if.then50.6.for.inc56.6_crit_edge ], [ %n.addr.9.5, %for.inc56.5.for.inc56.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %16)
  %cmp49.7 = icmp ugt i32 %16, -268435457
  br i1 %cmp49.7, label %if.then50.7, label %for.inc56.6.for.inc61_crit_edge

for.inc56.6.for.inc61_crit_edge:                  ; preds = %for.inc56.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc61

if.then50.7:                                      ; preds = %for.inc56.6
  %dec51.7 = add i32 %n.addr.9.6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51.7)
  %tobool52.not.7 = icmp eq i32 %dec51.7, 0
  br i1 %tobool52.not.7, label %if.then50.7.cleanup66.sink.split_crit_edge, label %if.then50.7.for.inc61_crit_edge

if.then50.7.for.inc61_crit_edge:                  ; preds = %if.then50.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc61

if.then50.7.cleanup66.sink.split_crit_edge:       ; preds = %if.then50.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup66.sink.split

for.inc61:                                        ; preds = %if.then50.7.for.inc61_crit_edge, %for.inc56.6.for.inc61_crit_edge, %for.body38.for.inc61_crit_edge
  %n.addr.10.ph = phi i32 [ %n.addr.7119, %for.body38.for.inc61_crit_edge ], [ %dec51.7, %if.then50.7.for.inc61_crit_edge ], [ %n.addr.9.6, %for.inc56.6.for.inc61_crit_edge ]
  %inc62 = add nuw nsw i32 %j.1120, 1
  %exitcond121.not = icmp eq i32 %inc62, 512
  br i1 %exitcond121.not, label %for.end63, label %for.inc61.for.body38_crit_edge

for.inc61.for.body38_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

for.end63:                                        ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #7
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %if.end64

if.end64:                                         ; preds = %for.end63, %chk_bmp.if.end64_crit_edge
  %n.addr.11 = phi i32 [ %n.addr.10.ph, %for.end63 ], [ %n.addr.6, %chk_bmp.if.end64_crit_edge ]
  %inc65 = add i32 %i.2, 1
  br label %chk_next

cleanup66.sink.split:                             ; preds = %if.then50.7.cleanup66.sink.split_crit_edge, %if.then50.6.cleanup66.sink.split_crit_edge, %if.then50.5.cleanup66.sink.split_crit_edge, %if.then50.4.cleanup66.sink.split_crit_edge, %if.then50.3.cleanup66.sink.split_crit_edge, %if.then50.2.cleanup66.sink.split_crit_edge, %if.then50.1.cleanup66.sink.split_crit_edge, %if.then50.cleanup66.sink.split_crit_edge, %if.then11.cleanup66.sink.split_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup66.sink.split, %chk_next.cleanup66_crit_edge
  %retval.8 = phi i32 [ 1, %chk_next.cleanup66_crit_edge ], [ 0, %cleanup66.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_dnode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_free_dnode(ptr noundef %s, i32 noundef %dno) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chk, align 2
  %3 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %and = and i32 %dno, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %dno) #5
  br label %if.end19

if.end3:                                          ; preds = %entry
  %sb_dirband_start = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sb_dirband_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_dirband_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %dno)
  %cmp = icmp ugt i32 %5, %dno
  br i1 %cmp, label %if.end3.if.then9_crit_edge, label %lor.lhs.false

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end3
  %sb_dirband_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_dirband_size, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %dno)
  %cmp8.not = icmp ugt i32 %add, %dno
  br i1 %cmp8.not, label %if.else, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end3.if.then9_crit_edge
  tail call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %dno, i32 noundef 4)
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %8 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %call12 = call ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef nonnull %qbh) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %sub = sub i32 %dno, %5
  %div35 = lshr i32 %sub, 2
  %and16 = and i32 %div35, 31
  %shl = shl nuw i32 1, %and16
  %9 = call i32 @llvm.bswap.i32(i32 %shl)
  %shr = lshr i32 %sub, 7
  %arrayidx = getelementptr i32, ptr %call12, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %11, %9
  store i32 %or, ptr %arrayidx, align 4
  call void @hpfs_mark_4buffers_dirty(ptr noundef nonnull %qbh) #5
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %sb_n_free_dnodes.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %sb_n_free_dnodes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_n_free_dnodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %if.end15.cleanup_crit_edge, label %if.then.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end15
  %sb_dirband_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %sb_dirband_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_dirband_size.i, align 4
  %div13.i = lshr i32 %17, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div13.i)
  %cmp2.not.i = icmp ult i32 %15, %div13.i
  br i1 %cmp2.not.i, label %if.end.i, label %if.then4.i, !prof !51

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %dno) #5
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add nuw i32 %15, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i, %if.then4.i
  %inc.sink.i = phi i32 [ %inc.i, %if.end.i ], [ -1, %if.then4.i ]
  %18 = ptrtoint ptr %sb_n_free_dnodes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.sink.i, ptr %sb_n_free_dnodes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  br label %if.end19

if.end19:                                         ; preds = %cleanup, %if.then9, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_alloc_dnode(ptr noundef %s, i32 noundef %near, ptr nocapture noundef %dno, ptr noundef %qbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hpfs_get_free_dnodes(ptr noundef %s) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %call)
  %cmp = icmp ugt i32 %call, 58
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_dirband_start.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sb_dirband_start.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_dirband_start.i, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %near) #5
  %sb_dirband_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %sb_dirband_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_dirband_size.i, align 4
  %add.i = add i32 %6, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp3.not.i = icmp ult i32 %4, %add.i
  %sub.i = add i32 %add.i, 65532
  %nr.1.i = select i1 %cmp3.not.i, i32 %4, i32 %sub.i
  %sub10.i = sub i32 %nr.1.i, %3
  %shr.i = lshr i32 %sub10.i, 2
  %or.i = or i32 %shr.i, -16384
  %call11.i = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %or.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %alloc_in_dirband.exit.thread, label %if.end13.i

alloc_in_dirband.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dno, align 4
  br label %if.then2

if.end13.i:                                       ; preds = %if.then
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_n_free_dnodes.i.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %sb_n_free_dnodes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_n_free_dnodes.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %11, label %if.end.i.i [
    i32 -1, label %if.end13.i.alloc_in_dirband.exit_crit_edge
    i32 0, label %if.then5.i.i
  ], !prof !50

if.end13.i.alloc_in_dirband.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %alloc_in_dirband.exit

if.then5.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %call11.i) #5
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.i = add i32 %11, -1
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end.i.i, %if.then5.i.i
  %dec.sink.i.i = phi i32 [ %dec.i.i, %if.end.i.i ], [ -1, %if.then5.i.i ]
  %13 = ptrtoint ptr %sb_n_free_dnodes.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec.sink.i.i, ptr %sb_n_free_dnodes.i.i, align 4
  br label %alloc_in_dirband.exit

alloc_in_dirband.exit:                            ; preds = %cleanup.sink.split.i.i, %if.end13.i.alloc_in_dirband.exit_crit_edge
  %and.i = shl i32 %call11.i, 2
  %shl.i = and i32 %and.i, 65532
  %14 = ptrtoint ptr %sb_dirband_start.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_dirband_start.i, align 4
  %add15.i = add i32 %15, %shl.i
  %16 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add15.i, ptr %dno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.i)
  %tobool.not = icmp eq i32 %add15.i, 0
  br i1 %tobool.not, label %alloc_in_dirband.exit.if.then2_crit_edge, label %alloc_in_dirband.exit.if.end15_crit_edge

alloc_in_dirband.exit.if.end15_crit_edge:         ; preds = %alloc_in_dirband.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

alloc_in_dirband.exit.if.then2_crit_edge:         ; preds = %alloc_in_dirband.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %alloc_in_dirband.exit.if.then2_crit_edge, %alloc_in_dirband.exit.thread
  %call3 = tail call i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %near, i32 noundef 4, i32 noundef 0)
  %17 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3, ptr %dno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end15_crit_edge

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %near, i32 noundef 4, i32 noundef 0)
  %18 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call7, ptr %dno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then9:                                         ; preds = %if.else
  %s_fs_info.i.i49 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i49, align 16
  %sb_dirband_start.i50 = getelementptr inbounds %struct.hpfs_sb_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sb_dirband_start.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_dirband_start.i50, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %near) #5
  %sb_dirband_size.i51 = getelementptr inbounds %struct.hpfs_sb_info, ptr %20, i32 0, i32 5
  %24 = ptrtoint ptr %sb_dirband_size.i51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_dirband_size.i51, align 4
  %add.i52 = add i32 %25, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i52)
  %cmp3.not.i53 = icmp ult i32 %23, %add.i52
  %sub.i54 = add i32 %add.i52, 65532
  %nr.1.i55 = select i1 %cmp3.not.i53, i32 %23, i32 %sub.i54
  %sub10.i56 = sub i32 %nr.1.i55, %22
  %shr.i57 = lshr i32 %sub10.i56, 2
  %or.i58 = or i32 %shr.i57, -16384
  %call11.i59 = tail call fastcc i32 @alloc_in_bmp(ptr noundef %s, i32 noundef %or.i58, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i59)
  %tobool.not.i60 = icmp eq i32 %call11.i59, 0
  br i1 %tobool.not.i60, label %alloc_in_dirband.exit73.thread, label %if.end13.i62

alloc_in_dirband.exit73.thread:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dno, align 4
  br label %cleanup

if.end13.i62:                                     ; preds = %if.then9
  %27 = ptrtoint ptr %s_fs_info.i.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i49, align 16
  %sb_n_free_dnodes.i.i61 = getelementptr inbounds %struct.hpfs_sb_info, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %sb_n_free_dnodes.i.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_n_free_dnodes.i.i61, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %30, label %if.end.i.i65 [
    i32 -1, label %if.end13.i62.alloc_in_dirband.exit73_crit_edge
    i32 0, label %if.then5.i.i63
  ], !prof !50

if.end13.i62.alloc_in_dirband.exit73_crit_edge:   ; preds = %if.end13.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %alloc_in_dirband.exit73

if.then5.i.i63:                                   ; preds = %if.end13.i62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %call11.i59) #5
  br label %cleanup.sink.split.i.i67

if.end.i.i65:                                     ; preds = %if.end13.i62
  call void @__sanitizer_cov_trace_pc() #7
  %dec.i.i64 = add i32 %30, -1
  br label %cleanup.sink.split.i.i67

cleanup.sink.split.i.i67:                         ; preds = %if.end.i.i65, %if.then5.i.i63
  %dec.sink.i.i66 = phi i32 [ %dec.i.i64, %if.end.i.i65 ], [ -1, %if.then5.i.i63 ]
  %32 = ptrtoint ptr %sb_n_free_dnodes.i.i61 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec.sink.i.i66, ptr %sb_n_free_dnodes.i.i61, align 4
  br label %alloc_in_dirband.exit73

alloc_in_dirband.exit73:                          ; preds = %cleanup.sink.split.i.i67, %if.end13.i62.alloc_in_dirband.exit73_crit_edge
  %and.i68 = shl i32 %call11.i59, 2
  %shl.i69 = and i32 %and.i68, 65532
  %33 = ptrtoint ptr %sb_dirband_start.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sb_dirband_start.i50, align 4
  %add15.i70 = add i32 %34, %shl.i69
  %35 = ptrtoint ptr %dno to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add15.i70, ptr %dno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.i70)
  %tobool11.not = icmp eq i32 %add15.i70, 0
  br i1 %tobool11.not, label %alloc_in_dirband.exit73.cleanup_crit_edge, label %alloc_in_dirband.exit73.if.end15_crit_edge

alloc_in_dirband.exit73.if.end15_crit_edge:       ; preds = %alloc_in_dirband.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

alloc_in_dirband.exit73.cleanup_crit_edge:        ; preds = %alloc_in_dirband.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %alloc_in_dirband.exit73.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %alloc_in_dirband.exit.if.end15_crit_edge
  %36 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dno, align 4
  %call16 = tail call ptr @hpfs_get_4sectors(ptr noundef %s, i32 noundef %37, ptr noundef %qbh) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dno, align 4
  tail call void @hpfs_free_dnode(ptr noundef %s, i32 noundef %39)
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %40 = getelementptr inbounds i8, ptr %call16, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 2040)
  %42 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1375017865, ptr %call16, align 4
  %first_free = getelementptr inbounds %struct.dnode, ptr %call16, i32 0, i32 1
  %43 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 872415232, ptr %first_free, align 4
  %dirent = getelementptr inbounds %struct.dnode, ptr %call16, i32 0, i32 6
  %44 = ptrtoint ptr %dirent to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 32, ptr %dirent, align 4
  %arrayidx21 = getelementptr %struct.dnode, ptr %call16, i32 0, i32 6, i32 2
  %45 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %arrayidx21, align 2
  %arrayidx23 = getelementptr %struct.dnode, ptr %call16, i32 0, i32 6, i32 30
  %46 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx23, align 2
  %arrayidx25 = getelementptr %struct.dnode, ptr %call16, i32 0, i32 6, i32 31
  %47 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %arrayidx25, align 1
  %48 = ptrtoint ptr %dno to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dno, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %self = getelementptr inbounds %struct.dnode, ptr %call16, i32 0, i32 5
  %51 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %self, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18, %alloc_in_dirband.exit73.cleanup_crit_edge, %alloc_in_dirband.exit73.thread, %if.then2.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16, %if.end19 ], [ null, %if.then18 ], [ null, %if.then2.cleanup_crit_edge ], [ null, %alloc_in_dirband.exit73.cleanup_crit_edge ], [ null, %alloc_in_dirband.exit73.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_get_free_dnodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_get_4sectors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_alloc_fnode(ptr noundef %s, i32 noundef %near, ptr nocapture noundef %fno, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %near, i32 noundef 1, i32 noundef 0)
  %0 = ptrtoint ptr %fno to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %fno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %call, ptr noundef %bh) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %fno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fno, align 4
  tail call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %2, i32 noundef 1)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds i8, ptr %call1, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 508)
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1375017737, ptr %call1, align 4
  %ea_offs = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %ea_offs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -15360, ptr %ea_offs, align 4
  %n_free_nodes = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %n_free_nodes, align 4
  %first_free = getelementptr inbounds %struct.fnode, ptr %call1, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %first_free to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2048, ptr %first_free, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_get_sector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hpfs_alloc_anode(ptr noundef %s, i32 noundef %near, ptr nocapture noundef %ano, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hpfs_alloc_sector(ptr noundef %s, i32 noundef %near, i32 noundef 1, i32 noundef 512)
  %0 = ptrtoint ptr %ano to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ano, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hpfs_get_sector(ptr noundef %s, i32 noundef %call, ptr noundef %bh) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %ano to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ano, align 4
  tail call void @hpfs_free_sectors(ptr noundef %s, i32 noundef %2, i32 noundef 1)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds i8, ptr %call1, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 508)
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1375017929, ptr %call1, align 4
  %6 = ptrtoint ptr %ano to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ano, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %self = getelementptr inbounds %struct.anode, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %self to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %self, align 4
  %n_free_nodes = getelementptr inbounds %struct.anode, ptr %call1, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %n_free_nodes to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 40, ptr %n_free_nodes, align 4
  %n_used_nodes = getelementptr inbounds %struct.anode, ptr %call1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %n_used_nodes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %n_used_nodes, align 1
  %first_free = getelementptr inbounds %struct.anode, ptr %call1, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %first_free to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2048, ptr %first_free, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_trim_fs(ptr noundef %s, i64 noundef %start, i64 noundef %end, i64 noundef %minlen, ptr nocapture noundef %result) local_unnamed_addr #0 align 64 {
entry:
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #5
  %2 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  %3 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %end)
  %tobool.not = icmp eq i64 %end, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_fs_size, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %end)
  %cmp = icmp ult i64 %conv, %end
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sb_fs_size2 = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sb_fs_size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_fs_size2, align 4
  %conv3 = zext i32 %7 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %end.addr.0 = phi i64 [ %conv3, %if.then ], [ %end, %lor.lhs.false.if.end_crit_edge ]
  %sb_fs_size4 = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sb_fs_size4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_fs_size4, align 4
  %conv5 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv5, i64 %start)
  %cmp6.not = icmp ule i64 %conv5, %start
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %minlen)
  %cmp10 = icmp ugt i64 %minlen, 16384
  %or.cond126 = or i1 %cmp10, %cmp6.not
  br i1 %or.cond126, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %sb_dirband_start = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %sb_dirband_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_dirband_start, align 4
  %sb_dirband_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_dirband_size, align 4
  %add = add i32 %13, %11
  %conv14 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv14, i64 %start)
  %cmp15 = icmp ugt i64 %conv14, %start
  %conv18 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %end.addr.0, i64 %conv18)
  %cmp19 = icmp ugt i64 %end.addr.0, %conv18
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.then21, label %if.end13.if.end40_crit_edge

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then21:                                        ; preds = %if.end13
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %15, i32 noundef 0) #5
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %16 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end24, label %if.then21.unlock_1_crit_edge

if.then21.unlock_1_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_1

if.end24:                                         ; preds = %if.then21
  %call25 = call ptr @hpfs_map_dnode_bitmap(ptr noundef %s, ptr noundef nonnull %qbh) #5
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.unlock_1_crit_edge, label %while.cond.preheader

if.end24.unlock_1_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_1

while.cond.preheader:                             ; preds = %if.end24
  %conv35 = trunc i64 %start to i32
  %conv36 = trunc i64 %end.addr.0 to i32
  %conv37 = trunc i64 %minlen to i32
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %do_trim.exit, %while.cond.preheader
  %storemerge122 = phi i32 [ %add39, %do_trim.exit ], [ 0, %while.cond.preheader ]
  %err.0 = phi i32 [ %retval.0.i130, %do_trim.exit ], [ 0, %while.cond.preheader ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond
  %idx.0 = phi i32 [ %storemerge122, %while.cond ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %idx.0)
  %cmp.i.i = icmp ugt i32 %idx.0, 16383
  br i1 %cmp.i.i, label %while.cond.i.while.body.i_crit_edge, label %lor.lhs.false.i.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

lor.lhs.false.i.i:                                ; preds = %while.cond.i
  %and.i.i = lshr i32 %idx.0, 5
  %arrayidx.i.i = getelementptr i32, ptr %call25, i32 %and.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #5
  %and2.i.i = and i32 %idx.0, 31
  %21 = shl nuw i32 1, %and2.i.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.while.body.i_crit_edge, label %while.cond3.preheader.i

lor.lhs.false.i.i.while.body.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond3.preheader.i:                          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16382, i32 %idx.0)
  %cmp.i1736.i = icmp ugt i32 %idx.0, 16382
  br i1 %cmp.i1736.i, label %while.cond3.preheader.i.find_run.exit_crit_edge, label %lor.lhs.false.i20.preheader.i

while.cond3.preheader.i.find_run.exit_crit_edge:  ; preds = %while.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit

lor.lhs.false.i20.preheader.i:                    ; preds = %while.cond3.preheader.i
  %add35.i = add nuw nsw i32 %idx.0, 1
  %23 = sub nuw nsw i32 16384, %idx.0
  br label %lor.lhs.false.i20.i

while.body.i:                                     ; preds = %lor.lhs.false.i.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %inc.i = add i32 %idx.0, 1
  %cmp.i = icmp ugt i32 %inc.i, 16383
  br i1 %cmp.i, label %while.body.i.while.end_crit_edge, label %while.body.i.while.cond.i_crit_edge, !prof !52

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.while.end_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

lor.lhs.false.i20.i:                              ; preds = %while.body8.i.lor.lhs.false.i20.i_crit_edge, %lor.lhs.false.i20.preheader.i
  %add38.i = phi i32 [ %add.i, %while.body8.i.lor.lhs.false.i20.i_crit_edge ], [ %add35.i, %lor.lhs.false.i20.preheader.i ]
  %len.037.i = phi i32 [ %inc9.i, %while.body8.i.lor.lhs.false.i20.i_crit_edge ], [ 1, %lor.lhs.false.i20.preheader.i ]
  %and.i21.i = lshr i32 %add38.i, 5
  %arrayidx.i22.i = getelementptr i32, ptr %call25, i32 %and.i21.i
  %24 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i22.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #5
  %and2.i23.i = and i32 %add38.i, 31
  %27 = shl nuw i32 1, %and2.i23.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i24.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i24.i, label %lor.lhs.false.i20.i.find_run.exit_crit_edge, label %while.body8.i

lor.lhs.false.i20.i.find_run.exit_crit_edge:      ; preds = %lor.lhs.false.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit

while.body8.i:                                    ; preds = %lor.lhs.false.i20.i
  %inc9.i = add nuw nsw i32 %len.037.i, 1
  %add.i = add i32 %inc9.i, %idx.0
  %exitcond.i = icmp eq i32 %inc9.i, %23
  br i1 %exitcond.i, label %while.body8.i.find_run.exit_crit_edge, label %while.body8.i.lor.lhs.false.i20.i_crit_edge

while.body8.i.lor.lhs.false.i20.i_crit_edge:      ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i20.i

while.body8.i.find_run.exit_crit_edge:            ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit

find_run.exit:                                    ; preds = %while.body8.i.find_run.exit_crit_edge, %lor.lhs.false.i20.i.find_run.exit_crit_edge, %while.cond3.preheader.i.find_run.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %while.cond3.preheader.i.find_run.exit_crit_edge ], [ %len.037.i, %lor.lhs.false.i20.i.find_run.exit_crit_edge ], [ %23, %while.body8.i.find_run.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool30.not = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  %or.cond123 = select i1 %tobool30.not, i1 %tobool31.not, i1 false
  br i1 %or.cond123, label %while.body, label %find_run.exit.while.end_crit_edge

find_run.exit.while.end_crit_edge:                ; preds = %find_run.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %find_run.exit
  %29 = ptrtoint ptr %sb_dirband_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_dirband_start, align 4
  %mul = shl i32 %idx.0, 2
  %add33 = add i32 %30, %mul
  %mul34 = shl i32 %retval.0.i, 2
  %31 = call i32 @llvm.read_register.i32(metadata !40) #5
  %and.i.i127 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i127 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i128 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i128, label %while.body.if.end.i_crit_edge, label %fatal_signal_pending.exit.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

fatal_signal_pending.exit.i:                      ; preds = %while.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 116, i32 1
  %39 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %signal.i.i.i, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end.i_crit_edge, label %fatal_signal_pending.exit.i.do_trim.exit_crit_edge

fatal_signal_pending.exit.i.do_trim.exit_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit

fatal_signal_pending.exit.i.if.end.i_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %fatal_signal_pending.exit.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  %add.i129 = add i32 %add33, %mul34
  %42 = call i32 @llvm.umax.i32(i32 %add33, i32 %conv35) #5
  %43 = call i32 @llvm.umin.i32(i32 %add.i129, i32 %conv36) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp7.not.i = icmp ugt i32 %43, %42
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end.i.do_trim.exit_crit_edge

if.end.i.do_trim.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit

if.end9.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %43, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv37)
  %cmp10.i = icmp ult i32 %sub.i, %conv37
  br i1 %cmp10.i, label %if.end9.i.do_trim.exit_crit_edge, label %if.end12.i

if.end9.i.do_trim.exit_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit

if.end12.i:                                       ; preds = %if.end9.i
  %conv.i = zext i32 %42 to i64
  %conv14.i = zext i32 %sub.i to i64
  %44 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i.i, align 4
  %46 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %47 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv.i, %sh_prom.i.i
  %shl5.i.i = shl i64 %conv14.i, %sh_prom.i.i
  %call.i.i = call i32 @blkdev_issue_discard(ptr noundef %45, i64 noundef %shl.i.i, i64 noundef %shl5.i.i, i32 noundef 3136, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end12.i.do_trim.exit_crit_edge

if.end12.i.do_trim.exit_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %result, align 4
  %add20.i = add i32 %49, %sub.i
  store i32 %add20.i, ptr %result, align 4
  br label %do_trim.exit

do_trim.exit:                                     ; preds = %if.end18.i, %if.end12.i.do_trim.exit_crit_edge, %if.end9.i.do_trim.exit_crit_edge, %if.end.i.do_trim.exit_crit_edge, %fatal_signal_pending.exit.i.do_trim.exit_crit_edge
  %retval.0.i130 = phi i32 [ 0, %if.end18.i ], [ -4, %fatal_signal_pending.exit.i.do_trim.exit_crit_edge ], [ 0, %if.end.i.do_trim.exit_crit_edge ], [ 0, %if.end9.i.do_trim.exit_crit_edge ], [ %call.i.i, %if.end12.i.do_trim.exit_crit_edge ]
  %add39 = add i32 %retval.0.i, %idx.0
  br label %while.cond

while.end:                                        ; preds = %find_run.exit.while.end_crit_edge, %while.body.i.while.end_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %unlock_1

unlock_1:                                         ; preds = %while.end, %if.end24.unlock_1_crit_edge, %if.then21.unlock_1_crit_edge
  %err.1 = phi i32 [ %err.0, %while.end ], [ -30, %if.then21.unlock_1_crit_edge ], [ -5, %if.end24.unlock_1_crit_edge ]
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  call void @mutex_unlock(ptr noundef %51) #5
  br label %if.end40

if.end40:                                         ; preds = %unlock_1, %if.end13.if.end40_crit_edge
  %err.2 = phi i32 [ %err.1, %unlock_1 ], [ 0, %if.end13.if.end40_crit_edge ]
  %shr = lshr i64 %start, 14
  %conv41 = trunc i64 %shr to i32
  %add42 = add i64 %end.addr.0, 16383
  %shr43 = lshr i64 %add42, 14
  %conv44 = trunc i64 %shr43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41, i32 %conv44)
  %cmp46222 = icmp ult i32 %conv41, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool49.not223 = icmp eq i32 %err.2, 0
  %or.cond124224 = select i1 %cmp46222, i1 %tobool49.not223, i1 false
  br i1 %or.cond124224, label %while.body52.lr.ph, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body52.lr.ph:                               ; preds = %if.end40
  %s_flags.i133 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %conv69 = trunc i64 %start to i32
  %conv70 = trunc i64 %end.addr.0 to i32
  %conv71 = trunc i64 %minlen to i32
  %s_bdev.i.i180 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %s_blocksize_bits.i.i181 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  br label %while.body52

while.body52:                                     ; preds = %unlock_2.while.body52_crit_edge, %while.body52.lr.ph
  %start_bmp.0225 = phi i32 [ %conv41, %while.body52.lr.ph ], [ %inc, %unlock_2.while.body52_crit_edge ]
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  call void @mutex_lock_nested(ptr noundef %53, i32 noundef 0) #5
  %54 = ptrtoint ptr %s_flags.i133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_flags.i133, align 4
  %and.i134 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool.i135.not = icmp eq i32 %and.i134, 0
  br i1 %tobool.i135.not, label %if.end55, label %while.body52.unlock_2_crit_edge

while.body52.unlock_2_crit_edge:                  ; preds = %while.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_2

if.end55:                                         ; preds = %while.body52
  %call56 = call ptr @hpfs_map_bitmap(ptr noundef %s, i32 noundef %start_bmp.0225, ptr noundef nonnull %qbh, ptr noundef nonnull @.str.9) #5
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.unlock_2_crit_edge, label %while.cond60.preheader

if.end55.unlock_2_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_2

while.cond60.preheader:                           ; preds = %if.end55
  %shl = shl i32 %start_bmp.0225, 14
  br label %while.cond60

while.cond60:                                     ; preds = %do_trim.exit193, %while.cond60.preheader
  %storemerge = phi i32 [ %add73, %do_trim.exit193 ], [ 0, %while.cond60.preheader ]
  %err.4 = phi i32 [ %retval.0.i192, %do_trim.exit193 ], [ 0, %while.cond60.preheader ]
  br label %while.cond.i138

while.cond.i138:                                  ; preds = %while.body.i150.while.cond.i138_crit_edge, %while.cond60
  %idx.2 = phi i32 [ %storemerge, %while.cond60 ], [ %inc.i148, %while.body.i150.while.cond.i138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %idx.2)
  %cmp.i.i137 = icmp ugt i32 %idx.2, 16383
  br i1 %cmp.i.i137, label %while.cond.i138.while.body.i150_crit_edge, label %lor.lhs.false.i.i143

while.cond.i138.while.body.i150_crit_edge:        ; preds = %while.cond.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i150

lor.lhs.false.i.i143:                             ; preds = %while.cond.i138
  %and.i.i139 = lshr i32 %idx.2, 5
  %arrayidx.i.i140 = getelementptr i32, ptr %call56, i32 %and.i.i139
  %56 = ptrtoint ptr %arrayidx.i.i140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i140, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #5
  %and2.i.i141 = and i32 %idx.2, 31
  %59 = shl nuw i32 1, %and2.i.i141
  %60 = and i32 %58, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i142 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i142, label %lor.lhs.false.i.i143.while.body.i150_crit_edge, label %while.cond3.preheader.i145

lor.lhs.false.i.i143.while.body.i150_crit_edge:   ; preds = %lor.lhs.false.i.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i150

while.cond3.preheader.i145:                       ; preds = %lor.lhs.false.i.i143
  call void @__sanitizer_cov_trace_const_cmp4(i32 16382, i32 %idx.2)
  %cmp.i1736.i144 = icmp ugt i32 %idx.2, 16382
  br i1 %cmp.i1736.i144, label %while.cond3.preheader.i145.find_run.exit163_crit_edge, label %lor.lhs.false.i20.preheader.i147

while.cond3.preheader.i145.find_run.exit163_crit_edge: ; preds = %while.cond3.preheader.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit163

lor.lhs.false.i20.preheader.i147:                 ; preds = %while.cond3.preheader.i145
  %add35.i146 = add nuw nsw i32 %idx.2, 1
  %61 = sub nuw nsw i32 16384, %idx.2
  br label %lor.lhs.false.i20.i157

while.body.i150:                                  ; preds = %lor.lhs.false.i.i143.while.body.i150_crit_edge, %while.cond.i138.while.body.i150_crit_edge
  %inc.i148 = add i32 %idx.2, 1
  %cmp.i149 = icmp ugt i32 %inc.i148, 16383
  br i1 %cmp.i149, label %while.body.i150.while.end74_crit_edge, label %while.body.i150.while.cond.i138_crit_edge, !prof !52

while.body.i150.while.cond.i138_crit_edge:        ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i138

while.body.i150.while.end74_crit_edge:            ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end74

lor.lhs.false.i20.i157:                           ; preds = %while.body8.i161.lor.lhs.false.i20.i157_crit_edge, %lor.lhs.false.i20.preheader.i147
  %add38.i151 = phi i32 [ %add.i159, %while.body8.i161.lor.lhs.false.i20.i157_crit_edge ], [ %add35.i146, %lor.lhs.false.i20.preheader.i147 ]
  %len.037.i152 = phi i32 [ %inc9.i158, %while.body8.i161.lor.lhs.false.i20.i157_crit_edge ], [ 1, %lor.lhs.false.i20.preheader.i147 ]
  %and.i21.i153 = lshr i32 %add38.i151, 5
  %arrayidx.i22.i154 = getelementptr i32, ptr %call56, i32 %and.i21.i153
  %62 = ptrtoint ptr %arrayidx.i22.i154 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i22.i154, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #5
  %and2.i23.i155 = and i32 %add38.i151, 31
  %65 = shl nuw i32 1, %and2.i23.i155
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i24.i156 = icmp eq i32 %66, 0
  br i1 %tobool.not.i24.i156, label %lor.lhs.false.i20.i157.find_run.exit163_crit_edge, label %while.body8.i161

lor.lhs.false.i20.i157.find_run.exit163_crit_edge: ; preds = %lor.lhs.false.i20.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit163

while.body8.i161:                                 ; preds = %lor.lhs.false.i20.i157
  %inc9.i158 = add nuw nsw i32 %len.037.i152, 1
  %add.i159 = add i32 %inc9.i158, %idx.2
  %exitcond.i160 = icmp eq i32 %inc9.i158, %61
  br i1 %exitcond.i160, label %while.body8.i161.find_run.exit163_crit_edge, label %while.body8.i161.lor.lhs.false.i20.i157_crit_edge

while.body8.i161.lor.lhs.false.i20.i157_crit_edge: ; preds = %while.body8.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i20.i157

while.body8.i161.find_run.exit163_crit_edge:      ; preds = %while.body8.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_run.exit163

find_run.exit163:                                 ; preds = %while.body8.i161.find_run.exit163_crit_edge, %lor.lhs.false.i20.i157.find_run.exit163_crit_edge, %while.cond3.preheader.i145.find_run.exit163_crit_edge
  %retval.0.i162 = phi i32 [ 1, %while.cond3.preheader.i145.find_run.exit163_crit_edge ], [ %len.037.i152, %lor.lhs.false.i20.i157.find_run.exit163_crit_edge ], [ %61, %while.body8.i161.find_run.exit163_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i162)
  %tobool62.not = icmp ne i32 %retval.0.i162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool64.not = icmp eq i32 %err.4, 0
  %or.cond125 = select i1 %tobool62.not, i1 %tobool64.not, i1 false
  br i1 %or.cond125, label %while.body67, label %find_run.exit163.while.end74_crit_edge

find_run.exit163.while.end74_crit_edge:           ; preds = %find_run.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end74

while.body67:                                     ; preds = %find_run.exit163
  %add68 = add i32 %idx.2, %shl
  %67 = call i32 @llvm.read_register.i32(metadata !40) #5
  %and.i.i164 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i164 to ptr
  %task.i165 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i165 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i165, align 8
  %stack.i.i.i.i166 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %stack.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stack.i.i.i.i166, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and1.i.i.i.i.i.i167 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %and1.i.i.i.i.i.i167, 0
  br i1 %tobool.not.i.i168, label %while.body67.if.end.i174_crit_edge, label %fatal_signal_pending.exit.i171

while.body67.if.end.i174_crit_edge:               ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i174

fatal_signal_pending.exit.i171:                   ; preds = %while.body67
  %signal.i.i.i169 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 116, i32 1
  %75 = ptrtoint ptr %signal.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %signal.i.i.i169, align 4
  %77 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i170 = icmp eq i32 %77, 0
  br i1 %tobool.not.i170, label %fatal_signal_pending.exit.i171.if.end.i174_crit_edge, label %fatal_signal_pending.exit.i171.do_trim.exit193_crit_edge

fatal_signal_pending.exit.i171.do_trim.exit193_crit_edge: ; preds = %fatal_signal_pending.exit.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit193

fatal_signal_pending.exit.i171.if.end.i174_crit_edge: ; preds = %fatal_signal_pending.exit.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i174

if.end.i174:                                      ; preds = %fatal_signal_pending.exit.i171.if.end.i174_crit_edge, %while.body67.if.end.i174_crit_edge
  %add.i172 = add i32 %retval.0.i162, %add68
  %78 = call i32 @llvm.umax.i32(i32 %add68, i32 %conv69) #5
  %79 = call i32 @llvm.umin.i32(i32 %add.i172, i32 %conv70) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %78)
  %cmp7.not.i173 = icmp ugt i32 %79, %78
  br i1 %cmp7.not.i173, label %if.end9.i177, label %if.end.i174.do_trim.exit193_crit_edge

if.end.i174.do_trim.exit193_crit_edge:            ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit193

if.end9.i177:                                     ; preds = %if.end.i174
  %sub.i175 = sub i32 %79, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i175, i32 %conv71)
  %cmp10.i176 = icmp ult i32 %sub.i175, %conv71
  br i1 %cmp10.i176, label %if.end9.i177.do_trim.exit193_crit_edge, label %if.end12.i189

if.end9.i177.do_trim.exit193_crit_edge:           ; preds = %if.end9.i177
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit193

if.end12.i189:                                    ; preds = %if.end9.i177
  %conv.i178 = zext i32 %78 to i64
  %conv14.i179 = zext i32 %sub.i175 to i64
  %80 = ptrtoint ptr %s_bdev.i.i180 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_bdev.i.i180, align 4
  %82 = ptrtoint ptr %s_blocksize_bits.i.i181 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %s_blocksize_bits.i.i181, align 4
  %conv.i.i182 = zext i8 %83 to i32
  %sub.i.i183 = add nsw i32 %conv.i.i182, -9
  %sh_prom.i.i184 = zext i32 %sub.i.i183 to i64
  %shl.i.i185 = shl i64 %conv.i178, %sh_prom.i.i184
  %shl5.i.i186 = shl i64 %conv14.i179, %sh_prom.i.i184
  %call.i.i187 = call i32 @blkdev_issue_discard(ptr noundef %81, i64 noundef %shl.i.i185, i64 noundef %shl5.i.i186, i32 noundef 3136, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %tobool16.not.i188 = icmp eq i32 %call.i.i187, 0
  br i1 %tobool16.not.i188, label %if.end18.i191, label %if.end12.i189.do_trim.exit193_crit_edge

if.end12.i189.do_trim.exit193_crit_edge:          ; preds = %if.end12.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_trim.exit193

if.end18.i191:                                    ; preds = %if.end12.i189
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %result, align 4
  %add20.i190 = add i32 %85, %sub.i175
  store i32 %add20.i190, ptr %result, align 4
  br label %do_trim.exit193

do_trim.exit193:                                  ; preds = %if.end18.i191, %if.end12.i189.do_trim.exit193_crit_edge, %if.end9.i177.do_trim.exit193_crit_edge, %if.end.i174.do_trim.exit193_crit_edge, %fatal_signal_pending.exit.i171.do_trim.exit193_crit_edge
  %retval.0.i192 = phi i32 [ 0, %if.end18.i191 ], [ -4, %fatal_signal_pending.exit.i171.do_trim.exit193_crit_edge ], [ 0, %if.end.i174.do_trim.exit193_crit_edge ], [ 0, %if.end9.i177.do_trim.exit193_crit_edge ], [ %call.i.i187, %if.end12.i189.do_trim.exit193_crit_edge ]
  %add73 = add i32 %retval.0.i162, %idx.2
  br label %while.cond60

while.end74:                                      ; preds = %find_run.exit163.while.end74_crit_edge, %while.body.i150.while.end74_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #5
  br label %unlock_2

unlock_2:                                         ; preds = %while.end74, %if.end55.unlock_2_crit_edge, %while.body52.unlock_2_crit_edge
  %err.5 = phi i32 [ %err.4, %while.end74 ], [ -30, %while.body52.unlock_2_crit_edge ], [ -5, %if.end55.unlock_2_crit_edge ]
  %86 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_fs_info.i, align 16
  call void @mutex_unlock(ptr noundef %87) #5
  %inc = add nuw i32 %start_bmp.0225, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv44)
  %cmp46 = icmp ult i32 %inc, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool49.not = icmp eq i32 %err.5, 0
  %or.cond124 = select i1 %cmp46, i1 %tobool49.not, i1 false
  br i1 %or.cond124, label %unlock_2.while.body52_crit_edge, label %unlock_2.cleanup_crit_edge

unlock_2.cleanup_crit_edge:                       ; preds = %unlock_2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

unlock_2.while.body52_crit_edge:                  ; preds = %unlock_2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body52

cleanup:                                          ; preds = %unlock_2.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %err.2, %if.end40.cleanup_crit_edge ], [ %err.5, %unlock_2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/alloc.c", i32 104, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hpfs/alloc.c", i32 268, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/hpfs/alloc.c", i32 300, i32 50}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/alloc.c", i32 323, i32 17}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/alloc.c", i32 329, i32 50}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/alloc.c", i32 334, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/alloc.c", i32 379, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hpfs/alloc.c", i32 385, i32 36}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/alloc.c", i32 408, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hpfs/alloc.c", i32 567, i32 51}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hpfs/alloc.c", i32 73, i32 50}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/hpfs/alloc.c", i32 75, i32 17}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hpfs/alloc.c", i32 83, i32 18}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/hpfs/alloc.c", i32 126, i32 17}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hpfs/alloc.c", i32 130, i32 52}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/hpfs/alloc.c", i32 182, i32 18}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hpfs/alloc.c", i32 17, i32 18}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/hpfs/alloc.c", i32 30, i32 18}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/hpfs/alloc.c", i32 56, i32 18}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/hpfs/alloc.c", i32 43, i32 18}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
