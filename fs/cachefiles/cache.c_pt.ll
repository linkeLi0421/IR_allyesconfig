; ModuleID = '/llk/IR_all_yes/fs/cachefiles/cache.c_pt.bc'
source_filename = "../fs/cachefiles/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fscache_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.59 }
%union.anon.59 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.8, ptr }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.80 = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fscache_cache = type { ptr, %struct.list_head, ptr, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_add_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] ==> %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cachefiles_add_cache\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/cachefiles/cache.c\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr = internal global ptr @cachefiles_add_cache._entry, section ".printk_index", align 4
@cachefiles_add_cache._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014CacheFiles: File cache on idmapped mounts not supported\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.5 = internal global ptr @cachefiles_add_cache._entry.3, section ".printk_index", align 4
@cachefiles_add_cache._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017[%-6.6s] blksize %u (shift %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.8 = internal global ptr @cachefiles_add_cache._entry.6, section ".printk_index", align 4
@cachefiles_add_cache._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017[%-6.6s] size %llu, avail %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.11 = internal global ptr @cachefiles_add_cache._entry.9, section ".printk_index", align 4
@cachefiles_add_cache._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017[%-6.6s] limits {%llu,%llu,%llu} files\0A\00", [54 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.14 = internal global ptr @cachefiles_add_cache._entry.12, section ".printk_index", align 4
@cachefiles_add_cache._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017[%-6.6s] limits {%llu,%llu,%llu} blocks\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.17 = internal global ptr @cachefiles_add_cache._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"graveyard\00", [22 x i8] zeroinitializer }, align 32
@cachefiles_cache_ops = external dso_local constant %struct.fscache_cache_ops, align 4
@cachefiles_add_cache._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016CacheFiles: File cache on %s registered\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.22 = internal global ptr @cachefiles_add_cache._entry.20, section ".printk_index", align 4
@cachefiles_add_cache._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() = 0 [%px]\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.25 = internal global ptr @cachefiles_add_cache._entry.23, section ".printk_index", align 4
@cachefiles_add_cache._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CacheFiles: Failed to register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cachefiles_add_cache._entry_ptr.28 = internal global ptr @cachefiles_add_cache._entry.26, section ".printk_index", align 4
@cachefiles_has_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CacheFiles: I/O Error: statfs failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cachefiles_has_space\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_has_space._entry_ptr = internal global ptr @cachefiles_has_space._entry, section ".printk_index", align 4
@cachefiles_has_space._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_has_space._entry_ptr.33 = internal global ptr @cachefiles_has_space._entry.31, section ".printk_index", align 4
@cachefiles_has_space._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] cease culling\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_has_space._entry_ptr.36 = internal global ptr @cachefiles_has_space._entry.34, section ".printk_index", align 4
@fscache_n_no_write_space = external dso_local global %struct.atomic_t, align 4
@fscache_n_no_create_space = external dso_local global %struct.atomic_t, align 4
@cachefiles_has_space._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] ### CULL CACHE ###\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_has_space._entry_ptr.39 = internal global ptr @cachefiles_has_space._entry.37, section ".printk_index", align 4
@cachefiles_has_space._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_has_space._entry_ptr.41 = internal global ptr @cachefiles_has_space._entry.40, section ".printk_index", align 4
@cachefiles_withdraw_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016CacheFiles: File cache on %s unregistering\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_withdraw_cache\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_cache._entry_ptr = internal global ptr @cachefiles_withdraw_cache._entry, section ".printk_index", align 4
@__tracepoint_cachefiles_vfs_error = external dso_local global %struct.tracepoint, align 4
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/cachefiles.h\00", [62 x i8] zeroinitializer }, align 32
@trace_cachefiles_vfs_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_objects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_withdraw_objects\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_objects._entry_ptr = internal global ptr @cachefiles_withdraw_objects._entry, section ".printk_index", align 4
@cachefiles_withdraw_objects._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() [%u objs]\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_objects._entry_ptr.50 = internal global ptr @cachefiles_withdraw_objects._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/fscache-cache.h\00", [34 x i8] zeroinitializer }, align 32
@fscache_clearance_waiters = external dso_local global %struct.wait_queue_head, align 4
@cachefiles_withdraw_volumes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.52, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_withdraw_volumes\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_volumes._entry_ptr = internal global ptr @cachefiles_withdraw_volumes._entry, section ".printk_index", align 4
@cachefiles_withdraw_volumes._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] <== %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_volumes._entry_ptr.55 = internal global ptr @cachefiles_withdraw_volumes._entry.53, section ".printk_index", align 4
@cachefiles_sync_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017[%-6.6s] ==> %s(%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cachefiles_sync_cache\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_sync_cache._entry_ptr = internal global ptr @cachefiles_sync_cache._entry, section ".printk_index", align 4
@cachefiles_sync_cache._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013CacheFiles: I/O Error: Attempt to sync backing fs superblock returned error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cachefiles_sync_cache._entry_ptr.60 = internal global ptr @cachefiles_sync_cache._entry.58, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 25, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 48, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 97, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 100, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 110, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 120, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 126, i32 51 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 135, i32 52 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 152, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 157, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 174, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 212, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 213, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 254, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 274, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 278, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 369, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 620, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 108, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 290, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 309, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [33 x i8] c"../include/linux/fscache-cache.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 182, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 317, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 335, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 346, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [25 x i8] c"../fs/cachefiles/cache.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 357, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @cachefiles_add_cache._entry, ptr @cachefiles_add_cache._entry.12, ptr @cachefiles_add_cache._entry.15, ptr @cachefiles_add_cache._entry.20, ptr @cachefiles_add_cache._entry.23, ptr @cachefiles_add_cache._entry.26, ptr @cachefiles_add_cache._entry.3, ptr @cachefiles_add_cache._entry.6, ptr @cachefiles_add_cache._entry.9, ptr @cachefiles_add_cache._entry_ptr, ptr @cachefiles_add_cache._entry_ptr.11, ptr @cachefiles_add_cache._entry_ptr.14, ptr @cachefiles_add_cache._entry_ptr.17, ptr @cachefiles_add_cache._entry_ptr.22, ptr @cachefiles_add_cache._entry_ptr.25, ptr @cachefiles_add_cache._entry_ptr.28, ptr @cachefiles_add_cache._entry_ptr.5, ptr @cachefiles_add_cache._entry_ptr.8, ptr @cachefiles_has_space._entry, ptr @cachefiles_has_space._entry.31, ptr @cachefiles_has_space._entry.34, ptr @cachefiles_has_space._entry.37, ptr @cachefiles_has_space._entry.40, ptr @cachefiles_has_space._entry_ptr, ptr @cachefiles_has_space._entry_ptr.33, ptr @cachefiles_has_space._entry_ptr.36, ptr @cachefiles_has_space._entry_ptr.39, ptr @cachefiles_has_space._entry_ptr.41, ptr @cachefiles_sync_cache._entry, ptr @cachefiles_sync_cache._entry.58, ptr @cachefiles_sync_cache._entry_ptr, ptr @cachefiles_sync_cache._entry_ptr.60, ptr @cachefiles_withdraw_cache._entry, ptr @cachefiles_withdraw_cache._entry_ptr, ptr @cachefiles_withdraw_objects._entry, ptr @cachefiles_withdraw_objects._entry.48, ptr @cachefiles_withdraw_objects._entry_ptr, ptr @cachefiles_withdraw_objects._entry_ptr.50, ptr @cachefiles_withdraw_volumes._entry, ptr @cachefiles_withdraw_volumes._entry.53, ptr @cachefiles_withdraw_volumes._entry_ptr, ptr @cachefiles_withdraw_volumes._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_add_cache._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_has_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_has_space._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_has_space._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_has_space._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_has_space._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_objects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_objects._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_volumes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_volumes._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_sync_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_sync_cache._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_add_cache(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %stats = alloca %struct.kstatfs, align 8
  %saved_cred = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !112
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %stats) #8
  %3 = call ptr @memset(ptr %stats, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved_cred) #8
  %4 = ptrtoint ptr %saved_cred to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %saved_cred, align 4, !annotation !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %5 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tag = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 32
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tag, align 4
  %call5 = tail call ptr @fscache_acquire_cache(ptr noundef %11) #8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %call10 = tail call i32 @cachefiles_get_security_ID(ptr noundef %cache) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.error_getsec_crit_edge, label %if.end12

if.end9.error_getsec_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_getsec

if.end12:                                         ; preds = %if.end9
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %13 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %14) #8
  %15 = ptrtoint ptr %saved_cred to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %saved_cred, align 4
  %rootdirname = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 30
  %16 = ptrtoint ptr %rootdirname to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rootdirname, align 4
  %call13 = call i32 @kern_path(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.error_open_root_crit_edge, label %if.end16

if.end12.error_open_root_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_open_root

if.end16:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path, align 4
  %mnt17 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  %20 = ptrtoint ptr %mnt17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mnt17, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i909.not = icmp eq ptr %24, %28
  br i1 %cmp.i909.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %error_unsupported

if.end26:                                         ; preds = %if.end16
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %22, align 8
  %and.i.i.i = and i32 %30, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.end26.error_unsupported_crit_edge, label %lor.lhs.false

if.end26.error_unsupported_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false:                                    ; preds = %if.end26
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_op, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %tobool29.not = icmp eq ptr %36, null
  br i1 %tobool29.not, label %lor.lhs.false.error_unsupported_crit_edge, label %lor.lhs.false30

lor.lhs.false.error_unsupported_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %mkdir = getelementptr inbounds %struct.inode_operations, ptr %34, i32 0, i32 9
  %37 = ptrtoint ptr %mkdir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mkdir, align 4
  %tobool33.not = icmp eq ptr %38, null
  br i1 %tobool33.not, label %lor.lhs.false30.error_unsupported_crit_edge, label %lor.lhs.false34

lor.lhs.false30.error_unsupported_crit_edge:      ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %tmpfile = getelementptr inbounds %struct.inode_operations, ptr %34, i32 0, i32 19
  %39 = ptrtoint ptr %tmpfile to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tmpfile, align 4
  %tobool37.not = icmp eq ptr %40, null
  br i1 %tobool37.not, label %lor.lhs.false34.error_unsupported_crit_edge, label %lor.lhs.false38

lor.lhs.false34.error_unsupported_crit_edge:      ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %i_opflags = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %i_opflags, align 2
  %43 = and i16 %42, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool41.not = icmp eq i16 %43, 0
  br i1 %tobool41.not, label %lor.lhs.false38.error_unsupported_crit_edge, label %lor.lhs.false42

lor.lhs.false38.error_unsupported_crit_edge:      ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %d_sb = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 9
  %44 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_op, align 4
  %statfs = getelementptr inbounds %struct.super_operations, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %statfs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %statfs, align 4
  %tobool43.not = icmp eq ptr %49, null
  br i1 %tobool43.not, label %lor.lhs.false42.error_unsupported_crit_edge, label %lor.lhs.false44

lor.lhs.false42.error_unsupported_crit_edge:      ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %sync_fs = getelementptr inbounds %struct.super_operations, ptr %47, i32 0, i32 8
  %50 = ptrtoint ptr %sync_fs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sync_fs, align 4
  %tobool47.not = icmp eq ptr %51, null
  br i1 %tobool47.not, label %lor.lhs.false44.error_unsupported_crit_edge, label %lor.lhs.false48

lor.lhs.false44.error_unsupported_crit_edge:      ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %53)
  %cmp50 = icmp ugt i32 %53, 4096
  br i1 %cmp50, label %lor.lhs.false48.error_unsupported_crit_edge, label %if.end53

