; ModuleID = '/llk/IR_all_yes/fs/cachefiles/interface.c_pt.bc'
source_filename = "../fs/cachefiles/interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fscache_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.26 }
%union.anon.26 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.cachefiles_object = type { ptr, ptr, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.refcount_struct, i8, i8, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.75, %union.anon.76 }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.75 = type { ptr, [12 x i8] }
%union.anon.76 = type { ptr, [4 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fscache_cache = type { ptr, %struct.list_head, ptr, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.fscache_volume = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.hlist_bl_node, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, i8, [0 x i8] }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.80 = type { ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.cachefiles_volume = type { ptr, %struct.list_head, ptr, ptr, [256 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.qstr = type { %union.anon.6, ptr }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_put_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017[%-6.6s] - kill object OBJ%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cachefiles_put_object\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/cachefiles/interface.c\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_put_object._entry_ptr = internal global ptr @cachefiles_put_object._entry, section ".printk_index", align 4
@cachefiles_put_object._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013CacheFiles: \0A\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_put_object._entry_ptr.5 = internal global ptr @cachefiles_put_object._entry.3, section ".printk_index", align 4
@cachefiles_put_object._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CacheFiles: Assertion failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cachefiles_put_object._entry_ptr.8 = internal global ptr @cachefiles_put_object._entry.6, section ".printk_index", align 4
@cachefiles_put_object._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CacheFiles: %lx == %lx is false\0A\00", [61 x i8] zeroinitializer }, align 32
@cachefiles_put_object._entry_ptr.11 = internal global ptr @cachefiles_put_object._entry.9, section ".printk_index", align 4
@cachefiles_object_jar = external dso_local local_unnamed_addr global ptr, align 4
@cachefiles_put_object._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017[%-6.6s] <== %s()\0A\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_put_object._entry_ptr.14 = internal global ptr @cachefiles_put_object._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cachefiles\00", [21 x i8] zeroinitializer }, align 32
@cachefiles_cache_ops = dso_local constant { %struct.fscache_cache_ops, [60 x i8] } { %struct.fscache_cache_ops { ptr @.str.15, ptr @cachefiles_acquire_volume, ptr @cachefiles_free_volume, ptr @cachefiles_lookup_cookie, ptr @cachefiles_withdraw_cookie, ptr @cachefiles_resize_cookie, ptr @cachefiles_invalidate_cookie, ptr @cachefiles_begin_operation, ptr @cachefiles_prepare_to_write }, [60 x i8] zeroinitializer }, align 32
@__tracepoint_cachefiles_ref = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/cachefiles.h\00", [62 x i8] zeroinitializer }, align 32
@trace_cachefiles_ref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@fscache_clearance_waiters = external dso_local global %struct.wait_queue_head, align 4
@cachefiles_lookup_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017[%-6.6s] ==> %s({OBJ%x})\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_lookup_cookie\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_lookup_cookie._entry_ptr = internal global ptr @cachefiles_lookup_cookie._entry, section ".printk_index", align 4
@cachefiles_lookup_cookie._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] <== %s() = t\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_lookup_cookie._entry_ptr.23 = internal global ptr @cachefiles_lookup_cookie._entry.21, section ".printk_index", align 4
@cachefiles_lookup_cookie._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017[%-6.6s] failed c=%08x o=%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@cachefiles_lookup_cookie._entry_ptr.26 = internal global ptr @cachefiles_lookup_cookie._entry.24, section ".printk_index", align 4
@cachefiles_alloc_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017[%-6.6s] ==> %s({%s},%x,)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_alloc_object\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_alloc_object._entry_ptr = internal global ptr @cachefiles_alloc_object._entry, section ".printk_index", align 4
@cachefiles_alloc_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&object->lock\00", [18 x i8] zeroinitializer }, align 32
@cachefiles_object_debug_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@cachefiles_adjust_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017[%-6.6s] ==> %s({OBJ%x},[%llu])\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_adjust_size\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_adjust_size._entry_ptr = internal global ptr @cachefiles_adjust_size._entry, section ".printk_index", align 4
@cachefiles_adjust_size._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017[%-6.6s] discard tail %llx\0A\00", [34 x i8] zeroinitializer }, align 32
@cachefiles_adjust_size._entry_ptr.34 = internal global ptr @cachefiles_adjust_size._entry.32, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cachefiles_adjust_size._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CacheFiles: I/O Error: Size set failed [o=%08x]\0A\00", [45 x i8] zeroinitializer }, align 32
@cachefiles_adjust_size._entry_ptr.37 = internal global ptr @cachefiles_adjust_size._entry.35, section ".printk_index", align 4
@cachefiles_adjust_size._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_adjust_size._entry_ptr.40 = internal global ptr @cachefiles_adjust_size._entry.38, section ".printk_index", align 4
@cachefiles_error_injection_state = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_cachefiles_io_error = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_io_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_withdraw_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] ==> %s(o=%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_withdraw_cookie\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_withdraw_cookie._entry_ptr = internal global ptr @cachefiles_withdraw_cookie._entry, section ".printk_index", align 4
@cachefiles_clean_up_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017[%-6.6s] - inval object OBJ%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_clean_up_object\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_clean_up_object._entry_ptr = internal global ptr @cachefiles_clean_up_object._entry, section ".printk_index", align 4
@cachefiles_clean_up_object._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017[%-6.6s] - inval object OBJ%x tmpfile\0A\00", [55 x i8] zeroinitializer }, align 32
@cachefiles_clean_up_object._entry_ptr.47 = internal global ptr @cachefiles_clean_up_object._entry.45, section ".printk_index", align 4
@cachefiles_resize_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] ==> %s(%llu->%llu)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_resize_cookie\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_resize_cookie._entry_ptr = internal global ptr @cachefiles_resize_cookie._entry, section ".printk_index", align 4
@cachefiles_shorten_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013CacheFiles: I/O Error: Trunc-to-size failed %d [o=%08x]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_shorten_object\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_shorten_object._entry_ptr = internal global ptr @cachefiles_shorten_object._entry, section ".printk_index", align 4
@cachefiles_shorten_object._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CacheFiles: I/O Error: Trunc-to-dio-size failed %d [o=%08x]\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_shorten_object._entry_ptr.54 = internal global ptr @cachefiles_shorten_object._entry.52, section ".printk_index", align 4
@__tracepoint_cachefiles_trunc = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_trunc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_invalidate_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017[%-6.6s] ==> %s(o=%x,[%llu])\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cachefiles_invalidate_cookie\00", [35 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr = internal global ptr @cachefiles_invalidate_cookie._entry, section ".printk_index", align 4
@cachefiles_invalidate_cookie._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017[%-6.6s] <== %s() = t [light]\0A\00", [63 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr.59 = internal global ptr @cachefiles_invalidate_cookie._entry.57, section ".printk_index", align 4
@cachefiles_invalidate_cookie._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017[%-6.6s] sub\0A\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr.62 = internal global ptr @cachefiles_invalidate_cookie._entry.60, section ".printk_index", align 4
@cachefiles_invalidate_cookie._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017[%-6.6s] subbed\0A\00", [45 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr.65 = internal global ptr @cachefiles_invalidate_cookie._entry.63, section ".printk_index", align 4
@cachefiles_invalidate_cookie._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.56, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr.67 = internal global ptr @cachefiles_invalidate_cookie._entry.66, section ".printk_index", align 4
@cachefiles_invalidate_cookie._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] <== %s() = f\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_invalidate_cookie._entry_ptr.70 = internal global ptr @cachefiles_invalidate_cookie._entry.68, section ".printk_index", align 4
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 86, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 88, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 99, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 436, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"cachefiles_cache_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 435, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 208, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 183, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 204, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 211, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 28, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 36, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"cachefiles_object_debug_id\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 16, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 120, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 136, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 161, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 165, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 355, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 328, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 332, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 283, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 246, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 261, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 384, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 390, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 399, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 409, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 427, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [29 x i8] c"../fs/cachefiles/interface.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 431, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @cachefiles_adjust_size._entry, ptr @cachefiles_adjust_size._entry.32, ptr @cachefiles_adjust_size._entry.35, ptr @cachefiles_adjust_size._entry.38, ptr @cachefiles_adjust_size._entry_ptr, ptr @cachefiles_adjust_size._entry_ptr.34, ptr @cachefiles_adjust_size._entry_ptr.37, ptr @cachefiles_adjust_size._entry_ptr.40, ptr @cachefiles_alloc_object._entry, ptr @cachefiles_alloc_object._entry_ptr, ptr @cachefiles_clean_up_object._entry, ptr @cachefiles_clean_up_object._entry.45, ptr @cachefiles_clean_up_object._entry_ptr, ptr @cachefiles_clean_up_object._entry_ptr.47, ptr @cachefiles_invalidate_cookie._entry, ptr @cachefiles_invalidate_cookie._entry.57, ptr @cachefiles_invalidate_cookie._entry.60, ptr @cachefiles_invalidate_cookie._entry.63, ptr @cachefiles_invalidate_cookie._entry.66, ptr @cachefiles_invalidate_cookie._entry.68, ptr @cachefiles_invalidate_cookie._entry_ptr, ptr @cachefiles_invalidate_cookie._entry_ptr.59, ptr @cachefiles_invalidate_cookie._entry_ptr.62, ptr @cachefiles_invalidate_cookie._entry_ptr.65, ptr @cachefiles_invalidate_cookie._entry_ptr.67, ptr @cachefiles_invalidate_cookie._entry_ptr.70, ptr @cachefiles_lookup_cookie._entry, ptr @cachefiles_lookup_cookie._entry.21, ptr @cachefiles_lookup_cookie._entry.24, ptr @cachefiles_lookup_cookie._entry_ptr, ptr @cachefiles_lookup_cookie._entry_ptr.23, ptr @cachefiles_lookup_cookie._entry_ptr.26, ptr @cachefiles_put_object._entry, ptr @cachefiles_put_object._entry.12, ptr @cachefiles_put_object._entry.3, ptr @cachefiles_put_object._entry.6, ptr @cachefiles_put_object._entry.9, ptr @cachefiles_put_object._entry_ptr, ptr @cachefiles_put_object._entry_ptr.11, ptr @cachefiles_put_object._entry_ptr.14, ptr @cachefiles_put_object._entry_ptr.5, ptr @cachefiles_put_object._entry_ptr.8, ptr @cachefiles_resize_cookie._entry, ptr @cachefiles_resize_cookie._entry_ptr, ptr @cachefiles_shorten_object._entry, ptr @cachefiles_shorten_object._entry.52, ptr @cachefiles_shorten_object._entry_ptr, ptr @cachefiles_shorten_object._entry_ptr.54, ptr @cachefiles_withdraw_cookie._entry, ptr @cachefiles_withdraw_cookie._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @cachefiles_cache_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @cachefiles_alloc_object.__key, ptr @.str.29, ptr @cachefiles_object_debug_id, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.69], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_put_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_put_object._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_put_object._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_put_object._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_put_object._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cache_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_lookup_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_lookup_cookie._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_lookup_cookie._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_alloc_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_alloc_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_object_debug_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_adjust_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_adjust_size._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_adjust_size._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_adjust_size._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_withdraw_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_clean_up_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_clean_up_object._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_resize_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_shorten_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_shorten_object._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_invalidate_cookie._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cachefiles_see_object(ptr noundef %object, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %debug_id1 = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_id1, align 4
  %ref = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #8
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %ref, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %why)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_ref(i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_ref, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_ref, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %call42 = tail call i32 @__traceiter_cachefiles_ref(ptr noundef null, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_ref, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_ref, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_ref.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cachefiles_ref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 234, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
define dso_local ptr @cachefiles_grab_object(ptr noundef returned %object, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !146
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !147

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !141

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i) #8
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %2 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_id, align 4
  %4 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object, align 4
  %debug_id1 = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_id1, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %3, i32 noundef %7, i32 noundef %asmresult.i.i.i.i, i32 noundef %why)
  ret ptr %object
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cachefiles_put_object(ptr noundef %object, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %0 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_id, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %debug_id1 = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug_id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_id1, align 4
  %ref = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i.i, label %do.body, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %.not.i.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %.not.i.i, label %if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge, label %if.then10.i.i, !prof !141

if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__refcount_dec_and_test.exit.thread

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %__refcount_dec_and_test.exit.thread

__refcount_dec_and_test.exit.thread:              ; preds = %if.then10.i.i, %if.end5.i.i.__refcount_dec_and_test.exit.thread_crit_edge
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %1, i32 noundef %5, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %why)
  br label %do.body44

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %1, i32 noundef %5, i32 noundef 1, i32 noundef %why)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %7 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.body9_crit_edge, label %do.end

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, i32 noundef %1) #11
  br label %do.body9

