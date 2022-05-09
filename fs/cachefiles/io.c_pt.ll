; ModuleID = '/llk/IR_all_yes/fs/cachefiles/io.c_pt.bc'
source_filename = "../fs/cachefiles/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netfs_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.82, %union.anon.83 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { ptr, [12 x i8] }
%union.anon.83 = type { ptr, [4 x i8] }
%struct.cachefiles_object = type { ptr, ptr, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.refcount_struct, i8, i8, i32 }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon, %union.anon.73 }
%union.anon = type { ptr }
%union.anon.73 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.78 = type { ptr }
%struct.cachefiles_kiocb = type { %struct.kiocb, %struct.refcount_struct, i64, %union.anon.84, ptr, ptr, ptr, i8, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%union.anon.84 = type { i32 }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.hlist_head = type { ptr }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }

@cachefiles_netfs_cache_ops = internal constant { %struct.netfs_cache_ops, [36 x i8] } { %struct.netfs_cache_ops { ptr @cachefiles_end_operation, ptr @cachefiles_read, ptr @cachefiles_write, ptr null, ptr @cachefiles_prepare_read, ptr @cachefiles_prepare_write, ptr @cachefiles_query_occupancy }, [36 x i8] zeroinitializer }, align 32
@cachefiles_begin_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CacheFiles: failed to get cres->file\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_begin_operation\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/cachefiles/io.c\00", [45 x i8] zeroinitializer }, align 32
@cachefiles_begin_operation._entry_ptr = internal global ptr @cachefiles_begin_operation._entry, section ".printk_index", align 4
@fscache_n_read = external dso_local global %struct.atomic_t, align 4
@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017[%-6.6s] ==> %s(%pD,%li,%llx,%zx/%llx)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cachefiles_read\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_read._entry_ptr = internal global ptr @cachefiles_read._entry, section ".printk_index", align 4
@cachefiles_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017[%-6.6s] <== %s() = %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_read._entry_ptr.7 = internal global ptr @cachefiles_read._entry.5, section ".printk_index", align 4
@cachefiles_error_injection_state = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cachefiles_read_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017[%-6.6s] ==> %s(%ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_read_complete\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_read_complete._entry_ptr = internal global ptr @cachefiles_read_complete._entry, section ".printk_index", align 4
@__tracepoint_cachefiles_io_error = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/cachefiles.h\00", [62 x i8] zeroinitializer }, align 32
@trace_cachefiles_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_cachefiles_read = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fscache_n_write = external dso_local global %struct.atomic_t, align 4
@cachefiles_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.13, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cachefiles_write\00", [47 x i8] zeroinitializer }, align 32
@cachefiles_write._entry_ptr = internal global ptr @cachefiles_write._entry, section ".printk_index", align 4
@cachefiles_write._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_write._entry_ptr.15 = internal global ptr @cachefiles_write._entry.14, section ".printk_index", align 4
@cachefiles_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.16, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_write_complete\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_write_complete._entry_ptr = internal global ptr @cachefiles_write_complete._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_cachefiles_write = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_prepare_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017[%-6.6s] ==> %s(%zx @%llx/%llx)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_prepare_read\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_prepare_read._entry_ptr = internal global ptr @cachefiles_prepare_read._entry, section ".printk_index", align 4
@__tracepoint_cachefiles_prep_read = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_prep_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fscache_n_no_write_space = external dso_local global %struct.atomic_t, align 4
@__cachefiles_prepare_write._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 554, ptr null, ptr null }, align 1
@.str.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013CacheFiles: I/O Error: CacheFiles: fallocate failed (%d)\0A [o=%08x]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__cachefiles_prepare_write\00", [37 x i8] zeroinitializer }, align 32
@__cachefiles_prepare_write._entry_ptr = internal global ptr @__cachefiles_prepare_write._entry, section ".printk_index", align 4
@cachefiles_query_occupancy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.24, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_query_occupancy\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_query_occupancy._entry_ptr = internal global ptr @cachefiles_query_occupancy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4294966767, i64 4294966780, i64 4294966782, i64 4294966783, i64 4294966784]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 4294966767, i64 4294966780, i64 4294966782, i64 4294966783, i64 4294966784]
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"cachefiles_netfs_cache_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 600, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 628, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 94, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 185, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 50, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 647, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 108, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 303, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 372, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 261, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 34, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 49, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 400, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 553, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [22 x i8] c"../fs/cachefiles/io.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 216, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__cachefiles_prepare_write._entry, ptr @__cachefiles_prepare_write._entry_ptr, ptr @cachefiles_begin_operation._entry, ptr @cachefiles_begin_operation._entry_ptr, ptr @cachefiles_prepare_read._entry, ptr @cachefiles_prepare_read._entry_ptr, ptr @cachefiles_query_occupancy._entry, ptr @cachefiles_query_occupancy._entry_ptr, ptr @cachefiles_read._entry, ptr @cachefiles_read._entry.5, ptr @cachefiles_read._entry_ptr, ptr @cachefiles_read._entry_ptr.7, ptr @cachefiles_read_complete._entry, ptr @cachefiles_read_complete._entry_ptr, ptr @cachefiles_write._entry, ptr @cachefiles_write._entry.14, ptr @cachefiles_write._entry_ptr, ptr @cachefiles_write._entry_ptr.15, ptr @cachefiles_write_complete._entry, ptr @cachefiles_write_complete._entry_ptr, ptr @cachefiles_netfs_cache_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_netfs_cache_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_begin_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_read_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_write._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_prepare_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_query_occupancy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cachefiles_begin_operation(ptr nocapture noundef %cres, i32 noundef %want_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_priv.i.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %0 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_priv.i, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %4 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_priv2.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %cres to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cachefiles_netfs_cache_ops, ptr %cres, align 4
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.then.if.end13_crit_edge, label %if.then3

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then3:                                         ; preds = %if.then
  %lock = getelementptr inbounds %struct.cachefiles_object, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %9 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache_priv2.i, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %if.then3
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %f_count.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #9, !srcloc !80
  %14 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %cache_priv2.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %if.then3.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %15 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache_priv2.i, align 4
  %tobool15.not = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_state)
  %cmp.not = icmp eq i32 %want_state, 0
  %or.cond = or i1 %cmp.not, %tobool15.not
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge
  ret i1 %or.cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_end_operation(ptr nocapture noundef readonly %cres) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %0 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv2.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cache_priv.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %2 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_priv.i, align 4
  tail call void @fscache_end_cookie_access(ptr noundef %3, i32 noundef 6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_read(ptr noundef %cres, i64 noundef %start_pos, ptr noundef %iter, i32 noundef %read_hole, ptr noundef %term_func, ptr noundef %term_func_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %call1 = tail call zeroext i1 @fscache_wait_for_operation(ptr noundef %cres, i32 noundef 2) #9
  br i1 %call1, label %if.end, label %entry.presubmission_error_crit_edge

entry.presubmission_error_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %presubmission_error

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_read, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_read, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_read, ptr nonnull @fscache_n_read, i32 1, ptr nonnull elementtype(i32) @fscache_n_read) #9, !srcloc !80
  %cache_priv.i.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %3 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_cookie, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache_priv.i, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %7 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cache_priv2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %9 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end13_crit_edge, label %do.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 101
  %f_inode.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %15)
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %17, i64 noundef %start_pos, i32 noundef %1, i64 noundef %call9) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_hole)
  %cmp.not = icmp eq i32 %read_hole, 0
  br i1 %cmp.not, label %do.end13.if.end46_crit_edge, label %if.then14

do.end13.if.end46_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then14:                                        ; preds = %do.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %18 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i190 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i = icmp eq i32 %and.i190, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -5
  %conv = sext i32 %cond.i to i64
  br i1 %tobool.not.i, label %if.then18, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i64 @vfs_llseek(ptr noundef %8, i64 noundef %start_pos, i32 noundef 3) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14.if.end20_crit_edge
  %off2.0 = phi i64 [ %call19, %if.then18 ], [ %conv, %if.then14.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4095, i64 %off2.0)
  %19 = icmp ult i64 %off2.0, -4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %off2.0)
  %cmp26.not = icmp eq i64 %off2.0, -6
  %or.cond187 = or i1 %19, %cmp26.not
  br i1 %or.cond187, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = trunc i64 %off2.0 to i32
  br label %presubmission_error