lor.lhs.false48.error_unsupported_crit_edge:      ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end53:                                         ; preds = %lor.lhs.false48
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 10
  %54 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_flags.i, align 4
  %and.i913 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i913)
  %tobool.i.not = icmp eq i32 %and.i913, 0
  br i1 %tobool.i.not, label %if.end57, label %if.end53.error_unsupported_crit_edge

if.end53.error_unsupported_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end57:                                         ; preds = %if.end53
  %call58 = call i32 @cachefiles_determine_cache_security(ptr noundef %cache, ptr noundef %22, ptr noundef nonnull %saved_cred) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.error_unsupported_crit_edge, label %if.end62

if.end57.error_unsupported_crit_edge:             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end62:                                         ; preds = %if.end57
  %call63 = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef nonnull %stats) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.error_unsupported_crit_edge, label %if.end67

if.end62.error_unsupported_crit_edge:             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end67:                                         ; preds = %if.end62
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 1
  %56 = ptrtoint ptr %f_bsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %f_bsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp68 = icmp slt i32 %57, 1
  br i1 %cmp68, label %if.end67.error_unsupported_crit_edge, label %if.end71

if.end67.error_unsupported_crit_edge:             ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end71:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %57)
  %cmp73 = icmp ugt i32 %57, 4096
  br i1 %cmp73, label %if.end71.error_unsupported_crit_edge, label %if.end76