do.body9:                                         ; preds = %do.end, %do.body.do.body9_crit_edge
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %cmp.not = icmp eq ptr %13, null
  br i1 %cmp.not, label %do.end38, label %do.end16, !prof !141

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  %14 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file, align 4
  %16 = ptrtoint ptr %15 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef 0) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/interface.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #8, !srcloc !151
  unreachable

do.end38:                                         ; preds = %do.body9
  %d_name = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %17 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_name, align 4
  tail call void @kfree(ptr noundef %18) #8
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %19 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %volume, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %object, align 4
  tail call void @fscache_put_cookie(ptr noundef %26, i32 noundef 11) #8
  %27 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %object, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_object_jar to i32))
  %28 = load ptr, ptr @cachefiles_object_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %object) #8
  %object_count.i = getelementptr inbounds %struct.fscache_cache, ptr %24, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %object_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %object_count.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %object_count.i, ptr %object_count.i, i32 1, ptr elementtype(i32) %object_count.i) #8, !srcloc !153
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end38.do.body44_crit_edge

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef nonnull @fscache_clearance_waiters, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %do.body44

do.body44:                                        ; preds = %if.then.i, %do.end38.do.body44_crit_edge, %__refcount_dec_and_test.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %30 = load i32, ptr @cachefiles_debug, align 4
  %and45 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.do.end59_crit_edge, label %do.end50

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i70 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i70 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task53, align 8
  %comm54 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 101
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %comm54, ptr noundef nonnull @.str.1) #11
  br label %do.end59