if.end30:                                         ; preds = %if.end20
  br i1 %cmp26.not, label %if.end30.if.then36_crit_edge, label %lor.lhs.false

if.end30.if.then36_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end30
  %conv33 = zext i32 %1 to i64
  %add = add i64 %conv33, %start_pos
  call void @__sanitizer_cov_trace_cmp8(i64 %off2.0, i64 %add)
  %cmp34.not = icmp slt i64 %off2.0, %add
  br i1 %cmp34.not, label %cleanup, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end30.if.then36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %read_hole)
  %cmp37 = icmp eq i32 %read_hole, 2
  br i1 %cmp37, label %if.then36.presubmission_error_crit_edge, label %if.end40

if.then36.presubmission_error_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %presubmission_error

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 @iov_iter_zero(i32 noundef %1, ptr noundef %iter) #9
  br label %presubmission_error

cleanup:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %off2.0, %start_pos
  %conv43 = trunc i64 %sub to i32
  %call44 = tail call i32 @iov_iter_zero(i32 noundef %conv43, ptr noundef %iter) #9
  br label %if.end46

if.end46:                                         ; preds = %cleanup, %do.end13.if.end46_crit_edge
  %skipped.1 = phi i32 [ %conv43, %cleanup ], [ 0, %do.end13.if.end46_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 88) #13
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %if.end46.presubmission_error_crit_edge, label %if.end50

if.end46.presubmission_error_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %presubmission_error

if.end50:                                         ; preds = %if.end46
  %ki_refcnt = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt, i32 noundef 4) #9
  %21 = ptrtoint ptr %ki_refcnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 2, ptr %ki_refcnt, align 8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %8, ptr %call7.i.i, align 8
  %conv51 = zext i32 %skipped.1 to i64
  %add52 = add i64 %conv51, %start_pos
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add52, ptr %ki_pos, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %ki_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 131072, ptr %ki_flags, align 8
  %f_write_hint.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 5
  %25 = ptrtoint ptr %f_write_hint.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_write_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end50.file_write_hint.exit_crit_edge

if.end50.file_write_hint.exit_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_write_hint.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %27 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_inode.i.i, align 8
  %i_write_hint.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %i_write_hint.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i_write_hint.i, align 1
  %conv.i = zext i8 %30 to i32
  br label %file_write_hint.exit

file_write_hint.exit:                             ; preds = %if.end.i, %if.end50.file_write_hint.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %26, %if.end50.file_write_hint.exit_crit_edge ]
  %31 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 65536) #9
  %32 = trunc i32 %31 to i16
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %ki_hint to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ki_hint, align 4
  %34 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 151
  %38 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_context.i, align 8
  %tobool.not.i191 = icmp eq ptr %39, null
  br i1 %tobool.not.i191, label %file_write_hint.exit.get_current_ioprio.exit_crit_edge, label %if.then.i

file_write_hint.exit.get_current_ioprio.exit_crit_edge: ; preds = %file_write_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_ioprio.exit

if.then.i:                                        ; preds = %file_write_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioprio.i = getelementptr inbounds %struct.io_context, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ioprio.i, align 4
  br label %get_current_ioprio.exit

get_current_ioprio.exit:                          ; preds = %if.then.i, %file_write_hint.exit.get_current_ioprio.exit_crit_edge
  %retval.0.i193 = phi i16 [ %41, %if.then.i ], [ 16388, %file_write_hint.exit.get_current_ioprio.exit_crit_edge ]
  %ki_ioprio = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %retval.0.i193, ptr %ki_ioprio, align 2
  %43 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %skipped.1, ptr %43, align 8
  %object61 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %object61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %6, ptr %object61, align 4
  %inval_counter = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 4
  %46 = ptrtoint ptr %inval_counter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inval_counter, align 4
  %inval_counter62 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %inval_counter62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %inval_counter62, align 4
  %term_func63 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %term_func63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %term_func, ptr %term_func63, align 8
  %term_func_priv64 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %term_func_priv64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %term_func_priv, ptr %term_func_priv64, align 4
  %was_async = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %was_async to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %was_async, align 8
  %tobool66.not = icmp eq ptr %term_func, null
  br i1 %tobool66.not, label %get_current_ioprio.exit.if.end69_crit_edge, label %if.then67

get_current_ioprio.exit.if.end69_crit_edge:       ; preds = %get_current_ioprio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then67:                                        ; preds = %get_current_ioprio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %ki_complete to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @cachefiles_read_complete, ptr %ki_complete, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %get_current_ioprio.exit.if.end69_crit_edge
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call7.i.i, align 8
  %f_count.i = getelementptr inbounds %struct.file, ptr %54, i32 0, i32 6
  %call.i.i.i194 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #9, !srcloc !80
  %call73 = tail call ptr @cachefiles_grab_object(ptr noundef %6, i32 noundef 0) #9
  %f_inode.i195 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %56 = ptrtoint ptr %f_inode.i195 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_inode.i195, align 8
  %58 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %ki_pos, align 8
  %sub77 = sub i32 %1, %skipped.1
  tail call fastcc void @trace_cachefiles_read(ptr noundef %6, ptr noundef %57, i64 noundef %59, i32 noundef %sub77)
  %60 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i196 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i196 to ptr
  %task.i197 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i197, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags1.i, align 4
  %and.i198 = and i32 %65, 262144
  %or.i = or i32 %65, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %66 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i199 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199)
  %tobool.not.i200 = icmp eq i32 %and.i199, 0
  br i1 %tobool.not.i200, label %if.end85, label %if.end85.thread

if.end85.thread:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %67 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i202217 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i202217 to ptr
  %task.i203218 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i203218 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i203218, align 8
  %flags1.i204219 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %flags1.i204219 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags1.i204219, align 4
  %and.i205220 = and i32 %72, -262145
  %or.i206221 = or i32 %and.i205220, %and.i198
  store i32 %or.i206221, ptr %flags1.i204219, align 4
  br label %sw.default

if.end85:                                         ; preds = %if.end69
  %call84 = tail call i32 @vfs_iocb_iter_read(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef %iter) #9
  %73 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i202 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i202 to ptr
  %task.i203 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i203 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i203, align 8
  %flags1.i204 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %flags1.i204 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags1.i204, align 4
  %and.i205 = and i32 %78, -262145
  %or.i206 = or i32 %and.i205, %and.i198
  store i32 %or.i206, ptr %flags1.i204, align 4
  %79 = zext i32 %call84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call84, label %if.end85.sw.default_crit_edge [
    i32 -529, label %if.end85.in_progress_crit_edge
    i32 -512, label %if.end85.sw.default.thread_crit_edge
    i32 -513, label %if.end85.sw.default.thread_crit_edge223
    i32 -514, label %if.end85.sw.default.thread_crit_edge224
    i32 -516, label %if.end85.sw.default.thread_crit_edge225
  ]

if.end85.sw.default.thread_crit_edge225:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.thread

if.end85.sw.default.thread_crit_edge224:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.thread

if.end85.sw.default.thread_crit_edge223:          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.thread

if.end85.sw.default.thread_crit_edge:             ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.thread

if.end85.in_progress_crit_edge:                   ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_progress

if.end85.sw.default_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default.thread:                                ; preds = %if.end85.sw.default.thread_crit_edge, %if.end85.sw.default.thread_crit_edge223, %if.end85.sw.default.thread_crit_edge224, %if.end85.sw.default.thread_crit_edge225
  %80 = ptrtoint ptr %was_async to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %was_async, align 8
  tail call void @cachefiles_read_complete(ptr noundef nonnull %call7.i.i, i32 noundef -4)
  br label %in_progress

