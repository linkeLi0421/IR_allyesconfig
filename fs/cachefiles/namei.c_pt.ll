; ModuleID = '/llk/IR_all_yes/fs/cachefiles/namei.c_pt.bc'
source_filename = "../fs/cachefiles/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.26 }
%union.anon.26 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cachefiles_object = type { ptr, ptr, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.refcount_struct, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.6, ptr }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.cachefiles_cache = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.75, %union.anon.76 }
%union.anon.75 = type { ptr, [12 x i8] }
%union.anon.76 = type { ptr, [4 x i8] }
%struct.cachefiles_volume = type { ptr, %struct.list_head, ptr, ptr, [256 x ptr] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cachefiles_debug = external dso_local local_unnamed_addr global i32, align 4
@cachefiles_get_directory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] ==> %s(,,%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_get_directory\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/cachefiles/namei.c\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr = internal global ptr @cachefiles_get_directory._entry, section ".printk_index", align 4
@cachefiles_get_directory._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017[%-6.6s] subdir -> %pd %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.5 = internal global ptr @cachefiles_get_directory._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"positive\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"negative\00", [23 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] attempt mkdir\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.10 = internal global ptr @cachefiles_get_directory._entry.8, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@cachefiles_get_directory._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013CacheFiles: \0A\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.13 = internal global ptr @cachefiles_get_directory._entry.11, section ".printk_index", align 4
@cachefiles_get_directory._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CacheFiles: Assertion failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.16 = internal global ptr @cachefiles_get_directory._entry.14, section ".printk_index", align 4
@cachefiles_get_directory._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017[%-6.6s] mkdir -> %pd{ino=%lu}\0A\00", [62 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.19 = internal global ptr @cachefiles_get_directory._entry.17, section ".printk_index", align 4
@cachefiles_get_directory._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.21 = internal global ptr @cachefiles_get_directory._entry.20, section ".printk_index", align 4
@cachefiles_get_directory._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.23 = internal global ptr @cachefiles_get_directory._entry.22, section ".printk_index", align 4
@cachefiles_get_directory._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CacheFiles: %s is not a directory\0A\00", [59 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.26 = internal global ptr @cachefiles_get_directory._entry.24, section ".printk_index", align 4
@cachefiles_get_directory._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017[%-6.6s] <== %s() = [%lu]\0A\00", [35 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.29 = internal global ptr @cachefiles_get_directory._entry.27, section ".printk_index", align 4
@cachefiles_get_directory._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017[%-6.6s] <== %s() = %d [check]\0A\00", [62 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.32 = internal global ptr @cachefiles_get_directory._entry.30, section ".printk_index", align 4
@cachefiles_get_directory._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013CacheFiles: mkdir %s failed with error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.35 = internal global ptr @cachefiles_get_directory._entry.33, section ".printk_index", align 4
@cachefiles_get_directory._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CacheFiles: Lookup %s failed with error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.38 = internal global ptr @cachefiles_get_directory._entry.36, section ".printk_index", align 4
@cachefiles_get_directory._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() = -ENOMEM\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_get_directory._entry_ptr.41 = internal global ptr @cachefiles_get_directory._entry.39, section ".printk_index", align 4
@cachefiles_bury_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017[%-6.6s] ==> %s(,'%pd','%pd')\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_bury_object\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr = internal global ptr @cachefiles_bury_object._entry, section ".printk_index", align 4
@cachefiles_bury_object._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() = -ESTALE\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.46 = internal global ptr @cachefiles_bury_object._entry.44, section ".printk_index", align 4
@cachefiles_bury_object._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.49 = internal global ptr @cachefiles_bury_object._entry.47, section ".printk_index", align 4
@cachefiles_bury_object._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017[%-6.6s] move stale object to graveyard\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.52 = internal global ptr @cachefiles_bury_object._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%08x%08x\00", [23 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.43, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017[%-6.6s] <== %s() = 0 [culled?]\0A\00", [61 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.56 = internal global ptr @cachefiles_bury_object._entry.54, section ".printk_index", align 4
@cachefiles_bury_object._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CacheFiles: I/O Error: Graveyard no longer a directory\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.59 = internal global ptr @cachefiles_bury_object._entry.57, section ".printk_index", align 4
@cachefiles_bury_object._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.43, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CacheFiles: I/O Error: May not make directory loop\0A\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.62 = internal global ptr @cachefiles_bury_object._entry.60, section ".printk_index", align 4
@cachefiles_bury_object._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.43, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CacheFiles: I/O Error: Mountpoint in cache\0A\00", [50 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.65 = internal global ptr @cachefiles_bury_object._entry.63, section ".printk_index", align 4
@cachefiles_bury_object._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.43, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.67 = internal global ptr @cachefiles_bury_object._entry.66, section ".printk_index", align 4
@cachefiles_bury_object._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.43, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013CacheFiles: I/O Error: Lookup error %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.70 = internal global ptr @cachefiles_bury_object._entry.68, section ".printk_index", align 4
@cachefiles_bury_object._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.43, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013CacheFiles: I/O Error: Mountpoint in graveyard\0A\00", [46 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.73 = internal global ptr @cachefiles_bury_object._entry.71, section ".printk_index", align 4
@cachefiles_bury_object._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.43, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.75 = internal global ptr @cachefiles_bury_object._entry.74, section ".printk_index", align 4
@cachefiles_bury_object._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.43, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CacheFiles: I/O Error: Rename security error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.78 = internal global ptr @cachefiles_bury_object._entry.76, section ".printk_index", align 4
@cachefiles_bury_object._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.43, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013CacheFiles: I/O Error: Rename failed with error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.81 = internal global ptr @cachefiles_bury_object._entry.79, section ".printk_index", align 4
@cachefiles_bury_object._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.43, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] <== %s() = 0\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_bury_object._entry_ptr.84 = internal global ptr @cachefiles_bury_object._entry.82, section ".printk_index", align 4
@cachefiles_delete_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017[%-6.6s] ==> %s(,OBJ%x{%pD})\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_delete_object\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_delete_object._entry_ptr = internal global ptr @cachefiles_delete_object._entry, section ".printk_index", align 4
@cachefiles_create_tmpfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013CacheFiles: I/O Error: Failed to create tmpfile [o=%08x]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_create_tmpfile\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_create_tmpfile._entry_ptr = internal global ptr @cachefiles_create_tmpfile._entry, section ".printk_index", align 4
@cachefiles_create_tmpfile._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015CacheFiles: Cache does not support read_iter and write_iter\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_create_tmpfile._entry_ptr.91 = internal global ptr @cachefiles_create_tmpfile._entry.89, section ".printk_index", align 4
@cachefiles_look_up_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017[%-6.6s] ==> %s(OBJ%x,%s,)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_look_up_object\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_look_up_object._entry_ptr = internal global ptr @cachefiles_look_up_object._entry, section ".printk_index", align 4
@cachefiles_look_up_object._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013CacheFiles: I/O Error: Lookup failed [o=%08x]\0A\00", [47 x i8] zeroinitializer }, align 32
@cachefiles_look_up_object._entry_ptr.96 = internal global ptr @cachefiles_look_up_object._entry.94, section ".printk_index", align 4
@cachefiles_look_up_object._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CacheFiles: %pd is not a file\0A\00", [63 x i8] zeroinitializer }, align 32
@cachefiles_look_up_object._entry_ptr.99 = internal global ptr @cachefiles_look_up_object._entry.97, section ".printk_index", align 4
@cachefiles_look_up_object._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017[%-6.6s] <== %s() = t [%lu]\0A\00", [33 x i8] zeroinitializer }, align 32
@cachefiles_look_up_object._entry_ptr.102 = internal global ptr @cachefiles_look_up_object._entry.100, section ".printk_index", align 4
@cachefiles_commit_tmpfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] ==> %s(,%pD)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_commit_tmpfile\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_commit_tmpfile._entry_ptr = internal global ptr @cachefiles_commit_tmpfile._entry, section ".printk_index", align 4
@cachefiles_commit_tmpfile._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017[%-6.6s] lookup fail %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@cachefiles_commit_tmpfile._entry_ptr.107 = internal global ptr @cachefiles_commit_tmpfile._entry.105, section ".printk_index", align 4
@cachefiles_commit_tmpfile._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_commit_tmpfile._entry_ptr.109 = internal global ptr @cachefiles_commit_tmpfile._entry.108, section ".printk_index", align 4
@cachefiles_commit_tmpfile._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.104, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017[%-6.6s] link fail %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cachefiles_commit_tmpfile._entry_ptr.112 = internal global ptr @cachefiles_commit_tmpfile._entry.110, section ".printk_index", align 4
@cachefiles_commit_tmpfile._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.104, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017[%-6.6s] <== %s() = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@cachefiles_commit_tmpfile._entry_ptr.115 = internal global ptr @cachefiles_commit_tmpfile._entry.113, section ".printk_index", align 4
@cachefiles_cull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017[%-6.6s] ==> %s(,%pd/,%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cachefiles_cull\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_cull._entry_ptr = internal global ptr @cachefiles_cull._entry, section ".printk_index", align 4
@fscache_n_culled = external dso_local global %struct.atomic_t, align 4
@cachefiles_cull._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.117, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_cull._entry_ptr.119 = internal global ptr @cachefiles_cull._entry.118, section ".printk_index", align 4
@cachefiles_cull._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.117, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CacheFiles: Internal error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cachefiles_cull._entry_ptr.122 = internal global ptr @cachefiles_cull._entry.120, section ".printk_index", align 4
@cachefiles_cull._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.117, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_cull._entry_ptr.124 = internal global ptr @cachefiles_cull._entry.123, section ".printk_index", align 4
@__tracepoint_cachefiles_mark_inactive = external dso_local global %struct.tracepoint, align 4
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"include/trace/events/cachefiles.h\00", [62 x i8] zeroinitializer }, align 32
@trace_cachefiles_mark_inactive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cachefiles_error_injection_state = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_cachefiles_lookup = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_vfs_error = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_vfs_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_mkdir = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_mkdir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cachefiles_mark_inode_in_use._entry = internal constant %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 30, ptr null, ptr null }, align 1
@.str.128 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015CacheFiles: cachefiles: Inode already in use: %pd (B=%lx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__cachefiles_mark_inode_in_use\00", [33 x i8] zeroinitializer }, align 32
@__cachefiles_mark_inode_in_use._entry_ptr = internal global ptr @__cachefiles_mark_inode_in_use._entry, section ".printk_index", align 4
@__tracepoint_cachefiles_mark_active = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_mark_active.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_mark_failed = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_mark_failed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013CacheFiles: I/O Error: Unlink security error\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cachefiles_unlink\00", [46 x i8] zeroinitializer }, align 32
@cachefiles_unlink._entry_ptr = internal global ptr @cachefiles_unlink._entry, section ".printk_index", align 4
@cachefiles_unlink._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CacheFiles: I/O Error: Unlink failed\0A\00", [56 x i8] zeroinitializer }, align 32
@cachefiles_unlink._entry_ptr.134 = internal global ptr @cachefiles_unlink._entry.132, section ".printk_index", align 4
@__tracepoint_cachefiles_unlink = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_unlink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_rename = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_tmpfile = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_tmpfile.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cachefiles_trunc = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_trunc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_open_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017[%-6.6s] ==> %s(%pd)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cachefiles_open_file\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_open_file._entry_ptr = internal global ptr @cachefiles_open_file._entry, section ".printk_index", align 4
@cachefiles_open_file._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.136, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_open_file._entry_ptr.138 = internal global ptr @cachefiles_open_file._entry.137, section ".printk_index", align 4
@cachefiles_open_file._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.136, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017[%-6.6s] file -> %pd positive\0A\00", [63 x i8] zeroinitializer }, align 32
@cachefiles_open_file._entry_ptr.141 = internal global ptr @cachefiles_open_file._entry.139, section ".printk_index", align 4
@cachefiles_create_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017[%-6.6s] create -> %pD{ino=%lu}\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cachefiles_create_file\00", [41 x i8] zeroinitializer }, align 32
@cachefiles_create_file._entry_ptr = internal global ptr @cachefiles_create_file._entry, section ".printk_index", align 4
@__tracepoint_cachefiles_link = external dso_local global %struct.tracepoint, align 4
@trace_cachefiles_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cachefiles_lookup_for_cull._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013CacheFiles: I/O Error: Lookup failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cachefiles_lookup_for_cull\00", [37 x i8] zeroinitializer }, align 32
@cachefiles_lookup_for_cull._entry_ptr = internal global ptr @cachefiles_lookup_for_cull._entry, section ".printk_index", align 4
@cachefiles_lookup_for_cull._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.145, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cachefiles_lookup_for_cull._entry_ptr.147 = internal global ptr @cachefiles_lookup_for_cull._entry.146, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 4294967291, i64 4294967294]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967294]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 4294967284, i64 4294967291, i64 4294967294]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 95, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 116, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 126, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 147, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 149, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 165, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 168, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 182, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 187, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 198, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 204, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 209, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 276, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 280, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 293, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 298, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 303, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 315, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 321, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 327, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 333, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 345, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 349, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 364, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 372, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 383, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 401, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 408, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 423, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 464, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 502, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 615, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 629, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 634, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 647, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 666, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 677, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 701, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 713, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 727, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 787, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 814, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 825, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 829, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 599, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.440, i32 108, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 29, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 243, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 251, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 549, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 571, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 574, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 532, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 767, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private constant [25 x i8] c"../fs/cachefiles/namei.c\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 769, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__cachefiles_mark_inode_in_use._entry, ptr @__cachefiles_mark_inode_in_use._entry_ptr, ptr @cachefiles_bury_object._entry, ptr @cachefiles_bury_object._entry.44, ptr @cachefiles_bury_object._entry.47, ptr @cachefiles_bury_object._entry.50, ptr @cachefiles_bury_object._entry.54, ptr @cachefiles_bury_object._entry.57, ptr @cachefiles_bury_object._entry.60, ptr @cachefiles_bury_object._entry.63, ptr @cachefiles_bury_object._entry.66, ptr @cachefiles_bury_object._entry.68, ptr @cachefiles_bury_object._entry.71, ptr @cachefiles_bury_object._entry.74, ptr @cachefiles_bury_object._entry.76, ptr @cachefiles_bury_object._entry.79, ptr @cachefiles_bury_object._entry.82, ptr @cachefiles_bury_object._entry_ptr, ptr @cachefiles_bury_object._entry_ptr.46, ptr @cachefiles_bury_object._entry_ptr.49, ptr @cachefiles_bury_object._entry_ptr.52, ptr @cachefiles_bury_object._entry_ptr.56, ptr @cachefiles_bury_object._entry_ptr.59, ptr @cachefiles_bury_object._entry_ptr.62, ptr @cachefiles_bury_object._entry_ptr.65, ptr @cachefiles_bury_object._entry_ptr.67, ptr @cachefiles_bury_object._entry_ptr.70, ptr @cachefiles_bury_object._entry_ptr.73, ptr @cachefiles_bury_object._entry_ptr.75, ptr @cachefiles_bury_object._entry_ptr.78, ptr @cachefiles_bury_object._entry_ptr.81, ptr @cachefiles_bury_object._entry_ptr.84, ptr @cachefiles_commit_tmpfile._entry, ptr @cachefiles_commit_tmpfile._entry.105, ptr @cachefiles_commit_tmpfile._entry.108, ptr @cachefiles_commit_tmpfile._entry.110, ptr @cachefiles_commit_tmpfile._entry.113, ptr @cachefiles_commit_tmpfile._entry_ptr, ptr @cachefiles_commit_tmpfile._entry_ptr.107, ptr @cachefiles_commit_tmpfile._entry_ptr.109, ptr @cachefiles_commit_tmpfile._entry_ptr.112, ptr @cachefiles_commit_tmpfile._entry_ptr.115, ptr @cachefiles_create_file._entry, ptr @cachefiles_create_file._entry_ptr, ptr @cachefiles_create_tmpfile._entry, ptr @cachefiles_create_tmpfile._entry.89, ptr @cachefiles_create_tmpfile._entry_ptr, ptr @cachefiles_create_tmpfile._entry_ptr.91, ptr @cachefiles_cull._entry, ptr @cachefiles_cull._entry.118, ptr @cachefiles_cull._entry.120, ptr @cachefiles_cull._entry.123, ptr @cachefiles_cull._entry_ptr, ptr @cachefiles_cull._entry_ptr.119, ptr @cachefiles_cull._entry_ptr.122, ptr @cachefiles_cull._entry_ptr.124, ptr @cachefiles_delete_object._entry, ptr @cachefiles_delete_object._entry_ptr, ptr @cachefiles_get_directory._entry, ptr @cachefiles_get_directory._entry.11, ptr @cachefiles_get_directory._entry.14, ptr @cachefiles_get_directory._entry.17, ptr @cachefiles_get_directory._entry.20, ptr @cachefiles_get_directory._entry.22, ptr @cachefiles_get_directory._entry.24, ptr @cachefiles_get_directory._entry.27, ptr @cachefiles_get_directory._entry.3, ptr @cachefiles_get_directory._entry.30, ptr @cachefiles_get_directory._entry.33, ptr @cachefiles_get_directory._entry.36, ptr @cachefiles_get_directory._entry.39, ptr @cachefiles_get_directory._entry.8, ptr @cachefiles_get_directory._entry_ptr, ptr @cachefiles_get_directory._entry_ptr.10, ptr @cachefiles_get_directory._entry_ptr.13, ptr @cachefiles_get_directory._entry_ptr.16, ptr @cachefiles_get_directory._entry_ptr.19, ptr @cachefiles_get_directory._entry_ptr.21, ptr @cachefiles_get_directory._entry_ptr.23, ptr @cachefiles_get_directory._entry_ptr.26, ptr @cachefiles_get_directory._entry_ptr.29, ptr @cachefiles_get_directory._entry_ptr.32, ptr @cachefiles_get_directory._entry_ptr.35, ptr @cachefiles_get_directory._entry_ptr.38, ptr @cachefiles_get_directory._entry_ptr.41, ptr @cachefiles_get_directory._entry_ptr.5, ptr @cachefiles_look_up_object._entry, ptr @cachefiles_look_up_object._entry.100, ptr @cachefiles_look_up_object._entry.94, ptr @cachefiles_look_up_object._entry.97, ptr @cachefiles_look_up_object._entry_ptr, ptr @cachefiles_look_up_object._entry_ptr.102, ptr @cachefiles_look_up_object._entry_ptr.96, ptr @cachefiles_look_up_object._entry_ptr.99, ptr @cachefiles_lookup_for_cull._entry, ptr @cachefiles_lookup_for_cull._entry.146, ptr @cachefiles_lookup_for_cull._entry_ptr, ptr @cachefiles_lookup_for_cull._entry_ptr.147, ptr @cachefiles_open_file._entry, ptr @cachefiles_open_file._entry.137, ptr @cachefiles_open_file._entry.139, ptr @cachefiles_open_file._entry_ptr, ptr @cachefiles_open_file._entry_ptr.138, ptr @cachefiles_open_file._entry_ptr.141, ptr @cachefiles_unlink._entry, ptr @cachefiles_unlink._entry.132, ptr @cachefiles_unlink._entry_ptr, ptr @cachefiles_unlink._entry_ptr.134, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.121, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_get_directory._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_bury_object._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_delete_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_create_tmpfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_create_tmpfile._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_look_up_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_look_up_object._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_look_up_object._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_look_up_object._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_commit_tmpfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_commit_tmpfile._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_commit_tmpfile._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_commit_tmpfile._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_commit_tmpfile._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cull._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cull._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_cull._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_unlink._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_open_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_open_file._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_open_file._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_create_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_lookup_for_cull._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_lookup_for_cull._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cachefiles_unmark_inode_in_use(ptr noundef %object, ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %11, -131073
  store i32 %and.i, ptr %i_flags.i, align 4
  tail call fastcc void @trace_cachefiles_mark_inactive(ptr noundef %object, ptr noundef %9) #9
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  %flags = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.then
  %i_blocks = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 22
  %14 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_blocks, align 8
  %conv = trunc i64 %15 to i32
  %b_released = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_released, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_released, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_released, ptr %b_released, i32 %conv, ptr elementtype(i32) %b_released) #9, !srcloc !270
  %f_released = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 12
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_released, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @llvm.prefetch.p0(ptr %f_released, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_released, ptr %f_released, i32 1, ptr elementtype(i32) %f_released) #9, !srcloc !272
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool6.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #9
  %daemon_pollwq.i = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %daemon_pollwq.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cachefiles_get_directory(ptr noundef %cache, ptr noundef %dir, ptr noundef %dirname, ptr noundef writeonly %_is_new) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !274
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !274
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %3 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1, ptr noundef %dirname) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #9
  %mnt = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %10 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i336442 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i336442)
  %tobool.not.i443 = icmp eq i32 %and.i336442, 0
  br i1 %tobool.not.i443, label %do.end4.if.end11_crit_edge, label %do.end4.if.then13.thread_crit_edge