if.end71.error_unsupported_crit_edge:             ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unsupported

if.end76:                                         ; preds = %if.end71
  %bsize = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 21
  %58 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %bsize, align 4
  %59 = call i32 @llvm.ctlz.i32(i32 %57, i1 true) #8, !range !114
  %sub.i.op.i = xor i32 %59, 31
  %bshift = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 22
  %60 = ptrtoint ptr %bshift to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i.op.i, ptr %bshift, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %61 = load i32, ptr @cachefiles_debug, align 4
  %and91 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end76.do.body108_crit_edge, label %do.end96

if.end76.do.body108_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

do.end96:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %62 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i914 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i914 to ptr
  %task99 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task99, align 8
  %comm100 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 101
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm100, i32 noundef %57, i32 noundef %sub.i.op.i) #11
  br label %do.body108

do.body108:                                       ; preds = %do.end96, %if.end76.do.body108_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %66 = load i32, ptr @cachefiles_debug, align 4
  %and109 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %do.body108.if.then149_crit_edge, label %do.end114

do.body108.if.then149_crit_edge:                  ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then149

do.end114:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %67 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i915 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i915 to ptr
  %task117 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task117, align 8
  %comm118 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 101
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 2
  %71 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %f_blocks, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 4
  %73 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %f_bavail, align 8
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm118, i64 noundef %72, i64 noundef %74) #11
  br label %if.then149

if.then149:                                       ; preds = %do.end114, %do.body108.if.then149_crit_edge
  %f_files150 = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 5
  %75 = ptrtoint ptr %f_files150 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %f_files150, align 8
  %77 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %76, i32 0) #12, !srcloc !115
  %asmresult.i = extractvalue { i64, i32 } %77, 0
  %asmresult4.i = extractvalue { i64, i32 } %77, 1
  %78 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %76, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !116
  %asmresult10.i = extractvalue { i64, i32 } %78, 0
  %div299907 = lshr i64 %asmresult10.i, 6
  %79 = ptrtoint ptr %f_files150 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %div299907, ptr %f_files150, align 8
  %fstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 17
  %80 = ptrtoint ptr %fstop_percent to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fstop_percent, align 4
  %conv329 = zext i32 %81 to i64
  %mul330 = mul i64 %div299907, %conv329
  %fstop = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 25
  %82 = ptrtoint ptr %fstop to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %mul330, ptr %fstop, align 8
  %fcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 16
  %83 = ptrtoint ptr %fcull_percent to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fcull_percent, align 8
  %conv332 = zext i32 %84 to i64
  %mul333 = mul i64 %div299907, %conv332
  %fcull = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 24
  %85 = ptrtoint ptr %fcull to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %mul333, ptr %fcull, align 8
  %frun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 15
  %86 = ptrtoint ptr %frun_percent to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frun_percent, align 4
  %conv335 = zext i32 %87 to i64
  %mul336 = mul i64 %div299907, %conv335
  %frun = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 23
  %88 = ptrtoint ptr %frun to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %mul336, ptr %frun, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %89 = load i32, ptr @cachefiles_debug, align 4
  %and338 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and338)
  %tobool339.not = icmp eq i32 %and338, 0
  br i1 %tobool339.not, label %if.then149.if.then388_crit_edge, label %do.end343

if.then149.if.then388_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then388

do.end343:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  %90 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i916 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i916 to ptr
  %task346 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task346 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task346, align 8
  %comm347 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 101
  %call352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm347, i64 noundef %mul336, i64 noundef %mul333, i64 noundef %mul330) #11
  br label %if.then388

if.then388:                                       ; preds = %do.end343, %if.then149.if.then388_crit_edge
  %f_blocks391 = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 2
  %94 = ptrtoint ptr %f_blocks391 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %f_blocks391, align 8
  %96 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %95, i32 0) #12, !srcloc !115
  %asmresult.i917 = extractvalue { i64, i32 } %96, 0
  %asmresult4.i918 = extractvalue { i64, i32 } %96, 1
  %97 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %95, i64 %asmresult.i917, i32 %asmresult4.i918) #12, !srcloc !116
  %asmresult10.i919 = extractvalue { i64, i32 } %97, 0
  %div555908 = lshr i64 %asmresult10.i919, 6
  %98 = ptrtoint ptr %f_blocks391 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %div555908, ptr %f_blocks391, align 8
  %bstop_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 20
  %99 = ptrtoint ptr %bstop_percent to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bstop_percent, align 8
  %conv589 = zext i32 %100 to i64
  %mul590 = mul i64 %div555908, %conv589
  %bstop = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 28
  %101 = ptrtoint ptr %bstop to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %mul590, ptr %bstop, align 8
  %bcull_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 19
  %102 = ptrtoint ptr %bcull_percent to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bcull_percent, align 4
  %conv592 = zext i32 %103 to i64
  %mul593 = mul i64 %div555908, %conv592
  %bcull = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 27
  %104 = ptrtoint ptr %bcull to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %mul593, ptr %bcull, align 8
  %brun_percent = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 18
  %105 = ptrtoint ptr %brun_percent to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %brun_percent, align 8
  %conv595 = zext i32 %106 to i64
  %mul596 = mul i64 %div555908, %conv595
  %brun = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 26
  %107 = ptrtoint ptr %brun to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %mul596, ptr %brun, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %108 = load i32, ptr @cachefiles_debug, align 4
  %and598 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and598)
  %tobool599.not = icmp eq i32 %and598, 0
  br i1 %tobool599.not, label %if.then388.do.end615_crit_edge, label %do.end603