sw.default:                                       ; preds = %if.end85.sw.default_crit_edge, %if.end85.thread
  %ret.1222 = phi i32 [ -5, %if.end85.thread ], [ %call84, %if.end85.sw.default_crit_edge ]
  %81 = ptrtoint ptr %was_async to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %was_async, align 8
  tail call void @cachefiles_read_complete(ptr noundef nonnull %call7.i.i, i32 noundef %ret.1222)
  %82 = tail call i32 @llvm.smin.i32(i32 %ret.1222, i32 0)
  br label %in_progress

in_progress:                                      ; preds = %sw.default, %sw.default.thread, %if.end85.in_progress_crit_edge
  %ret.3 = phi i32 [ %call84, %if.end85.in_progress_crit_edge ], [ -4, %sw.default.thread ], [ %82, %sw.default ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ki_refcnt, i32 1, i32 3, i32 1) #9
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ki_refcnt, ptr %ki_refcnt, i32 1, ptr elementtype(i32) %ki_refcnt) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i207, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %in_progress
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_put_kiocb.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ki_refcnt, i32 noundef 3) #9
  br label %cachefiles_put_kiocb.exit

if.then.i207:                                     ; preds = %in_progress
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %84 = ptrtoint ptr %object61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %object61, align 4
  tail call void @cachefiles_put_object(ptr noundef %85, i32 noundef 4) #9
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call7.i.i, align 8
  tail call void @fput(ptr noundef %87) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cachefiles_put_kiocb.exit

cachefiles_put_kiocb.exit:                        ; preds = %if.then.i207, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %88 = load i32, ptr @cachefiles_debug, align 4
  %and94 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %cachefiles_put_kiocb.exit.cleanup114_crit_edge, label %do.end99

cachefiles_put_kiocb.exit.cleanup114_crit_edge:   ; preds = %cachefiles_put_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

do.end99:                                         ; preds = %cachefiles_put_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %89 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i209 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i209 to ptr
  %task102 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task102 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task102, align 8
  %comm103 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 101
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm103, ptr noundef nonnull @.str.4, i32 noundef %ret.3) #12
  br label %cleanup114

presubmission_error:                              ; preds = %if.end46.presubmission_error_crit_edge, %if.end40, %if.then36.presubmission_error_crit_edge, %if.then28, %entry.presubmission_error_crit_edge
  %ret.4 = phi i32 [ -12, %if.end46.presubmission_error_crit_edge ], [ -105, %entry.presubmission_error_crit_edge ], [ -61, %if.then36.presubmission_error_crit_edge ], [ 0, %if.end40 ], [ %conv29, %if.then28 ]
  %skipped.2 = phi i32 [ %skipped.1, %if.end46.presubmission_error_crit_edge ], [ 0, %entry.presubmission_error_crit_edge ], [ 0, %if.then36.presubmission_error_crit_edge ], [ %1, %if.end40 ], [ 0, %if.then28 ]
  %tobool109.not = icmp eq ptr %term_func, null
  br i1 %tobool109.not, label %presubmission_error.cleanup114_crit_edge, label %if.then110

presubmission_error.cleanup114_crit_edge:         ; preds = %presubmission_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

if.then110:                                       ; preds = %presubmission_error
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp111 = icmp slt i32 %ret.4, 0
  %ret.4.skipped.2 = select i1 %cmp111, i32 %ret.4, i32 %skipped.2
  tail call void %term_func(ptr noundef %term_func_priv, i32 noundef %ret.4.skipped.2, i1 noundef zeroext false) #9
  br label %cleanup114

cleanup114:                                       ; preds = %if.then110, %presubmission_error.cleanup114_crit_edge, %do.end99, %cachefiles_put_kiocb.exit.cleanup114_crit_edge
  %retval.0 = phi i32 [ %ret.3, %do.end99 ], [ %ret.3, %cachefiles_put_kiocb.exit.cleanup114_crit_edge ], [ %ret.4, %if.then110 ], [ %ret.4, %presubmission_error.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_write(ptr noundef %cres, i64 noundef %start_pos, ptr noundef %iter, ptr noundef %term_func, ptr noundef %term_func_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %call1 = tail call zeroext i1 @fscache_wait_for_operation(ptr noundef %cres, i32 noundef 1) #9
  br i1 %call1, label %if.end, label %entry.presubmission_error_crit_edge

entry.presubmission_error_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %presubmission_error

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_write, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_write, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_write, ptr nonnull @fscache_n_write, i32 1, ptr nonnull elementtype(i32) @fscache_n_write) #9, !srcloc !80
  %cache_priv.i.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %3 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_cookie, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache_priv.i, align 4
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %volume, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %11 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache_priv2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %13 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end14_crit_edge, label %do.end

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %f_inode.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %call10 = tail call fastcc i64 @i_size_read(ptr noundef %19)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.13, ptr noundef %12, i32 noundef %21, i64 noundef %start_pos, i32 noundef %1, i64 noundef %call10) #12
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end.do.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 88) #13
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end14.presubmission_error_crit_edge, label %if.end18

do.end14.presubmission_error_crit_edge:           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %presubmission_error

if.end18:                                         ; preds = %do.end14
  %ki_refcnt = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt, i32 noundef 4) #9
  %23 = ptrtoint ptr %ki_refcnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 2, ptr %ki_refcnt, align 8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %12, ptr %call7.i.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %start_pos, ptr %ki_pos, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %ki_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 393216, ptr %ki_flags, align 8
  %f_write_hint.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 5
  %27 = ptrtoint ptr %f_write_hint.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f_write_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end18.file_write_hint.exit_crit_edge

if.end18.file_write_hint.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_write_hint.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %29 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i.i, align 8
  %i_write_hint.i = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %i_write_hint.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i_write_hint.i, align 1
  %conv.i = zext i8 %32 to i32
  br label %file_write_hint.exit

file_write_hint.exit:                             ; preds = %if.end.i, %if.end18.file_write_hint.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ %28, %if.end18.file_write_hint.exit_crit_edge ]
  %33 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 65536) #9
  %34 = trunc i32 %33 to i16
  %ki_hint = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %ki_hint to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %ki_hint, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 151
  %40 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_context.i, align 8
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %file_write_hint.exit.get_current_ioprio.exit_crit_edge, label %if.then.i

file_write_hint.exit.get_current_ioprio.exit_crit_edge: ; preds = %file_write_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_ioprio.exit

if.then.i:                                        ; preds = %file_write_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioprio.i = getelementptr inbounds %struct.io_context, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ioprio.i, align 4
  br label %get_current_ioprio.exit

get_current_ioprio.exit:                          ; preds = %if.then.i, %file_write_hint.exit.get_current_ioprio.exit_crit_edge
  %retval.0.i147 = phi i16 [ %43, %if.then.i ], [ 16388, %file_write_hint.exit.get_current_ioprio.exit_crit_edge ]
  %ki_ioprio = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %ki_ioprio to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %retval.0.i147, ptr %ki_ioprio, align 2
  %object26 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %object26 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %6, ptr %object26, align 4
  %inval_counter = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 4
  %46 = ptrtoint ptr %inval_counter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inval_counter, align 4
  %inval_counter27 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %inval_counter27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %inval_counter27, align 4
  %start = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %start_pos, ptr %start, align 8
  %50 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %1, ptr %50, align 8
  %term_func28 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %term_func28 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %term_func, ptr %term_func28, align 8
  %term_func_priv29 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %term_func_priv29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %term_func_priv, ptr %term_func_priv29, align 4
  %was_async = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %was_async to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %was_async, align 8
  %bshift = getelementptr inbounds %struct.cachefiles_cache, ptr %10, i32 0, i32 22
  %55 = ptrtoint ptr %bshift to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bshift, align 8
  %shl = shl nuw i32 1, %56
  %add = add i32 %1, -1
  %sub = add i32 %add, %shl
  %shr = lshr i32 %sub, %56
  %conv31 = zext i32 %shr to i64
  %b_writing = getelementptr inbounds %struct.cachefiles_kiocb, ptr %call7.i.i, i32 0, i32 9
  %57 = ptrtoint ptr %b_writing to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv31, ptr %b_writing, align 8
  %tobool33.not = icmp eq ptr %term_func, null
  br i1 %tobool33.not, label %get_current_ioprio.exit.if.end36_crit_edge, label %if.then34