do.end4.if.then13.thread_crit_edge:               ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.thread

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  br label %if.end11

if.then13.thread:                                 ; preds = %if.then80.if.then13.thread_crit_edge, %do.end4.if.then13.thread_crit_edge
  call fastcc void @trace_cachefiles_lookup(ptr noundef null, ptr noundef %dir, ptr noundef nonnull inttoptr (i32 -5 to ptr))
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %12, i32 noundef -5, i32 noundef 3)
  br label %lookup_error

if.end11:                                         ; preds = %if.then80.if.end11_crit_edge, %do.end4.if.end11_crit_edge
  %call8 = call i32 @strlen(ptr noundef %dirname) #13
  %call9 = call ptr @lookup_one_len(ptr noundef %dirname, ptr noundef %dir, i32 noundef %call8) #9
  call fastcc void @trace_cachefiles_lookup(ptr noundef null, ptr noundef %dir, ptr noundef %call9)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %do.body21

if.then13:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %15 = ptrtoint ptr %call9 to i32
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %14, i32 noundef %15, i32 noundef 3)
  %cmp17 = icmp eq ptr %call9, inttoptr (i32 -12 to ptr)
  br i1 %cmp17, label %nomem_d_alloc, label %if.then13.lookup_error_crit_edge

if.then13.lookup_error_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %lookup_error

do.body21:                                        ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %16 = load i32, ptr @cachefiles_debug, align 4
  %and22 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.do.end38_crit_edge, label %do.end27

do.body21.do.end38_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i338 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i338 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task30, align 8
  %comm31 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %d_inode.i339 = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i339 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i339, align 8
  %tobool34.not = icmp eq ptr %22, null
  %cond = select i1 %tobool34.not, ptr @.str.7, ptr @.str.6
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %comm31, ptr noundef %call9, ptr noundef nonnull %cond) #12
  br label %do.end38

do.end38:                                         ; preds = %do.end27, %do.body21.do.end38_crit_edge
  %23 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call9, align 8
  %and.i.i.i = and i32 %24, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.then40, label %do.end38.if.end133_crit_edge

do.end38.if.end133_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then40:                                        ; preds = %do.end38
  %call41 = call i32 @cachefiles_has_space(ptr noundef %cache, i32 noundef 1, i32 noundef 0, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then40.mkdir_error_crit_edge, label %do.body45

if.then40.mkdir_error_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %mkdir_error

do.body45:                                        ; preds = %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %25 = load i32, ptr @cachefiles_debug, align 4
  %and46 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.end60_crit_edge, label %do.end51

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i340 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i340 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task54, align 8
  %comm55 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm55) #12
  br label %do.end60

do.end60:                                         ; preds = %do.end51, %do.body45.do.end60_crit_edge
  %30 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mnt, align 4
  %32 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %path, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dir, ptr %1, align 4
  %call62 = call i32 @security_path_mkdir(ptr noundef nonnull %path, ptr noundef %call9, i16 noundef zeroext 448) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end60.mkdir_error_crit_edge, label %if.end65

do.end60.mkdir_error_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %mkdir_error

if.end65:                                         ; preds = %do.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %34 = load i32, ptr @cachefiles_error_injection_state, align 4
  %35 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %if.end71, label %if.then73.split.loop.exit

if.end71:                                         ; preds = %if.end65
  %37 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i, align 8
  %call70 = call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %38, ptr noundef %call9, i16 noundef zeroext 448) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %if.end71.if.then73_crit_edge, label %if.end75

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then73.split.loop.exit:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %and.i341.le = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i341.le)
  %tobool.not.i342.le = icmp eq i32 %and.i341.le, 0
  %and1.i.le = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.le)
  %tobool2.not.i.le = icmp eq i32 %and1.i.le, 0
  %cond.i343.le = select i1 %tobool2.not.i.le, i32 0, i32 -28
  %cond3.i.le = select i1 %tobool.not.i342.le, i32 %cond.i343.le, i32 -5
  br label %if.then73