do.end59:                                         ; preds = %do.end50, %do.body44.do.end59_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_put_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_acquire_volume(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_free_volume(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cachefiles_lookup_cookie(ptr noundef %cookie) #0 align 64 {
entry:
  %newattrs.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 6
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 8
  %cache1 = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache1, align 4
  %cache_priv = getelementptr inbounds %struct.fscache_cache, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_priv, align 4
  %cache_priv.i = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %cache_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %8 = load i32, ptr @cachefiles_debug, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %key.i = getelementptr inbounds %struct.fscache_volume, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key.i, align 4
  %debug_id.i = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 3
  %15 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_id.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %comm.i, ptr noundef nonnull @.str.28, ptr noundef %14, i32 noundef %16) #11
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_object_jar to i32))
  %17 = load ptr, ptr @cachefiles_object_jar, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3520) #8
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %do.end5.i.cleanup_crit_edge, label %do.body

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %do.end5.i
  %ref.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %ref.i, align 8
  %lock.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @cachefiles_alloc_object.__key, i16 noundef signext 3) #8
  %cache_link.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %cache_link.i, ptr %cache_link.i, align 8
  %prev.i.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cache_link.i, ptr %prev.i.i, align 4
  %volume14.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %volume14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %7, ptr %volume14.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @cachefiles_object_debug_id, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull @cachefiles_object_debug_id, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @cachefiles_object_debug_id, ptr nonnull @cachefiles_object_debug_id, i32 1, ptr nonnull elementtype(i32) @cachefiles_object_debug_id) #8, !srcloc !156
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  %debug_id16.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %asmresult.i.i.i.i.i, ptr %debug_id16.i, align 8
  %call17.i = tail call ptr @fscache_get_cookie(ptr noundef %cookie, i32 noundef 2) #8
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17.i, ptr %call.i.i, align 8
  %25 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cache1, align 4
  %object_count.i.i = getelementptr inbounds %struct.fscache_cache, ptr %26, i32 0, i32 6
  %call.i.i.i36.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %object_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %object_count.i.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %object_count.i.i, ptr %object_count.i.i, i32 1, ptr elementtype(i32) %object_count.i.i) #8, !srcloc !158
  %28 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_id16.i, align 8
  %debug_id20.i = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 3
  %30 = ptrtoint ptr %debug_id20.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_id20.i, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %29, i32 noundef %31, i32 noundef 1, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %32 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i76 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i76 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %37 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug_id16.i, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %comm, ptr noundef nonnull @.str.20, i32 noundef %38) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %call10 = tail call zeroext i1 @cachefiles_cook_key(ptr noundef nonnull %call.i.i) #8
  br i1 %call10, label %if.end12, label %fail_put

if.end12:                                         ; preds = %do.end9
  %cache_priv13 = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 7
  %39 = ptrtoint ptr %cache_priv13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %cache_priv13, align 4
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 8
  %40 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %41) #8
  %call14 = tail call zeroext i1 @cachefiles_look_up_object(ptr noundef nonnull %call.i.i) #8
  br i1 %call14, label %if.end17, label %fail_withdraw

if.end17:                                         ; preds = %if.end12
  %42 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_id16.i, align 8
  %44 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i.i, align 8
  %debug_id1.i = getelementptr inbounds %struct.fscache_cookie, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %debug_id1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_id1.i, align 4
  %call.i.i.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %48 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %ref.i, align 8
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %43, i32 noundef %47, i32 noundef %49, i32 noundef 8) #8
  %object_list_lock = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %object_list_lock) #8
  %object_list = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 6
  %50 = ptrtoint ptr %object_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %object_list, align 4
  %call.i.i80 = tail call zeroext i1 @__list_add_valid(ptr noundef %cache_link.i, ptr noundef %object_list, ptr noundef %51) #8
  br i1 %call.i.i80, label %if.end.i.i, label %if.end17.list_add.exit_crit_edge

if.end17.list_add.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cache_link.i, ptr %prev1.i.i, align 4
  %53 = ptrtoint ptr %cache_link.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %cache_link.i, align 8
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %object_list, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %object_list to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %cache_link.i, ptr %object_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end17.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %object_list_lock) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs.i) #8
  %56 = call ptr @memset(ptr %newattrs.i, i32 255, i32 80)
  %file1.i = getelementptr inbounds %struct.cachefiles_object, ptr %call.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %file1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %file1.i, align 8
  %59 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i.i, align 8
  %object_size.i = getelementptr inbounds %struct.fscache_cookie, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %object_size.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %object_size.i, align 8
  %sub.i = add i64 %62, -1
  %or.i = or i64 %sub.i, 4095
  %add.i = add i64 %or.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %63 = load i32, ptr @cachefiles_debug, align 4
  %and.i81 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i82 = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i82, label %list_add.exit.do.end5.i89_crit_edge, label %do.end.i88