get_current_ioprio.exit.if.end36_crit_edge:       ; preds = %get_current_ioprio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %get_current_ioprio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %ki_complete to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cachefiles_write_complete, ptr %ki_complete, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %get_current_ioprio.exit.if.end36_crit_edge
  %59 = ptrtoint ptr %b_writing to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %b_writing, align 8
  %conv38 = trunc i64 %60 to i32
  %b_writing39 = getelementptr inbounds %struct.cachefiles_cache, ptr %10, i32 0, i32 14
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_writing39, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_writing39, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_writing39, ptr %b_writing39, i32 %conv38, ptr elementtype(i32) %b_writing39) #9, !srcloc !80
  %f_inode.i148 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 2
  %62 = ptrtoint ptr %f_inode.i148 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %f_inode.i148, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i = getelementptr %struct.super_block, ptr %65, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 49) #9
  %dep_map.i.i = getelementptr %struct.super_block, ptr %65, i32 0, i32 32, i32 2, i32 0, i32 5
  %66 = tail call ptr @llvm.returnaddress(i32 0) #9
  %67 = ptrtoint ptr %66 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %67) #9
  %68 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %71, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call.i.i.i149 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i149)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i149, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end36.rcu_sync_is_idle.exit.i.i_crit_edge

if.end36.rcu_sync_is_idle.exit.i.i_crit_edge:     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end36
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 35, ptr noundef nonnull @.str.18) #9
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %if.end36.rcu_sync_is_idle.exit.i.i_crit_edge
  %72 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool7.not.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool7.not.i.i.i, label %do.body7.i.i, label %if.else.i.i, !prof !83

do.body7.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %read_count.i.i = getelementptr %struct.super_block, ptr %65, i32 0, i32 32, i32 2, i32 0, i32 1
  %75 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_count.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %83, %77
  %84 = inttoptr i32 %add.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add21.i.i = add i32 %86, 1
  store i32 %add21.i.i, ptr %84, align 4
  %87 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i.i.i = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then41.i.i, label %do.body7.i.i.do.end43.i.i_crit_edge, !prof !88

do.body7.i.i.do.end43.i.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i.i

if.then41.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %if.then41.i.i, %do.body7.i.i.do.end43.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #9, !srcloc !89
  br label %__sb_start_write.exit

if.else.i.i:                                      ; preds = %rcu_sync_is_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i, i1 noundef zeroext false) #9
  br label %__sb_start_write.exit

__sb_start_write.exit:                            ; preds = %if.else.i.i, %do.end43.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %88 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i58.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i58.i.i to ptr
  %preempt_count.i.i59.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i59.i.i, align 4
  %sub.i.i.i = add i32 %91, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i59.i.i, align 4
  br label %__here

__here:                                           ; preds = %__sb_start_write.exit
  %92 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 32, i32 2, i32 0, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef ptrtoint (ptr blockaddress(@cachefiles_write, %__here) to i32)) #9
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call7.i.i, align 8
  %f_count.i = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 6
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #9
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #9, !srcloc !80
  %call46 = tail call ptr @cachefiles_grab_object(ptr noundef %6, i32 noundef 0) #9
  %97 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %ki_pos, align 8
  tail call fastcc void @trace_cachefiles_write(ptr noundef %6, ptr noundef %63, i64 noundef %98, i32 noundef %1)
  %99 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i151 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i151 to ptr
  %task.i152 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task.i152 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i152, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags1.i, align 4
  %and.i153 = and i32 %104, 262144
  %or.i = or i32 %104, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %105 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i154 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  %and1.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -28
  %cond3.i = select i1 %tobool.not.i155, i32 %cond.i, i32 -5
  %106 = and i32 %105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %if.then52, label %__here.if.end55_crit_edge

__here.if.end55_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 @vfs_iocb_iter_write(ptr noundef %12, ptr noundef nonnull %call7.i.i, ptr noundef %iter) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %__here.if.end55_crit_edge
  %ret.0 = phi i32 [ %call54, %if.then52 ], [ %cond3.i, %__here.if.end55_crit_edge ]
  %108 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i156 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i156 to ptr
  %task.i157 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task.i157 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task.i157, align 8
  %flags1.i158 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %flags1.i158 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags1.i158, align 4
  %and.i159 = and i32 %113, -262145
  %or.i160 = or i32 %and.i159, %and.i153
  store i32 %or.i160, ptr %flags1.i158, align 4
  %114 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %ret.0, label %if.end55.sw.default_crit_edge [
    i32 -529, label %if.end55.in_progress_crit_edge
    i32 -512, label %if.end55.sw.bb56_crit_edge
    i32 -513, label %if.end55.sw.bb56_crit_edge164
    i32 -514, label %if.end55.sw.bb56_crit_edge165
    i32 -516, label %if.end55.sw.bb56_crit_edge166
  ]

if.end55.sw.bb56_crit_edge166:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.end55.sw.bb56_crit_edge165:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.end55.sw.bb56_crit_edge164:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.end55.sw.bb56_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.end55.in_progress_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_progress

if.end55.sw.default_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb56:                                          ; preds = %if.end55.sw.bb56_crit_edge, %if.end55.sw.bb56_crit_edge164, %if.end55.sw.bb56_crit_edge165, %if.end55.sw.bb56_crit_edge166
  br label %sw.default

sw.default:                                       ; preds = %sw.bb56, %if.end55.sw.default_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end55.sw.default_crit_edge ], [ -4, %sw.bb56 ]
  %115 = ptrtoint ptr %was_async to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %was_async, align 8
  tail call void @cachefiles_write_complete(ptr noundef nonnull %call7.i.i, i32 noundef %ret.1)
  %116 = tail call i32 @llvm.smin.i32(i32 %ret.1, i32 0)
  br label %in_progress

in_progress:                                      ; preds = %sw.default, %if.end55.in_progress_crit_edge
  %ret.2 = phi i32 [ %116, %sw.default ], [ %ret.0, %if.end55.in_progress_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ki_refcnt, i32 1, i32 3, i32 1) #9
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ki_refcnt, ptr %ki_refcnt, i32 1, ptr elementtype(i32) %ki_refcnt) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i161, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %in_progress
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_put_kiocb.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ki_refcnt, i32 noundef 3) #9
  br label %cachefiles_put_kiocb.exit

if.then.i161:                                     ; preds = %in_progress
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %118 = ptrtoint ptr %object26 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %object26, align 4
  tail call void @cachefiles_put_object(ptr noundef %119, i32 noundef 4) #9
  %120 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call7.i.i, align 8
  tail call void @fput(ptr noundef %121) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cachefiles_put_kiocb.exit

cachefiles_put_kiocb.exit:                        ; preds = %if.then.i161, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %122 = load i32, ptr @cachefiles_debug, align 4
  %and64 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %cachefiles_put_kiocb.exit.cleanup_crit_edge, label %do.end69

cachefiles_put_kiocb.exit.cleanup_crit_edge:      ; preds = %cachefiles_put_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end69:                                         ; preds = %cachefiles_put_kiocb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %123 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i163 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i163 to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task72, align 8
  %comm73 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 101
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %comm73, ptr noundef nonnull @.str.13, i32 noundef %ret.2) #12
  br label %cleanup

presubmission_error:                              ; preds = %do.end14.presubmission_error_crit_edge, %entry.presubmission_error_crit_edge
  %ret.3 = phi i32 [ -12, %do.end14.presubmission_error_crit_edge ], [ -105, %entry.presubmission_error_crit_edge ]
  %tobool79.not = icmp eq ptr %term_func, null
  br i1 %tobool79.not, label %presubmission_error.cleanup_crit_edge, label %if.then80