if.then73:                                        ; preds = %if.then73.split.loop.exit, %if.end71.if.then73_crit_edge
  %ret.0383 = phi i32 [ %cond3.i.le, %if.then73.split.loop.exit ], [ %call70, %if.end71.if.then73_crit_edge ]
  %39 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef null, ptr noundef %40, i32 noundef %ret.0383, i32 noundef 4)
  br label %mkdir_error

if.end75:                                         ; preds = %if.end71
  call fastcc void @trace_cachefiles_mkdir(ptr noundef %dir, ptr noundef %call9)
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.not, label %if.then80, label %do.body82, !prof !275

if.then80:                                        ; preds = %if.end75
  call void @cachefiles_put_directory(ptr noundef %call9)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %43 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i336 = and i32 %43, 2
  %tobool.not.i = icmp eq i32 %and.i336, 0
  br i1 %tobool.not.i, label %if.then80.if.end11_crit_edge, label %if.then80.if.then13.thread_crit_edge

if.then80.if.then13.thread_crit_edge:             ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.thread

if.then80.if.end11_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body82:                                        ; preds = %if.end75
  %d_inode.i346 = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i346 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i346, align 8
  %tobool84.not = icmp eq ptr %45, null
  br i1 %tobool84.not, label %do.end96, label %do.body113, !prof !275

do.end96:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #9, !srcloc !276
  unreachable

do.body113:                                       ; preds = %do.body82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %46 = load i32, ptr @cachefiles_debug, align 4
  %and114 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body113.do.end129_crit_edge, label %do.end119

do.body113.do.end129_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end129

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %47 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i347 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i347 to ptr
  %task122 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task122, align 8
  %comm123 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %i_ino = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_ino, align 8
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %comm123, ptr noundef %call9, i32 noundef %52) #12
  br label %do.end129

do.end129:                                        ; preds = %do.end119, %do.body113.do.end129_crit_edge
  %tobool130.not = icmp eq ptr %_is_new, null
  br i1 %tobool130.not, label %do.end129.if.end133_crit_edge, label %if.then131

do.end129.if.end133_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then131:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %_is_new to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %_is_new, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %do.end129.if.end133_crit_edge, %do.end38.if.end133_crit_edge
  %d_inode.i349 = getelementptr inbounds %struct.dentry, ptr %call9, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i349, align 8
  %i_rwsem.i350 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i350) #9
  %56 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i352 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i352) #9
  %58 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_inode.i349, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_flags.i, align 4
  %and.i353 = and i32 %61, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i353)
  %tobool.not.i354 = icmp eq i32 %and.i353, 0
  br i1 %tobool.not.i354, label %if.end138, label %mark_error

if.end138:                                        ; preds = %if.end133
  %or.i = or i32 %61, 131072
  %62 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i, ptr %i_flags.i, align 4
  call fastcc void @trace_cachefiles_mark_active(ptr noundef null, ptr noundef %59) #9
  %63 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d_inode.i349, align 8
  %i_rwsem.i356 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i356) #9
  %65 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_inode.i349, align 8
  %tobool142.not = icmp eq ptr %66, null
  br i1 %tobool142.not, label %do.end154, label %do.end170, !prof !275

do.end154:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/cachefiles/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #9, !srcloc !277
  unreachable

do.end170:                                        ; preds = %if.end138
  %67 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call9, align 8
  %and.i.i = and i32 %68, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i)
  %cmp.i358 = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i358, label %if.end178, label %do.end175

do.end175:                                        ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #11
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %dirname) #12
  br label %check_error

if.end178:                                        ; preds = %do.end170
  %i_opflags = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %i_opflags to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %i_opflags, align 2
  %71 = and i16 %70, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool181.not = icmp eq i16 %71, 0
  br i1 %tobool181.not, label %if.end178.check_error_crit_edge, label %lor.lhs.false

if.end178.check_error_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

lor.lhs.false:                                    ; preds = %if.end178
  %i_op = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 7
  %72 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_op, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 128
  %tobool183.not = icmp eq ptr %75, null
  br i1 %tobool183.not, label %lor.lhs.false.check_error_crit_edge, label %lor.lhs.false184

lor.lhs.false.check_error_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

lor.lhs.false184:                                 ; preds = %lor.lhs.false
  %mkdir = getelementptr inbounds %struct.inode_operations, ptr %73, i32 0, i32 9
  %76 = ptrtoint ptr %mkdir to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mkdir, align 4
  %tobool187.not = icmp eq ptr %77, null
  br i1 %tobool187.not, label %lor.lhs.false184.check_error_crit_edge, label %lor.lhs.false188

lor.lhs.false184.check_error_crit_edge:           ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %rename = getelementptr inbounds %struct.inode_operations, ptr %73, i32 0, i32 12
  %78 = ptrtoint ptr %rename to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rename, align 16
  %tobool191.not = icmp eq ptr %79, null
  br i1 %tobool191.not, label %lor.lhs.false188.check_error_crit_edge, label %lor.lhs.false192

lor.lhs.false188.check_error_crit_edge:           ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

lor.lhs.false192:                                 ; preds = %lor.lhs.false188
  %rmdir = getelementptr inbounds %struct.inode_operations, ptr %73, i32 0, i32 10
  %80 = ptrtoint ptr %rmdir to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmdir, align 8
  %tobool195.not = icmp eq ptr %81, null
  br i1 %tobool195.not, label %lor.lhs.false192.check_error_crit_edge, label %lor.lhs.false196

lor.lhs.false192.check_error_crit_edge:           ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

lor.lhs.false196:                                 ; preds = %lor.lhs.false192
  %unlink = getelementptr inbounds %struct.inode_operations, ptr %73, i32 0, i32 7
  %82 = ptrtoint ptr %unlink to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %unlink, align 4
  %tobool199.not = icmp eq ptr %83, null
  br i1 %tobool199.not, label %lor.lhs.false196.check_error_crit_edge, label %do.body202

lor.lhs.false196.check_error_crit_edge:           ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_error

do.body202:                                       ; preds = %lor.lhs.false196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %84 = load i32, ptr @cachefiles_debug, align 4
  %and203 = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body202.cleanup_crit_edge, label %do.end208

do.body202.cleanup_crit_edge:                     ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end208:                                        ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #11
  %85 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i365 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i365 to ptr
  %task211 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task211 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task211, align 8
  %comm212 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 101
  %i_ino215 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 11
  %89 = ptrtoint ptr %i_ino215 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_ino215, align 8
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %comm212, ptr noundef nonnull @.str.1, i32 noundef %90) #12
  br label %cleanup

check_error:                                      ; preds = %lor.lhs.false196.check_error_crit_edge, %lor.lhs.false192.check_error_crit_edge, %lor.lhs.false188.check_error_crit_edge, %lor.lhs.false184.check_error_crit_edge, %lor.lhs.false.check_error_crit_edge, %if.end178.check_error_crit_edge, %do.end175
  %ret.1 = phi i32 [ -1, %lor.lhs.false196.check_error_crit_edge ], [ -1, %lor.lhs.false192.check_error_crit_edge ], [ -1, %lor.lhs.false188.check_error_crit_edge ], [ -1, %lor.lhs.false184.check_error_crit_edge ], [ -1, %lor.lhs.false.check_error_crit_edge ], [ -1, %if.end178.check_error_crit_edge ], [ -5, %do.end175 ]
  %tobool.not.i367 = icmp eq ptr %call9, null
  br i1 %tobool.not.i367, label %check_error.cachefiles_put_directory.exit_crit_edge, label %if.then.i370

check_error.cachefiles_put_directory.exit_crit_edge: ; preds = %check_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cachefiles_put_directory.exit

if.then.i370:                                     ; preds = %check_error
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %d_inode.i349, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #9
  %93 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %d_inode.i349, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i369 = and i32 %96, -131073
  store i32 %and.i.i369, ptr %i_flags.i.i, align 4
  call fastcc void @trace_cachefiles_mark_inactive(ptr noundef null, ptr noundef %94) #9
  %97 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %d_inode.i349, align 8
  %i_rwsem.i6.i = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i6.i) #9
  call void @dput(ptr noundef nonnull %call9) #9
  br label %cachefiles_put_directory.exit

cachefiles_put_directory.exit:                    ; preds = %if.then.i370, %check_error.cachefiles_put_directory.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %99 = load i32, ptr @cachefiles_debug, align 4
  %and221 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %cachefiles_put_directory.exit.do.end235_crit_edge, label %do.end226

cachefiles_put_directory.exit.do.end235_crit_edge: ; preds = %cachefiles_put_directory.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end235

do.end226:                                        ; preds = %cachefiles_put_directory.exit
  call void @__sanitizer_cov_trace_pc() #11
  %100 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i371 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i371 to ptr
  %task229 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task229 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task229, align 8
  %comm230 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 101
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %comm230, ptr noundef nonnull @.str.1, i32 noundef %ret.1) #12
  br label %do.end235

do.end235:                                        ; preds = %do.end226, %cachefiles_put_directory.exit.do.end235_crit_edge
  %104 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

mark_error:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_cachefiles_mark_failed(ptr noundef null, ptr noundef %59) #9
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 11
  %105 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i_ino.i, align 8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %call9, i32 noundef %106) #12
  %107 = ptrtoint ptr %d_inode.i349 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %d_inode.i349, align 8
  %i_rwsem.i373 = getelementptr inbounds %struct.inode, ptr %108, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i373) #9
  call void @dput(ptr noundef %call9) #9
  br label %cleanup

mkdir_error:                                      ; preds = %if.then73, %do.end60.mkdir_error_crit_edge, %if.then40.mkdir_error_crit_edge
  %ret.2 = phi i32 [ %ret.0383, %if.then73 ], [ %call62, %do.end60.mkdir_error_crit_edge ], [ %call41, %if.then40.mkdir_error_crit_edge ]
  %109 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i375 = getelementptr inbounds %struct.inode, ptr %110, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i375) #9
  call void @dput(ptr noundef %call9) #9
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %dirname, i32 noundef %ret.2) #12
  %111 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

lookup_error:                                     ; preds = %if.then13.lookup_error_crit_edge, %if.then13.thread
  %112 = phi i32 [ -5, %if.then13.thread ], [ %15, %if.then13.lookup_error_crit_edge ]
  %subdir.0416419 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then13.thread ], [ %call9, %if.then13.lookup_error_crit_edge ]
  %113 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i377 = getelementptr inbounds %struct.inode, ptr %114, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i377) #9
  %call252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dirname, i32 noundef %112) #12
  br label %cleanup

nomem_d_alloc:                                    ; preds = %if.then13
  %115 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i379 = getelementptr inbounds %struct.inode, ptr %116, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i379) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %117 = load i32, ptr @cachefiles_debug, align 4
  %and256 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %nomem_d_alloc.cleanup_crit_edge, label %do.end261