list_add.exit.do.end5.i89_crit_edge:              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i89

do.end.i88:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i83 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i83 to ptr
  %task.i84 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i84, align 8
  %comm.i85 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %68 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_id16.i, align 8
  %call3.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %comm.i85, ptr noundef nonnull @.str.31, i32 noundef %69, i64 noundef %add.i) #11
  br label %do.end5.i89

do.end5.i89:                                      ; preds = %do.end.i88, %list_add.exit.do.end5.i89_crit_edge
  %tobool6.not.i = icmp eq ptr %58, null
  br i1 %tobool6.not.i, label %do.end5.i89.cachefiles_adjust_size.exit_crit_edge, label %if.end8.i

do.end5.i89.cachefiles_adjust_size.exit_crit_edge: ; preds = %do.end5.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_adjust_size.exit

if.end8.i:                                        ; preds = %do.end5.i89
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 2
  %70 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_inode.i.i, align 8
  %call10.i = tail call fastcc i64 @i_size_read(ptr noundef %71) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call10.i, i64 %add.i)
  %cmp.i = icmp eq i64 %call10.i, %add.i
  br i1 %cmp.i, label %if.end8.i.cachefiles_adjust_size.exit_crit_edge, label %if.end12.i

if.end8.i.cachefiles_adjust_size.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_adjust_size.exit

if.end12.i:                                       ; preds = %if.end8.i
  %72 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %f_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #8
  %and14.i = and i64 %call10.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp ne i64 %and14.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call10.i)
  %cmp16.i = icmp ugt i64 %add.i, %call10.i
  %or.cond.i = select i1 %tobool15.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %do.body18.i, label %if.end12.i.if.end43.i_crit_edge

if.end12.i.if.end43.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

do.body18.i:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %74 = load i32, ptr @cachefiles_debug, align 4
  %and19.i = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body18.i.do.end33.i_crit_edge, label %do.end24.i

do.body18.i.do.end33.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33.i

do.end24.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i2.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i2.i to ptr
  %task27.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task27.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task27.i, align 8
  %comm28.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 101
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %comm28.i, i64 noundef %call10.i) #11
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end24.i, %do.body18.i.do.end33.i_crit_edge
  %79 = ptrtoint ptr %newattrs.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %newattrs.i, align 8
  %and34.i = and i64 %call10.i, -4096
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i, i32 0, i32 4
  %80 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %and34.i, ptr %ia_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %81 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i3.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %if.end39.i, label %do.end33.i.truncate_failed.i_crit_edge

do.end33.i.truncate_failed.i_crit_edge:           ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_failed.i

if.end39.i:                                       ; preds = %do.end33.i
  %dentry.i = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dentry.i, align 4
  %call38.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %83, ptr noundef nonnull %newattrs.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp40.i = icmp slt i32 %call38.i, 0
  br i1 %cmp40.i, label %if.end39.i.truncate_failed.i_crit_edge, label %if.end39.i.if.end43.i_crit_edge

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end39.i.truncate_failed.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_failed.i

if.end43.i:                                       ; preds = %if.end39.i.if.end43.i_crit_edge, %if.end12.i.if.end43.i_crit_edge
  %84 = ptrtoint ptr %newattrs.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %newattrs.i, align 8
  %ia_size45.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i, i32 0, i32 4
  %85 = ptrtoint ptr %ia_size45.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %add.i, ptr %ia_size45.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %86 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i4.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  %and1.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %cond.i6.i = select i1 %tobool2.not.i.i, i32 0, i32 -28
  %cond3.i.i = select i1 %tobool.not.i5.i, i32 %cond.i6.i, i32 -5
  %87 = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %if.then48.i, label %if.end43.i.truncate_failed.i_crit_edge

if.end43.i.truncate_failed.i_crit_edge:           ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate_failed.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %dentry50.i = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %dentry50.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dentry50.i, align 4
  %call51.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %90, ptr noundef nonnull %newattrs.i, ptr noundef null) #8
  br label %truncate_failed.i

truncate_failed.i:                                ; preds = %if.then48.i, %if.end43.i.truncate_failed.i_crit_edge, %if.end39.i.truncate_failed.i_crit_edge, %do.end33.i.truncate_failed.i_crit_edge
  %ret.1.i = phi i32 [ %call38.i, %if.end39.i.truncate_failed.i_crit_edge ], [ %call51.i, %if.then48.i ], [ %cond3.i.i, %if.end43.i.truncate_failed.i_crit_edge ], [ -5, %do.end33.i.truncate_failed.i_crit_edge ]
  %91 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %f_inode.i.i, align 8
  %i_rwsem.i8.i = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp54.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp54.i, label %if.end57.i, label %truncate_failed.i.do.body74.i_crit_edge

truncate_failed.i.do.body74.i_crit_edge:          ; preds = %truncate_failed.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74.i

if.end57.i:                                       ; preds = %truncate_failed.i
  %93 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %f_inode.i.i, align 8
  call fastcc void @trace_cachefiles_io_error(ptr noundef null, ptr noundef %94, i32 noundef %ret.1.i, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %ret.1.i)
  %cmp58.i = icmp eq i32 %ret.1.i, -5
  br i1 %cmp58.i, label %do.body60.i, label %if.end57.i.do.body74.i_crit_edge

if.end57.i.do.body74.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74.i

do.body60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %volume14.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %volume14.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %99 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_id16.i, align 8
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %100) #11
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 8
  call void @fscache_io_error(ptr noundef %102) #8
  %flags.i = getelementptr inbounds %struct.cachefiles_cache, ptr %98, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #8
  br label %do.body74.i