if.then388.do.end615_crit_edge:                   ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end615

do.end603:                                        ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #10
  %109 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i920 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i920 to ptr
  %task606 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task606 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task606, align 8
  %comm607 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 101
  %call612 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %comm607, i64 noundef %mul596, i64 noundef %mul593, i64 noundef %mul590) #11
  br label %do.end615

do.end615:                                        ; preds = %do.end603, %if.then388.do.end615_crit_edge
  %call616 = call ptr @cachefiles_get_directory(ptr noundef %cache, ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %cmp.i921 = icmp ugt ptr %call616, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i921, label %if.then618, label %if.end620

if.then618:                                       ; preds = %do.end615
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %call616 to i32
  br label %error_unsupported

if.end620:                                        ; preds = %do.end615
  %store = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 2
  %114 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call616, ptr %store, align 8
  %call621 = call ptr @cachefiles_get_directory(ptr noundef %cache, ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %cmp.i922 = icmp ugt ptr %call621, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i922, label %if.then623, label %if.end625

if.then623:                                       ; preds = %if.end620
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %call621 to i32
  br label %error_unsupported

if.end625:                                        ; preds = %if.end620
  %graveyard626 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 3
  %116 = ptrtoint ptr %graveyard626 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call621, ptr %graveyard626, align 4
  %117 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call5, ptr %cache, align 8
  %call628 = call i32 @fscache_add_cache(ptr noundef %call5, ptr noundef nonnull @cachefiles_cache_ops, ptr noundef %cache) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call628)
  %cmp629 = icmp slt i32 %call628, 0
  br i1 %cmp629, label %error_add_cache, label %if.end632

if.end632:                                        ; preds = %if.end625
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  call void @dput(ptr noundef %22) #8
  %name = getelementptr inbounds %struct.fscache_cache, ptr %call5, i32 0, i32 9
  %118 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name, align 4
  %call637 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %119) #11
  %call638 = call i32 @cachefiles_has_space(ptr noundef %cache, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %120 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %saved_cred, align 4
  call void @revert_creds(ptr noundef %121) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %122 = load i32, ptr @cachefiles_debug, align 4
  %and640 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and640)
  %tobool641.not = icmp eq i32 %and640, 0
  br i1 %tobool641.not, label %if.end632.cleanup_crit_edge, label %do.end645

if.end632.cleanup_crit_edge:                      ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end645:                                        ; preds = %if.end632
  call void @__sanitizer_cov_trace_pc() #10
  %123 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i923 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i923 to ptr
  %task648 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task648 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task648, align 8
  %comm649 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 101
  %127 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cache, align 8
  %call652 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm649, ptr noundef nonnull @.str.1, ptr noundef %128) #11
  br label %cleanup

error_add_cache:                                  ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %graveyard626 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %graveyard626, align 4
  call void @cachefiles_put_directory(ptr noundef %130) #8
  %131 = ptrtoint ptr %graveyard626 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %graveyard626, align 4
  br label %error_unsupported

error_unsupported:                                ; preds = %error_add_cache, %if.then623, %if.then618, %if.end71.error_unsupported_crit_edge, %if.end67.error_unsupported_crit_edge, %if.end62.error_unsupported_crit_edge, %if.end57.error_unsupported_crit_edge, %if.end53.error_unsupported_crit_edge, %lor.lhs.false48.error_unsupported_crit_edge, %lor.lhs.false44.error_unsupported_crit_edge, %lor.lhs.false42.error_unsupported_crit_edge, %lor.lhs.false38.error_unsupported_crit_edge, %lor.lhs.false34.error_unsupported_crit_edge, %lor.lhs.false30.error_unsupported_crit_edge, %lor.lhs.false.error_unsupported_crit_edge, %if.end26.error_unsupported_crit_edge, %do.end23
  %ret.0 = phi i32 [ -22, %do.end23 ], [ -95, %if.end26.error_unsupported_crit_edge ], [ -95, %lor.lhs.false48.error_unsupported_crit_edge ], [ -30, %if.end53.error_unsupported_crit_edge ], [ %call58, %if.end57.error_unsupported_crit_edge ], [ %call63, %if.end62.error_unsupported_crit_edge ], [ -34, %if.end67.error_unsupported_crit_edge ], [ -95, %if.end71.error_unsupported_crit_edge ], [ %113, %if.then618 ], [ %115, %if.then623 ], [ %call628, %error_add_cache ], [ -95, %lor.lhs.false44.error_unsupported_crit_edge ], [ -95, %lor.lhs.false42.error_unsupported_crit_edge ], [ -95, %lor.lhs.false38.error_unsupported_crit_edge ], [ -95, %lor.lhs.false34.error_unsupported_crit_edge ], [ -95, %lor.lhs.false30.error_unsupported_crit_edge ], [ -95, %lor.lhs.false.error_unsupported_crit_edge ]
  %store658 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 2
  %132 = ptrtoint ptr %store658 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %store658, align 8
  call void @cachefiles_put_directory(ptr noundef %133) #8
  %134 = ptrtoint ptr %store658 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %store658, align 8
  %135 = ptrtoint ptr %mnt17 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mnt17, align 4
  call void @mntput(ptr noundef %136) #8
  %137 = ptrtoint ptr %mnt17 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %mnt17, align 4
  call void @dput(ptr noundef %22) #8
  br label %error_open_root

error_open_root:                                  ; preds = %error_unsupported, %if.end12.error_open_root_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end12.error_open_root_crit_edge ], [ %ret.0, %error_unsupported ]
  %138 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %saved_cred, align 4
  call void @revert_creds(ptr noundef %139) #8
  br label %error_getsec