presubmission_error.cleanup_crit_edge:            ; preds = %presubmission_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then80:                                        ; preds = %presubmission_error
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %term_func(ptr noundef %term_func_priv, i32 noundef %ret.3, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %presubmission_error.cleanup_crit_edge, %do.end69, %cachefiles_put_kiocb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end69 ], [ %ret.2, %cachefiles_put_kiocb.exit.cleanup_crit_edge ], [ %ret.3, %if.then80 ], [ %ret.3, %presubmission_error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal signext i8 @cachefiles_prepare_read(ptr noundef %subreq, i64 noundef %i_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %cache_resources = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 3
  %cache_priv.i = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_priv.i, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_priv2.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %10 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cond.end.do.end9_crit_edge, label %do.end

cond.end.do.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 8
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %comm, ptr noundef nonnull @.str.21, i32 noundef %16, i64 noundef %18, i64 noundef %i_size) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %cond.end.do.end9_crit_edge
  %start10 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %19 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %i_size)
  %cmp.not = icmp slt i64 %20, %i_size
  br i1 %cmp.not, label %if.end12, label %do.end9.out_no_object_crit_edge

do.end9.out_no_object_crit_edge:                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_object

if.end12:                                         ; preds = %do.end9
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %flags16 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 9
  %24 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags16, align 4
  %or.i = or i32 %25, 1
  store i32 %or.i, ptr %flags16, align 4
  br label %out_no_object

if.end17:                                         ; preds = %if.end12
  br i1 %tobool.not, label %if.then19, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then19:                                        ; preds = %if.end17
  %call20 = tail call zeroext i1 @fscache_wait_for_operation(ptr noundef %cache_resources, i32 noundef 2) #9
  br i1 %call20, label %if.end22, label %if.then19.out_no_object_crit_edge

if.then19.out_no_object_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_object

if.end22:                                         ; preds = %if.then19
  %26 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cache_priv2.i, align 4
  %tobool24.not = icmp eq ptr %27, null
  br i1 %tobool24.not, label %if.end22.out_no_object_crit_edge, label %if.end26

if.end22.out_no_object_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_object

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i176 = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %f_inode.i176 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i176, align 8
  %i_ino28 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.end17.if.end29_crit_edge
  %file.0 = phi ptr [ %5, %if.end17.if.end29_crit_edge ], [ %27, %if.end26 ]
  %ino.0 = phi i32 [ %cond, %if.end17.if.end29_crit_edge ], [ %31, %if.end26 ]
  %32 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cache_priv.i, align 4
  %cache_priv.i177 = getelementptr inbounds %struct.fscache_cookie, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %cache_priv.i177 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cache_priv.i177, align 4
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %volume, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %41) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %42 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i178 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.not.i = icmp eq i32 %and.i178, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -5
  %conv = sext i32 %cond.i to i64
  br i1 %tobool.not.i, label %if.then35, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %start10, align 8
  %call37 = tail call i64 @vfs_llseek(ptr noundef nonnull %file.0, i64 noundef %44, i32 noundef 3) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end29.if.end38_crit_edge
  %off.0 = phi i64 [ %call37, %if.then35 ], [ %conv, %if.end29.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %off.0)
  %45 = icmp ugt i64 %off.0, -4096
  br i1 %45, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %off.0)
  %cmp44 = icmp eq i64 %off.0, -6
  br i1 %cmp44, label %if.then43.download_and_store_crit_edge, label %if.end47

if.then43.download_and_store_crit_edge:           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %download_and_store

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i179 = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 2
  %46 = ptrtoint ptr %f_inode.i179 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_inode.i179, align 8
  %conv49 = trunc i64 %off.0 to i32
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %35, ptr noundef %47, i32 noundef %conv49, i32 noundef 10)
  br label %out

if.end50:                                         ; preds = %if.end38
  %48 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start10, align 8
  %len52 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %50 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len52, align 8
  %conv53 = zext i32 %51 to i64
  %add = add i64 %49, %conv53
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0, i64 %add)
  %cmp54.not = icmp slt i64 %off.0, %add
  br i1 %cmp54.not, label %if.end57, label %if.end50.download_and_store_crit_edge

if.end50.download_and_store_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %download_and_store

if.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_cmp8(i64 %off.0, i64 %49)
  %cmp59 = icmp sgt i64 %off.0, %49
  br i1 %cmp59, label %if.then61, label %if.end69

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i64 %off.0, 4294967295
  %bsize = getelementptr inbounds %struct.cachefiles_cache, ptr %39, i32 0, i32 21
  %52 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bsize, align 4
  %sub62 = add i32 %53, -1
  %conv63 = zext i32 %sub62 to i64
  %or = or i64 %sub, %conv63
  %add64 = sub i64 1, %49
  %sub66 = add i64 %add64, %or
  %conv67 = trunc i64 %sub66 to i32
  %54 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv67, ptr %len52, align 8
  br label %download_and_store

if.end69:                                         ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %55 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i180 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  %cond.i182 = select i1 %tobool.not.i181, i32 0, i32 -5
  %conv71 = sext i32 %cond.i182 to i64
  br i1 %tobool.not.i181, label %if.then74, label %if.end69.if.end77_crit_edge

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = tail call i64 @vfs_llseek(ptr noundef nonnull %file.0, i64 noundef %49, i32 noundef 4) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end69.if.end77_crit_edge
  %to.0 = phi i64 [ %call76, %if.then74 ], [ %conv71, %if.end69.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %to.0)
  %56 = icmp ugt i64 %to.0, -4096
  br i1 %56, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i183 = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 2
  %57 = ptrtoint ptr %f_inode.i183 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_inode.i183, align 8
  %conv85 = trunc i64 %to.0 to i32
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %35, ptr noundef %58, i32 noundef %conv85, i32 noundef 10)
  br label %out

if.end86:                                         ; preds = %if.end77
  %59 = ptrtoint ptr %start10 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %start10, align 8
  %61 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len52, align 8
  %conv89 = zext i32 %62 to i64
  %add90 = add i64 %60, %conv89
  call void @__sanitizer_cov_trace_cmp8(i64 %to.0, i64 %add90)
  %cmp91 = icmp slt i64 %to.0, %add90
  br i1 %cmp91, label %if.then93, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_cmp8(i64 %add90, i64 %i_size)
  %cmp98.not = icmp slt i64 %add90, %i_size
  br i1 %cmp98.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %sub101 = add i64 %to.0, -1
  %bsize102 = getelementptr inbounds %struct.cachefiles_cache, ptr %39, i32 0, i32 21
  %63 = ptrtoint ptr %bsize102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bsize102, align 4
  %sub103 = add i32 %64, -1
  %conv104 = zext i32 %sub103 to i64
  %or105 = or i64 %sub101, %conv104
  %add106 = add i64 %or105, 1
  br label %if.end111

if.else:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %bsize107 = getelementptr inbounds %struct.cachefiles_cache, ptr %39, i32 0, i32 21
  %65 = ptrtoint ptr %bsize107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bsize107, align 4
  %sub108 = add i32 %66, -1
  %conv109 = zext i32 %sub108 to i64
  %neg = xor i64 %conv109, -1
  %and110 = and i64 %to.0, %neg
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then100
  %to.1 = phi i64 [ %add106, %if.then100 ], [ %and110, %if.else ]
  %sub113 = sub i64 %to.1, %60
  %conv114 = trunc i64 %sub113 to i32
  %67 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv114, ptr %len52, align 8
  br label %out

download_and_store:                               ; preds = %if.then61, %if.end50.download_and_store_crit_edge, %if.then43.download_and_store_crit_edge
  %why.0 = phi i32 [ 2, %if.then61 ], [ 7, %if.then43.download_and_store_crit_edge ], [ 1, %if.end50.download_and_store_crit_edge ]
  %flags117 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 9
  %68 = ptrtoint ptr %flags117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags117, align 4
  %or.i174 = or i32 %69, 1
  store i32 %or.i174, ptr %flags117, align 4
  br label %out

