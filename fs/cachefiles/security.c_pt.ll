; ModuleID = '/llk/IR_all_yes/fs/cachefiles/security.c_pt.bc'
source_filename = "../fs/cachefiles/security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.8, ptr }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_get_security_ID._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] ==> %s({%s})\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_get_security_ID\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/cachefiles/security.c\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_get_security_ID._entry_ptr = internal global ptr @cachefiles_get_security_ID._entry, section ".printk_index", align 4
@cachefiles_get_security_ID._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013CacheFiles: Security denies permission to nominate security context: error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cachefiles_get_security_ID._entry_ptr.5 = internal global ptr @cachefiles_get_security_ID._entry.3, section ".printk_index", align 4
@cachefiles_get_security_ID._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_get_security_ID._entry_ptr.8 = internal global ptr @cachefiles_get_security_ID._entry.6, section ".printk_index", align 4
@cachefiles_determine_cache_security._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] ==> %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cachefiles_determine_cache_security\00", [60 x i8] zeroinitializer }, align 32
@cachefiles_determine_cache_security._entry_ptr = internal global ptr @cachefiles_determine_cache_security._entry, section ".printk_index", align 4
@cachefiles_determine_cache_security._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017[%-6.6s] <== %s() = %d [cfa]\0A\00", [32 x i8] zeroinitializer }, align 32
@cachefiles_determine_cache_security._entry_ptr.13 = internal global ptr @cachefiles_determine_cache_security._entry.11, section ".printk_index", align 4
@cachefiles_determine_cache_security._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_determine_cache_security._entry_ptr.15 = internal global ptr @cachefiles_determine_cache_security._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_check_cache_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013CacheFiles: Security denies permission to make dirs: error %d\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_check_cache_dir\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_check_cache_dir._entry_ptr = internal global ptr @cachefiles_check_cache_dir._entry, section ".printk_index", align 4
@cachefiles_check_cache_dir._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013CacheFiles: Security denies permission to create files: error %d\00", [61 x i8] zeroinitializer }, align 32
@cachefiles_check_cache_dir._entry_ptr.21 = internal global ptr @cachefiles_check_cache_dir._entry.19, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 21, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 33, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 42, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 82, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 98, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 110, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 286, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 56, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [28 x i8] c"../fs/cachefiles/security.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 63, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @cachefiles_check_cache_dir._entry, ptr @cachefiles_check_cache_dir._entry.19, ptr @cachefiles_check_cache_dir._entry_ptr, ptr @cachefiles_check_cache_dir._entry_ptr.21, ptr @cachefiles_determine_cache_security._entry, ptr @cachefiles_determine_cache_security._entry.11, ptr @cachefiles_determine_cache_security._entry.14, ptr @cachefiles_determine_cache_security._entry_ptr, ptr @cachefiles_determine_cache_security._entry_ptr.13, ptr @cachefiles_determine_cache_security._entry_ptr.15, ptr @cachefiles_get_security_ID._entry, ptr @cachefiles_get_security_ID._entry.3, ptr @cachefiles_get_security_ID._entry.6, ptr @cachefiles_get_security_ID._entry_ptr, ptr @cachefiles_get_security_ID._entry_ptr.5, ptr @cachefiles_get_security_ID._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_security_ID._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_security_ID._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_security_ID._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_determine_cache_security._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_determine_cache_security._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_determine_cache_security._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_cache_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_check_cache_dir._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_get_security_ID(ptr nocapture noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %secctx = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 31
  %5 = ptrtoint ptr %secctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %secctx, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #5
  %and.i49 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i49 to ptr
  %task6 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task6, align 8
  %call7 = tail call ptr @prepare_kernel_cred(ptr noundef %10) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end4.do.body24_crit_edge, label %if.end10

do.end4.do.body24_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end10:                                         ; preds = %do.end4
  %secctx11 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 31
  %11 = ptrtoint ptr %secctx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %secctx11, align 8
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end10.if.end23_crit_edge, label %if.then13

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then13:                                        ; preds = %if.end10
  %call15 = tail call i32 @set_security_override_from_ctx(ptr noundef nonnull %call7, ptr noundef nonnull %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.body.i, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.body.i:                                        ; preds = %if.then13
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call7) #5
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !47

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %call7, ptr noundef nonnull @.str.16, i32 noundef 286) #5
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr nonnull %call7, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7, ptr nonnull %call7, i32 1, ptr nonnull elementtype(i32) %call7) #5, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_cred(ptr noundef nonnull %call7) #5
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15) #8
  br label %do.body24

if.end23:                                         ; preds = %if.then13.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %cache_cred = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %14 = ptrtoint ptr %cache_cred to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %cache_cred, align 8
  br label %do.body24