error_getsec:                                     ; preds = %error_open_root, %if.end9.error_getsec_crit_edge
  %ret.2 = phi i32 [ %call10, %if.end9.error_getsec_crit_edge ], [ %ret.1, %error_open_root ]
  call void @fscache_relinquish_cache(ptr noundef %call5) #8
  %140 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %cache, align 8
  %call667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %ret.2) #11
  br label %cleanup

cleanup:                                          ; preds = %error_getsec, %do.end645, %if.end632.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %12, %if.then7 ], [ %ret.2, %error_getsec ], [ 0, %do.end645 ], [ 0, %if.end632.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved_cred) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %stats) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscache_acquire_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_get_security_ID(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_determine_cache_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cachefiles_get_directory(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscache_add_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_has_space(ptr noundef %cache, i32 noundef %fnr, i32 noundef %bnr, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.kstatfs, align 8
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %stats) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %mnt1 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  %1 = ptrtoint ptr %mnt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt1, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  %7 = call ptr @memset(ptr %stats, i32 0, i32 88)
  %call = call i32 @vfs_statfs(ptr noundef nonnull %path, ptr noundef nonnull %stats) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %11, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call)
  %cmp5 = icmp eq i32 %call, -5
  br i1 %cmp5, label %do.end, label %if.then.do.body12_crit_edge

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %13) #8
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %do.body12

do.body12:                                        ; preds = %do.end, %if.then.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %14 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body12.cleanup_crit_edge, label %do.end16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end16:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm, ptr noundef nonnull @.str.30, i32 noundef %call) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 4
  %19 = ptrtoint ptr %f_bavail to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %f_bavail, align 8
  %b_writing24 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b_writing24, i32 noundef 4) #8
  %21 = ptrtoint ptr %b_writing24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %b_writing24, align 4
  %conv = sext i32 %22 to i64
  %23 = call i64 @llvm.usub.sat.i64(i64 %20, i64 %conv)
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %stats, i32 0, i32 6
  %24 = ptrtoint ptr %f_ffree to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %f_ffree, align 8
  %conv30 = zext i32 %fnr to i64
  %26 = call i64 @llvm.usub.sat.i64(i64 %25, i64 %conv30)
  %27 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %f_ffree, align 8
  %conv40 = zext i32 %bnr to i64
  %28 = call i64 @llvm.usub.sat.i64(i64 %23, i64 %conv40)
  %fstop = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 25
  %29 = ptrtoint ptr %fstop to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fstop, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %30)
  %cmp49 = icmp ult i64 %26, %30
  br i1 %cmp49, label %if.end23.stop_and_begin_cull_crit_edge, label %lor.lhs.false

if.end23.stop_and_begin_cull_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_and_begin_cull

lor.lhs.false:                                    ; preds = %if.end23
  %bstop = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 28
  %31 = ptrtoint ptr %bstop to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bstop, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp51 = icmp ult i64 %28, %32
  br i1 %cmp51, label %lor.lhs.false.stop_and_begin_cull_crit_edge, label %if.end54

lor.lhs.false.stop_and_begin_cull_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_and_begin_cull

if.end54:                                         ; preds = %lor.lhs.false
  %fcull = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 24
  %33 = ptrtoint ptr %fcull to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fcull, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %34)
  %cmp56 = icmp ult i64 %26, %34
  br i1 %cmp56, label %if.end54.begin_cull_crit_edge, label %lor.lhs.false58

if.end54.begin_cull_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %begin_cull

lor.lhs.false58:                                  ; preds = %if.end54
  %bcull = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 27
  %35 = ptrtoint ptr %bcull to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bcull, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %36)
  %cmp59 = icmp ult i64 %28, %36
  br i1 %cmp59, label %lor.lhs.false58.begin_cull_crit_edge, label %if.end62

lor.lhs.false58.begin_cull_crit_edge:             ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %begin_cull

if.end62:                                         ; preds = %lor.lhs.false58
  %flags63 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  %37 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags63, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool65.not = icmp eq i32 %39, 0
  br i1 %tobool65.not, label %if.end62.cleanup_crit_edge, label %land.lhs.true

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end62
  %frun = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 23
  %40 = ptrtoint ptr %frun to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %frun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %41)
  %cmp67.not = icmp ult i64 %26, %41
  br i1 %cmp67.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true69

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true69:                                  ; preds = %land.lhs.true
  %brun = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 26
  %42 = ptrtoint ptr %brun to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %brun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %43)
  %cmp70.not = icmp ult i64 %28, %43
  br i1 %cmp70.not, label %land.lhs.true69.cleanup_crit_edge, label %land.lhs.true72

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %call74 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true72.cleanup_crit_edge, label %do.body77

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body77:                                        ; preds = %land.lhs.true72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %44 = load i32, ptr @cachefiles_debug, align 4
  %and78 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body77.do.end92_crit_edge, label %do.end83

do.body77.do.end92_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %45 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i170 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i170 to ptr
  %task86 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task86, align 8
  %comm87 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 101
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm87) #11
  br label %do.end92

do.end92:                                         ; preds = %do.end83, %do.body77.do.end92_crit_edge
  call fastcc void @cachefiles_state_changed(ptr noundef %cache)
  br label %cleanup

stop_and_begin_cull:                              ; preds = %lor.lhs.false.stop_and_begin_cull_crit_edge, %if.end23.stop_and_begin_cull_crit_edge
  %49 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reason, label %stop_and_begin_cull.begin_cull_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb94
  ]

stop_and_begin_cull.begin_cull_crit_edge:         ; preds = %stop_and_begin_cull
  call void @__sanitizer_cov_trace_pc() #10
  br label %begin_cull

sw.bb:                                            ; preds = %stop_and_begin_cull
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i168 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_no_write_space, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @fscache_n_no_write_space, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_no_write_space, ptr nonnull @fscache_n_no_write_space, i32 1, ptr nonnull elementtype(i32) @fscache_n_no_write_space) #8, !srcloc !117
  br label %begin_cull