out:                                              ; preds = %download_and_store, %if.end111, %if.end86.out_crit_edge, %if.then83, %if.end47
  %ret.0 = phi i8 [ 1, %download_and_store ], [ 1, %if.end47 ], [ 1, %if.then83 ], [ 2, %if.end111 ], [ 2, %if.end86.out_crit_edge ]
  %why.1 = phi i32 [ %why.0, %download_and_store ], [ 6, %if.end47 ], [ 6, %if.then83 ], [ 3, %if.end111 ], [ 3, %if.end86.out_crit_edge ]
  tail call void @revert_creds(ptr noundef %call.i) #9
  br label %out_no_object

out_no_object:                                    ; preds = %out, %if.end22.out_no_object_crit_edge, %if.then19.out_no_object_crit_edge, %if.then15, %do.end9.out_no_object_crit_edge
  %ret.1 = phi i8 [ 1, %if.then15 ], [ %ret.0, %out ], [ 1, %if.end22.out_no_object_crit_edge ], [ 1, %if.then19.out_no_object_crit_edge ], [ 0, %do.end9.out_no_object_crit_edge ]
  %ino.1 = phi i32 [ %cond, %if.then15 ], [ %ino.0, %out ], [ %cond, %if.end22.out_no_object_crit_edge ], [ %cond, %if.then19.out_no_object_crit_edge ], [ %cond, %do.end9.out_no_object_crit_edge ]
  %why.2 = phi i32 [ 4, %if.then15 ], [ %why.1, %out ], [ 5, %if.end22.out_no_object_crit_edge ], [ 5, %if.then19.out_no_object_crit_edge ], [ 0, %do.end9.out_no_object_crit_edge ]
  tail call fastcc void @trace_cachefiles_prep_read(ptr noundef %subreq, i8 noundef signext %ret.1, i32 noundef %why.2, i32 noundef %ino.1)
  ret i8 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_prepare_write(ptr noundef %cres, ptr nocapture noundef %_start, ptr nocapture noundef %_len, i64 noundef %i_size, i1 noundef zeroext %no_space_allocated_yet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_priv.i.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %0 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_cookie, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_priv.i, align 4
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volume, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %8 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache_priv2.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @fscache_wait_for_operation(ptr noundef %cres, i32 noundef 1) #9
  br i1 %call3, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_priv2.i, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %13) #9
  %14 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i.i21 = getelementptr inbounds %struct.fscache_cookie, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %cache_priv.i.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache_priv.i.i21, align 4
  %volume.i = getelementptr inbounds %struct.cachefiles_object, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %volume.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cache_priv2.i, align 4
  %24 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %_start, align 8
  %26 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %_len, align 4
  %28 = trunc i64 %25 to i32
  %conv.i = and i32 %28, 4095
  %conv3.i = zext i32 %conv.i to i64
  %sub4.i = sub i64 %25, %conv3.i
  store i64 %sub4.i, ptr %_start, align 8
  %add.i = add i32 %27, -1
  %sub5.i = add i32 %add.i, %conv.i
  %or.i = or i32 %sub5.i, 4095
  %add6.i = add i32 %or.i, 1
  store i32 %add6.i, ptr %_len, align 4
  br i1 %no_space_allocated_yet, label %if.end9.check_space.i_crit_edge, label %if.end.i

if.end9.check_space.i_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_space.i

if.end.i:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %29 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 -5
  %conv8.i = sext i32 %cond.i.i to i64
  br i1 %tobool.not.i.i, label %if.then10.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %_start, align 8
  %call11.i = tail call i64 @vfs_llseek(ptr noundef %23, i64 noundef %31, i32 noundef 3) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %pos.0.i = phi i64 [ %call11.i, %if.then10.i ], [ %conv8.i, %if.end.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %pos.0.i)
  %32 = icmp ugt i64 %pos.0.i, -4096
  br i1 %32, label %if.then17.i, label %if.end25.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %pos.0.i)
  %cmp18.i = icmp eq i64 %pos.0.i, -6
  br i1 %cmp18.i, label %if.then17.i.check_space.i_crit_edge, label %if.end21.i

if.then17.i.check_space.i_crit_edge:              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_space.i

if.end21.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 2
  %33 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_inode.i.i, align 8
  %conv23.i = trunc i64 %pos.0.i to i32
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %17, ptr noundef %34, i32 noundef %conv23.i, i32 noundef 10) #9
  br label %__cachefiles_prepare_write.exit

if.end25.i:                                       ; preds = %if.end12.i
  %35 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %_start, align 8
  %37 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_len, align 4
  %conv26.i = zext i32 %38 to i64
  %add27.i = add i64 %36, %conv26.i
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0.i, i64 %add27.i)
  %cmp28.not.i = icmp ult i64 %pos.0.i, %add27.i
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end25.i.check_space.i_crit_edge

if.end25.i.check_space.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_space.i

if.end31.i:                                       ; preds = %if.end25.i
  %div1.i = lshr i32 %38, 12
  %call32.i = tail call i32 @cachefiles_has_space(ptr noundef %21, i32 noundef 0, i32 noundef %div1.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end31.i.__cachefiles_prepare_write.exit_crit_edge, label %if.end36.i

if.end31.i.__cachefiles_prepare_write.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__cachefiles_prepare_write.exit

if.end36.i:                                       ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %39 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i4.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  %cond.i6.i = select i1 %tobool.not.i5.i, i32 0, i32 -5
  %conv38.i = sext i32 %cond.i6.i to i64
  br i1 %tobool.not.i5.i, label %if.then41.i, label %if.end36.i.if.end43.i_crit_edge

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %_start, align 8
  %call42.i = tail call i64 @vfs_llseek(ptr noundef %23, i64 noundef %41, i32 noundef 4) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end36.i.if.end43.i_crit_edge
  %pos.1.i = phi i64 [ %call42.i, %if.then41.i ], [ %conv38.i, %if.end36.i.if.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %pos.1.i)
  %42 = icmp ugt i64 %pos.1.i, -4096
  br i1 %42, label %if.then49.i, label %if.end53.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %f_inode.i7.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 2
  %43 = ptrtoint ptr %f_inode.i7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f_inode.i7.i, align 8
  %conv51.i = trunc i64 %pos.1.i to i32
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %17, ptr noundef %44, i32 noundef %conv51.i, i32 noundef 10) #9
  br label %__cachefiles_prepare_write.exit

if.end53.i:                                       ; preds = %if.end43.i
  %45 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %_start, align 8
  %47 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %_len, align 4
  %conv54.i = zext i32 %48 to i64
  %add55.i = add i64 %46, %conv54.i
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.1.i, i64 %add55.i)
  %cmp56.not.i = icmp ult i64 %pos.1.i, %add55.i
  br i1 %cmp56.not.i, label %if.end59.i, label %if.end53.i.__cachefiles_prepare_write.exit_crit_edge

if.end53.i.__cachefiles_prepare_write.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__cachefiles_prepare_write.exit

if.end59.i:                                       ; preds = %if.end53.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_no_write_space, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_no_write_space, i32 1, i32 3, i32 1) #9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_no_write_space, ptr nonnull @fscache_n_no_write_space, i32 1, ptr nonnull elementtype(i32) @fscache_n_no_write_space) #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %50 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i8.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %if.end66.i, label %if.end59.i.if.then69.i_crit_edge

if.end59.i.if.then69.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

if.end66.i:                                       ; preds = %if.end59.i
  %51 = ptrtoint ptr %_start to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %_start, align 8
  %53 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %_len, align 4
  %conv64.i = zext i32 %54 to i64
  %call65.i = tail call i32 @vfs_fallocate(ptr noundef %23, i32 noundef 3, i64 noundef %52, i64 noundef %conv64.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp67.i = icmp slt i32 %call65.i, 0
  br i1 %cmp67.i, label %if.end66.i.if.then69.i_crit_edge, label %if.end66.i.__cachefiles_prepare_write.exit_crit_edge

if.end66.i.__cachefiles_prepare_write.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__cachefiles_prepare_write.exit

if.end66.i.if.then69.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

if.then69.i:                                      ; preds = %if.end66.i.if.then69.i_crit_edge, %if.end59.i.if.then69.i_crit_edge
  %ret.014.i = phi i32 [ %call65.i, %if.end66.i.if.then69.i_crit_edge ], [ -5, %if.end59.i.if.then69.i_crit_edge ]
  %f_inode.i11.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 2
  %55 = ptrtoint ptr %f_inode.i11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %f_inode.i11.i, align 8
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %17, ptr noundef %56, i32 noundef %ret.014.i, i32 noundef 0) #9
  %57 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %volume.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %debug_id.i = getelementptr inbounds %struct.cachefiles_object, ptr %17, i32 0, i32 5
  %61 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_id.i, align 4
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %ret.014.i, i32 noundef %62) #12
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 8
  tail call void @fscache_io_error(ptr noundef %64) #9
  %flags.i = getelementptr inbounds %struct.cachefiles_cache, ptr %60, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #9
  br label %__cachefiles_prepare_write.exit