do.body74.i:                                      ; preds = %do.body60.i, %if.end57.i.do.body74.i_crit_edge, %truncate_failed.i.do.body74.i_crit_edge
  %ret.2.i = phi i32 [ -105, %do.body60.i ], [ %ret.1.i, %if.end57.i.do.body74.i_crit_edge ], [ %ret.1.i, %truncate_failed.i.do.body74.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %103 = load i32, ptr @cachefiles_debug, align 4
  %and75.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %do.body74.i.cachefiles_adjust_size.exit_crit_edge, label %do.end80.i

do.body74.i.cachefiles_adjust_size.exit_crit_edge: ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_adjust_size.exit

do.end80.i:                                       ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i10.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i10.i to ptr
  %task83.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task83.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task83.i, align 8
  %comm84.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 101
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %comm84.i, ptr noundef nonnull @.str.31, i32 noundef %ret.2.i) #11
  br label %cachefiles_adjust_size.exit

cachefiles_adjust_size.exit:                      ; preds = %do.end80.i, %do.body74.i.cachefiles_adjust_size.exit_crit_edge, %if.end8.i.cachefiles_adjust_size.exit_crit_edge, %do.end5.i89.cachefiles_adjust_size.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs.i) #8
  call void @revert_creds(ptr noundef %call.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %108 = load i32, ptr @cachefiles_debug, align 4
  %and21 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cachefiles_adjust_size.exit.cleanup_crit_edge, label %do.end26

cachefiles_adjust_size.exit.cleanup_crit_edge:    ; preds = %cachefiles_adjust_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %cachefiles_adjust_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %109 = call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i91 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i91 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %task29, align 8
  %comm30 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 101
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %comm30, ptr noundef nonnull @.str.20) #11
  br label %cleanup

fail_withdraw:                                    ; preds = %if.end12
  tail call void @revert_creds(ptr noundef %call.i) #8
  %113 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %debug_id16.i, align 8
  %115 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i.i, align 8
  %debug_id1.i93 = getelementptr inbounds %struct.fscache_cookie, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %debug_id1.i93 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug_id1.i93, align 4
  %call.i.i.i.i95 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %119 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %ref.i, align 8
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %114, i32 noundef %118, i32 noundef %120, i32 noundef 9) #8
  tail call void @fscache_caching_failed(ptr noundef %cookie) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %121 = load i32, ptr @cachefiles_debug, align 4
  %and37 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %fail_withdraw.cleanup_crit_edge, label %do.end42

fail_withdraw.cleanup_crit_edge:                  ; preds = %fail_withdraw
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %fail_withdraw
  call void @__sanitizer_cov_trace_pc() #10
  %122 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i96 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i96 to ptr
  %task45 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task45 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task45, align 8
  %comm46 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 101
  %126 = ptrtoint ptr %debug_id20.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_id20.i, align 4
  %128 = ptrtoint ptr %debug_id16.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %debug_id16.i, align 8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm46, i32 noundef %127, i32 noundef %129) #11
  br label %cleanup

fail_put:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cachefiles_put_object(ptr noundef nonnull %call.i.i, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %fail_put, %do.end42, %fail_withdraw.cleanup_crit_edge, %do.end26, %cachefiles_adjust_size.exit.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end26 ], [ true, %cachefiles_adjust_size.exit.cleanup_crit_edge ], [ false, %do.end42 ], [ false, %fail_withdraw.cleanup_crit_edge ], [ false, %fail_put ], [ false, %do.end5.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_withdraw_cookie(ptr nocapture noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_priv = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 7
  %0 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv, align 4
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volume, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %6 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %comm, ptr noundef nonnull @.str.42, i32 noundef %12) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %debug_id.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %debug_id1.i = getelementptr inbounds %struct.fscache_cookie, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %debug_id1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_id1.i, align 4
  %ref.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %ref.i, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %14, i32 noundef %18, i32 noundef %20, i32 noundef 10) #8
  %cache_link = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %cache_link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %cache_link, align 4
  %cmp.i.not = icmp eq ptr %22, %cache_link
  br i1 %cmp.i.not, label %do.end5.if.end11_crit_edge, label %if.then8

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %do.end5
  %object_list_lock = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %object_list_lock) #8
  %23 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_id.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %debug_id1.i30 = getelementptr inbounds %struct.fscache_cookie, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %debug_id1.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id1.i30, align 4
  %call.i.i.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %ref.i, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %24, i32 noundef %28, i32 noundef %30, i32 noundef 11) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cache_link) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %cache_link to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cache_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %cache_link to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %cache_link, ptr %cache_link, align 4
  %prev.i3.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cache_link, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %object_list_lock) #8
  br label %if.end11

if.end11:                                         ; preds = %list_del_init.exit, %do.end5.if.end11_crit_edge
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %file, align 4
  %tobool12.not = icmp eq ptr %40, null
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %5, i32 0, i32 8
  %41 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %42) #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.fscache_cookie, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.else28.i, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  %flags1.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags1.i, align 4
  %and1.i49.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i49.i)
  %tobool3.not.i = icmp eq i32 %and1.i49.i, 0
  %50 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_id.i, align 4
  %debug_id1.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %44, i32 0, i32 3
  %52 = ptrtoint ptr %debug_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_id1.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %54 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %ref.i, align 4
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef 6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %56 = load i32, ptr @cachefiles_debug, align 4
  %and.i33 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool5.not.i = icmp eq i32 %and.i33, 0
  br i1 %tobool5.not.i, label %if.then4.i.do.end10.i_crit_edge, label %do.end.i

if.then4.i.do.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %61 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_id.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %comm.i, i32 noundef %62) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.then4.i.do.end10.i_crit_edge
  %call11.i = tail call i32 @cachefiles_delete_object(ptr noundef %1, i32 noundef 4) #8
  br label %if.end29.i

if.else.i:                                        ; preds = %if.then.i
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef 7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %63 = load i32, ptr @cachefiles_debug, align 4
  %and13.i = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i.if.end29.i_crit_edge, label %do.end17.i

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i54.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i54.i to ptr
  %task20.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task20.i, align 8
  %comm21.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 101
  %68 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_id.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %comm21.i, i32 noundef %69) #11
  br label %if.end29.i

if.else28.i:                                      ; preds = %if.then13
  %70 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_id.i, align 4
  %debug_id1.i56.i = getelementptr inbounds %struct.fscache_cookie, ptr %44, i32 0, i32 3
  %72 = ptrtoint ptr %debug_id1.i56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug_id1.i56.i, align 4
  %call.i.i.i.i58.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #8
  %74 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %ref.i, align 4
  tail call fastcc void @trace_cachefiles_ref(i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef 5) #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %77, i32 0, i32 14
  %call.i.i34 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flags.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool.not.i.i = icmp ne i32 %call.i.i34, 0
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %flags2.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %79, i32 0, i32 14
  %call3.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp ne i32 %call3.i.i, 0
  %update.1.off0.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %update.1.off0.i.i, label %if.then8.i.i, label %if.else28.i.if.end10.i.i_crit_edge