nomem_d_alloc.cleanup_crit_edge:                  ; preds = %nomem_d_alloc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end261:                                        ; preds = %nomem_d_alloc
  call void @__sanitizer_cov_trace_pc() #11
  %118 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i380 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i380 to ptr
  %task264 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task264 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task264, align 8
  %comm265 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 101
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm265, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end261, %nomem_d_alloc.cleanup_crit_edge, %lookup_error, %mkdir_error, %mark_error, %do.end235, %do.end208, %do.body202.cleanup_crit_edge
  %retval.0 = phi ptr [ %subdir.0416419, %lookup_error ], [ %111, %mkdir_error ], [ %104, %do.end235 ], [ inttoptr (i32 -16 to ptr), %mark_error ], [ %call9, %do.end208 ], [ %call9, %do.body202.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end261 ], [ inttoptr (i32 -12 to ptr), %nomem_d_alloc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_lookup(ptr noundef %obj, ptr noundef %dir, ptr noundef %de) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_lookup, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_lookup, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !280
  %call42 = tail call i32 @__traceiter_cachefiles_lookup(ptr noundef null, ptr noundef %obj, ptr noundef %dir, ptr noundef %de) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !281
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_lookup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 260, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_vfs_error(ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_vfs_error, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !284
  %call42 = tail call i32 @__traceiter_cachefiles_vfs_error(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !285
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_vfs_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_vfs_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 645, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local i32 @cachefiles_has_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_mkdir(ptr noundef %dir, ptr noundef %subdir) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mkdir, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_mkdir, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !286
  %call42 = tail call i32 @__traceiter_cachefiles_mkdir(ptr noundef null, ptr noundef %dir, ptr noundef %subdir) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !287
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mkdir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mkdir, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_mkdir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_mkdir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 280, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
define dso_local void @cachefiles_put_directory(ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %5, -131073
  store i32 %and.i, ptr %i_flags.i, align 4
  tail call fastcc void @trace_cachefiles_mark_inactive(ptr noundef null, ptr noundef %3) #9
  %6 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i6 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i6) #9
  tail call void @dput(ptr noundef nonnull %dir) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_bury_object(ptr noundef %cache, ptr noundef %object, ptr noundef %dir, ptr noundef %rep, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %path_to_graveyard = alloca %struct.path, align 4
  %nbuffer = alloca [17 x i8], align 1
  %rd = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !274
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path_to_graveyard) #9
  %3 = ptrtoint ptr %path_to_graveyard to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %path_to_graveyard, align 4, !annotation !274
  %4 = getelementptr inbounds %struct.path, ptr %path_to_graveyard, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !274
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %nbuffer) #9
  %6 = call ptr @memset(ptr %nbuffer, i32 255, i32 17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %7 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %comm, ptr noundef nonnull @.str.43, ptr noundef %dir, ptr noundef %rep) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %d_parent = getelementptr inbounds %struct.dentry, ptr %rep, i32 0, i32 3
  %12 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent, align 8
  %cmp.not = icmp eq ptr %13, %dir
  br i1 %cmp.not, label %if.end23, label %if.then5

if.then5:                                         ; preds = %do.end4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %16 = load i32, ptr @cachefiles_debug, align 4
  %and8 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then5.cleanup_crit_edge, label %do.end13

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i382 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i382 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task16, align 8
  %comm17 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %comm17, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end23:                                         ; preds = %do.end4
  %21 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rep, align 8
  %23 = and i32 %22, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %23)
  %24 = icmp eq i32 %23, 2097152
  br i1 %24, label %do.body46, label %if.then25

if.then25:                                        ; preds = %if.end23
  %tobool.not.i = icmp eq ptr %rep, null
  br i1 %tobool.not.i, label %if.then25.dget.exit_crit_edge, label %if.then.i

if.then25.dget.exit_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %rep, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then25.dget.exit_crit_edge
  %call27 = tail call fastcc i32 @cachefiles_unlink(ptr noundef %cache, ptr noundef %object, ptr noundef %dir, ptr noundef %rep, i32 noundef %why)
  tail call void @dput(ptr noundef %rep) #9
  %d_inode.i383 = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i383 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i383, align 8
  %i_rwsem.i384 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i384) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %27 = load i32, ptr @cachefiles_debug, align 4
  %and30 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %dget.exit.cleanup_crit_edge, label %do.end35

dget.exit.cleanup_crit_edge:                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end35:                                         ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i385 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i385 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task38, align 8
  %comm39 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm39, ptr noundef nonnull @.str.43, i32 noundef %call27) #12
  br label %cleanup

do.body46:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %32 = load i32, ptr @cachefiles_debug, align 4
  %and47 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end61_crit_edge, label %do.end52

do.body46.do.end61_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i386 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i386 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task55, align 8
  %comm56 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 101
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %comm56) #12
  br label %do.end61

do.end61:                                         ; preds = %do.end52, %do.body46.do.end61_crit_edge
  %d_inode.i387 = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i387 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i387, align 8
  %i_rwsem.i388 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i388) #9
  %gravecounter = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 11
  %graveyard = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 3
  %d_inode.i389 = getelementptr inbounds %struct.dentry, ptr %rep, i32 0, i32 5
  br label %try_again

try_again:                                        ; preds = %if.then181, %do.end61
  %call64 = call i64 @ktime_get_real_seconds() #9
  %conv = trunc i64 %call64 to i32
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %gravecounter, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !271
  call void @llvm.prefetch.p0(ptr %gravecounter, i32 1, i32 3, i32 1) #9
  %39 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gravecounter, ptr %gravecounter, i32 1, ptr elementtype(i32) %gravecounter) #9, !srcloc !272
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !273
  %call66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %nbuffer, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %asmresult.i.i.i.i)
  %40 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %graveyard, align 4
  %call67 = call ptr @lock_rename(ptr noundef %41, ptr noundef %dir) #9
  %42 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_parent, align 8
  %cmp69.not = icmp eq ptr %43, %dir
  br i1 %cmp69.not, label %lor.lhs.false, label %try_again.if.then74_crit_edge

try_again.if.then74_crit_edge:                    ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

lor.lhs.false:                                    ; preds = %try_again
  %44 = ptrtoint ptr %d_inode.i389 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i389, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_flags, align 4
  %and72 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end92, label %lor.lhs.false.if.then74_crit_edge

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %try_again.if.then74_crit_edge
  %48 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %49, ptr noundef %dir) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %50 = load i32, ptr @cachefiles_debug, align 4
  %and77 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then74.cleanup_crit_edge, label %do.end82

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end82:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %51 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i390 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i390 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task85, align 8
  %comm86 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %comm86, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false
  %55 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %graveyard, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %and.i.i = and i32 %58, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 2097152
  br i1 %cmp.i, label %if.end106, label %if.then95

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_rename(ptr noundef %56, ptr noundef %dir) #9
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  %59 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %60) #9
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %cleanup

if.end106:                                        ; preds = %if.end92
  %cmp107 = icmp eq ptr %call67, %rep
  br i1 %cmp107, label %if.then109, label %if.end121

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_rename(ptr noundef %56, ptr noundef %dir) #9
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  %61 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %62) #9
  %flags118 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags118) #9
  br label %cleanup

if.end121:                                        ; preds = %if.end106
  %63 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rep, align 8
  %and.i391 = and i32 %64, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i391)
  %tobool.i.not = icmp eq i32 %and.i391, 0
  br i1 %tobool.i.not, label %if.end135, label %if.then123

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_rename(ptr noundef %56, ptr noundef %dir) #9
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  %65 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %66) #9
  %flags132 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags132) #9
  br label %cleanup

if.end135:                                        ; preds = %if.end121
  %call139 = call i32 @strlen(ptr noundef nonnull %nbuffer) #13
  %call140 = call ptr @lookup_one_len(ptr noundef nonnull %nbuffer, ptr noundef %56, i32 noundef %call139) #9
  %cmp.i392 = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i392, label %if.then142, label %if.end179

if.then142:                                       ; preds = %if.end135
  %67 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %68, ptr noundef %dir) #9
  %69 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %graveyard, align 4
  %d_inode.i393 = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode.i393 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i393, align 8
  %73 = ptrtoint ptr %call140 to i32
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %72, i32 noundef %73, i32 noundef 3)
  %cmp148 = icmp eq ptr %call140, inttoptr (i32 -12 to ptr)
  br i1 %cmp148, label %do.body151, label %do.end171

do.body151:                                       ; preds = %if.then142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %74 = load i32, ptr @cachefiles_debug, align 4
  %and152 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body151.cleanup_crit_edge, label %do.end157

do.body151.cleanup_crit_edge:                     ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end157:                                        ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #11
  %75 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i394 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i394 to ptr
  %task160 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task160, align 8
  %comm161 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 101
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %comm161, ptr noundef nonnull @.str.43) #12
  br label %cleanup

do.end171:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %73) #12
  %79 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %80) #9
  %flags176 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags176) #9
  br label %cleanup

if.end179:                                        ; preds = %if.end135
  %81 = ptrtoint ptr %call140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call140, align 8
  %and.i.i.i.i = and i32 %82, 7340032
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %if.end185, label %if.then181

if.then181:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %84, ptr noundef %dir) #9
  call void @dput(ptr noundef %call140) #9
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 357, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  br label %try_again

if.end185:                                        ; preds = %if.end179
  %and.i395 = and i32 %82, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i395)
  %tobool.i396.not = icmp eq i32 %and.i395, 0
  br i1 %tobool.i396.not, label %if.end199, label %if.then187

if.then187:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %86, ptr noundef %dir) #9
  call void @dput(ptr noundef %call140) #9
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  %87 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %88) #9
  %flags196 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags196) #9
  br label %cleanup

if.end199:                                        ; preds = %if.end185
  %cmp200 = icmp eq ptr %call67, %call140
  br i1 %cmp200, label %if.then202, label %if.end214

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %90, ptr noundef %dir) #9
  call void @dput(ptr noundef %call67) #9
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  %91 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %92) #9
  %flags211 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags211) #9
  br label %cleanup

if.end214:                                        ; preds = %if.end199
  %mnt = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  %93 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mnt, align 4
  %95 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %path, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %dir, ptr %1, align 4
  %97 = ptrtoint ptr %path_to_graveyard to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %path_to_graveyard, align 4
  %98 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %graveyard, align 4
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %4, align 4
  %call220 = call i32 @security_path_rename(ptr noundef nonnull %path, ptr noundef %rep, ptr noundef nonnull %path_to_graveyard, ptr noundef %call140, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %do.end227, label %if.else

do.end227:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %call220) #12
  %101 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %102) #9
  %flags231 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags231) #9
  br label %if.end266

if.else:                                          ; preds = %if.end214
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd) #9
  %103 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 1
  %104 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 2
  %105 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 3
  %106 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 4
  %107 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 5
  %108 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 6
  %109 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 7
  %110 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @init_user_ns, ptr %rd, align 4
  %111 = ptrtoint ptr %d_inode.i387 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %d_inode.i387, align 8
  %113 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %103, align 4
  %114 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %rep, ptr %104, align 4
  %115 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @init_user_ns, ptr %105, align 4
  %116 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %graveyard, align 4
  %d_inode.i398 = getelementptr inbounds %struct.dentry, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %d_inode.i398 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d_inode.i398, align 8
  %120 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %106, align 4
  %121 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call140, ptr %107, align 4
  %122 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %108, align 4
  %123 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %109, align 4
  %124 = ptrtoint ptr %d_inode.i389 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %d_inode.i389, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %i_ino, align 8
  call fastcc void @trace_cachefiles_rename(ptr noundef %object, i32 noundef %127, i32 noundef %why)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %128 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i400 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400)
  %tobool.not.i401 = icmp eq i32 %and.i400, 0
  br i1 %tobool.not.i401, label %if.end244, label %if.then247.thread

if.then247.thread:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %d_inode.i387 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %d_inode.i387, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %130, i32 noundef -5, i32 noundef 9)
  br label %do.end258

if.end244:                                        ; preds = %if.else
  %call243 = call i32 @vfs_rename(ptr noundef nonnull %rd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp245.not = icmp eq i32 %call243, 0
  br i1 %cmp245.not, label %if.end244.if.end265_crit_edge, label %if.then247

if.end244.if.end265_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.then247:                                       ; preds = %if.end244
  %131 = ptrtoint ptr %d_inode.i387 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %d_inode.i387, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %132, i32 noundef %call243, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call243)
  %cmp252.not = icmp eq i32 %call243, -12
  br i1 %cmp252.not, label %if.then247.if.end265_crit_edge, label %if.then247.do.end258_crit_edge

if.then247.do.end258_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end258

if.then247.if.end265_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

do.end258:                                        ; preds = %if.then247.do.end258_crit_edge, %if.then247.thread
  %ret.0440443 = phi i32 [ -5, %if.then247.thread ], [ %call243, %if.then247.do.end258_crit_edge ]
  %call260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %ret.0440443) #12
  %133 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %134) #9
  %flags262 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags262) #9
  br label %if.end265

if.end265:                                        ; preds = %do.end258, %if.then247.if.end265_crit_edge, %if.end244.if.end265_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd) #9
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %do.end227
  %135 = ptrtoint ptr %d_inode.i389 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %d_inode.i389, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %i_flags.i, align 4
  %and.i403 = and i32 %138, -131073
  store i32 %and.i403, ptr %i_flags.i, align 4
  call fastcc void @trace_cachefiles_mark_inactive(ptr noundef %object, ptr noundef %136) #9
  %139 = ptrtoint ptr %graveyard to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %graveyard, align 4
  call void @unlock_rename(ptr noundef %140, ptr noundef %dir) #9
  call void @dput(ptr noundef %call140) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %141 = load i32, ptr @cachefiles_debug, align 4
  %and269 = and i32 %141, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  br i1 %tobool270.not, label %if.end266.cleanup_crit_edge, label %do.end274