check_space.i:                                    ; preds = %if.end25.i.check_space.i_crit_edge, %if.then17.i.check_space.i_crit_edge, %if.end9.check_space.i_crit_edge
  %65 = ptrtoint ptr %_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %_len, align 4
  %div822.i = lshr i32 %66, 12
  %call83.i = tail call i32 @cachefiles_has_space(ptr noundef %21, i32 noundef 0, i32 noundef %div822.i, i32 noundef 1) #9
  br label %__cachefiles_prepare_write.exit

__cachefiles_prepare_write.exit:                  ; preds = %check_space.i, %if.then69.i, %if.end66.i.__cachefiles_prepare_write.exit_crit_edge, %if.end53.i.__cachefiles_prepare_write.exit_crit_edge, %if.then49.i, %if.end31.i.__cachefiles_prepare_write.exit_crit_edge, %if.end21.i
  %retval.0.i = phi i32 [ %call83.i, %check_space.i ], [ %conv23.i, %if.end21.i ], [ %conv51.i, %if.then49.i ], [ 0, %if.end31.i.__cachefiles_prepare_write.exit_crit_edge ], [ 0, %if.end53.i.__cachefiles_prepare_write.exit_crit_edge ], [ -5, %if.then69.i ], [ %call65.i, %if.end66.i.__cachefiles_prepare_write.exit_crit_edge ]
  tail call void @revert_creds(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__cachefiles_prepare_write.exit, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__cachefiles_prepare_write.exit ], [ -105, %if.then.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_query_occupancy(ptr noundef %cres, i64 noundef %start, i32 noundef %len, i32 noundef %granularity, ptr nocapture noundef writeonly %_data_start, ptr nocapture noundef writeonly %_data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data_start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %_data_start, align 8
  %1 = ptrtoint ptr %_data_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %_data_len, align 4
  %call = tail call zeroext i1 @fscache_wait_for_operation(ptr noundef %cres, i32 noundef 2) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cache_priv.i.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 1
  %2 = ptrtoint ptr %cache_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_priv.i.i, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_priv.i, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %6 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache_priv2.i, align 4
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volume, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %bsize = getelementptr inbounds %struct.cachefiles_cache, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bsize, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %granularity)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %15 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end13_crit_edge, label %do.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  %f_inode.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %21)
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.24, ptr noundef %7, i32 noundef %23, i64 noundef %start, i32 noundef %len, i64 noundef %call9) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %24 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i117 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i = icmp eq i32 %and.i117, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -5
  %conv = sext i32 %cond.i to i64
  br i1 %tobool.not.i, label %if.end19, label %do.end13.if.end23_crit_edge

do.end13.if.end23_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end19:                                         ; preds = %do.end13
  %call18 = tail call i64 @vfs_llseek(ptr noundef %7, i64 noundef %start, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %call18)
  %cmp20 = icmp eq i64 %call18, -6
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19.if.end23_crit_edge, %do.end13.if.end23_crit_edge
  %off.0123 = phi i64 [ %call18, %if.end19.if.end23_crit_edge ], [ %conv, %do.end13.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %off.0123)
  %25 = icmp ugt i64 %off.0123, -4096
  br i1 %25, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %sub = add i64 %off.0123, -1
  %sub30 = add i32 %14, -1
  %conv31 = zext i32 %sub30 to i64
  %or = or i64 %sub, %conv31
  %add = add i64 %or, 1
  %conv32 = zext i32 %len to i64
  %add33 = add i64 %conv32, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add33)
  %cmp34.not = icmp slt i64 %add, %add33
  br i1 %cmp34.not, label %if.end37, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %26 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i118 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  %cond.i120 = select i1 %tobool.not.i119, i32 0, i32 -5
  %conv39 = sext i32 %cond.i120 to i64
  br i1 %tobool.not.i119, label %if.end44, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end44:                                         ; preds = %if.end37
  %call43 = tail call i64 @vfs_llseek(ptr noundef %7, i64 noundef %off.0123, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6, i64 %call43)
  %cmp45 = icmp eq i64 %call43, -6
  br i1 %cmp45, label %if.end44.cleanup_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %off2.0126 = phi i64 [ %call43, %if.end44.if.end48_crit_edge ], [ %conv39, %if.end37.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4096, i64 %off2.0126)
  %27 = icmp ugt i64 %off2.0126, -4096
  br i1 %27, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %neg = xor i64 %conv31, -1
  %and63 = and i64 %off2.0126, %neg
  call void @__sanitizer_cov_trace_cmp8(i64 %and63, i64 %add)
  %cmp64.not = icmp sgt i64 %and63, %add
  br i1 %cmp64.not, label %if.end67, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %_data_start to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %_data_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and63, i64 %add33)
  %cmp70 = icmp sgt i64 %and63, %add33
  %sub73 = sub i64 %and63, %add
  %conv74 = trunc i64 %sub73 to i32
  %storemerge = select i1 %cmp70, i32 %len, i32 %conv74
  %29 = ptrtoint ptr %_data_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge, ptr %_data_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end55.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ -105, %entry.cleanup_crit_edge ], [ -61, %if.end19.cleanup_crit_edge ], [ -105, %if.end23.cleanup_crit_edge ], [ -61, %if.end29.cleanup_crit_edge ], [ -61, %if.end44.cleanup_crit_edge ], [ -105, %if.end48.cleanup_crit_edge ], [ -61, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_end_cookie_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscache_wait_for_operation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !88

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !89
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !92
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_read_complete(ptr noundef %iocb, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %4 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm, ptr noundef nonnull @.str.9, i32 noundef %ret) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %cmp = icmp slt i32 %ret, 0
  br i1 %cmp, label %if.then8, label %do.end7.if.end9_crit_edge

do.end7.if.end9_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %object = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 4
  %9 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %object, align 4
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %10, ptr noundef %3, i32 noundef %ret, i32 noundef 7)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end7.if.end9_crit_edge
  %term_func = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 5
  %11 = ptrtoint ptr %term_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %term_func, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end9.if.end22_crit_edge, label %if.then11

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret)
  %cmp12 = icmp sgt i32 %ret, -1
  br i1 %cmp12, label %if.then13, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %if.then11
  %object14 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 4
  %13 = ptrtoint ptr %object14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %object14, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %inval_counter = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %inval_counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inval_counter, align 8
  %inval_counter15 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 8
  %19 = ptrtoint ptr %inval_counter15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inval_counter15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16 = icmp eq i32 %18, %20
  br i1 %cmp16, label %if.then17, label %if.then13.if.end19_crit_edge

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %21 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %add = add i32 %23, %ret
  store i32 %add, ptr %21, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then13.if.end19_crit_edge, %if.then11.if.end19_crit_edge
  %ret.addr.0 = phi i32 [ %ret, %if.then17 ], [ %ret, %if.then11.if.end19_crit_edge ], [ -116, %if.then13.if.end19_crit_edge ]
  %term_func_priv = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 6
  %24 = ptrtoint ptr %term_func_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %term_func_priv, align 4
  %was_async = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 7
  %26 = ptrtoint ptr %was_async to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %was_async, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21 = icmp ne i8 %27, 0
  tail call void %12(ptr noundef %25, i32 noundef %ret.addr.0, i1 noundef zeroext %tobool21) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end9.if.end22_crit_edge
  %ki_refcnt.i = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ki_refcnt.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ki_refcnt.i, ptr %ki_refcnt.i, i32 1, ptr elementtype(i32) %ki_refcnt.i) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_put_kiocb.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ki_refcnt.i, i32 noundef 3) #9
  br label %cachefiles_put_kiocb.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %object.i = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 4
  %29 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %object.i, align 4
  tail call void @cachefiles_put_object(ptr noundef %30, i32 noundef 4) #9
  %31 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iocb, align 8
  tail call void @fput(ptr noundef %32) #9
  tail call void @kfree(ptr noundef %iocb) #9
  br label %cachefiles_put_kiocb.exit