if.else28.i.if.end10.i.i_crit_edge:               ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i = tail call i32 @cachefiles_set_object_xattr(ptr noundef %1) #8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %if.else28.i.if.end10.i.i_crit_edge
  %flags11.i.i = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 10
  %80 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags11.i.i, align 4
  %and1.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool13.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end10.i.i.if.end29.i_crit_edge, label %if.then14.i.i

if.end10.i.i.if.end29.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = tail call zeroext i1 @cachefiles_commit_tmpfile(ptr noundef %5, ptr noundef %1) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then14.i.i, %if.end10.i.i.if.end29.i_crit_edge, %do.end17.i, %if.else.i.if.end29.i_crit_edge, %do.end10.i
  %82 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %file, align 4
  tail call void @cachefiles_unmark_inode_in_use(ptr noundef %1, ptr noundef %83) #8
  %84 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %file, align 4
  %tobool31.not.i = icmp eq ptr %85, null
  br i1 %tobool31.not.i, label %if.end29.i.cachefiles_clean_up_object.exit_crit_edge, label %if.then32.i

if.end29.i.cachefiles_clean_up_object.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_clean_up_object.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %85) #8
  %86 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %file, align 4
  br label %cachefiles_clean_up_object.exit

cachefiles_clean_up_object.exit:                  ; preds = %if.then32.i, %if.end29.i.cachefiles_clean_up_object.exit_crit_edge
  tail call void @revert_creds(ptr noundef %call.i) #8
  br label %if.end14

if.end14:                                         ; preds = %cachefiles_clean_up_object.exit, %if.end11.if.end14_crit_edge
  %87 = ptrtoint ptr %cache_priv to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %cache_priv, align 4
  tail call void @cachefiles_put_object(ptr noundef %1, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_resize_cookie(ptr nocapture noundef readonly %cres, i64 noundef %new_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %cache_priv2.i = getelementptr inbounds %struct.netfs_cache_resources, ptr %cres, i32 0, i32 2
  %10 = ptrtoint ptr %cache_priv2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_priv2.i, align 4
  %object_size = getelementptr inbounds %struct.fscache_cookie, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %object_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %object_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %14 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm, ptr noundef nonnull @.str.49, i64 noundef %13, i64 noundef %new_size) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %new_size)
  %cmp = icmp sgt i64 %13, %new_size
  br i1 %cmp, label %if.then9, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %do.end8
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %20) #8
  %21 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %volume, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i.i, align 8
  %sub.i = add i64 %new_size, -1
  %or.i = or i64 %sub.i, 4095
  %add.i = add i64 %or.i, 1
  %call2.i = tail call fastcc i64 @i_size_read(ptr noundef %26) #8
  tail call fastcc void @trace_cachefiles_trunc(ptr noundef %3, ptr noundef %26, i64 noundef %call2.i, i64 noundef %add.i, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %27 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then9.if.then6.i_crit_edge

if.then9.if.then6.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end.i:                                         ; preds = %if.then9
  %f_path.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1
  %call4.i = tail call i32 @vfs_truncate(ptr noundef %f_path.i, i64 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.if.then6.i_crit_edge, label %if.end20.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.then9.if.then6.i_crit_edge
  %ret.011.i = phi i32 [ %call4.i, %if.end.i.if.then6.i_crit_edge ], [ -5, %if.then9.if.then6.i_crit_edge ]
  %28 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i.i, align 8
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %3, ptr noundef %29, i32 noundef %ret.011.i, i32 noundef 14) #8
  %30 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %volume, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %debug_id.i = getelementptr inbounds %struct.cachefiles_object, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_id.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %ret.011.i, i32 noundef %35) #11
  br label %cleanup.sink.split.i

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %new_size)
  %cmp21.i = icmp sgt i64 %add.i, %new_size
  br i1 %cmp21.i, label %if.then22.i, label %if.end20.i.cachefiles_shorten_object.exit_crit_edge

if.end20.i.cachefiles_shorten_object.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_shorten_object.exit

if.then22.i:                                      ; preds = %if.end20.i
  tail call fastcc void @trace_cachefiles_trunc(ptr noundef %3, ptr noundef %26, i64 noundef %add.i, i64 noundef %new_size, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %36 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i2.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %cond.i4.i = select i1 %tobool2.not.i.i, i32 0, i32 -28
  %cond3.i.i = select i1 %tobool.not.i3.i, i32 %cond.i4.i, i32 -5
  %37 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %if.end28.i, label %if.then22.i.if.then30.i_crit_edge

if.then22.i.if.then30.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

if.end28.i:                                       ; preds = %if.then22.i
  %sub26.i = sub i64 %add.i, %new_size
  %call27.i = tail call i32 @vfs_fallocate(ptr noundef %11, i32 noundef 16, i64 noundef %new_size, i64 noundef %sub26.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp29.i = icmp slt i32 %call27.i, 0
  br i1 %cmp29.i, label %if.end28.i.if.then30.i_crit_edge, label %if.end28.i.cachefiles_shorten_object.exit_crit_edge

if.end28.i.cachefiles_shorten_object.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cachefiles_shorten_object.exit

if.end28.i.if.then30.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end28.i.if.then30.i_crit_edge, %if.then22.i.if.then30.i_crit_edge
  %ret.18.i = phi i32 [ %call27.i, %if.end28.i.if.then30.i_crit_edge ], [ %cond3.i.i, %if.then22.i.if.then30.i_crit_edge ]
  %39 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_inode.i.i, align 8
  tail call fastcc void @trace_cachefiles_io_error(ptr noundef %3, ptr noundef %40, i32 noundef %ret.18.i, i32 noundef 0) #8
  %41 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %volume, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %debug_id41.i = getelementptr inbounds %struct.cachefiles_object, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %debug_id41.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug_id41.i, align 4
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %ret.18.i, i32 noundef %46) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then30.i, %if.then6.i
  %.sink13.i = phi ptr [ %44, %if.then30.i ], [ %33, %if.then6.i ]
  %47 = ptrtoint ptr %.sink13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.sink13.i, align 8
  tail call void @fscache_io_error(ptr noundef %48) #8
  %flags44.i = getelementptr inbounds %struct.cachefiles_cache, ptr %.sink13.i, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags44.i) #8
  %dentry50.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %dentry50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dentry50.i, align 4
  %call51.i = tail call i32 @cachefiles_remove_object_xattr(ptr noundef %24, ptr noundef %3, ptr noundef %50) #8
  br label %cachefiles_shorten_object.exit