do.body24:                                        ; preds = %if.end23, %put_cred.exit, %do.end4.do.body24_crit_edge
  %ret.0 = phi i32 [ %call15, %put_cred.exit ], [ 0, %if.end23 ], [ -12, %do.end4.do.body24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %15 = load i32, ptr @cachefiles_debug, align 4
  %and25 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end39_crit_edge, label %do.end30

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task6, align 8
  %comm34 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm34, ptr noundef nonnull @.str.1, i32 noundef %ret.0) #8
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %do.body24.do.end39_crit_edge
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_security_override_from_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_determine_cache_security(ptr nocapture noundef %cache, ptr noundef %root, ptr nocapture noundef %_saved_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.10) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call ptr @prepare_creds() #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %5 = ptrtoint ptr %_saved_cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_saved_cred, align 4
  tail call void @revert_creds(ptr noundef %6) #5
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %call10 = tail call i32 @set_create_files_as(ptr noundef nonnull %call5, ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end28

if.then11:                                        ; preds = %if.end8
  tail call void @abort_creds(ptr noundef nonnull %call5) #5
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %9 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %10) #5
  %11 = ptrtoint ptr %_saved_cred to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %_saved_cred, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %12 = load i32, ptr @cachefiles_debug, align 4
  %and13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %do.end18

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #5
  %and.i67 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i67 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task21, align 8
  %comm22 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm22, ptr noundef nonnull @.str.10, i32 noundef %call10) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  %cache_cred = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %17 = ptrtoint ptr %cache_cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache_cred, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end28.put_cred.exit_crit_edge, label %do.body.i

if.end28.put_cred.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end28
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %18) #5
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !47

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %18, ptr noundef nonnull @.str.16, i32 noundef 286) #5
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %18, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr nonnull %18, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #5, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_cred(ptr noundef nonnull %18) #5
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end28.put_cred.exit_crit_edge
  %20 = ptrtoint ptr %cache_cred to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5, ptr %cache_cred, align 8
  %call.i69 = tail call ptr @override_creds(ptr noundef nonnull %call5) #5
  %21 = ptrtoint ptr %_saved_cred to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i69, ptr %_saved_cred, align 4
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %call1.i = tail call i32 @security_inode_mkdir(ptr noundef %23, ptr noundef %root, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call1.i) #8
  br label %cachefiles_check_cache_dir.exit

if.end.i:                                         ; preds = %put_cred.exit
  %24 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i, align 8
  %call4.i = tail call i32 @security_inode_create(ptr noundef %25, ptr noundef %root, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.cachefiles_check_cache_dir.exit_crit_edge

if.end.i.cachefiles_check_cache_dir.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cachefiles_check_cache_dir.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call4.i) #8
  br label %cachefiles_check_cache_dir.exit

cachefiles_check_cache_dir.exit:                  ; preds = %do.end9.i, %if.end.i.cachefiles_check_cache_dir.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %call4.i, %do.end9.i ], [ %call4.i, %if.end.i.cachefiles_check_cache_dir.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %retval.0.i)
  %cmp31 = icmp eq i32 %retval.0.i, -95
  %spec.store.select = select i1 %cmp31, i32 0, i32 %retval.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %26 = load i32, ptr @cachefiles_debug, align 4
  %and35 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cachefiles_check_cache_dir.exit.cleanup_crit_edge, label %do.end40

cachefiles_check_cache_dir.exit.cleanup_crit_edge: ; preds = %cachefiles_check_cache_dir.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end40:                                         ; preds = %cachefiles_check_cache_dir.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = tail call i32 @llvm.read_register.i32(metadata !37) #5
  %and.i70 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i70 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm44, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %cachefiles_check_cache_dir.exit.cleanup_crit_edge, %do.end18, %if.then11.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end4.cleanup_crit_edge ], [ %call10, %do.end18 ], [ %call10, %if.then11.cleanup_crit_edge ], [ %spec.store.select, %do.end40 ], [ %spec.store.select, %cachefiles_check_cache_dir.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_create_files_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_create(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !31, !32, !33, !35, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/security.c", i32 21, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_get_security_ID._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_get_security_ID._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/security.c", i32 33, i32 4}
!8 = !{ptr @cachefiles_get_security_ID._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_get_security_ID._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cachefiles/security.c", i32 42, i32 2}
!12 = !{ptr @cachefiles_get_security_ID._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cachefiles_get_security_ID._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cachefiles/security.c", i32 82, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cachefiles_determine_cache_security._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cachefiles_determine_cache_security._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/cachefiles/security.c", i32 98, i32 3}
!21 = !{ptr @cachefiles_determine_cache_security._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cachefiles_determine_cache_security._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cachefiles_determine_cache_security._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../fs/cachefiles/security.c", i32 110, i32 2}
!25 = !{ptr @cachefiles_determine_cache_security._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/cred.h", i32 286, i32 3}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/cachefiles/security.c", i32 56, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cachefiles_check_cache_dir._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cachefiles_check_cache_dir._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/cachefiles/security.c", i32 63, i32 3}
!35 = !{ptr @cachefiles_check_cache_dir._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cachefiles_check_cache_dir._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2148741331}
!49 = !{i64 2148656040, i64 2148656072, i64 2148656101, i64 2148656135, i64 2148656166, i64 2148656189}
!50 = !{i64 2148741560}