cachefiles_put_kiocb.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cachefiles_grab_object(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_read(ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_read, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_read, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %call42 = tail call i32 @__traceiter_cachefiles_read(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 496, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
declare dso_local i32 @vfs_iocb_iter_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_io_error(ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_io_error, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %call42 = tail call i32 @__traceiter_cachefiles_io_error(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_io_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 672, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_io_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_read(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_put_object(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_write_complete(ptr noundef %iocb, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %object1 = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 4
  %0 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object1, align 4
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %6 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.__here_crit_edge, label %do.end

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm, ptr noundef nonnull @.str.16, i32 noundef %ret) #12
  br label %__here

__here:                                           ; preds = %do.end, %entry.__here_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 32, i32 2, i32 0, i32 5
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@cachefiles_write_complete, %__here) to i32)) #9
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 0, i32 5
  %15 = tail call ptr @llvm.returnaddress(i32 0) #9
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %16) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %__here.rcu_sync_is_idle.exit.i.i_crit_edge

__here.rcu_sync_is_idle.exit.i.i_crit_edge:       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %__here
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 35, ptr noundef nonnull @.str.18) #9
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %__here.rcu_sync_is_idle.exit.i.i_crit_edge
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !83

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %read_count.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_count.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add17.i.i = add i32 %35, -1
  store i32 %add17.i.i, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !88

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #9, !srcloc !89
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !104
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %read_count75.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_count75.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i122.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %46, %40
  %47 = inttoptr i32 %add80.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add81.i.i = add i32 %49, -1
  store i32 %add81.i.i, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i123.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !88

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #9, !srcloc !89
  %writer.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #9
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %51 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i120.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %cmp = icmp slt i32 %ret, 0
  br i1 %cmp, label %if.then11, label %__sb_end_write.exit.if.end12_crit_edge

__sb_end_write.exit.if.end12_crit_edge:           ; preds = %__sb_end_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %__sb_end_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %1, ptr noundef %5, i32 noundef %ret, i32 noundef 16)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %__sb_end_write.exit.if.end12_crit_edge
  %b_writing = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 9
  %55 = ptrtoint ptr %b_writing to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b_writing, align 8
  %conv = trunc i64 %56 to i32
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %volume, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %b_writing13 = getelementptr inbounds %struct.cachefiles_cache, ptr %60, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_writing13, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_writing13, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_writing13, ptr %b_writing13, i32 %conv, ptr elementtype(i32) %b_writing13) #9, !srcloc !106
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %63, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags) #9
  %term_func = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 5
  %64 = ptrtoint ptr %term_func to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %term_func, align 8
  %tobool14.not = icmp eq ptr %65, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %term_func_priv = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 6
  %66 = ptrtoint ptr %term_func_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %term_func_priv, align 4
  %was_async = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 7
  %68 = ptrtoint ptr %was_async to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %was_async, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool17 = icmp ne i8 %69, 0
  tail call void %65(ptr noundef %67, i32 noundef %ret, i1 noundef zeroext %tobool17) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %ki_refcnt.i = getelementptr inbounds %struct.cachefiles_kiocb, ptr %iocb, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ki_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %ki_refcnt.i, i32 1, i32 3, i32 1) #9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ki_refcnt.i, ptr %ki_refcnt.i, i32 1, ptr elementtype(i32) %ki_refcnt.i) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_put_kiocb.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ki_refcnt.i, i32 noundef 3) #9
  br label %cachefiles_put_kiocb.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %71 = ptrtoint ptr %object1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %object1, align 4
  tail call void @cachefiles_put_object(ptr noundef %72, i32 noundef 4) #9
  %73 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iocb, align 8
  tail call void @fput(ptr noundef %74) #9
  tail call void @kfree(ptr noundef %iocb) #9
  br label %cachefiles_put_kiocb.exit

cachefiles_put_kiocb.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cachefiles_put_kiocb.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_write(ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_write, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_write, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %call42 = tail call i32 @__traceiter_cachefiles_write(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_write, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 525, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
declare dso_local i32 @vfs_iocb_iter_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_write(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_prep_read(ptr noundef %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_prep_read, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_prep_read, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !109
  %call42 = tail call i32 @__traceiter_cachefiles_prep_read(ptr noundef null, ptr noundef %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_prep_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_prep_read, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_prep_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_prep_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 467, ptr noundef nonnull @.str.11) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !70) #9
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
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_prep_read(ptr noundef, ptr noundef, i8 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_has_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_io_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/io.c", i32 628, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_begin_operation._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_begin_operation._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @cachefiles_netfs_cache_ops, !7, !"cachefiles_netfs_cache_ops", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/io.c", i32 600, i32 37}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/cachefiles/io.c", i32 94, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cachefiles_read._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @cachefiles_read._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/cachefiles/io.c", i32 185, i32 2}
!15 = !{ptr @cachefiles_read._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @cachefiles_read._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/cachefiles/io.c", i32 50, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cachefiles_read_complete._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @cachefiles_read_complete._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/cachefiles.h", i32 647, i32 1}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/cachefiles.h", i32 469, i32 1}
!32 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/cachefiles/io.c", i32 303, i32 2}
!35 = !{ptr @cachefiles_write._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cachefiles_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @cachefiles_write._entry.14, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../fs/cachefiles/io.c", i32 372, i32 2}
!39 = !{ptr @cachefiles_write._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cachefiles/io.c", i32 261, i32 2}
!42 = !{ptr @cachefiles_write_complete._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cachefiles_write_complete._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/trace/events/cachefiles.h", i32 498, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/cachefiles/io.c", i32 400, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cachefiles_prepare_read._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cachefiles_prepare_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/cachefiles.h", i32 428, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/cachefiles/io.c", i32 553, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__cachefiles_prepare_write._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @__cachefiles_prepare_write._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/cachefiles/io.c", i32 216, i32 2}
!68 = !{ptr @cachefiles_query_occupancy._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cachefiles_query_occupancy._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148326721, i64 2148326747, i64 2148326776, i64 2148326810, i64 2148326841, i64 2148326864}
!81 = !{i64 2148416276}
!82 = !{i64 2148330716, i64 2148330748, i64 2148330777, i64 2148330811, i64 2148330842, i64 2148330865}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2149893538}
!85 = !{i64 2152946913}
!86 = !{i64 730939, i64 731000}
!87 = !{i64 733671}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 733956}
!90 = !{i64 2152955763}
!91 = !{i64 2153100572}
!92 = !{i64 2153100414}
!93 = !{i64 2153100742}
!94 = !{i64 2149658410}
!95 = !{i8 0, i8 2}
!96 = !{i64 2148906018, i64 2148906023, i64 2148906036, i64 2148906080, i64 2148906114, i64 2148906135}
!97 = !{i64 2155404921}
!98 = !{i64 2155405160}
!99 = !{i64 2149951640}
!100 = !{i64 2149952676}
!101 = !{i64 2155537121}
!102 = !{i64 2155537372}
!103 = !{i64 2152965717}
!104 = !{i64 2152975212}
!105 = !{i64 2152984689}
!106 = !{i64 2148329186, i64 2148329212, i64 2148329241, i64 2148329275, i64 2148329306, i64 2148329329}
!107 = !{i64 2155422565}
!108 = !{i64 2155422806}
!109 = !{i64 2155386895}
!110 = !{i64 2155387158}