cachefiles_shorten_object.exit:                   ; preds = %cleanup.sink.split.i, %if.end28.i.cachefiles_shorten_object.exit_crit_edge, %if.end20.i.cachefiles_shorten_object.exit_crit_edge
  tail call void @revert_creds(ptr noundef %call.i) #8
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %object_size12 = getelementptr inbounds %struct.fscache_cookie, ptr %52, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %cachefiles_shorten_object.exit, %do.end8.cleanup_crit_edge
  %object_size.sink = phi ptr [ %object_size12, %cachefiles_shorten_object.exit ], [ %object_size, %do.end8.cleanup_crit_edge ]
  %53 = ptrtoint ptr %object_size.sink to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %new_size, ptr %object_size.sink, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cachefiles_invalidate_cookie(ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_priv = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 7
  %0 = ptrtoint ptr %cache_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %2 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %object_size = getelementptr inbounds %struct.fscache_cookie, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %object_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %object_size, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm, ptr noundef nonnull @.str.56, i32 noundef %8, i64 noundef %12) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool7.not = icmp eq i32 %and1.i, 0
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %file, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.then9, label %if.end26

if.then9:                                         ; preds = %do.end5
  tail call void @fscache_resume_after_invalidation(ptr noundef %cookie) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %17 = load i32, ptr @cachefiles_debug, align 4
  %and11 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then9.cleanup_crit_edge, label %if.then9.cleanup.sink.split_crit_edge

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %do.end5
  %call27 = tail call ptr @cachefiles_create_tmpfile(ptr noundef %1) #8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %18 = load i32, ptr @cachefiles_debug, align 4
  br i1 %cmp.i, label %do.body94, label %do.body31

do.body31:                                        ; preds = %if.end26
  %and32 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end46_crit_edge, label %do.end37

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i135 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i135 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task40, align 8
  %comm41 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %comm41) #11
  br label %do.end46

do.end46:                                         ; preds = %do.end37, %do.body31.do.end46_crit_edge
  %lock = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %23 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %file, align 4
  store ptr %call27, ptr %file, align 4
  %content_info = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %content_info to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %content_info, align 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %flags51 = getelementptr inbounds %struct.fscache_cookie, ptr %27, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags51) #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %28 = load i32, ptr @cachefiles_debug, align 4
  %and54 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.end46.do.end68_crit_edge, label %do.end59

do.end46.do.end68_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68

do.end59:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i136 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i136 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task62, align 8
  %comm63 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %comm63) #11
  br label %do.end68

do.end68:                                         ; preds = %do.end59, %do.end46.do.end68_crit_edge
  tail call void @fscache_resume_after_invalidation(ptr noundef %cookie) #8
  %tobool69.not = icmp eq ptr %24, null
  br i1 %tobool69.not, label %do.end68.do.body78_crit_edge, label %if.then70

do.end68.do.body78_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78

if.then70:                                        ; preds = %do.end68
  br i1 %tobool7.not, label %if.then72, label %if.then70.if.end76_crit_edge

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %volume73 = getelementptr inbounds %struct.cachefiles_object, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %volume73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %volume73, align 4
  %key_hash = getelementptr inbounds %struct.fscache_cookie, ptr %cookie, i32 0, i32 19
  %35 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_hash, align 4
  %idxprom = and i32 %36, 255
  %arrayidx = getelementptr %struct.cachefiles_volume, ptr %34, i32 0, i32 4, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #8
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %34, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dentry, align 4
  %call75 = tail call i32 @cachefiles_bury_object(ptr noundef %42, ptr noundef %1, ptr noundef %38, ptr noundef %44, i32 noundef 2) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then70.if.end76_crit_edge
  tail call void @fput(ptr noundef nonnull %24) #8
  br label %do.body78

do.body78:                                        ; preds = %if.end76, %do.end68.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %45 = load i32, ptr @cachefiles_debug, align 4
  %and79 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %do.body78.cleanup.sink.split_crit_edge

do.body78.cleanup.sink.split_crit_edge:           ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body94:                                        ; preds = %if.end26
  %and95 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body94.cleanup_crit_edge, label %do.body94.cleanup.sink.split_crit_edge