sw.bb94:                                          ; preds = %stop_and_begin_cull
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i169 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_no_create_space, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @fscache_n_no_create_space, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_no_create_space, ptr nonnull @fscache_n_no_create_space, i32 1, ptr nonnull elementtype(i32) @fscache_n_no_create_space) #8, !srcloc !117
  br label %begin_cull

begin_cull:                                       ; preds = %sw.bb94, %sw.bb, %stop_and_begin_cull.begin_cull_crit_edge, %lor.lhs.false58.begin_cull_crit_edge, %if.end54.begin_cull_crit_edge
  %ret.0 = phi i32 [ -105, %stop_and_begin_cull.begin_cull_crit_edge ], [ -105, %sw.bb94 ], [ -105, %sw.bb ], [ 0, %if.end54.begin_cull_crit_edge ], [ 0, %lor.lhs.false58.begin_cull_crit_edge ]
  %flags95 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  %call96 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags95) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.body99, label %begin_cull.do.body116_crit_edge

begin_cull.do.body116_crit_edge:                  ; preds = %begin_cull
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body116

do.body99:                                        ; preds = %begin_cull
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %52 = load i32, ptr @cachefiles_debug, align 4
  %and100 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.end114_crit_edge, label %do.end105

do.body99.do.end114_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i171 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i171 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task108, align 8
  %comm109 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 101
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %comm109) #11
  br label %do.end114

do.end114:                                        ; preds = %do.end105, %do.body99.do.end114_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %flags95) #8
  %daemon_pollwq.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 10
  call void @__wake_up(ptr noundef %daemon_pollwq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %do.body116

do.body116:                                       ; preds = %do.end114, %begin_cull.do.body116_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %57 = load i32, ptr @cachefiles_debug, align 4
  %and117 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body116.cleanup_crit_edge, label %do.end122

do.body116.cleanup_crit_edge:                     ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #10
  %58 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i172 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i172 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task125, align 8
  %comm126 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 101
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm126, ptr noundef nonnull @.str.30, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %do.body116.cleanup_crit_edge, %do.end92, %land.lhs.true72.cleanup_crit_edge, %land.lhs.true69.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end16, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end16 ], [ %call, %do.body12.cleanup_crit_edge ], [ 0, %do.end92 ], [ 0, %land.lhs.true72.cleanup_crit_edge ], [ 0, %land.lhs.true69.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ %ret.0, %do.end122 ], [ %ret.0, %do.body116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %stats) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_put_directory(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_relinquish_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_vfs_error(ptr noundef %backer, i32 noundef %error) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_vfs_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !118

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !119

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %call42 = tail call i32 @__traceiter_cachefiles_vfs_error(ptr noundef null, ptr noundef null, ptr noundef %backer, i32 noundef %error, i32 noundef 12) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !119

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cachefiles_vfs_error.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cachefiles_vfs_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 645, ptr noundef nonnull @.str.45) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %31 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_io_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cachefiles_state_changed(ptr noundef %cache) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #8
  %daemon_pollwq = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %daemon_pollwq, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cachefiles_withdraw_cache(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %name = getelementptr inbounds %struct.fscache_cache, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %3) #11
  tail call void @fscache_withdraw_cache(ptr noundef %1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %4 = load i32, ptr @cachefiles_debug, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.47) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %object_list_lock.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %object_list_lock.i) #8
  %object_list.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 6
  %9 = ptrtoint ptr %object_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %object_list.i, align 4
  %cmp.i.not43.i = icmp eq ptr %10, %object_list.i
  br i1 %cmp.i.not43.i, label %do.end4.i.while.end.i_crit_edge, label %do.end4.i.while.body.i_crit_edge

do.end4.i.while.body.i_crit_edge:                 ; preds = %do.end4.i
  br label %while.body.i

do.end4.i.while.end.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %do.end4.i.while.body.i_crit_edge
  %11 = phi ptr [ %23, %if.end15.i.while.body.i_crit_edge ], [ %10, %do.end4.i.while.body.i_crit_edge ]
  %count.044.i = phi i32 [ %inc.i, %if.end15.i.while.body.i_crit_edge ], [ 0, %do.end4.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %11, i32 -8
  tail call void @cachefiles_see_object(ptr noundef %add.ptr.i, i32 noundef 11) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void @fscache_withdraw_cookie(ptr noundef %21) #8
  %inc.i = add i32 %count.044.i, 1
  %and9.i = and i32 %inc.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 0
  br i1 %cmp.i, label %if.then10.i, label %list_del_init.exit.i.if.end15.i_crit_edge

list_del_init.exit.i.if.end15.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then10.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %object_list_lock.i) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 0) #8
  %call.i.i = tail call i32 @__cond_resched() #8
  tail call void @_raw_spin_lock(ptr noundef %object_list_lock.i) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %list_del_init.exit.i.if.end15.i_crit_edge
  %22 = ptrtoint ptr %object_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %object_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %object_list.i
  br i1 %cmp.i.not.i, label %if.end15.i.while.end.i_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end15.i.while.end.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end15.i.while.end.i_crit_edge, %do.end4.i.while.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %do.end4.i.while.end.i_crit_edge ], [ %inc.i, %if.end15.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %object_list_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %24 = load i32, ptr @cachefiles_debug, align 4
  %and18.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %while.end.i.cachefiles_withdraw_objects.exit_crit_edge, label %do.end23.i

while.end.i.cachefiles_withdraw_objects.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_withdraw_objects.exit

do.end23.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i42.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i42.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task26.i, align 8
  %comm27.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %comm27.i, ptr noundef nonnull @.str.47, i32 noundef %count.0.lcssa.i) #11
  br label %cachefiles_withdraw_objects.exit

cachefiles_withdraw_objects.exit:                 ; preds = %do.end23.i, %while.end.i.cachefiles_withdraw_objects.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 183) #8
  %object_count.i = getelementptr inbounds %struct.fscache_cache, ptr %1, i32 0, i32 6
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %object_count.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %object_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %object_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i11 = icmp eq i32 %30, 0
  br i1 %cmp.i11, label %cachefiles_withdraw_objects.exit.fscache_wait_for_objects.exit_crit_edge, label %if.end.i