if.end266.cleanup_crit_edge:                      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end274:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #11
  %142 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i404 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i404 to ptr
  %task277 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %task277 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %task277, align 8
  %comm278 = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 101
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %comm278, ptr noundef nonnull @.str.43) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end274, %if.end266.cleanup_crit_edge, %if.then202, %if.then187, %do.end171, %do.end157, %do.body151.cleanup_crit_edge, %if.then123, %if.then109, %if.then95, %do.end82, %if.then74.cleanup_crit_edge, %do.end35, %dget.exit.cleanup_crit_edge, %do.end13, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then109 ], [ -5, %if.then123 ], [ -5, %do.end171 ], [ -5, %if.then187 ], [ -5, %if.then202 ], [ -5, %if.then95 ], [ -116, %do.end13 ], [ -116, %if.then5.cleanup_crit_edge ], [ %call27, %do.end35 ], [ %call27, %dget.exit.cleanup_crit_edge ], [ 0, %do.end82 ], [ 0, %if.then74.cleanup_crit_edge ], [ -12, %do.end157 ], [ -12, %do.body151.cleanup_crit_edge ], [ 0, %do.end274 ], [ 0, %if.end266.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %nbuffer) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path_to_graveyard) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cachefiles_unlink(ptr noundef %cache, ptr noundef %object, ptr noundef %dir, ptr noundef %dentry, i32 noundef %why) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %0 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %mnt1 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 1
  %1 = ptrtoint ptr %mnt1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt1, align 4
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %path, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dir, ptr %0, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_ino, align 8
  tail call fastcc void @trace_cachefiles_unlink(ptr noundef %object, i32 noundef %8, i32 noundef %why)
  %call3 = call i32 @security_path_unlink(ptr noundef nonnull %path, ptr noundef %dentry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #12
  %9 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %10) #9
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %11 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then11, label %if.end.if.then29_crit_edge

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then11:                                        ; preds = %if.end
  %d_inode.i48 = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode.i48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i48, align 8
  %call13 = call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %13, ptr noundef %dentry, ptr noundef null) #9
  %14 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %if.then11.if.then29_crit_edge [
    i32 -5, label %if.end27.thread
    i32 0, label %if.then11.cleanup_crit_edge
  ]

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.if.then29_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.end27.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #12
  %15 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache, align 8
  call void @fscache_io_error(ptr noundef %16) #9
  %flags23 = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  call void @_set_bit(i32 noundef 1, ptr noundef %flags23) #9
  br label %if.then29

if.then29:                                        ; preds = %if.end27.thread, %if.then11.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %ret.052 = phi i32 [ -5, %if.end27.thread ], [ -5, %if.end.if.then29_crit_edge ], [ %call13, %if.then11.if.then29_crit_edge ]
  %d_inode.i49 = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i49, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %18, i32 noundef %ret.052, i32 noundef 15)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %ret.052, %if.then29 ], [ %call13, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_io_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_rename(ptr noundef %obj, i32 noundef %ino, i32 noundef %why) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_rename, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_rename, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !288
  %call42 = tail call i32 @__traceiter_cachefiles_rename(ptr noundef null, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !289
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_rename, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_rename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 370, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_delete_object(ptr noundef %object, i32 noundef %why) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume1 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume1, align 4
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %dentry2 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry2, align 4
  %6 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %object, align 4
  %key_hash = getelementptr inbounds %struct.fscache_cookie, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_hash, align 4
  %idxprom = and i32 %9, 255
  %arrayidx = getelementptr %struct.cachefiles_volume, ptr %1, i32 0, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %12 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %17 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_id, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %comm, ptr noundef nonnull @.str.86, i32 noundef %18, ptr noundef %3) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end7.dget.exit_crit_edge, label %if.then.i

do.end7.dget.exit_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %dget.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #9
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %do.end7.dget.exit_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call10 = tail call fastcc i32 @cachefiles_unlink(ptr noundef %22, ptr noundef %object, ptr noundef %11, ptr noundef %5, i32 noundef %why)
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i23 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i23) #9
  tail call void @dput(ptr noundef %5) #9
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cachefiles_create_tmpfile(ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume1 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object, align 4
  %key_hash = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_hash, align 4
  %idxprom = and i32 %7, 255
  %arrayidx = getelementptr %struct.cachefiles_volume, ptr %1, i32 0, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #9
  %10 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %object_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %object_size, align 8
  %sub = add i64 %12, -1
  %or = or i64 %sub, 4095
  %add = add i64 %or, 1
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache_cred.i, align 8
  %call.i = tail call ptr @override_creds(ptr noundef %14) #9
  %mnt = getelementptr inbounds %struct.cachefiles_cache, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mnt, align 4
  %17 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %path, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %18 = load i32, ptr @cachefiles_error_injection_state, align 4
  %19 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @vfs_tmpfile(ptr noundef nonnull @init_user_ns, ptr noundef %9, i16 noundef zeroext -32768, i32 noundef 2) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -28
  %cond3.i = select i1 %tobool.not.i, i32 %cond.i, i32 -5
  %21 = inttoptr i32 %cond3.i to ptr
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %21, %if.else ], [ %call6, %if.then ]
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %storemerge, ptr %10, align 4
  %cmp.i = icmp ugt ptr %storemerge, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end33

if.then11:                                        ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %25 = ptrtoint ptr %storemerge to i32
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %24, i32 noundef %25, i32 noundef 13)
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %cmp17 = icmp eq ptr %27, inttoptr (i32 -5 to ptr)
  br i1 %cmp17, label %do.body, label %if.then11.if.end30_crit_edge

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %volume1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %32 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_id, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %33) #12
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 8
  tail call void @fscache_io_error(ptr noundef %35) #9
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %31, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %if.end30

if.end30:                                         ; preds = %do.body, %if.then11.if.end30_crit_edge
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %10, align 4
  br label %out

if.end33:                                         ; preds = %if.end
  %d_inode.i120 = getelementptr inbounds %struct.dentry, ptr %storemerge, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i120 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i120, align 8
  tail call fastcc void @trace_cachefiles_tmpfile(ptr noundef %object, ptr noundef %39)
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %10, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #9
  %44 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i.i, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %47, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_cachefiles_mark_failed(ptr noundef %object, ptr noundef %45) #9
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 11
  %48 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino.i.i, align 8
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %41, i32 noundef %49) #12
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #9
  br label %out_dput

if.end40:                                         ; preds = %if.end33
  %or.i.i = or i32 %47, 131072
  %50 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i, ptr %i_flags.i.i, align 4
  tail call fastcc void @trace_cachefiles_mark_active(ptr noundef %object, ptr noundef %45) #9
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp41.not = icmp eq i64 %add, 0
  br i1 %cmp41.not, label %if.end40.if.end59_crit_edge, label %if.then43

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then43:                                        ; preds = %if.end40
  %51 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %10, align 4
  %d_inode.i121 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %d_inode.i121 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_inode.i121, align 8
  tail call fastcc void @trace_cachefiles_trunc(ptr noundef %object, ptr noundef %54, i64 noundef %add)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %55 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i122 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  %and1.i124 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i124)
  %tobool2.not.i125 = icmp eq i32 %and1.i124, 0
  %cond.i126 = select i1 %tobool2.not.i125, i32 0, i32 -28
  %cond3.i127 = select i1 %tobool.not.i123, i32 %cond.i126, i32 -5
  %56 = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.end51, label %if.then43.if.then54_crit_edge

if.then43.if.then54_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.end51:                                         ; preds = %if.then43
  %call50 = call i32 @vfs_truncate(ptr noundef nonnull %path, i64 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp52 = icmp slt i32 %call50, 0
  br i1 %cmp52, label %if.end51.if.then54_crit_edge, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end51.if.then54_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %if.end51.if.then54_crit_edge, %if.then43.if.then54_crit_edge
  %ret.0134 = phi i32 [ %call50, %if.end51.if.then54_crit_edge ], [ %cond3.i127, %if.then43.if.then54_crit_edge ]
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %10, align 4
  %d_inode.i128 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %d_inode.i128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_inode.i128, align 8
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %61, i32 noundef %ret.0134, i32 noundef 14)
  %62 = inttoptr i32 %ret.0134 to ptr
  br label %out_dput

if.end59:                                         ; preds = %if.end51.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  %63 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %10, align 4
  %d_inode.i129 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %d_inode.i129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_inode.i129, align 8
  %67 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cache_cred.i, align 8
  %call62 = call ptr @open_with_fake_path(ptr noundef nonnull %path, i32 noundef 196610, ptr noundef %66, ptr noundef %68) #9
  %cmp.i130 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %10, align 4
  %d_inode.i131 = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode.i131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i131, align 8
  %73 = ptrtoint ptr %call62 to i32
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %72, i32 noundef %73, i32 noundef 6)
  br label %out_dput

if.end68:                                         ; preds = %if.end59
  %f_op = getelementptr inbounds %struct.file, ptr %call62, i32 0, i32 3
  %74 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %f_op, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read_iter, align 4
  %tobool.not = icmp eq ptr %77, null
  br i1 %tobool.not, label %if.end68.if.then82_crit_edge, label %lor.lhs.false, !prof !275

if.end68.if.then82_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

lor.lhs.false:                                    ; preds = %if.end68
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %75, i32 0, i32 5
  %78 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_iter, align 4
  %tobool73.not = icmp eq ptr %79, null
  br i1 %tobool73.not, label %lor.lhs.false.if.then82_crit_edge, label %lor.lhs.false.out_dput_crit_edge, !prof !275

lor.lhs.false.out_dput_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dput

lor.lhs.false.if.then82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.then82:                                        ; preds = %lor.lhs.false.if.then82_crit_edge, %if.end68.if.then82_crit_edge
  call void @fput(ptr noundef %call62) #9
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %out_dput

out_dput:                                         ; preds = %if.then82, %lor.lhs.false.out_dput_crit_edge, %if.then64, %if.then54, %if.then38
  %file.0 = phi ptr [ %62, %if.then54 ], [ %call62, %if.then64 ], [ inttoptr (i32 -22 to ptr), %if.then82 ], [ %call62, %lor.lhs.false.out_dput_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then38 ]
  %80 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %10, align 4
  call void @dput(ptr noundef %81) #9
  br label %out

out:                                              ; preds = %out_dput, %if.end30
  %file.1 = phi ptr [ %37, %if.end30 ], [ %file.0, %out_dput ]
  call void @revert_creds(ptr noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #9
  ret ptr %file.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_tmpfile(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_tmpfile(ptr noundef %obj, ptr noundef %backer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_tmpfile, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_tmpfile, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !290
  %call42 = tail call i32 @__traceiter_cachefiles_tmpfile(ptr noundef null, ptr noundef %obj, ptr noundef %backer) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !291
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_tmpfile, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_tmpfile, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_tmpfile.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_tmpfile.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 300, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_trunc(ptr noundef %obj, ptr noundef %backer, i64 noundef %to) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_trunc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !292
  %call42 = tail call i32 @__traceiter_cachefiles_trunc(ptr noundef null, ptr noundef %obj, ptr noundef %backer, i64 noundef 0, i64 noundef %to, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !293
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !279

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_cachefiles_trunc.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_trunc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 555, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local i32 @vfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_with_fake_path(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cachefiles_look_up_object(ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume1 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume1, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %key_hash = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_hash, align 4
  %idxprom = and i32 %5, 255
  %arrayidx = getelementptr %struct.cachefiles_volume, ptr %1, i32 0, i32 4, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %8 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %13 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_id, align 4
  %d_name = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %15 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_name, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %comm, ptr noundef nonnull @.str.93, i32 noundef %14, ptr noundef %16) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %17 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i109 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i, label %if.end13, label %if.end13.thread

if.end13.thread:                                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_cachefiles_lookup(ptr noundef %object, ptr noundef %7, ptr noundef nonnull inttoptr (i32 -5 to ptr))
  br label %if.then15

if.end13:                                         ; preds = %do.end5
  %d_name9 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %18 = ptrtoint ptr %d_name9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_name9, align 4
  %d_name_len = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 8
  %20 = ptrtoint ptr %d_name_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %d_name_len, align 4
  %conv10 = zext i8 %21 to i32
  %call11 = tail call ptr @lookup_positive_unlocked(ptr noundef %19, ptr noundef %7, i32 noundef %conv10) #9
  tail call fastcc void @trace_cachefiles_lookup(ptr noundef %object, ptr noundef %7, ptr noundef %call11)
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.if.then15_crit_edge, label %if.end40

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end13.thread
  %dentry.0126 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end13.thread ], [ %call11, %if.end13.if.then15_crit_edge ]
  %magicptr = ptrtoint ptr %dentry.0126 to i32
  %22 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %magicptr, label %if.then15.cleanup_crit_edge [
    i32 -2, label %if.then15.new_file_crit_edge
    i32 -5, label %do.body25
  ]

if.then15.new_file_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %new_file

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body25:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %volume1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %debug_id32 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id32, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %28) #12
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  tail call void @fscache_io_error(ptr noundef %30) #9
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %26, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call11, align 8
  %and.i.i = and i32 %32, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and.i.i)
  %cmp.i110 = icmp eq i32 %and.i.i, 4194304
  br i1 %cmp.i110, label %if.end55, label %do.end45

do.end45:                                         ; preds = %if.end40
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %call11) #12
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call50 = tail call i32 @cachefiles_bury_object(ptr noundef %36, ptr noundef %object, ptr noundef %7, ptr noundef %call11, i32 noundef 1)
  tail call void @dput(ptr noundef %call11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end45.cleanup_crit_edge, label %do.end45.new_file_crit_edge

do.end45.new_file_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %new_file

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end40
  %37 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %volume1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #9
  %41 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %42 = load i32, ptr @cachefiles_debug, align 4
  %and.i111 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i112, label %if.end55.do.end5.i_crit_edge, label %do.end.i

if.end55.do.end5.i_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %43 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i113 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i113 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 101
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %comm.i, ptr noundef nonnull @.str.136, ptr noundef %call11) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %if.end55.do.end5.i_crit_edge
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 5
  %47 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i.i) #9
  %49 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i.i.i = and i32 %52, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i, label %cachefiles_mark_inode_in_use.exit.i