do.body94.cleanup.sink.split_crit_edge:           ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body94.cleanup_crit_edge:                      ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body94.cleanup.sink.split_crit_edge, %do.body78.cleanup.sink.split_crit_edge, %if.then9.cleanup.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.58, %if.then9.cleanup.sink.split_crit_edge ], [ @.str.22, %do.body78.cleanup.sink.split_crit_edge ], [ @.str.69, %do.body94.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i1 [ true, %if.then9.cleanup.sink.split_crit_edge ], [ true, %do.body78.cleanup.sink.split_crit_edge ], [ false, %do.body94.cleanup.sink.split_crit_edge ]
  %46 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i138 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i138 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task103, align 8
  %comm104 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 101
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.69.sink, ptr noundef %comm104, ptr noundef nonnull @.str.56) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body94.cleanup_crit_edge, %do.body78.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then9.cleanup_crit_edge ], [ true, %do.body78.cleanup_crit_edge ], [ false, %do.body94.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cachefiles_begin_operation(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_prepare_to_write(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_ref(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cachefiles_cook_key(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cachefiles_look_up_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_caching_failed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscache_get_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !159
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !160
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !147

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !161
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !163
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !164
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !165
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_io_error(ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_io_error, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !166
  %call42 = tail call i32 @__traceiter_cachefiles_io_error(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !167
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_io_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cachefiles_io_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 672, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
declare dso_local void @fscache_io_error(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_io_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_delete_object(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_unmark_inode_in_use(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_set_object_xattr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cachefiles_commit_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_trunc(ptr noundef %obj, ptr noundef %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_trunc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !140

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !141

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !168
  %call42 = tail call i32 @__traceiter_cachefiles_trunc(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !169
  %13 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !141

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !130) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_trunc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_cachefiles_trunc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 555, ptr noundef nonnull @.str.17) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %31 = tail call i32 @llvm.read_register.i32(metadata !130) #8
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
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_remove_object_xattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_trunc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_resume_after_invalidation(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cachefiles_create_tmpfile(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_bury_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/interface.c", i32 86, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_put_object._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_put_object._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/interface.c", i32 88, i32 3}
!8 = !{ptr @cachefiles_put_object._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_put_object._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cachefiles_put_object._entry.6, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @cachefiles_put_object._entry_ptr.8, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cachefiles_put_object._entry.9, !7, !"_entry", i1 false, i1 false}
!15 = !{ptr @cachefiles_put_object._entry_ptr.11, !7, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/cachefiles/interface.c", i32 99, i32 2}
!18 = !{ptr @cachefiles_put_object._entry.12, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cachefiles_put_object._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/cachefiles/interface.c", i32 436, i32 12}
!22 = !{ptr @cachefiles_cache_ops, !23, !"cachefiles_cache_ops", i1 false, i1 false}
!23 = !{!"../fs/cachefiles/interface.c", i32 435, i32 32}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/trace/events/cachefiles.h", i32 208, i32 1}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/cachefiles/interface.c", i32 183, i32 2}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cachefiles_lookup_cookie._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cachefiles_lookup_cookie._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/cachefiles/interface.c", i32 204, i32 2}
!39 = !{ptr @cachefiles_lookup_cookie._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cachefiles_lookup_cookie._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/cachefiles/interface.c", i32 211, i32 2}
!43 = !{ptr @cachefiles_lookup_cookie._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cachefiles_lookup_cookie._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/cachefiles/interface.c", i32 28, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cachefiles_alloc_object._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cachefiles_alloc_object._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @cachefiles_alloc_object.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../fs/cachefiles/interface.c", i32 36, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cachefiles_object_debug_id, !54, !"cachefiles_object_debug_id", i1 false, i1 false}
!54 = !{!"../fs/cachefiles/interface.c", i32 16, i32 17}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/cachefiles/interface.c", i32 120, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cachefiles_adjust_size._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @cachefiles_adjust_size._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/cachefiles/interface.c", i32 136, i32 3}
!62 = !{ptr @cachefiles_adjust_size._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cachefiles_adjust_size._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/cachefiles/interface.c", i32 161, i32 3}
!66 = !{ptr @cachefiles_adjust_size._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cachefiles_adjust_size._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/cachefiles/interface.c", i32 165, i32 2}
!70 = !{ptr @cachefiles_adjust_size._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cachefiles_adjust_size._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/trace/events/cachefiles.h", i32 647, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/cachefiles/interface.c", i32 355, i32 2}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cachefiles_withdraw_cookie._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cachefiles_withdraw_cookie._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/cachefiles/interface.c", i32 328, i32 4}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cachefiles_clean_up_object._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @cachefiles_clean_up_object._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/cachefiles/interface.c", i32 332, i32 4}
!87 = !{ptr @cachefiles_clean_up_object._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cachefiles_clean_up_object._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/cachefiles/interface.c", i32 283, i32 2}
!91 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cachefiles_resize_cookie._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cachefiles_resize_cookie._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cachefiles/interface.c", i32 246, i32 3}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cachefiles_shorten_object._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cachefiles_shorten_object._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/cachefiles/interface.c", i32 261, i32 4}
!101 = !{ptr @cachefiles_shorten_object._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cachefiles_shorten_object._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/trace/events/cachefiles.h", i32 527, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/cachefiles/interface.c", i32 384, i32 2}
!108 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cachefiles_invalidate_cookie._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @cachefiles_invalidate_cookie._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/cachefiles/interface.c", i32 390, i32 3}
!113 = !{ptr @cachefiles_invalidate_cookie._entry.57, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cachefiles_invalidate_cookie._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/cachefiles/interface.c", i32 399, i32 2}
!117 = !{ptr @cachefiles_invalidate_cookie._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cachefiles_invalidate_cookie._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/cachefiles/interface.c", i32 409, i32 2}
!121 = !{ptr @cachefiles_invalidate_cookie._entry.63, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cachefiles_invalidate_cookie._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cachefiles_invalidate_cookie._entry.66, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../fs/cachefiles/interface.c", i32 427, i32 2}
!125 = !{ptr @cachefiles_invalidate_cookie._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/cachefiles/interface.c", i32 431, i32 2}
!128 = !{ptr @cachefiles_invalidate_cookie._entry.68, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cachefiles_invalidate_cookie._entry_ptr.70, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 2148211795, i64 2148211800, i64 2148211813, i64 2148211857, i64 2148211891, i64 2148211912}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2155116804}
!143 = !{i64 2155117083}
!144 = !{i64 2149936499}
!145 = !{i64 2149937535}
!146 = !{i64 2148592599, i64 2148592631, i64 2148592660, i64 2148592694, i64 2148592725, i64 2148592748}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2148680624}
!149 = !{i64 2148595064, i64 2148595096, i64 2148595125, i64 2148595159, i64 2148595190, i64 2148595213}
!150 = !{i64 2149878397}
!151 = !{i64 2155463115, i64 2155463604, i64 2155463152, i64 2155463208, i64 2155463242, i64 2155463266, i64 2155463307, i64 2155463328, i64 2155463356, i64 2155463390}
!152 = !{i64 2148679545}
!153 = !{i64 2148594254, i64 2148594286, i64 2148594315, i64 2148594349, i64 2148594380, i64 2148594403}
!154 = !{i64 2148679774}
!155 = !{i64 2148676504}
!156 = !{i64 2148591789, i64 2148591821, i64 2148591850, i64 2148591884, i64 2148591915, i64 2148591938}
!157 = !{i64 2148676733}
!158 = !{i64 2148591069, i64 2148591095, i64 2148591124, i64 2148591158, i64 2148591189, i64 2148591212}
!159 = !{i64 995749, i64 995810}
!160 = !{i64 998481}
!161 = !{i64 998766}
!162 = !{i64 2153115907}
!163 = !{i64 2153115749}
!164 = !{i64 2153116077}
!165 = !{i64 2149770468}
!166 = !{i64 2155433154}
!167 = !{i64 2155433405}
!168 = !{i64 2155340622}
!169 = !{i64 2155340869}