cachefiles_withdraw_objects.exit.fscache_wait_for_objects.exit_crit_edge: ; preds = %cachefiles_withdraw_objects.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscache_wait_for_objects.exit

if.end.i:                                         ; preds = %cachefiles_withdraw_objects.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %31 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %call415.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @fscache_clearance_waiters, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %call.i.i1216.i = call zeroext i1 @__kasan_check_read(ptr noundef %object_count.i, i32 noundef 4) #8
  %32 = ptrtoint ptr %object_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %object_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp717.i = icmp eq i32 %33, 0
  br i1 %cmp717.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #8
  %call4.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @fscache_clearance_waiters, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %call.i.i12.i = call zeroext i1 @__kasan_check_read(ptr noundef %object_count.i, i32 noundef 4) #8
  %34 = ptrtoint ptr %object_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %object_count.i, align 4
  %cmp7.i = icmp eq i32 %35, 0
  br i1 %cmp7.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef nonnull @fscache_clearance_waiters, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %fscache_wait_for_objects.exit

fscache_wait_for_objects.exit:                    ; preds = %for.end.i, %cachefiles_withdraw_objects.exit.fscache_wait_for_objects.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %36 = load i32, ptr @cachefiles_debug, align 4
  %and.i12 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %fscache_wait_for_objects.exit.do.end3.i_crit_edge, label %do.end.i18

fscache_wait_for_objects.exit.do.end3.i_crit_edge: ; preds = %fscache_wait_for_objects.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i18:                                       ; preds = %fscache_wait_for_objects.exit
  call void @__sanitizer_cov_trace_pc() #10
  %37 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i14 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i14 to ptr
  %task.i15 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i15, align 8
  %comm.i16 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 101
  %call2.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i16, ptr noundef nonnull @.str.52) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i18, %fscache_wait_for_objects.exit.do.end3.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %object_list_lock.i) #8
  %volumes.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 5
  %41 = ptrtoint ptr %volumes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %volumes.i, align 4
  %cmp.i.not39.i = icmp eq ptr %42, %volumes.i
  br i1 %cmp.i.not39.i, label %do.end3.i.if.end9.thread.i_crit_edge, label %do.end3.i.if.then6.i_crit_edge

do.end3.i.if.then6.i_crit_edge:                   ; preds = %do.end3.i
  br label %if.then6.i

do.end3.i.if.end9.thread.i_crit_edge:             ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.thread.i

if.end9.thread.i:                                 ; preds = %cleanup.i27.if.end9.thread.i_crit_edge, %do.end3.i.if.end9.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %object_list_lock.i) #8
  br label %do.body14.i

if.then6.i:                                       ; preds = %cleanup.i27.if.then6.i_crit_edge, %do.end3.i.if.then6.i_crit_edge
  %43 = phi ptr [ %53, %cleanup.i27.if.then6.i_crit_edge ], [ %42, %do.end3.i.if.then6.i_crit_edge ]
  %add.ptr.i20 = getelementptr i8, ptr %43, i32 -4
  %call.i.i.i21 = call zeroext i1 @__list_del_entry_valid(ptr noundef %43) #8
  br i1 %call.i.i.i21, label %if.end.i.i.i24, label %if.then6.i.if.end9.i_crit_edge

if.then6.i.if.end9.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end.i.i.i24:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i22, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %prev1.i.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i23, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.i.i24, %if.then6.i.if.end9.i_crit_edge
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %43, ptr %43, align 4
  %prev.i3.i.i25 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i.i25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %43, ptr %prev.i3.i.i25, align 4
  call void @_raw_spin_unlock(ptr noundef %object_list_lock.i) #8
  %tobool11.not.i = icmp eq ptr %add.ptr.i20, null
  br i1 %tobool11.not.i, label %if.end9.i.do.body14.i_crit_edge, label %cleanup.i27

if.end9.i.do.body14.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

cleanup.i27:                                      ; preds = %if.end9.i
  call void @cachefiles_withdraw_volume(ptr noundef nonnull %add.ptr.i20) #8
  call void @_raw_spin_lock(ptr noundef %object_list_lock.i) #8
  %52 = ptrtoint ptr %volumes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %volumes.i, align 4
  %cmp.i.not.i26 = icmp eq ptr %53, %volumes.i
  br i1 %cmp.i.not.i26, label %cleanup.i27.if.end9.thread.i_crit_edge, label %cleanup.i27.if.then6.i_crit_edge

cleanup.i27.if.then6.i_crit_edge:                 ; preds = %cleanup.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

cleanup.i27.if.end9.thread.i_crit_edge:           ; preds = %cleanup.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.thread.i

do.body14.i:                                      ; preds = %if.end9.i.do.body14.i_crit_edge, %if.end9.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %54 = load i32, ptr @cachefiles_debug, align 4
  %and15.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.cachefiles_withdraw_volumes.exit_crit_edge, label %do.end19.i

do.body14.i.cachefiles_withdraw_volumes.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_withdraw_volumes.exit

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i33.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i33.i to ptr
  %task22.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task22.i, align 8
  %comm23.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 101
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm23.i, ptr noundef nonnull @.str.52) #11
  br label %cachefiles_withdraw_volumes.exit

cachefiles_withdraw_volumes.exit:                 ; preds = %do.end19.i, %do.body14.i.cachefiles_withdraw_volumes.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %59 = load i32, ptr @cachefiles_debug, align 4
  %and.i28 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i29 = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i29, label %cachefiles_withdraw_volumes.exit.do.end5.i_crit_edge, label %do.end.i33