cachefiles_mark_inode_in_use.exit.i:              ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_cachefiles_mark_failed(ptr noundef %object, ptr noundef %50) #9
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i.i.i, align 8
  %call2.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %call11, i32 noundef %54) #12
  tail call void @up_write(ptr noundef %i_rwsem.i.i.i) #9
  br label %cachefiles_open_file.exit.thread

if.end8.i:                                        ; preds = %do.end5.i
  %or.i.i.i = or i32 %52, 131072
  %55 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i, ptr %i_flags.i.i.i, align 4
  tail call fastcc void @trace_cachefiles_mark_active(ptr noundef %object, ptr noundef %50) #9
  tail call void @up_write(ptr noundef %i_rwsem.i.i.i) #9
  %mnt.i = getelementptr inbounds %struct.cachefiles_cache, ptr %40, i32 0, i32 1
  %56 = ptrtoint ptr %mnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mnt.i, align 4
  %58 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %path.i, align 4
  %59 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call11, ptr %41, align 4
  %60 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_inode.i.i.i, align 8
  %cache_cred.i = getelementptr inbounds %struct.cachefiles_cache, ptr %40, i32 0, i32 8
  %62 = ptrtoint ptr %cache_cred.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cache_cred.i, align 8
  %call12.i = call ptr @open_with_fake_path(ptr noundef nonnull %path.i, i32 noundef 196610, ptr noundef %61, ptr noundef %63) #9
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_inode.i.i.i, align 8
  %66 = ptrtoint ptr %call12.i to i32
  call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %65, i32 noundef %66, i32 noundef 6) #9
  br label %error.i

if.end17.i:                                       ; preds = %if.end8.i
  %f_op.i = getelementptr inbounds %struct.file, ptr %call12.i, i32 0, i32 3
  %67 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_op.i, align 4
  %read_iter.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %read_iter.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_iter.i, align 4
  %tobool18.not.i = icmp eq ptr %70, null
  br i1 %tobool18.not.i, label %if.end17.i.do.end35.i_crit_edge, label %lor.lhs.false.i, !prof !275

if.end17.i.do.end35.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %write_iter.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %write_iter.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_iter.i, align 4
  %tobool23.not.i = icmp eq ptr %72, null
  br i1 %tobool23.not.i, label %lor.lhs.false.i.do.end35.i_crit_edge, label %do.body39.i, !prof !275

lor.lhs.false.i.do.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35.i

do.end35.i:                                       ; preds = %lor.lhs.false.i.do.end35.i_crit_edge, %if.end17.i.do.end35.i_crit_edge
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %error_fput.i

do.body39.i:                                      ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %73 = load i32, ptr @cachefiles_debug, align 4
  %and40.i = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i.do.end54.i_crit_edge, label %do.end45.i

do.body39.i.do.end54.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54.i

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i93.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i93.i to ptr
  %task48.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task48.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task48.i, align 8
  %comm49.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %comm49.i, ptr noundef %call11) #12
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end45.i, %do.body39.i.do.end54.i_crit_edge
  %call55.i = call i32 @cachefiles_check_auxdata(ptr noundef %object, ptr noundef %call12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp.i114 = icmp slt i32 %call55.i, 0
  br i1 %cmp.i114, label %check_failed.i, label %cachefiles_open_file.exit.thread117

cachefiles_open_file.exit.thread117:              ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %file58.i = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %78 = ptrtoint ptr %file58.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call12.i, ptr %file58.i, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %call12.i, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #9
  call void @dput(ptr noundef %call11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %do.body59

check_failed.i:                                   ; preds = %do.end54.i
  %79 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %object, align 4
  call void @fscache_cookie_lookup_negative(ptr noundef %80) #9
  call void @cachefiles_unmark_inode_in_use(ptr noundef %object, ptr noundef %call12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call55.i)
  %cmp59.i = icmp eq i32 %call55.i, -116
  br i1 %cmp59.i, label %cachefiles_open_file.exit, label %check_failed.i.error_fput.i_crit_edge

check_failed.i.error_fput.i_crit_edge:            ; preds = %check_failed.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fput.i

error_fput.i:                                     ; preds = %check_failed.i.error_fput.i_crit_edge, %do.end35.i
  call void @fput(ptr noundef %call12.i) #9
  br label %error.i

error.i:                                          ; preds = %error_fput.i, %if.then14.i
  call void @dput(ptr noundef %call11) #9
  br label %cachefiles_open_file.exit.thread

cachefiles_open_file.exit.thread:                 ; preds = %error.i, %cachefiles_mark_inode_in_use.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br label %cleanup

cachefiles_open_file.exit:                        ; preds = %check_failed.i
  call void @fput(ptr noundef %call12.i) #9
  call void @dput(ptr noundef %call11) #9
  %call61.i = call fastcc zeroext i1 @cachefiles_create_file(ptr noundef %object) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #9
  br i1 %call61.i, label %cachefiles_open_file.exit.do.body59_crit_edge, label %cachefiles_open_file.exit.cleanup_crit_edge

cachefiles_open_file.exit.cleanup_crit_edge:      ; preds = %cachefiles_open_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cachefiles_open_file.exit.do.body59_crit_edge:    ; preds = %cachefiles_open_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

do.body59:                                        ; preds = %cachefiles_open_file.exit.do.body59_crit_edge, %cachefiles_open_file.exit.thread117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %81 = load i32, ptr @cachefiles_debug, align 4
  %and60 = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %do.end65

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %82 = call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i115 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i115 to ptr
  %task68 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task68 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task68, align 8
  %comm69 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 101
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %86 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_ino, align 8
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %comm69, ptr noundef nonnull @.str.93, i32 noundef %91) #12
  br label %cleanup

new_file:                                         ; preds = %do.end45.new_file_crit_edge, %if.then15.new_file_crit_edge
  %92 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %object, align 4
  tail call void @fscache_cookie_lookup_negative(ptr noundef %93) #9
  %call77 = tail call fastcc zeroext i1 @cachefiles_create_file(ptr noundef %object)
  br label %cleanup

cleanup:                                          ; preds = %new_file, %do.end65, %do.body59.cleanup_crit_edge, %cachefiles_open_file.exit.cleanup_crit_edge, %cachefiles_open_file.exit.thread, %do.end45.cleanup_crit_edge, %do.body25, %if.then15.cleanup_crit_edge
  %retval.0 = phi i1 [ %call77, %new_file ], [ false, %do.body25 ], [ false, %do.end45.cleanup_crit_edge ], [ false, %cachefiles_open_file.exit.cleanup_crit_edge ], [ true, %do.end65 ], [ true, %do.body59.cleanup_crit_edge ], [ false, %cachefiles_open_file.exit.thread ], [ false, %if.then15.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscache_cookie_lookup_negative(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cachefiles_create_file(ptr noundef %object) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @cachefiles_has_space(ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @cachefiles_create_tmpfile(ptr noundef %object)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object, align 4
  %flags = getelementptr inbounds %struct.fscache_cookie, ptr %5, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #9
  %flags5 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %6 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.do.end13_crit_edge, label %do.end

if.end4.do.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 101
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call1, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %comm, ptr noundef %call1, i32 noundef %14) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end4.do.end13_crit_edge
  %file14 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %15 = ptrtoint ptr %file14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %file14, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end13 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cachefiles_commit_tmpfile(ptr nocapture noundef readnone %cache, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %volume1 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %volume1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %volume1, align 4
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %key_hash = getelementptr inbounds %struct.fscache_cookie, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %key_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_hash, align 4
  %idxprom = and i32 %5, 255
  %arrayidx = getelementptr %struct.cachefiles_volume, ptr %1, i32 0, i32 4, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %8 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 101
  %file = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %comm, ptr noundef nonnull @.str.104, ptr noundef %14) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %17 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i185 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool.not.i = icmp eq i32 %and.i185, 0
  br i1 %tobool.not.i, label %if.end13, label %do.end5.if.then15_crit_edge

do.end5.if.then15_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end13:                                         ; preds = %do.end5
  %d_name = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_name, align 4
  %d_name_len = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 8
  %20 = ptrtoint ptr %d_name_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %d_name_len, align 4
  %conv10 = zext i8 %21 to i32
  %call11 = tail call ptr @lookup_one_len(ptr noundef %19, ptr noundef %7, i32 noundef %conv10) #9
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.if.then15_crit_edge, label %if.end35

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %do.end5.if.then15_crit_edge
  %dentry.0207 = phi ptr [ %call11, %if.end13.if.then15_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end5.if.then15_crit_edge ]
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  %24 = ptrtoint ptr %dentry.0207 to i32
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %23, i32 noundef %24, i32 noundef 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %25 = load i32, ptr @cachefiles_debug, align 4
  %and19 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then15.out_unlock_crit_edge, label %do.end24

if.then15.out_unlock_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.end24:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i187 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i187 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task27, align 8
  %comm28 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm28, i32 noundef %24) #12
  br label %out_unlock

if.end35:                                         ; preds = %if.end13
  %30 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call11, align 8
  %and.i.i.i = and i32 %31, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.end35.if.end84_crit_edge, label %if.then37

if.end35.if.end84_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then37:                                        ; preds = %if.end35
  %d_inode.i188 = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i188 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i188, align 8
  %file39 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %34 = ptrtoint ptr %file39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %file39, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_inode.i, align 8
  %cmp41 = icmp eq ptr %33, %37
  br i1 %cmp41, label %if.then37.out_dput_crit_edge, label %if.end44

if.then37.out_dput_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dput

if.end44:                                         ; preds = %if.then37
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call46 = tail call fastcc i32 @cachefiles_unlink(ptr noundef %39, ptr noundef %object, ptr noundef %7, ptr noundef %call11, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.out_dput_crit_edge, label %if.end50

if.end44.out_dput_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dput

if.end50:                                         ; preds = %if.end44
  tail call void @dput(ptr noundef %call11) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %40 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i189 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i190, label %if.end61, label %if.end50.if.then63_crit_edge

if.end50.if.then63_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.end61:                                         ; preds = %if.end50
  %d_name55 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 4
  %41 = ptrtoint ptr %d_name55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_name55, align 4
  %d_name_len56 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 8
  %43 = ptrtoint ptr %d_name_len56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %d_name_len56, align 4
  %conv57 = zext i8 %44 to i32
  %call58 = tail call ptr @lookup_one_len(ptr noundef %42, ptr noundef %7, i32 noundef %conv57) #9
  %cmp.i192 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.end61.if.then63_crit_edge, label %if.end61.if.end84_crit_edge

if.end61.if.end84_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end61.if.then63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.then63:                                        ; preds = %if.end61.if.then63_crit_edge, %if.end50.if.then63_crit_edge
  %dentry.1210 = phi ptr [ %call58, %if.end61.if.then63_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end50.if.then63_crit_edge ]
  %45 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_inode.i, align 8
  %47 = ptrtoint ptr %dentry.1210 to i32
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %46, i32 noundef %47, i32 noundef 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %48 = load i32, ptr @cachefiles_debug, align 4
  %and67 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then63.out_unlock_crit_edge, label %do.end72

if.then63.out_unlock_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

do.end72:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i194 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i194 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task75, align 8
  %comm76 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 101
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %comm76, i32 noundef %47) #12
  br label %out_unlock

if.end84:                                         ; preds = %if.end61.if.end84_crit_edge, %if.end35.if.end84_crit_edge
  %dentry.2 = phi ptr [ %call11, %if.end35.if.end84_crit_edge ], [ %call58, %if.end61.if.end84_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_error_injection_state to i32))
  %53 = load i32, ptr @cachefiles_error_injection_state, align 4
  %and.i195 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %tobool.not.i196 = icmp eq i32 %and.i195, 0
  br i1 %tobool.not.i196, label %if.end93, label %if.end84.if.then96_crit_edge

if.end84.if.then96_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.end93:                                         ; preds = %if.end84
  %file89 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %54 = ptrtoint ptr %file89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %file89, align 4
  %dentry90 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %dentry90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dentry90, align 4
  %58 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %d_inode.i, align 8
  %call92 = tail call i32 @vfs_link(ptr noundef %57, ptr noundef nonnull @init_user_ns, ptr noundef %59, ptr noundef %dentry.2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp94 = icmp slt i32 %call92, 0
  br i1 %cmp94, label %if.end93.if.then96_crit_edge, label %if.else114

if.end93.if.then96_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.then96:                                        ; preds = %if.end93.if.then96_crit_edge, %if.end84.if.then96_crit_edge
  %ret.0213 = phi i32 [ %call92, %if.end93.if.then96_crit_edge ], [ -5, %if.end84.if.then96_crit_edge ]
  %60 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @trace_cachefiles_vfs_error(ptr noundef %object, ptr noundef %61, i32 noundef %ret.0213, i32 noundef 2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %62 = load i32, ptr @cachefiles_debug, align 4
  %and99 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then96.out_dput_crit_edge, label %do.end104

if.then96.out_dput_crit_edge:                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_dput

do.end104:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %63 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i200 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i200 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task107, align 8
  %comm108 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 101
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %comm108, i32 noundef %ret.0213) #12
  br label %out_dput

if.else114:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %file115 = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 3
  %67 = ptrtoint ptr %file115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %file115, align 4
  %f_inode.i201 = getelementptr inbounds %struct.file, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %f_inode.i201 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %f_inode.i201, align 8
  tail call fastcc void @trace_cachefiles_link(ptr noundef %object, ptr noundef %70)
  %lock = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %flags = getelementptr inbounds %struct.cachefiles_object, ptr %object, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out_dput

out_dput:                                         ; preds = %if.else114, %do.end104, %if.then96.out_dput_crit_edge, %if.end44.out_dput_crit_edge, %if.then37.out_dput_crit_edge
  %success.0.off0 = phi i1 [ false, %do.end104 ], [ false, %if.then96.out_dput_crit_edge ], [ true, %if.else114 ], [ false, %if.end44.out_dput_crit_edge ], [ true, %if.then37.out_dput_crit_edge ]
  %dentry.3 = phi ptr [ %dentry.2, %do.end104 ], [ %dentry.2, %if.then96.out_dput_crit_edge ], [ %dentry.2, %if.else114 ], [ %call11, %if.end44.out_dput_crit_edge ], [ %call11, %if.then37.out_dput_crit_edge ]
  tail call void @dput(ptr noundef %dentry.3) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_dput, %do.end72, %if.then63.out_unlock_crit_edge, %do.end24, %if.then15.out_unlock_crit_edge
  %success.1.off0 = phi i1 [ false, %do.end24 ], [ false, %if.then15.out_unlock_crit_edge ], [ %success.0.off0, %out_dput ], [ false, %do.end72 ], [ false, %if.then63.out_unlock_crit_edge ]
  %71 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i203 = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i203) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %73 = load i32, ptr @cachefiles_debug, align 4
  %and121 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %out_unlock.do.end137_crit_edge, label %do.end126

out_unlock.do.end137_crit_edge:                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end137

do.end126:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #11
  %74 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i204 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i204 to ptr
  %task129 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task129, align 8
  %comm130 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 101
  %conv133 = zext i1 %success.1.off0 to i32
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %comm130, ptr noundef nonnull @.str.104, i32 noundef %conv133) #12
  br label %do.end137

do.end137:                                        ; preds = %do.end126, %out_unlock.do.end137_crit_edge
  ret i1 %success.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_link(ptr noundef %obj, ptr noundef %backer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_link, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_link, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !294
  %call42 = tail call i32 @__traceiter_cachefiles_link(ptr noundef null, ptr noundef %obj, ptr noundef %backer) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !295
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_link, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_link, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_link.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 320, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_cull(ptr noundef %cache, ptr noundef %dir, ptr noundef %filename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %0 = load i32, ptr @cachefiles_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %comm, ptr noundef nonnull @.str.117, ptr noundef %dir, ptr noundef %filename) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc ptr @cachefiles_lookup_for_cull(ptr noundef %cache, ptr noundef %dir, ptr noundef %filename)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %i_flags = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %and11 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end17, label %error.thread

if.end17:                                         ; preds = %if.end9
  %or = or i32 %9, 131072
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %i_flags, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  %call18 = tail call i32 @cachefiles_bury_object(ptr noundef %cache, ptr noundef null, ptr noundef %dir, ptr noundef %call5, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %error, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fscache_n_culled, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @fscache_n_culled, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fscache_n_culled, ptr nonnull @fscache_n_culled, i32 1, ptr nonnull elementtype(i32) @fscache_n_culled) #9, !srcloc !270
  tail call void @dput(ptr noundef %call5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %12 = load i32, ptr @cachefiles_debug, align 4
  %and23 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %do.end28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i88 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i88 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task31, align 8
  %comm32 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %comm32, ptr noundef nonnull @.str.117) #12
  br label %cleanup

error.thread:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  %d_inode.i89 = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i89, align 8
  %i_rwsem.i90 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i90) #9
  tail call void @dput(ptr noundef %call5) #9
  br label %do.end46

error:                                            ; preds = %if.end17
  tail call void @dput(ptr noundef %call5) #9
  %19 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call18, label %error.do.end46_crit_edge [
    i32 -2, label %error.cleanup_crit_edge
    i32 -12, label %error.do.body50_crit_edge
  ]

error.do.body50_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error.do.end46_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46

do.end46:                                         ; preds = %error.do.end46_crit_edge, %error.thread
  %ret.194 = phi i32 [ -16, %error.thread ], [ %call18, %error.do.end46_crit_edge ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %ret.194) #12
  br label %do.body50

do.body50:                                        ; preds = %do.end46, %error.do.body50_crit_edge
  %ret.2 = phi i32 [ -5, %do.end46 ], [ %call18, %error.do.body50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cachefiles_debug to i32))
  %20 = load i32, ptr @cachefiles_debug, align 4
  %and51 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.end56

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i91 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i91 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task59, align 8
  %comm60 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 101
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %comm60, ptr noundef nonnull @.str.117, i32 noundef %ret.2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.body50.cleanup_crit_edge, %error.cleanup_crit_edge, %do.end28, %if.end21.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ %5, %if.then7 ], [ 0, %do.end28 ], [ 0, %if.end21.cleanup_crit_edge ], [ -116, %error.cleanup_crit_edge ], [ %ret.2, %do.end56 ], [ %ret.2, %do.body50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cachefiles_lookup_for_cull(ptr noundef %cache, ptr noundef %dir, ptr noundef %filename) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 1) #9
  %call1 = tail call i32 @strlen(ptr noundef %filename) #13
  %call2 = tail call ptr @lookup_one_len(ptr noundef %filename, ptr noundef %dir, i32 noundef %call1) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %lookup_error, label %if.end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 8
  %and.i.i.i = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.lookup_put_crit_edge, label %if.end6

if.end.lookup_put_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lookup_put

if.end6:                                          ; preds = %if.end
  %d_inode.i50 = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i50 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i50, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end6.lookup_put_crit_edge

if.end6.lookup_put_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %lookup_put

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lookup_put:                                       ; preds = %if.end6.lookup_put_crit_edge, %if.end.lookup_put_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end.lookup_put_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.end6.lookup_put_crit_edge ]
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i52 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i52) #9
  tail call void @dput(ptr noundef %call2) #9
  br label %cleanup

lookup_error:                                     ; preds = %entry
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i54 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i54) #9
  %12 = ptrtoint ptr %call2 to i32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %12, label %do.end28 [
    i32 -2, label %lookup_error.cleanup_crit_edge
    i32 -5, label %do.end
    i32 -12, label %lookup_error.if.end32_crit_edge
  ]

lookup_error.if.end32_crit_edge:                  ; preds = %lookup_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

lookup_error.cleanup_crit_edge:                   ; preds = %lookup_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lookup_error
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #12
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache, align 8
  tail call void @fscache_io_error(ptr noundef %15) #9
  %flags = getelementptr inbounds %struct.cachefiles_cache, ptr %cache, i32 0, i32 29
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #9
  br label %if.end32