cachefiles_withdraw_volumes.exit.do.end5.i_crit_edge: ; preds = %cachefiles_withdraw_volumes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i33:                                       ; preds = %cachefiles_withdraw_volumes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %60 = call i32 @llvm.read_register.i32(metadata !102) #8
  %and.i.i30 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i30 to ptr
  %task.i31 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i31, align 8
  %comm.i32 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 101
  %64 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cache, align 8
  %name.i = getelementptr inbounds %struct.fscache_cache, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %comm.i32, ptr noundef nonnull @.str.57, ptr noundef %67) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i33, %cachefiles_withdraw_volumes.exit.do.end5.i_crit_edge
  %cache_cred.i.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 8
  %68 = ptrtoint ptr %cache_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cache_cred.i.i, align 8
  %call.i.i34 = call ptr @override_creds(ptr noundef %69) #8
  %mnt.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  %70 = ptrtoint ptr %mnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mnt.i, align 4
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mnt_sb.i, align 4
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 14
  call void @down_read(ptr noundef %s_umount.i) #8
  %74 = ptrtoint ptr %mnt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mnt.i, align 4
  %mnt_sb7.i = getelementptr inbounds %struct.vfsmount, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %mnt_sb7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mnt_sb7.i, align 4
  %call8.i = call i32 @sync_filesystem(ptr noundef %77) #8
  %78 = ptrtoint ptr %mnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mnt.i, align 4
  %mnt_sb10.i = getelementptr inbounds %struct.vfsmount, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %mnt_sb10.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mnt_sb10.i, align 4
  %s_umount11.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 14
  call void @up_read(ptr noundef %s_umount11.i) #8
  call void @revert_creds(ptr noundef %call.i.i34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call8.i)
  %cmp.i35 = icmp eq i32 %call8.i, -5
  br i1 %cmp.i35, label %do.end16.i, label %do.end5.i.cachefiles_sync_cache.exit_crit_edge

do.end5.i.cachefiles_sync_cache.exit_crit_edge:   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_sync_cache.exit

do.end16.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef -5) #11
  %82 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %83) #8
  %flags.i = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #8
  br label %cachefiles_sync_cache.exit

cachefiles_sync_cache.exit:                       ; preds = %do.end16.i, %do.end5.i.cachefiles_sync_cache.exit_crit_edge
  %84 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %cache, align 8
  call void @fscache_relinquish_cache(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_withdraw_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_vfs_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_see_object(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_withdraw_cookie(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_withdraw_volume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/cache.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_add_cache._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_add_cache._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/cache.c", i32 48, i32 3}
!8 = !{ptr @cachefiles_add_cache._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_add_cache._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/cachefiles/cache.c", i32 97, i32 2}
!12 = !{ptr @cachefiles_add_cache._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cachefiles_add_cache._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/cachefiles/cache.c", i32 100, i32 2}
!16 = !{ptr @cachefiles_add_cache._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cachefiles_add_cache._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/cachefiles/cache.c", i32 110, i32 2}
!20 = !{ptr @cachefiles_add_cache._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cachefiles_add_cache._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/cachefiles/cache.c", i32 120, i32 2}
!24 = !{ptr @cachefiles_add_cache._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cachefiles_add_cache._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/cachefiles/cache.c", i32 126, i32 51}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/cachefiles/cache.c", i32 135, i32 52}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/cachefiles/cache.c", i32 152, i32 2}
!32 = !{ptr @cachefiles_add_cache._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cachefiles_add_cache._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/cachefiles/cache.c", i32 157, i32 2}
!36 = !{ptr @cachefiles_add_cache._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cachefiles_add_cache._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/cachefiles/cache.c", i32 174, i32 2}
!40 = !{ptr @cachefiles_add_cache._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cachefiles_add_cache._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/cachefiles/cache.c", i32 212, i32 4}
!44 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cachefiles_has_space._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cachefiles_has_space._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/cachefiles/cache.c", i32 213, i32 3}
!49 = !{ptr @cachefiles_has_space._entry.31, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cachefiles_has_space._entry_ptr.33, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/cachefiles/cache.c", i32 254, i32 3}
!53 = !{ptr @cachefiles_has_space._entry.34, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cachefiles_has_space._entry_ptr.36, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/cachefiles/cache.c", i32 274, i32 3}
!57 = !{ptr @cachefiles_has_space._entry.37, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cachefiles_has_space._entry_ptr.39, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cachefiles_has_space._entry.40, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../fs/cachefiles/cache.c", i32 278, i32 2}
!61 = !{ptr @cachefiles_has_space._entry_ptr.41, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.42, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/cachefiles/cache.c", i32 369, i32 2}
!64 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cachefiles_withdraw_cache._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @cachefiles_withdraw_cache._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/cachefiles.h", i32 620, i32 1}
!69 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!71 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!74 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/cachefiles/cache.c", i32 290, i32 2}
!77 = !{ptr @cachefiles_withdraw_objects._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cachefiles_withdraw_objects._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/cachefiles/cache.c", i32 309, i32 2}
!81 = !{ptr @cachefiles_withdraw_objects._entry.48, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cachefiles_withdraw_objects._entry_ptr.50, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/fscache-cache.h", i32 182, i32 2}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/cachefiles/cache.c", i32 317, i32 2}
!87 = !{ptr @cachefiles_withdraw_volumes._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cachefiles_withdraw_volumes._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/cachefiles/cache.c", i32 335, i32 2}
!91 = !{ptr @cachefiles_withdraw_volumes._entry.53, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cachefiles_withdraw_volumes._entry_ptr.55, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/cachefiles/cache.c", i32 346, i32 2}
!95 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cachefiles_sync_cache._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @cachefiles_sync_cache._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cachefiles/cache.c", i32 357, i32 3}
!100 = !{ptr @cachefiles_sync_cache._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cachefiles_sync_cache._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i64 2152821153}
!114 = !{i32 0, i32 33}
!115 = !{i64 952639, i64 952666, i64 952688, i64 952716}
!116 = !{i64 953047, i64 953074, i64 953107, i64 953128, i64 953155, i64 953181}
!117 = !{i64 2148588398, i64 2148588424, i64 2148588453, i64 2148588487, i64 2148588518, i64 2148588541}
!118 = !{i64 2148209124, i64 2148209129, i64 2148209142, i64 2148209186, i64 2148209220, i64 2148209241}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2155149310}
!121 = !{i64 2155149563}
!122 = !{i64 2149933828}
!123 = !{i64 2149934864}