do.end28:                                         ; preds = %lookup_error
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %12) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %do.end, %lookup_error.if.end32_crit_edge
  %ret.1 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ inttoptr (i32 -5 to ptr), %do.end28 ], [ inttoptr (i32 -12 to ptr), %lookup_error.if.end32_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lookup_error.cleanup_crit_edge, %lookup_put, %if.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.1, %if.end32 ], [ %ret.0, %lookup_put ], [ %call2, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %lookup_error.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cachefiles_check_in_use(ptr noundef %cache, ptr noundef %dir, ptr noundef %filename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @cachefiles_lookup_for_cull(ptr noundef %cache, ptr noundef %dir, ptr noundef %filename)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  tail call void @dput(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_mark_inactive(ptr noundef %obj, ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_inactive, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_mark_inactive, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !296
  %call42 = tail call i32 @__traceiter_cachefiles_mark_inactive(ptr noundef null, ptr noundef %obj, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !297
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_inactive, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_inactive, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_mark_inactive.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_mark_inactive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 618, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_mark_inactive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_vfs_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_mkdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_mark_active(ptr noundef %obj, ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_active, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_mark_active, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !298
  %call42 = tail call i32 @__traceiter_cachefiles_mark_active(ptr noundef null, ptr noundef %obj, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !299
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_active, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_active, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_mark_active.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_mark_active.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 576, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_mark_failed(ptr noundef %obj, ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_failed, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_mark_failed, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !300
  %call42 = tail call i32 @__traceiter_cachefiles_mark_failed(ptr noundef null, ptr noundef %obj, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !301
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_failed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_mark_failed, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_mark_failed.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_mark_failed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 597, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local i32 @__traceiter_cachefiles_mark_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_mark_failed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cachefiles_unlink(ptr noundef %obj, i32 noundef %ino, i32 noundef %why) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_unlink, i32 0, i32 1), ptr blockaddress(@trace_cachefiles_unlink, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !278

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !279

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !302
  %call42 = tail call i32 @__traceiter_cachefiles_unlink(ptr noundef null, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !303
  %13 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !279

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.127, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !260) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_unlink, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cachefiles_unlink, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_cachefiles_unlink.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cachefiles_unlink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 345, ptr noundef nonnull @.str.126) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !283
  %31 = tail call i32 @llvm.read_register.i32(metadata !260) #9
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
declare dso_local i32 @security_path_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_unlink(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_rename(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_tmpfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_trunc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_check_auxdata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cachefiles_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !254, !255, !256, !257, !259}
!llvm.named.register.sp = !{!260}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cachefiles/namei.c", i32 95, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cachefiles_get_directory._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cachefiles_get_directory._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/cachefiles/namei.c", i32 116, i32 2}
!8 = !{ptr @cachefiles_get_directory._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cachefiles_get_directory._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/cachefiles/namei.c", i32 126, i32 3}
!14 = !{ptr @cachefiles_get_directory._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cachefiles_get_directory._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/cachefiles/namei.c", i32 147, i32 3}
!18 = !{ptr @cachefiles_get_directory._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cachefiles_get_directory._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cachefiles_get_directory._entry.14, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @cachefiles_get_directory._entry_ptr.16, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.18, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/cachefiles/namei.c", i32 149, i32 3}
!25 = !{ptr @cachefiles_get_directory._entry.17, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cachefiles_get_directory._entry_ptr.19, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @cachefiles_get_directory._entry.20, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../fs/cachefiles/namei.c", i32 165, i32 2}
!29 = !{ptr @cachefiles_get_directory._entry_ptr.21, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @cachefiles_get_directory._entry.22, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cachefiles_get_directory._entry_ptr.23, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/cachefiles/namei.c", i32 168, i32 3}
!34 = !{ptr @cachefiles_get_directory._entry.24, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cachefiles_get_directory._entry_ptr.26, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/cachefiles/namei.c", i32 182, i32 2}
!38 = !{ptr @cachefiles_get_directory._entry.27, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cachefiles_get_directory._entry_ptr.29, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.31, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cachefiles/namei.c", i32 187, i32 2}
!42 = !{ptr @cachefiles_get_directory._entry.30, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cachefiles_get_directory._entry_ptr.32, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.34, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cachefiles/namei.c", i32 198, i32 2}
!46 = !{ptr @cachefiles_get_directory._entry.33, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cachefiles_get_directory._entry_ptr.35, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.37, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/cachefiles/namei.c", i32 204, i32 2}
!50 = !{ptr @cachefiles_get_directory._entry.36, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cachefiles_get_directory._entry_ptr.38, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.40, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cachefiles/namei.c", i32 209, i32 2}
!54 = !{ptr @cachefiles_get_directory._entry.39, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cachefiles_get_directory._entry_ptr.41, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.42, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/cachefiles/namei.c", i32 276, i32 2}
!58 = !{ptr @.str.43, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cachefiles_bury_object._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @cachefiles_bury_object._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.45, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/cachefiles/namei.c", i32 280, i32 3}
!63 = !{ptr @cachefiles_bury_object._entry.44, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cachefiles_bury_object._entry_ptr.46, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.48, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/cachefiles/namei.c", i32 293, i32 3}
!67 = !{ptr @cachefiles_bury_object._entry.47, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cachefiles_bury_object._entry_ptr.49, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.51, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/cachefiles/namei.c", i32 298, i32 2}
!71 = !{ptr @cachefiles_bury_object._entry.50, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cachefiles_bury_object._entry_ptr.52, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.53, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/cachefiles/namei.c", i32 303, i32 19}
!75 = !{ptr @.str.55, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/cachefiles/namei.c", i32 315, i32 3}
!77 = !{ptr @cachefiles_bury_object._entry.54, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cachefiles_bury_object._entry_ptr.56, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.58, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/cachefiles/namei.c", i32 321, i32 3}
!81 = !{ptr @cachefiles_bury_object._entry.57, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @cachefiles_bury_object._entry_ptr.59, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.61, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/cachefiles/namei.c", i32 327, i32 3}
!85 = !{ptr @cachefiles_bury_object._entry.60, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @cachefiles_bury_object._entry_ptr.62, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.64, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/cachefiles/namei.c", i32 333, i32 3}
!89 = !{ptr @cachefiles_bury_object._entry.63, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cachefiles_bury_object._entry_ptr.65, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @cachefiles_bury_object._entry.66, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../fs/cachefiles/namei.c", i32 345, i32 4}
!93 = !{ptr @cachefiles_bury_object._entry_ptr.67, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.69, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/cachefiles/namei.c", i32 349, i32 3}
!96 = !{ptr @cachefiles_bury_object._entry.68, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cachefiles_bury_object._entry_ptr.70, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.72, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/cachefiles/namei.c", i32 364, i32 3}
!100 = !{ptr @cachefiles_bury_object._entry.71, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cachefiles_bury_object._entry_ptr.73, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @cachefiles_bury_object._entry.74, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../fs/cachefiles/namei.c", i32 372, i32 3}
!104 = !{ptr @cachefiles_bury_object._entry_ptr.75, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.77, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/cachefiles/namei.c", i32 383, i32 3}
!107 = !{ptr @cachefiles_bury_object._entry.76, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cachefiles_bury_object._entry_ptr.78, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.80, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/cachefiles/namei.c", i32 401, i32 4}
!111 = !{ptr @cachefiles_bury_object._entry.79, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cachefiles_bury_object._entry_ptr.81, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.83, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/cachefiles/namei.c", i32 408, i32 2}
!115 = !{ptr @cachefiles_bury_object._entry.82, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cachefiles_bury_object._entry_ptr.84, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.85, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/cachefiles/namei.c", i32 423, i32 2}
!119 = !{ptr @.str.86, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cachefiles_delete_object._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @cachefiles_delete_object._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.87, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/cachefiles/namei.c", i32 464, i32 4}
!124 = !{ptr @.str.88, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cachefiles_create_tmpfile._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @cachefiles_create_tmpfile._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.90, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/cachefiles/namei.c", i32 502, i32 3}
!129 = !{ptr @cachefiles_create_tmpfile._entry.89, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @cachefiles_create_tmpfile._entry_ptr.91, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.92, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/cachefiles/namei.c", i32 615, i32 2}
!133 = !{ptr @.str.93, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @cachefiles_look_up_object._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @cachefiles_look_up_object._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.95, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/cachefiles/namei.c", i32 629, i32 4}
!138 = !{ptr @cachefiles_look_up_object._entry.94, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cachefiles_look_up_object._entry_ptr.96, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.98, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/cachefiles/namei.c", i32 634, i32 3}
!142 = !{ptr @cachefiles_look_up_object._entry.97, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cachefiles_look_up_object._entry_ptr.99, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.101, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/cachefiles/namei.c", i32 647, i32 2}
!146 = !{ptr @cachefiles_look_up_object._entry.100, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cachefiles_look_up_object._entry_ptr.102, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.103, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/cachefiles/namei.c", i32 666, i32 2}
!150 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cachefiles_commit_tmpfile._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cachefiles_commit_tmpfile._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.106, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/cachefiles/namei.c", i32 677, i32 3}
!155 = !{ptr @cachefiles_commit_tmpfile._entry.105, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cachefiles_commit_tmpfile._entry_ptr.107, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @cachefiles_commit_tmpfile._entry.108, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../fs/cachefiles/namei.c", i32 701, i32 4}
!159 = !{ptr @cachefiles_commit_tmpfile._entry_ptr.109, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.111, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/cachefiles/namei.c", i32 713, i32 3}
!162 = !{ptr @cachefiles_commit_tmpfile._entry.110, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @cachefiles_commit_tmpfile._entry_ptr.112, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.114, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/cachefiles/namei.c", i32 727, i32 2}
!166 = !{ptr @cachefiles_commit_tmpfile._entry.113, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cachefiles_commit_tmpfile._entry_ptr.115, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.116, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/cachefiles/namei.c", i32 787, i32 2}
!170 = !{ptr @.str.117, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @cachefiles_cull._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @cachefiles_cull._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @cachefiles_cull._entry.118, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../fs/cachefiles/namei.c", i32 814, i32 2}
!175 = !{ptr @cachefiles_cull._entry_ptr.119, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.121, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/cachefiles/namei.c", i32 825, i32 3}
!178 = !{ptr @cachefiles_cull._entry.120, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cachefiles_cull._entry_ptr.122, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @cachefiles_cull._entry.123, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../fs/cachefiles/namei.c", i32 829, i32 2}
!182 = !{ptr @cachefiles_cull._entry_ptr.124, !181, !"_entry_ptr", i1 false, i1 false}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../include/trace/events/cachefiles.h", i32 599, i32 1}
!185 = !{ptr @.str.125, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!187 = !{ptr @.str.126, !184, !"<string literal>", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!190 = !{ptr @.str.127, !189, !"<string literal>", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../include/trace/events/cachefiles.h", i32 236, i32 1}
!193 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../include/trace/events/cachefiles.h", i32 620, i32 1}
!196 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../include/trace/events/cachefiles.h", i32 262, i32 1}
!199 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!200 = !{ptr @.str.128, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/cachefiles/namei.c", i32 29, i32 3}
!202 = !{ptr @.str.129, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @__cachefiles_mark_inode_in_use._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @__cachefiles_mark_inode_in_use._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../include/trace/events/cachefiles.h", i32 557, i32 1}
!207 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../include/trace/events/cachefiles.h", i32 578, i32 1}
!210 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!211 = !{ptr @.str.130, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/cachefiles/namei.c", i32 243, i32 3}
!213 = !{ptr @.str.131, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @cachefiles_unlink._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @cachefiles_unlink._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.133, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/cachefiles/namei.c", i32 251, i32 4}
!218 = !{ptr @cachefiles_unlink._entry.132, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @cachefiles_unlink._entry_ptr.134, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../include/trace/events/cachefiles.h", i32 322, i32 1}
!222 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!223 = distinct !{null, !224, !"__already_done", i1 false, i1 false}
!224 = !{!"../include/trace/events/cachefiles.h", i32 347, i32 1}
!225 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!226 = distinct !{null, !227, !"__already_done", i1 false, i1 false}
!227 = !{!"../include/trace/events/cachefiles.h", i32 282, i32 1}
!228 = distinct !{null, !227, !"__warned", i1 false, i1 false}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../include/trace/events/cachefiles.h", i32 527, i32 1}
!231 = distinct !{null, !230, !"__warned", i1 false, i1 false}
!232 = !{ptr @.str.135, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/cachefiles/namei.c", i32 549, i32 2}
!234 = !{ptr @.str.136, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @cachefiles_open_file._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @cachefiles_open_file._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @cachefiles_open_file._entry.137, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../fs/cachefiles/namei.c", i32 571, i32 3}
!239 = !{ptr @cachefiles_open_file._entry_ptr.138, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.140, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/cachefiles/namei.c", i32 574, i32 2}
!242 = !{ptr @cachefiles_open_file._entry.139, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @cachefiles_open_file._entry_ptr.141, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.142, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/cachefiles/namei.c", i32 532, i32 2}
!246 = !{ptr @.str.143, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @cachefiles_create_file._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @cachefiles_create_file._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = distinct !{null, !250, !"__already_done", i1 false, i1 false}
!250 = !{!"../include/trace/events/cachefiles.h", i32 302, i32 1}
!251 = distinct !{null, !250, !"__warned", i1 false, i1 false}
!252 = !{ptr @.str.144, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/cachefiles/namei.c", i32 767, i32 3}
!254 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @cachefiles_lookup_for_cull._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @cachefiles_lookup_for_cull._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @cachefiles_lookup_for_cull._entry.146, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../fs/cachefiles/namei.c", i32 769, i32 3}
!259 = !{ptr @cachefiles_lookup_for_cull._entry_ptr.147, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{!"sp"}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 1, !"min_enum_size", i32 4}
!263 = !{i32 8, !"branch-target-enforcement", i32 0}
!264 = !{i32 8, !"sign-return-address", i32 0}
!265 = !{i32 8, !"sign-return-address-all", i32 0}
!266 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!267 = !{i32 7, !"uwtable", i32 1}
!268 = !{i32 7, !"frame-pointer", i32 2}
!269 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!270 = !{i64 2148672227, i64 2148672253, i64 2148672282, i64 2148672316, i64 2148672347, i64 2148672370}
!271 = !{i64 2148757662}
!272 = !{i64 2148672947, i64 2148672979, i64 2148673008, i64 2148673042, i64 2148673073, i64 2148673096}
!273 = !{i64 2148757891}
!274 = !{!"auto-init"}
!275 = !{!"branch_weights", i32 1, i32 2000}
!276 = !{i64 2155202119, i64 2155206666, i64 2155202156, i64 2155202212, i64 2155202246, i64 2155202270, i64 2155202311, i64 2155202332, i64 2155202360, i64 2155202394}
!277 = !{i64 2155212946, i64 2155213432, i64 2155212983, i64 2155213039, i64 2155213073, i64 2155213097, i64 2155213138, i64 2155213159, i64 2155213187, i64 2155213221}
!278 = !{i64 2148496825, i64 2148496830, i64 2148496843, i64 2148496887, i64 2148496921, i64 2148496942}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{i64 2154876000}
!281 = !{i64 2154876221}
!282 = !{i64 2149493232}
!283 = !{i64 2149494268}
!284 = !{i64 2155156665}
!285 = !{i64 2155156918}
!286 = !{i64 2154892726}
!287 = !{i64 2154892943}
!288 = !{i64 2154965179}
!289 = !{i64 2154965402}
!290 = !{i64 2154909524}
!291 = !{i64 2154909745}
!292 = !{i64 2155082291}
!293 = !{i64 2155082538}
!294 = !{i64 2154930397}
!295 = !{i64 2154930612}
!296 = !{i64 2155138467}
!297 = !{i64 2155138698}
!298 = !{i64 2155099584}
!299 = !{i64 2155099811}
!300 = !{i64 2155116957}
!301 = !{i64 2155117184}
!302 = !{i64 2154947687}
!303 = !{i64 2154947910}
